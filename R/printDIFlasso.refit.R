printDIFlasso.refit <-
function(dif.obj){
  cat("Number of (valid) persons: P =",dif.obj$P,"\n")
  cat("Number of items: I =",dif.obj$I,"\n")
  cat("DIF Items:",dif.obj$dif.items,"\n")
  cat("\n")
  cat("Matrix of estimated item-specific coefficients (after refit):\n")
  print.default(dif.obj$gamma)
}
