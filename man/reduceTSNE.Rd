% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reduceFeatures-functions.R
\name{reduceTSNE}
\alias{reduceTSNE}
\title{t-distributed stochastic neighbor embedding (t-SNE)}
\usage{
reduceTSNE(x, ncomp = 2, normalize = TRUE, ...)
}
\arguments{
\item{x}{A matrix-like object.}

\item{ncomp}{A integer specifying the number of components to extract. Must
be either 1, 2, or 3.}

\item{normalize}{A logical specifying whether the input matrix is
mean-centered and scaled so that the largest absolute of the centered
matrix is equal to unity. See \link[Rtsne:normalize_input]{Rtsne::normalize_input} for details.}

\item{...}{Additional arguments passed to \link[Rtsne:Rtsne]{Rtsne::Rtsne}.}
}
\value{
A reduced.tsne object with the same number of rows as \code{ncol(x)}
containing the dimension reduction result.
}
\description{
Performs t-SNE on a matrix-like object where rows represent features and
columns represent samples.
}
\details{
t-SNE is well-suited for visualizing high-dimensional data by giving each
data point a location in a two or three-dimensional map. This function
performs t-SNE with the transpose of \code{x} using \link[Rtsne:Rtsne]{Rtsne::Rtsne} and returns a
\code{reduced.tsne} object that is a matrix with custom attributes to summarize
(via \link{summary}) and visualize (via \link{plotReduced}) the t-SNE result. The
custom attributes include the following:
\itemize{
\item \code{method}: The method used to reduce the dimension of data.
\item \code{ncomp}: The number of components extracted.
\item \code{perplexity}: The perplexity parameter used.
\item \code{theta}: The speed/accuracy trade-off parameter used.
\item \code{normalized}: A logical indicating whether the data was normalized prior
to t-SNE.
}
}
\examples{

data(faahko_se)

m <- assay(faahko_se, "knn_vsn")
res <- reduceTSNE(m, perplexity = 3)
summary(res)

}
\references{
L.J.P. van der Maaten and G.E. Hinton. Visualizing High-Dimensional Data
Using t-SNE. Journal of Machine Learning Research 9(Nov):2579-2605, 2008.

L.J.P. van der Maaten. Accelerating t-SNE using Tree-Based Algorithms.
Journal of Machine Learning Research 15(Oct):3221-3245, 2014.

Jesse H. Krijthe (2015). Rtsne: T-Distributed Stochastic Neighbor Embedding
using a Barnes-Hut Implementation, URL: https://github.com/jkrijthe/Rtsne
}
\seealso{
See \link{reduceFeatures} that provides a
\linkS4class{SummarizedExperiment}-friendly wrapper for this function.

See \link{plotReduced} for visualization.

See \link[Rtsne:Rtsne]{Rtsne::Rtsne} for the underlying function that does the work.
}
