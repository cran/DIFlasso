\name{DIFlasso-package}
\alias{DIFlasso-package}
\docType{package}
\title{
DIFlasso
}
\description{
A package to perform DIFlasso, a method to detect DIF (Differential Item Functioning) in Rasch Models. It can handle settings with many covariates and also metric covariates. The method is described is Tutz and Schauberger (2013).
Also a refit function is provided.
}
\details{
The main function is \code{\link{DIFlasso}}. The method assumes the DIFmodel from Tutz and Schauberger (2013) where a Group Lasso penalty is used for DIF detection. 
Computation is based on the function \code{\link[grplasso]{grplasso}}.  \code{\link{refitDIFlasso}} provides a refit function for \code{\link{DIFlasso}}. Additionally, plot and print functions are provided. 
}

\author{
Gunther Schauberger\cr
\email{gunther.schauberger@stat.uni-muenchen.de}\cr
\url{http://www.statistik.lmu.de/~schauberger/}
}
\references{
Tutz, Gerhard and Schauberger, Gunther (2013): \emph{A Penalty Approach to Differential Item Functioning in Rasch Models}, Technical Report 134, Department of Statistics, LMU Munich
}
\seealso{
\code{\link{DIFlasso}}, \code{\link{refitDIFlasso}}, \code{\link[grplasso]{grplasso}}
}
\keyword{DIFlasso}

