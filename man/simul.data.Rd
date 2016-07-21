\name{simul.data}
\alias{simul.data}
\docType{data}
\title{
Simulated Data Set
}
\description{
Simulated data set with 100 persons, 10 items and 3 (standardized) covariates. Items 1, 2 and 3 are DIF items.}
\usage{data(simul.data)}
\format{
  \describe{
    \item{\code{Item1}}{Item 1, DIF item}
    \item{\code{Item2}}{Item 2, DIF item}
    \item{\code{Item3}}{Item 3, DIF item}
    \item{\code{Item4}}{Item 4, non-DIF item}
    \item{\code{Item5}}{Item 5, non-DIF item}
    \item{\code{Item6}}{Item 6, non-DIF item}
    \item{\code{Item7}}{Item 7, non-DIF item}
    \item{\code{Item8}}{Item 8, non-DIF item}
    \item{\code{Item9}}{Item 9, non-DIF item}
    \item{\code{Item10}}{Item 10, non-DIF item}                                
    \item{\code{CovBin1}}{Binary covariate (standardized)}
    \item{\code{CovBin2}}{Binary covariate (standardized)}
    \item{\code{CovMet}}{Metric covariate (standardized)}        
  }
}
\references{
Tutz, Gerhard and Schauberger, Gunther (2015): \emph{A Penalty Approach to Differential Item Functioning in Rasch Models}, Psychometrika, 80(1), 21 - 43
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

