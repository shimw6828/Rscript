##Stacked bar graphs 堆积条形图
##绘制四种去向的堆积条形图
##2017/5/15
##shimw
library(scales)
Species <- c("Danio rerio","Danio rerio","Danio rerio","Danio rerio","Orysias latipes","Orysias latipes","Orysias latipes","Orysias latipes","Gadus morhua","Gadus morhua","Gadus morhua","Gadus morhua","Astyanax mexicanus","Astyanax mexicanus","Astyanax mexicanus","Astyanax mexicanus")
Fates_of_genes <- c("non-functionalization","subfunctionalization","neofunctionalization","dosage selection","non-functionalization","subfunctionalization","neofunctionalization","dosage selection","non-functionalization","subfunctionalization","neofunctionalization","dosage selection","non-functionalization","subfunctionalization","neofunctionalization","dosage selection")

number_Des_0.95 <- c(0.8574,0.0021,0.0177,0.1228,0.8911,0.0016,0.0108,0.0965,0.9436,0.0004,0.0057,0.0503,0.9293,0.0003,0.0053,0.0651)
number_Des_0.90 <- c(0.8574,0.0067,0.0274,0.1084,0.8911,0.0037,0.0204,0.0848,0.9436,0.0015,0.0105,0.0444,0.9293,0.0017,0.0143,0.0547)
Stacked_bar_0.95 <- data.frame(Species=Species,Fates_of_genes=Fates_of_genes,number=number_Des_0.95)
Stacked_bar_0.90 <- data.frame(Species=Species,Fates_of_genes=Fates_of_genes,number=number_Des_0.90)
pp=seq(0.1,1,by=0.1)
p_Stacked_bar_0.95 <- ggplot(Stacked_bar_0.95,aes(x=Species,y=number,fill=Fates_of_genes)) + geom_bar(stat="identity") + scale_x_discrete(limits=c("Danio rerio","Orysias latipes","Gadus morhua","Astyanax mexicanus")) + theme(axis.title.x = element_blank(),axis.line = element_line(colour = "black"),axis.text.x = element_text(family = "Times",face = "italic")) + scale_y_continuous(labels = percent,breaks =pp)
p_Stacked_bar_0.90 <- ggplot(Stacked_bar_0.90,aes(x=Species,y=number,fill=Fates_of_genes)) + geom_bar(stat="identity") + scale_x_discrete(limits=c("Danio rerio","Orysias latipes","Gadus morhua","Astyanax mexicanus")) + theme(axis.title.x = element_blank(),axis.line = element_line(colour = "black"),axis.text.x = element_text(family = "Times",face = "italic")) + scale_y_continuous(labels = percent,breaks =pp)
p_Stacked_bar_0.90
p_Stacked_bar_0.95
