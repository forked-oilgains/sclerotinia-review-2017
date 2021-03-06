% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pop_generator.R
\name{pop_generator}
\alias{pop_generator}
\title{generate a random population}
\usage{
pop_generator(n = 1000, samp = 100, ploidy = 1, freq = NULL,
  nall = sample(4:12, 11, replace = TRUE), mate_gen = 100, clone_gen = 0,
  mu = 0.05, verbose = TRUE, genclone = TRUE)
}
\arguments{
\item{n}{census size (default: 100)}

\item{ploidy}{ploidy of all samples (default: 1)}

\item{freq}{an optional vector of named allele frequencies.}

\item{nall}{an optional vector of allele numbers per locus}

\item{clone_gen}{number of generations to undergo clonal reproduction}

\item{mu}{mutation rate (number of mutations per generation over the whole
population)}

\item{verbose}{when `TRUE` (default), messages will be displayed as clonal
simulation progresses.}

\item{genclone}{when `TRUE` (default), data will be converted to genclone.}
}
\value{
a `genind` or `genclone` object.
}
\description{
generate a random population
}
\details{
By default, this will simulate 11 loci from 4 to 12 alleles/locus
  using allele frequencies drawn from a uniform distribution. Populations are
  initially created from a multinomial distribution at each locus separately.

  Clonal reproduction consists of first mutating a single individual at a
  single locus by shuffling the alleles at that locus. After mutation, the
  population is randomly sampled with replacement.
}
\examples{
pop_generator() # panmictic population
pop_genearator(clone_gen = 5, mu = 0.5)

}
