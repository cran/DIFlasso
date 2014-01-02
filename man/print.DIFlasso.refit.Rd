\name{print.DIFlasso.refit}
\alias{print.DIFlasso.refit}

\title{
Print function for refitDIFlasso
}
\description{
Prints the most important output of a DIFlasso.refit object.
}
\usage{
\method{print}{DIFlasso.refit}(x, ...)
}

\arguments{
  \item{x}{DIFlasso.refit object, created by \code{\link{refitDIFlasso}}
}
\item{...}{
Further arguments to be passed to the \code{\link[base:print]{print}} function.
}
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
\code{\link{refitDIFlasso}}, \code{\link{plot.DIFlasso.refit}}, \code{\link{DIFlasso}}
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

