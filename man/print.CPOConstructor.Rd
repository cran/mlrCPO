% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.R
\name{print.CPOConstructor}
\alias{print.CPOConstructor}
\alias{print.CPO}
\alias{print.CPOTrained}
\alias{!.CPOConstructor}
\alias{!.CPO}
\alias{!.CPOTrained}
\title{Print CPO Objects}
\usage{
\method{print}{CPOConstructor}(x, verbose = FALSE, ...)

\method{print}{CPO}(x, verbose = FALSE, ...)

\method{print}{CPOTrained}(x, verbose = FALSE, ...)

\method{!}{CPOConstructor}(x)

\method{!}{CPO}(x)

\method{!}{CPOTrained}(x)
}
\arguments{
\item{x}{[\code{\link{CPOConstructor}} | \code{\link{CPO}} | \code{\link{CPOTrained}}]\cr
The \code{\link{CPOConstructor}} to print.}

\item{verbose}{[\code{logical(1)}]\cr
Whether to print further information. Default is \code{FALSE}.}

\item{...}{[any]\cr
Further arguments.}
}
\value{
[\code{invisible(NULL)}].
}
\description{
Prints a simple representation of a \code{\link{CPOConstructor}},
\code{\link{CPO}} or \code{\link{CPOTrained}}. If
\code{verbose} is \code{TRUE}, more information about the given objects
will be given. For \code{\link{CPOConstructor}}, that is the trafo and retrafo
functions, for \code{\link{CPO}}, the individual constituents of a compound
CPO will be printed.

Verbose printing can also be done using the \code{!} operator. \code{!cpo} is equivalent to
\code{print(cpo, verbose = TRUE)}.
}
\seealso{
Other CPOConstructor related: 
\code{\link{CPOConstructor}},
\code{\link{getCPOClass}()},
\code{\link{getCPOConstructor}()},
\code{\link{getCPOName}()},
\code{\link{identicalCPO}()},
\code{\link{makeCPO}()}

Other retrafo related: 
\code{\link{CPOTrained}},
\code{\link{NULLCPO}},
\code{\link{\%>>\%}()},
\code{\link{applyCPO}()},
\code{\link{as.list.CPO}},
\code{\link{clearRI}()},
\code{\link{getCPOClass}()},
\code{\link{getCPOName}()},
\code{\link{getCPOOperatingType}()},
\code{\link{getCPOPredictType}()},
\code{\link{getCPOProperties}()},
\code{\link{getCPOTrainedCPO}()},
\code{\link{getCPOTrainedCapability}()},
\code{\link{getCPOTrainedState}()},
\code{\link{is.retrafo}()},
\code{\link{makeCPOTrainedFromState}()},
\code{\link{pipeCPO}()}

Other inverter related: 
\code{\link{CPOTrained}},
\code{\link{NULLCPO}},
\code{\link{\%>>\%}()},
\code{\link{applyCPO}()},
\code{\link{as.list.CPO}},
\code{\link{clearRI}()},
\code{\link{getCPOClass}()},
\code{\link{getCPOName}()},
\code{\link{getCPOOperatingType}()},
\code{\link{getCPOPredictType}()},
\code{\link{getCPOProperties}()},
\code{\link{getCPOTrainedCPO}()},
\code{\link{getCPOTrainedCapability}()},
\code{\link{getCPOTrainedState}()},
\code{\link{is.inverter}()},
\code{\link{makeCPOTrainedFromState}()},
\code{\link{pipeCPO}()}
}
\concept{CPOConstructor related}
\concept{inverter related}
\concept{retrafo related}
