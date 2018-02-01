##Stacked bar graphs expect non-functionalization 去除无功能化后的柱状堆积图
##shimw
##2017/5/16
Species <- c("Danio rerio","Danio rerio","Danio rerio","Orysias latipes","Orysias latipes","Orysias latipes","Gadus morhua","Gadus morhua","Gadus morhua","Astyanax mexicanus","Astyanax mexicanus","Astyanax mexicanus")
Fates_of_genes <- c("subfunctionalization","neofunctionalization","dosage selection","subfunctionalization","neofunctionalization","dosage selection","subfunctionalization","neofunctionalization","dosage selection","subfunctionalization","neofunctionalization","dosage selection")

number_Des_0.95_exno <- c(23,193,1338,14,97,865,2,26,230,2,34,415)
number_Des_0.90_exno <- c(73,299,1182,33,183,760,7,48,203,11,91,349)
Stacked_bar_0.95_exno <- data.frame(Species=Species,Fates_of_genes=Fates_of_genes,number=number_Des_0.95_exno)
Stacked_bar_0.90_exno <- data.frame(Species=Species,Fates_of_genes=Fates_of_genes,number=number_Des_0.90_exno)
p_Stacked_bar_0.95_exno <- ggplot(Stacked_bar_0.95_exno,aes(x=Species,y=number,fill=Fates_of_genes)) + geom_bar(stat="identity") + scale_x_discrete(limits=c("Danio rerio","Orysias latipes","Gadus morhua","Astyanax mexicanus")) + theme(axis.title.x = element_blank(),axis.line = element_line(colour = "black"),axis.text.x = element_text(family = "Times",face = "italic")) + scale_y_continuous(breaks=seq(0, 1500, 100))
p_Stacked_bar_0.90_exno <- ggplot(Stacked_bar_0.90_exno,aes(x=Species,y=number,fill=Fates_of_genes)) + geom_bar(stat="identity") + scale_x_discrete(limits=c("Danio rerio","Orysias latipes","Gadus morhua","Astyanax mexicanus")) + theme(axis.title.x = element_blank(),axis.line = element_line(colour = "black"),axis.text.x = element_text(family = "Times",face = "italic")) + scale_y_continuous(breaks=seq(0, 1500, 100))
p_Stacked_bar_0.95_exno
p_Stacked_bar_0.90_exno

