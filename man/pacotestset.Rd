\name{pacotestset}
\alias{pacotestset}

\title{Create and Alter a Pacotest Options List}

\description{ The function creates or updates a list object, which is required for applying the \code{\link{pacotest}} function.}

\arguments{ 
\item{pacotestOptions}{
A options list for the \code{\link{pacotest}} function generated by the \code{\link{pacotestset}} function.
}

\item{testType}{
A string which specifies the type of the test for testing the simplifying assumption.

Possible values: \code{CCC} | \code{VI}
}

\item{grouping}{
For \code{testType = CCC}:

The grouping method which is used to obtain a partitioning of the support of the conditioning variable W.

Possible values: \code{TreeCCC} | \code{SumMedian} | \code{SumThirdsI} | \code{SumThirdsII} | \code{SumThirdsIII} | \code{SumQuartiles} | \code{ProdMedian} | \code{ProdThirdsI} | \code{ProdThirdsII} | \code{ProdThirdsIII} | \code{ProdQuartiles} | \code{TreeEC}
}

\item{expMinSampleSize}{
For \code{testType = CCC} with \code{grouping = TreeCCC | TreeEC}:

The minimum number of observations which are allocated to a group in the decision tree learning process. The default value is \code{100}.
}

\item{aggInfo}{
For \code{testType = CCC} with \code{grouping = TreeCCC | TreeEC}:

The method used for aggregating information in the conditioning set. The information in the conditioning set can be aggregated by either taking the mean of all variables or the pairwise mean. The result is added as an additional variable which can be used by the decision tree to partition the support of the conditioning variable W.

Possible values: \code{none} | \code{meanAll} | \code{meanPairwise}
}

\item{withEstUncert}{
For \code{testType = CCC}:

A logical variable indicating whether the asymptotic-variance covariance matrix of the estimated correlations should be corrected for the estimation uncertainty of the probability integral transforms.
}

\item{estUncertWithRanks}{
For \code{testType = CCC}:

A logical variable indicating whether the asymptotic-variance covariance matrix of the estimated correlations should be corrected for the estimation uncertainty induced by using a semiparametric estimator for the vine copula, i.e., empirical cdf's for the univariate margins and parametric copula families as building blocks of the R-vine copula.
}

\item{finalComparison}{
For \code{testType = CCC} with \code{grouping = TreeCCC | TreeEC}:

A variable specifying whether at the end of the decision tree all subsets being part of the partition are compared against each other or whether only the pair with the highest value of the test statistic is used.

Possible values: \code{pairwiseMax} | \code{all}
}

\item{penaltyParams}{
For \code{testType = CCC} with \code{grouping = TreeCCC | TreeEC}:

A vector of length two, specifying the functional form of the penalty. The penalty is a function of the sample size n and chosen to be lambda(n) = cn^(-beta). The first entry of the vector is specifying the level c of the penalty and needs to be a positive real number. The second entry of the vector is specifying the power beta of the penalty and needs to be chosen from the interval (0,1).
}

\item{gamma0Partition}{
For \code{testType = CCC} with \code{grouping = TreeCCC | TreeEC}:

The gamma0 partition. I.e., the partition which is favoured via the penalty under the H0.

Possible values: \code{SumMedian} | \code{SumThirdsI} | \code{SumThirdsII} | \code{SumThirdsIII} | \code{SumQuartiles} | \code{ProdMedian} | \code{ProdThirdsI} | \code{ProdThirdsII} | \code{ProdThirdsIII} | \code{ProdQuartiles}

}

\item{groupedScatterplots}{
For \code{testType = CCC}:

A logical whether grouped scatterplots should be produced.
}

\item{decisionTreePlot}{
For \code{testType = CCC}:

A logical whether the partition of the support of W should be illustrated as a decision tree plot.
}


\item{numbBoot}{For \code{testType = VI}:

The number of bootstrap replications for computing p-values using the multiplier bootstrap approach.
}

}



\details{
Calling without any arguments prints all possible options.
           \preformatted{pacotestset()}

Calling with a string, that specifies the test type, gives back a option list with the default values corresponding to each test.
           \preformatted{pacotestOptions = pacotestset('CCC')}
           \preformatted{pacotestOptions = pacotestset('VI')}

Calling with pairs of parameter names and values creates an \code{pacotestOptions} list in which the named parameters have the specified values.
           \preformatted{pacotestOptions = pacotestset('Name1',Value1,'Name2',Value2,...)}

Calling with an existing \code{pacotestOptions} list checks the list for consistency.
           \preformatted{pacotestset(pacotestOptions)}

Calling with an existing \code{pacotestOptions} list and pairs of parameter names and values creates a copy of the existing list, where the named parameters are updated with the provided values.
           \preformatted{pacotestOptionsNew = pacotestset(pacotestOptions,'Name1',Value1,'Name2',Value2,...)}
}



\value{The function returns a \code{pacotestOptions} list which can be used as input argument for the functions \code{\link{pacotest}}, \code{\link{pacotestRvineSeq}} and \code{\link{pacotestRvineSingleCopula}}.
}
\author{
Malte S. Kurz
}


\seealso{
\code{\link{pacotest-package}}, \code{\link{pacotest}}, \code{\link{pacotestRvineSeq}}, \code{\link{pacotestRvineSingleCopula}}
}

\references{
Kurz, M. S. and F. Spanhel (2022), "Testing the simplifying assumption in high-dimensional vine copulas", Electronic Journal of Statistics 16 (2), pp. 5226-5276.
}

