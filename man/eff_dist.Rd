% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eff_dist.R
\name{eff_dist}
\alias{eff_dist}
\title{Effective distances from background movements}
\usage{
eff_dist(edges)
}
\arguments{
\item{edges}{dataframe: directed and weighted edge dataframe capturing the background
movements between source nodes and target nodes.}
}
\value{
An effective-distance matrix, with elements the shortest path effective
distance weight between nodes i and j
}
\description{
Return shortest paths between locations in terms of effective distance given
background movements. Effective distances are defined as per the paper at \url{https://science.sciencemag.org/content/342/6164/1337}.
}
\section{Details}{

Routes of disease spread are often dominated by a set of most probable trajectories.
These probable trajectories can be derived using the effective distance given a
flux connectivity matrix $P$ from a systems mobility patterns. In P, elements
\eqn{P_{ij}} confer to the fraction of departing individuals leaving node (representing
hospital wards in this study) \eqn{v_i} and arriving at node \eqn{v_j}, such that \eqn{1 < P_{ij} \leq 1}.
Given P, we define the effective distance d_{ij} between locations: \deqn{d_{ij}= (1 - \log P_{ij} ) \leq 1}

In \eqn{d_{ij}}, a low proportion of movement from \eqn{v_i \rightarrow v_j} is corresponds
to a large effective distance. Explained in greater detail in \url{https://science.sciencemag.org/content/342/6164/1337},
the logarithm captures effective distances are additive along multi-step pathways.
Hence, deriving the most probable trajectories of disease spread from \eqn{v_i \rightarrow v_j}
is given by the directed path \eqn{\delta_{ij} = \{v_i \rightarrow,...,\rightarrow v_j\}}
with the smallest total effective distance \eqn{\lambda(\Gamma)}:

\deqn{\hat{\delta_{ij}} =  \min{\lambda}_\lambda \lambda(\delta_{ij})}

Typically, \eqn{\hat{\delta_{ij}}  \neq \hat{\delta_{hi}}}, since patient movement
patterns vary depending on procedures a given ward offers, and their starting
locations. Also note, for paths a shortest path \eqn{\hat{\delta_{ij}}} may not
exist (i.e for wards which are purely entry or exit points in the hospital).
}

\author{
Ashleigh C. Myall (\email{a.myall19@imperial.ac.uk})
}
