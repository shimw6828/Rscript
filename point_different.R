filename <- list.files(path = "/home/shimw/yushixiong/dot/",pattern = ".csv",full.names = FALSE)
filenamet <- list.files(path = "/home/shimw/yushixiong/dot/",pattern = ".csv",full.names = TRUE)
for (i in 1:4){
  assign(as.character(filename[[i]]),read.csv(filenamet[i],header = TRUE))
}
##????Ϊcav??????
##?????е?tissueת?????ַ???ʽ??????????ɸѡ????
norgarcav_many_true.csv$tissue.cav.x <- as.character(norgarcav_many_true.csv$tissue.cav.x)
norgarcav_many_true.csv$tissue.cav.y <- as.character(norgarcav_many_true.csv$tissue.cav.y)
norgarcav_many_true.csv$tissue.gar <- as.character(norgarcav_many_true.csv$tissue.gar)
##??????tauֵС??0.8??tissue??Ϊall
norgarcav_many_true.csv$tissue.cav.x[which(norgarcav_many_true.csv$tau.cav.x<0.8)] <- "all"
norgarcav_many_true.csv$tissue.cav.y[which(norgarcav_many_true.csv$tau.cav.y<0.8)] <- "all"
norgarcav_many_true.csv$tissue.gar[which(norgarcav_many_true.csv$tau.gar<0.8)] <- "all"
##????}?????ݿ򣬽?x??y??b??4??????????Ȼ????????Ӧ????????֯??Ϣ
norgarcav_many_tau_x <- data.frame(Gene.ID=norgarcav_many_true.csv$Gene.ID,Cave.fish.gene.stable.ID=norgarcav_many_true.csv$Cave.fish.gene.stable.ID.x.,tau.cav=norgarcav_many_true.csv$tau.cav.x,tau.gar=norgarcav_many_true.csv$tau.gar,tissue.cav.x=norgarcav_many_true.csv$tissue.cav.x,tissue.cav.y=norgarcav_many_true.csv$tissue.cav.y,tissue.gar=norgarcav_many_true.csv$tissue.gar,type=rep("x",451),avi=rep("1",451))
norgarcav_many_tau_y <- data.frame(Gene.ID=norgarcav_many_true.csv$Gene.ID,Cave.fish.gene.stable.ID=norgarcav_many_true.csv$Cave.fish.gene.stable.ID.y.,tau.cav=norgarcav_many_true.csv$tau.cav.y,tau.gar=norgarcav_many_true.csv$tau.gar,tissue.cav.x=norgarcav_many_true.csv$tissue.cav.x,tissue.cav.y=norgarcav_many_true.csv$tissue.cav.y,tissue.gar=norgarcav_many_true.csv$tissue.gar,type=rep("y",451),avi=rep("1",451))
##ɸѡ??ͼ????ͼ?δ?????p_cav??
norgarcav_many_tau <- rbind(norgarcav_many_tau_x,norgarcav_many_tau_y)
norgarcav_many_tau$avi <- as.character(norgarcav_many_tau$avi)
norgarcav_many_tau$avi[which(norgarcav_many_tau$tissue.cav.x==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tissue.cav.y==norgarcav_many_tau$tissue.gar)] <- "3"
norgarcav_many_tau$avi[which(norgarcav_many_tau$tissue.cav.x==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tissue.cav.y!=norgarcav_many_tau$tissue.gar)] <- "2"
norgarcav_many_tau$avi[which(norgarcav_many_tau$tissue.cav.y==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tissue.cav.x!=norgarcav_many_tau$tissue.gar)] <- "2"
p_cav <- ggplot(norgarcav_many_tau,aes(x=tau.cav,y=tau.gar,colour=avi)) + geom_point() + scale_colour_manual(values = c("black","blue","red"))
##????ÿ???????ĸ???????Ϊx??y???ֱ??г??????䱾ӦΪһ?飬??ÿ????ֵ??????2??????3??ʾ??????֯ȫ????ͬ??2??ʾxy??ֻ??һ????gar??ͬ??1??ʾ??????֯ȫ??????ͬ
cav_number_3 <- length(norgarcav_many_tau[norgarcav_many_tau$avi==3,]$avi)/2
cav_number_2 <- length(norgarcav_many_tau[norgarcav_many_tau$avi==2,]$avi)/2
cav_number_1 <- length(norgarcav_many_tau[norgarcav_many_tau$avi==1,]$avi)/2



