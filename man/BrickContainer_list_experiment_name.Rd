% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BrickContainer_functions.R
\name{BrickContainer_list_experiment_name}
\alias{BrickContainer_list_experiment_name}
\title{Return the descriptive name of the BrickContainer}
\usage{
BrickContainer_list_experiment_name(Brick = NULL)
}
\arguments{
\item{Brick}{\strong{Required}.
A string specifying the path to the Brick store created
with Create_many_Bricks.}
}
\value{
A character string specifying the descriptive name of the
BrickContainer
}
\description{
\code{BrickContainer_list_experiment_name} returns the descriptive name of a
BrickContainer
}
\examples{
Bintable.path <- system.file("extdata",
"Bintable_100kb.bins", package = "HiCBricks")

out_dir <- file.path(tempdir(), "BrickContainer_list_expt_name_test")
dir.create(out_dir)

My_BrickContainer <- Create_many_Bricks(BinTable = Bintable.path, 
    bin_delim = " ", output_directory = out_dir, file_prefix = "Test", 
    experiment_name = "Vignette Test", resolution = 100000, 
    remove_existing = TRUE)

BrickContainer_list_experiment_name(My_BrickContainer)
}
