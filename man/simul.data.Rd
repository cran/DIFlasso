\name{simul.data}
\alias{simul.data}
\docType{data}
\title{
Simulated data set
}
\description{
Simulated data set with 100 persons, 10 items and 3 (standardized) covariates}
\usage{data(simul.data)}
\format{
  \describe{
    \item{\code{Item1}}{Item1}
    \item{\code{Item2}}{Item2}
    \item{\code{Item3}}{Item3}
    \item{\code{Item4}}{Item4}
    \item{\code{Item5}}{Item5}
    \item{\code{Item6}}{Item6}
    \item{\code{Item7}}{Item7}
    \item{\code{Item8}}{Item8}
    \item{\code{Item9}}{Item9}
    \item{\code{Item10}}{Item10}                                
    \item{\code{CovBin1}}{Binary covariate (standardized)}
    \item{\code{CovBin2}}{Binary covariate (standardized)}
    \item{\code{CovMet}}{Metric covariate (standardized)}        
  }
}

\references{
Tutz, Gerhard and Schauberger, Gunther (2013): \emph{A Penalty Approach to Differential Item Functioning in Rasch Models}, Technical Report 134, Department of Statistics, LMU Munich
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

