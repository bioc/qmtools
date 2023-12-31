% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotRTgroup.R
\name{plotRTgroup}
\alias{plotRTgroup}
\title{Helper to visualize feature grouping}
\usage{
plotRTgroup(
  x,
  i,
  group,
  type = c("graph", "pairs"),
  rtime_group_var = "rtime_group",
  feature_group_var = "feature_group",
  cor_cut = 0.7,
  cor_use = c("everything", "all.obs", "complete.obs", "na.or.complete",
    "pairwise.complete.obs"),
  cor_method = c("pearson", "kendall", "spearman"),
  log2 = FALSE
)
}
\arguments{
\item{x}{A \linkS4class{SummarizedExperiment} object.}

\item{i}{A string or integer value specifying which assay values to use.
Choose the same value used in the feature grouping.}

\item{group}{A string specifying the label of retention time-based group to
visualize.}

\item{type}{A string specifying which type of plots to visualize.}

\item{rtime_group_var}{A string specifying the names of variable containing
the retention-time based grouping result in \code{rowData(x)}.}

\item{feature_group_var}{A string specifying the names of variable
containing the final feature grouping result in \code{rowData(x)}.}

\item{cor_cut}{A numeric value specifying a cut-off for the visualizing
correlations in a graph as edges. Ignored if type is "pairs".}

\item{cor_use}{A string specifying which method to compute correlations in
the presence of missing values. Refer to \code{?cor} for details. Choose
the same value used in the feature grouping. Ignored if type is "pairs".}

\item{cor_method}{A string specifying which correlation coefficient is to be
computed. See \code{?cor} for details. Choose the same value used in the
feature grouping. Ignored if type is "pairs".}

\item{log2}{A logical specifying whether feature intensities needs to be
log2-transformed before calculating a correlation matrix. Ignored if type
is "pairs". Choose the same value used in the feature grouping.}
}
\value{
A graph or pair plot.
}
\description{
Visualizes feature grouping results produced by \link{clusterFeatures}. A
retention-time based feature group is displayed with its sub-groups based on
the feature intensity correlations either using a pair plot or graph.
Features with the same color indicate that they are in the same group.
}
\examples{

data(faahko_se)

## Clustering
se <- clusterFeatures(faahko_se, i = "knn_vsn", rtime_var = "rtmed")

## Graph
plotRTgroup(se, i = "knn_vsn", group = "FG.22")

## Pairwise scatter
plotRTgroup(se, i = 3, group = "FG.22", cor_method = "spearman",
            log2 = TRUE, type = "pairs")

}
\seealso{
See \link{clusterFeatures} for feature grouping.
}
