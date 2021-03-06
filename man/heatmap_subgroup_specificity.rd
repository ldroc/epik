\name{heatmap_subgroup_specificity}
\alias{heatmap_subgroup_specificity}
\title{
Heatmap for visualizing subgroup specific genomic regions
}
\description{
Heatmap for visualizing subgroup specific genomic regions
}
\usage{
heatmap_subgroup_specificity(gr_list, genomic_features = NULL,
    ha = HeatmapAnnotation(subgroup = attr(gr_list, "subgroup")), ...)
}
\arguments{

  \item{gr_list}{a list of \code{\link[GenomicRanges]{GRanges}} objects which is generated by \code{\link{subgroup_specific_genomic_regions}}}
  \item{genomic_features}{Genomic features that are used for annotating regions in \code{gr_list}, it should be a list or a single \code{\link[GenomicRanges]{GRanges}} objects}
  \item{ha}{the default column annotation is the subgroups used in \code{\link{subgroup_specific_genomic_regions}} step. The value should be a \code{\link[ComplexHeatmap]{HeatmapAnnotation-class}} object.}
  \item{...}{pass to \code{\link[ComplexHeatmap]{draw,HeatmapList-method}}}

}
\details{
Columns are clustered within each subgroup and rows are clustered for each type of specificity.
}
\value{
A \code{\link[ComplexHeatmap]{HeatmapList-class}} object
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
# There is no example
NULL

}
