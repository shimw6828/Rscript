#plot all_tau_box of .85.csv
#2014/5/9
#shimw
filenamet <- list.files(path = "/home/shimw/yushixiong/fenweishu/",pattern = ".85.csv",full.names = TRUE)
filename <- list.files(path = "/home/shimw/yushixiong/fenweishu/",pattern = ".85.csv",full.names = FALSE)
for (i in 1:5){
assign(as.character(filename[[i]]),read.csv(filenamet[i],header = TRUE))
}
cav_tau_box <- data.frame(fish=rep("Astyanax mexicanus",21489),tau=cav_0.85.csv$tau)
cod_tau_box <- data.frame(fish=rep("Gadus morhua",18837),tau=cod_0.85.csv$tau)
gar_tau_box <- data.frame(fish=rep("Lepisosteus oculatus",19733),tau=gar_0.85.csv$tau)
med_tau_box <- data.frame(fish=rep("Orysias latipes",17389),tau=med_0.85.csv$tau)
zeb_tau_box <- data.frame(fish=rep("Danio rerio",27450),tau=zeb_0.85.csv$tau)
all_tau_box <- rbind(cav_tau_box,cod_tau_box,gar_tau_box,med_tau_box,zeb_tau_box)
p <- ggplot(all_tau_box,aes(x=fish,y=tau)) + geom_boxplot()
p + theme(axis.title.x = element_blank())
+ theme(axis.line = element_line(colour = "black"),axis.text.x = element_text(angle=30,hjust=0.65,vjust=0.6,family = "Times",face = "italic"),axis.text = element_text(size = rel(1.5)),axis.title.y = element_text(size = rel(1.5))) 
