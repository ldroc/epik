\name{sig_cr_heatmap}
\alias{sig_cr_heatmap}
\title{
Heatmaps for significant correlated regions
}
\description{
Heatmaps for significant correlated regions
}
\usage{
sig_cr_heatmap(sig_cr, txdb, expr, ha = NULL, gf_list = NULL)
}
\arguments{

  \item{sig_cr}{significant correlated regions, should be processed by \code{\link{cr_reduce}}}
  \item{txdb}{transcriptome annotation which was used in \code{\link{correlated_regions}}}
  \item{expr}{expression matrix which was used in \code{\link{correlated_regions}}}
  \item{ha}{top annotation for the expression heatmap, should be constructed by \code{\link[ComplexHeatmap]{HeatmapAnnotation}}}
  \item{gf_list}{a list of \code{\link[GenomicRanges]{GRanges}} objects which are additional genomic features used as annotations}

}
\details{
There are several heatmaps showing associations between difference sources of datasets, each row in the heatmaps is
a correlated region or other genomic association to this correlated region.

\itemize{
  \item heatmap for methylation (mean methylation in CR)
  \item one column heatmap which shows the methylation difference
  \item heatmap for gene expression
  \item heatmap describing how genomic features overlap to correlated regions
  \item if \code{\link{chipseq_hooks}}$chromHMM is set and there are two subgroups, there is a heamtap showing the difference of the overlapping of different chromatin states in the two groups
  \item a point plot showing the distance to nearest TSS
  \item overlap to promoter/gene body/intergenic regions
}

For the list heatmaps, rows are firstly split by negative correlation and positive correlation. In each sub cluster,
it is split by k-means clustering (four groups), and in each k-means cluster, rows are ordered by hierarchical clustering.

There will also be plots showing general statistics for each annotation.
}
\value{
No value is returned.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
# There is no example
NULL

}
