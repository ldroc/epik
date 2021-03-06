\name{subgroup_specific_genomic_regions}
\alias{subgroup_specific_genomic_regions}
\title{
Find subgroup specific regions
}
\description{
Find subgroup specific regions
}
\usage{
subgroup_specific_genomic_regions(gr, subgroup, present = 0.7, absent = 0.3, type = NULL)
}
\arguments{

  \item{gr}{a \code{\link[GenomicRanges]{GRanges}} object generated by \code{\link{common_regions}}}
  \item{subgroup}{subgroup information which corresponds to samples in \code{gr}}
  \item{present}{how to define a common region that is specifically present in one subgroup. The subgroup specificity is calculated based on the precent matrix stored in \code{gr}. For each subgroup which is defined in \code{subgroup}, if \code{present} is a single numeric value, it means the mean value should be larger than it. It can also be a function for which the input is the vector of percent in corresponding subgroup and the output should be a single logical value.}
  \item{absent}{how to define a common region is specifically absent in one subgroup. Format is same as \code{present}}
  \item{type}{It uses a string containing 1 and 0 to represent types of specificity. E.g. '1100' means present in subgroup 1 and 2 while absent in subgroup 3 and 4. By default, it will output all combination of subgroup specificities.}

}
\value{
This function splits the original \code{gr} into a list in which each element
contains regions corresponding to different subgroup specificity.
}
\seealso{
The returned value can be sent to \code{\link{heatmap_subgroup_specificity}} to visualize the specificity.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
\dontrun{
# following two calls are basically the same
subgroup_specific_genomic_regions(gr, subgroup, 
    present = 0.7, absent = 0.3)
subgroup_specific_genomic_regions(gr, subgroup, 
    present = function(x) mean(x) >= 0.7, 
    absent = function(x) mean(x) <= 0.3)
}
NULL
}
