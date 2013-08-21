plotDIFlasso <-
function(dif.obj, decreasing = TRUE){
  dif.items <- which(colSums(dif.obj$dif.mat)!=0)
  plot.mat <- dif.obj$dif.mat[,dif.items]
  dif.strength <- rowSums(plot.mat^2)
  if(decreasing){
    plot.mat <- plot.mat[order(dif.strength,decreasing = decreasing),]
  }
  y.min <- min(plot.mat)
  y.max <- max(plot.mat)
  plot(plot.mat[,1],ylim=c(y.min,y.max),type="b",xaxt="n",yaxt="n",
       ylab="",xlab="covariates", main="Item-specific parameter estimates")
  for(i in 1:ncol(plot.mat)){
    lines(plot.mat[,i],type="b")
  }
  abline(h=0,lty=2)
  axis(1,labels=dimnames(plot.mat)[[1]],at=1:nrow(plot.mat))
  axis(2,labels=c(dimnames(plot.mat)[[2]],"0"),at=c(plot.mat[1,],0))
}