##????Ϊcod??????


norgarcod_many_true.csv$tissue.cod.x <- as.character(norgarcod_many_true.csv$tissue.cod.x)
norgarcod_many_true.csv$tissue.cod.y <- as.character(norgarcod_many_true.csv$tissue.cod.y)
norgarcod_many_true.csv$tissue.gar <- as.character(norgarcod_many_true.csv$tissue.gar)

norgarcod_many_true.csv$tissue.cod.x[which(norgarcod_many_true.csv$tau.cod.x<0.8)] <- "all"
norgarcod_many_true.csv$tissue.cod.y[which(norgarcod_many_true.csv$tau.cod.y<0.8)] <- "all"
norgarcod_many_true.csv$tissue.gar[which(norgarcod_many_true.csv$tau.gar<0.8)] <- "all"
le <- length(norgarcod_many_tarue.csvGene.ID)
n###错误在此，计算成了norgarcod_many_tau的长度了
orgarcod_many_tau_x <- data.frame(Gene.ID=norgarcod_many_true.csv$Gene.ID,Cod.gene.stable.ID=norgarcod_many_true.csv$Cod.gene.stable.ID.x.,tau.cod=norgarcod_many_true.csv$tau.cod.x,tau.gar=norgarcod_many_true.csv$tau.gar,tissue.cod.x=norgarcod_many_true.csv$tissue.cod.x,tissue.cod.y=norgarcod_many_true.csv$tissue.cod.y,tissue.gar=norgarcod_many_true.csv$tissue.gar,type=rep("x",le),avi=rep("1",le))
norgarcod_many_tau_y <- data.frame(Gene.ID=norgarcod_many_true.csv$Gene.ID,Cod.gene.stable.ID=norgarcod_many_true.csv$Cod.gene.stable.ID.y.,tau.cod=norgarcod_many_true.csv$tau.cod.y,tau.gar=norgarcod_many_true.csv$tau.gar,tissue.cod.x=norgarcod_many_true.csv$tissue.cod.x,tissue.cod.y=norgarcod_many_true.csv$tissue.cod.y,tissue.gar=norgarcod_many_true.csv$tissue.gar,type=rep("y",le),avi=rep("1",le))

norgarcod_many_tau <- rbind(norgarcod_many_tau_x,norgarcod_many_tau_y)
norgarcod_many_tau$avi <- as.character(norgarcod_many_tau$avi)
norgarcod_many_tau$avi[which(norgarcod_many_tau$tissue.cod.x==norgarcod_many_tau$tissue.gar&norgarcod_many_tau$tissue.cod.y==norgarcod_many_tau$tissue.gar)] <- "3"
norgarcod_many_tau$avi[which(norgarcod_many_tau$tissue.cod.x==norgarcod_many_tau$tissue.gar&norgarcod_many_tau$tissue.cod.y!=norgarcod_many_tau$tissue.gar)] <- "2"
norgarcod_many_tau$avi[which(norgarcod_many_tau$tissue.cod.y==norgarcod_many_tau$tissue.gar&norgarcod_many_tau$tissue.cod.x!=norgarcod_many_tau$tissue.gar)] <- "2"
p_cod <- ggplot(norgarcod_many_tau,aes(x=tau.cod,y=tau.gar,colour=avi)) + geom_point() + scale_colour_manual(values = c("black","blue","red"))
cod_number_3 <- length(norgarcod_many_tau[norgarcod_many_tau$avi==3,]$avi)/2
cod_number_2 <- length(norgarcod_many_tau[norgarcod_many_tau$avi==2,]$avi)/2
cod_number_1 <- length(norgarcod_many_tau[norgarcod_many_tau$avi==1,]$avi)/2



