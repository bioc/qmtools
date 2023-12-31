% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalizeIntensity-functions.R
\name{scaleRows}
\alias{scaleRows}
\title{Scale along rows (features)}
\usage{
scaleRows(
  x,
  type = c("auto", "range", "pareto", "vast", "level", "sum", "max")
)
}
\arguments{
\item{x}{A matrix-like object.}

\item{type}{A scaling method to use.}
}
\value{
A matrix of the same dimension as \code{x} containing the scaled
intensities.
}
\description{
Function to scale a matrix of intensity data along the rows (features), as
described in van den Berg et al. (2006).
}
\details{
This function will do the following:
\itemize{
\item Auto scaling (unit variance scaling): each feature is mean-centered
and divided by its standard deviation.
\item Range scaling: each feature is mean-centered and divided by its range.
\item Pareto scaling: each feature is mean-centered and divided by the
square root of its standard deviation.
\item Vast scaling (variance stability scaling): it is an extension of auto
scaling, using the product of standard deviation and coefficient of
variation as a scale factor.
\item Level scaling: each feature is mean-centered and divided by its mean.
\item Sum scaling: each feature is divided by its sum.
\item Max scaling: each feature is divided by its maximum.
}
}
\examples{

data(faahko_se)

m <- assay(faahko_se, "knn")
scaleRows(m, type = "pareto")

}
\references{
van den Berg RA, Hoefsloot HC, Westerhuis JA, Smilde AK, van der Werf MJ.
Centering, scaling, and transformations: improving the biological
information content of metabolomics data. BMC Genomics. 2006 Jun 8;7:142.
doi: 10.1186/1471-2164-7-142. PMID: 16762068; PMCID: PMC1534033.
}
\seealso{
See \link{normalizeIntensity} that provides a
\linkS4class{SummarizedExperiment}-friendly wrapper for this function.
}
