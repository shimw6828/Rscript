filename <- list.files(path = "/home/shimw/yushixiong/dot/",pattern = ".csv",full.names = FALSE)
filenamet <- list.files(path = "/home/shimw/yushixiong/dot/",pattern = ".csv",full.names = TRUE)
for (i in 1:4){
assign(as.character(filename[[i]]),read.csv(filenamet[i],header = TRUE))
}
norgarcav_many_tau_x <- data.frame(Gene.ID=norgarcav_many_true.csv$Gene.ID,Cave.fish.gene.stable.ID=norgarcav_many_true.csv$Cave.fish.gene.stable.ID.x.,tau.cav=norgarcav_many_true.csv$tau.cav.x,tau.gar=norgarcav_many_true.csv$tau.gar,tissue.cav.x=norgarcav_many_true.csv$tissue.cav.x,tissue.cav.y=norgarcav_many_true.csv$tissue.cav.y,tissue.gar=norgarcav_many_true.csv$tissue.gar,type=rep("x",451),avi=rep("1",451))
norgarcav_many_tau_y <- data.frame(Gene.ID=norgarcav_many_true.csv$Gene.ID,Cave.fish.gene.stable.ID=norgarcav_many_true.csv$Cave.fish.gene.stable.ID.y.,tau.cav=norgarcav_many_true.csv$tau.cav.y,tau.gar=norgarcav_many_true.csv$tau.gar,tissue.cav.x=norgarcav_many_true.csv$tissue.cav.x,tissue.cav.y=norgarcav_many_true.csv$tissue.cav.y,tissue.gar=norgarcav_many_true.csv$tissue.gar,type=rep("y",451),avi=rep("1",451))
norgarcav_many_tau <- rbind(norgarcav_many_tau_x,norgarcav_many_tau_y)
norgarcav_many_tau$avi <- as.character(norgarcav_many_tau$avi)
norgarcav_many_tau$avi[which(norgarcav_many_tau$tissue.cav.x==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tissue.cav.y==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tau.cav>=0.8&norgarcav_many_tau$tau.gar>=0.8)] <- "3"
norgarcav_many_tau$avi[which(norgarcav_many_tau$tissue.cav.x==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tissue.cav.y!=norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tau.cav>=0.8&norgarcav_many_tau$tau.gar>=0.8)] <- "2"
norgarcav_many_tau$avi[which(norgarcav_many_tau$tissue.cav.y==norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tissue.cav.x!=norgarcav_many_tau$tissue.gar&norgarcav_many_tau$tau.cav>=0.8&norgarcav_many_tau$tau.gar>=0.8)] <- "2"
ggplot(norgarcav_many_tau,aes(x=tau.cav,y=tau.gar,colour=avi)) + geom_point() + scale_colour_manual(values = c("black","blue","red"))
