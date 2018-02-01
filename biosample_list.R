##读取biosample数据
biosample <- xmlTreeParse("biosample/biosample_result.xml", getDTD = F)
biosample=xmlRoot(biosample)
##实现根据其目录结构构件好带有所需标题的csv文件
biosample_list <- read.csv("/home/shimw/biosample/biosample.csv",header=TRUE, stringsAsFactors=FALSE)
xmlSize(biosample)
##循环填表
for (i in 1:xmlSize(biosample)){
  biosample_list[i,1] <- xmlGetAttr(biosample[[i]], 'id')
  biosample_list[i,2] <- tryCatch(xmlValue(getNodeSet(biosample[[i]],"//Ids//Id[@db='SRA']")[[1]]),error=function(e){
    NA
  })
  biosample_list[i,3] <- xmlGetAttr(biosample[[i]], 'accession')
  biosample_list[i,4] <- xmlGetAttr(biosample[[i]], 'submission_date')
  biosample_list[i,5] <- xmlGetAttr(biosample[[i]], 'last_update')
  biosample_list[i,6] <- xmlGetAttr(biosample[[i]], 'publication_date')
  biosample_list[i,7] <- xmlGetAttr(biosample[[i]], 'access')
  biosample_list[i,8] <- xmlGetAttr(biosample[[i]][[2]][[2]], 'taxonomy_name')
  biosample_list[i,9] <- xmlGetAttr(biosample[[i]][[2]][[2]], 'taxonomy_id')
}
biosample_list <- biosample_list[complete.cases(biosample_list$SRA),]
rownames(biosample_list)<-1:nrow(biosample_list)
