printDIFlasso <-
function(dif.obj){
  I <- nrow(dif.obj$beta)
  dif.mat <- dif.obj$dif.mat
  dif.items <- dif.obj$dif.items
  cat("Number of (valid) persons: P =",dif.obj$P,"\n")
  cat("Number of items: I =",I,"\n")
  cat("DIF Items:",dif.items,"\n")
  cat("\n")
  cat("Matrix of estimated item-specific coefficients:\n")
  print.default(dif.mat)
}
