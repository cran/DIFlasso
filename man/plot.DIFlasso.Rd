\name{plot.DIFlasso}
\alias{plot.DIFlasso}
\alias{plot}

\title{
Plot function for DIFlasso
}
\description{
Plots the estimates of the item-specific parameters of a DIFlasso object. 
}
\usage{
\method{plot}{DIFlasso}(x, decreasing = TRUE, ...)
}

\arguments{
  \item{x}{
DIFlasso object, created by \code{\link{DIFlasso}}
}
  \item{decreasing}{
Should the covariates be arranged by decreasing euclidian norm of their parameter estimates. 
}
\item{...}{
Further arguments to be passed to the \code{\link[graphics:plot]{plot}} function.
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
\code{\link{DIFlasso}}, \code{\link{print.DIFlasso}}
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

