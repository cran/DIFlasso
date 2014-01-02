\name{DIFlasso}
\alias{DIFlasso}

\title{
A penalty approach to Differential Item Functioning in Rasch Models
}
\description{
A function to perform DIFlasso, a method to detect DIF (Differential Item Functioning) in Rasch Models. It can handle settings with many covariates and also metric covariates. The method is described is Tutz and Schauberger (2013).
}
\usage{
DIFlasso(Y, X, l.lambda = 20, trace = FALSE)
}

\arguments{
  \item{Y}{
Data frame (one row per person, one column per item) containing response. May only contain 0 or 1.
}
  \item{X}{
Data frame (one row per person, one column per covariate) containing covariates. Has to be standardized. 
}                                                                                                 
  \item{l.lambda}{
Length of the grid of tuning parameters for DIFlasso. Default is 20 different tuning parameters.
}
  \item{trace}{
Should the trace of the \code{\link[grplasso]{grplasso}} function be printed?
}
}
\details{
The method assumes the DIFmodel from Tutz and Schauberger (2013) where a Group Lasso penalty is used for DIF detection. Computation is based on the function \code{\link[grplasso]{grplasso}}.  
}

\value{
\item{theta}{Estimated person abilities; one row per person, one column per tuning parameter}
\item{beta}{Estimated item difficulties; one row per item, one column per tuning parameter}
\item{gamma}{Estimated item-specific parameters; one row per item and covariate, one column per tuning parameter (first line: first item, first covariate; second line: first item, second covariate and so on)}
\item{P}{Number of (valid) persons; removed persons are found in removed.persons}
\item{I}{Number of items}
\item{m}{Number of covariates}
\item{logLik}{Log-likelihood}
\item{BIC}{BIC}
\item{AIC}{AIC}
\item{df}{Degrees of freedom}
\item{refit.matrix}{Design matrix for function \code{\link{refitDIFlasso}}}
\item{lambda}{Sequence of tuning parameters used by \code{\link[grplasso]{grplasso}}}
\item{ref.item}{Reference item}
\item{dif.mat}{Estimates of the item-specific parameter estima  tes (at BIC-optimal lambda)}
\item{dif.items}{Which items have been detected to be DIF items (at BIC-optimal lambda)?}
\item{names.y}{Names of the items}
\item{names.x}{Names of the covariates}
\item{removed.persons}{Which persons have been removed because they either solved no item or all items?}
}

\references{
Tutz, Gerhard and Schauberger, Gunther (2013): \emph{A Penalty Approach to Differential Item Functioning in Rasch Models}, Technical Report 134, Department of Statistics, LMU Munich
}
\author{
Gunther Schauberger\cr
\email{gunther.schauberger@stat.uni-muenchen.de}\cr
\url{http://www.statistik.lmu.de/~schauberger/}
}
\seealso{
\code{\link{refitDIFlasso}}, \code{\link{plot.DIFlasso}}, \code{\link{print.DIFlasso}}, \code{\link[grplasso]{grplasso}}
}
\examples{
\dontrun{
data(simul.data)

Y <- simul.data[,1:10]
X <- simul.data[,11:13]

m1 <- DIFlasso(Y = Y, X = X, trace = TRUE) 
print(m1)
plot(m1)

m2 <- refitDIFlasso(m1)
print(m2)
plot(m2)
}
}
\keyword{DIFlasso}


