% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pool_t_test.R
\name{pool_t_test}
\alias{pool_t_test}
\title{Calculates the pooled t-test and Confidence intervals}
\usage{
pool_t_test(object, conf.level = 0.95, dfcom = NULL, statistic = FALSE)
}
\arguments{
\item{object}{An object of class 'mistats' ('Multiply Imputed
Statistical Analysis'.)}

\item{conf.level}{conf.level Confidence level of the confidence intervals.}

\item{dfcom}{Number of completed-data analysis degrees of freedom.
Default number is taken from function \code{cindex}.}

\item{statistic}{if TRUE (default) the test statistic and p-value are
provided, if FALSE these are not shown.}
}
\value{
An object of class \code{mipool} from which the following objects
can be extracted:
\itemize{
\item  \code{Mean diff} Difference between means
\item  \code{SE} standard error
\item  \code{t} t-value (for confidence interval)
\item  \code{low_r} lower limit of confidence interval
\item  \code{high_r} upper limit of confidence interval
\item  \code{statistic} test statistic
\item  \code{pval} p-value
}
}
\description{
\code{pool_t_test} Calculates the pooled t-test, confidence intervals
and p-value.
}
\examples{

 imp_dat <- df2milist(lbpmilr, impvar="Impnr")
 res_stats <- with(data=imp_dat,
  expr = t_test(Pain ~ Gender, var_equal=TRUE, paired=FALSE))
 res <- pool_t_test(res_stats)
 res

}
\seealso{
\code{\link{with.milist}}, \code{\link{t_test}}
}
\author{
Martijn Heymans, 2022
}