##????Ϊmed??????



norgarmed_many_true.csv$tissue.med.x <- as.character(norgarmed_many_true.csv$tissue.med.x)
norgarmed_many_true.csv$tissue.med.y <- as.character(norgarmed_many_true.csv$tissue.med.y)
norgarmed_many_true.csv$tissue.gar <- as.character(norgarmed_many_true.csv$tissue.gar)

norgarmed_many_true.csv$tissue.med.x[which(norgarmed_many_true.csv$tau.med.x<0.8)] <- "all"
norgarmed_many_true.csv$tissue.med.y[which(norgarmed_many_true.csv$tau.med.y<0.8)] <- "all"
norgarmed_many_true.csv$tissue.gar[which(norgarmed_many_true.csv$tau.gar<0.8)] <- "all"
le <- length(norgarmed_many_true.csv$Gene.ID)
norgarmed_many_tau_x <- data.frame(Gene.ID=norgarmed_many_true.csv$Gene.ID,Medaka.gene.stable.ID=norgarmed_many_true.csv$Medaka.gene.stable.ID.x.,tau.med=norgarmed_many_true.csv$tau.med.x,tau.gar=norgarmed_many_true.csv$tau.gar,tissue.med.x=norgarmed_many_true.csv$tissue.med.x,tissue.med.y=norgarmed_many_true.csv$tissue.med.y,tissue.gar=norgarmed_many_true.csv$tissue.gar,type=rep("x",le),avi=rep("1",le))
norgarmed_many_tau_y <- data.frame(Gene.ID=norgarmed_many_true.csv$Gene.ID,Medaka.gene.stable.ID=norgarmed_many_true.csv$Medaka.gene.stable.ID.y.,tau.med=norgarmed_many_true.csv$tau.med.y,tau.gar=norgarmed_many_true.csv$tau.gar,tissue.med.x=norgarmed_many_true.csv$tissue.med.x,tissue.med.y=norgarmed_many_true.csv$tissue.med.y,tissue.gar=norgarmed_many_true.csv$tissue.gar,type=rep("y",le),avi=rep("1",le))

norgarmed_many_tau <- rbind(norgarmed_many_tau_x,norgarmed_many_tau_y)
norgarmed_many_tau$avi <- as.character(norgarmed_many_tau$avi)
norgarmed_many_tau$avi[which(norgarmed_many_tau$tissue.med.x==norgarmed_many_tau$tissue.gar&norgarmed_many_tau$tissue.med.y==norgarmed_many_tau$tissue.gar)] <- "3"
norgarmed_many_tau$avi[which(norgarmed_many_tau$tissue.med.x==norgarmed_many_tau$tissue.gar&norgarmed_many_tau$tissue.med.y!=norgarmed_many_tau$tissue.gar)] <- "2"
norgarmed_many_tau$avi[which(norgarmed_many_tau$tissue.med.y==norgarmed_many_tau$tissue.gar&norgarmed_many_tau$tissue.med.x!=norgarmed_many_tau$tissue.gar)] <- "2"
p_med <- ggplot(norgarmed_many_tau,aes(x=tau.med,y=tau.gar,colour=avi)) + geom_point() + scale_colour_manual(values = c("black","blue","red"))
med_number_3 <- length(norgarmed_many_tau[norgarmed_many_tau$avi==3,]$avi)/2
med_number_2 <- length(norgarmed_many_tau[norgarmed_many_tau$avi==2,]$avi)/2
med_number_1 <- length(norgarmed_many_tau[norgarmed_many_tau$avi==1,]$avi)/2


