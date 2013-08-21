\name{printDIFlasso}
\alias{printDIFlasso}

\title{
Print function for DIFlasso
}
\description{
Prints the most important output of a DIFlasso object. 
}
\usage{
printDIFlasso(dif.obj)
}

\arguments{
  \item{dif.obj}{DIFlasso object, created by \code{\link{DIFlasso}}
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
\code{\link{DIFlasso}}, \code{\link{plotDIFlasso}}
}
\examples{
\dontrun{
data(simul.data)

Y <- simul.data[,1:10]
X <- simul.data[,11:13]

m1 <- DIFlasso(Y = Y, X = X, trace = TRUE) 
printDIFlasso(m1)
plotDIFlasso(m1)

m2 <- refitDIFlasso(m1)
printDIFlasso.refit(m2)
plotDIFlasso.refit(m2)
}
}
\keyword{DIFlasso}

