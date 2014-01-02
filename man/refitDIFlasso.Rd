\name{refitDIFlasso}
\alias{refitDIFlasso}

\title{
Refit function for DIFlasso
}
\description{
Performs the refit of a DIFlasso object. Only the items diagosed as DIF items will be used to perform a new fit of the final model.
}
\usage{
refitDIFlasso(dif.obj)
}

\arguments{
  \item{dif.obj}{DIFlasso object, created by \code{\link{DIFlasso}}
}
}
\value{
\item{theta}{Estimated person abilities after refit}
\item{beta}{Estimated item difficulties after refit}
\item{gamma}{Estimated item-specific parameters after refit; one row per covariate, one column per item}
\item{P}{Number of persons}
\item{I}{Number of items}
\item{m}{Number of covariates}
\item{ref.item}{Reference item}
\item{dif.items}{Which items have been detected to be DIF items?}
\item{names.y}{Names of the items}
\item{names.x}{Names of the covariates}
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
\code{\link{print.DIFlasso.refit}}, \code{\link{plot.DIFlasso.refit}}, \code{\link{DIFlasso}}
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