##??????zeb??????

norgarzeb_many_true.csv$tissue.zeb.x <- as.character(norgarzeb_many_true.csv$tissue.zeb.x)
norgarzeb_many_true.csv$tissue.zeb.y <- as.character(norgarzeb_many_true.csv$tissue.zeb.y)
norgarzeb_many_true.csv$tissue.gar <- as.character(norgarzeb_many_true.csv$tissue.gar)

norgarzeb_many_true.csv$tissue.zeb.x[which(norgarzeb_many_true.csv$tau.zeb.x<0.8)] <- "all"
norgarzeb_many_true.csv$tissue.zeb.y[which(norgarzeb_many_true.csv$tau.zeb.y<0.8)] <- "all"
norgarzeb_many_true.csv$tissue.gar[which(norgarzeb_many_true.csv$tau.gar<0.8)] <- "all"
le <- length(norgarzeb_many_true.csv$Gene.ID)
norgarzeb_many_tau_x <- data.frame(Gene.ID=norgarzeb_many_true.csv$Gene.ID,Zebrafish.gene.stable.ID=norgarzeb_many_true.csv$Zebrafish.gene.stable.ID.x.,tau.zeb=norgarzeb_many_true.csv$tau.zeb.x,tau.gar=norgarzeb_many_true.csv$tau.gar,tissue.zeb.x=norgarzeb_many_true.csv$tissue.zeb.x,tissue.zeb.y=norgarzeb_many_true.csv$tissue.zeb.y,tissue.gar=norgarzeb_many_true.csv$tissue.gar,type=rep("x",le),avi=rep("1",le))
norgarzeb_many_tau_y <- data.frame(Gene.ID=norgarzeb_many_true.csv$Gene.ID,Zebrafish.gene.stable.ID=norgarzeb_many_true.csv$Zebrafish.gene.stable.ID.y.,tau.zeb=norgarzeb_many_true.csv$tau.zeb.y,tau.gar=norgarzeb_many_true.csv$tau.gar,tissue.zeb.x=norgarzeb_many_true.csv$tissue.zeb.x,tissue.zeb.y=norgarzeb_many_true.csv$tissue.zeb.y,tissue.gar=norgarzeb_many_true.csv$tissue.gar,type=rep("y",le),avi=rep("1",le))

norgarzeb_many_tau <- rbind(norgarzeb_many_tau_x,norgarzeb_many_tau_y)
norgarzeb_many_tau$avi <- as.character(norgarzeb_many_tau$avi)
norgarzeb_many_tau$avi[which(norgarzeb_many_tau$tissue.zeb.x==norgarzeb_many_tau$tissue.gar&norgarzeb_many_tau$tissue.zeb.y==norgarzeb_many_tau$tissue.gar)] <- "3"
norgarzeb_many_tau$avi[which(norgarzeb_many_tau$tissue.zeb.x==norgarzeb_many_tau$tissue.gar&norgarzeb_many_tau$tissue.zeb.y!=norgarzeb_many_tau$tissue.gar)] <- "2"
norgarzeb_many_tau$avi[which(norgarzeb_many_tau$tissue.zeb.y==norgarzeb_many_tau$tissue.gar&norgarzeb_many_tau$tissue.zeb.x!=norgarzeb_many_tau$tissue.gar)] <- "2"
p_zeb <- ggplot(norgarzeb_many_tau,aes(x=tau.zeb,y=tau.gar,colour=avi)) + geom_point() + scale_colour_manual(values = c("black","blue","red"))
zeb_number_3 <- length(norgarzeb_many_tau[norgarzeb_many_tau$avi==3,]$avi)/2
zeb_number_2 <- length(norgarzeb_many_tau[norgarzeb_many_tau$avi==2,]$avi)/2
zeb_number_1 <- length(norgarzeb_many_tau[norgarzeb_many_tau$avi==1,]$avi)/2
