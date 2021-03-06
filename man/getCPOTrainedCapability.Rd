% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/properties.R
\name{getCPOTrainedCapability}
\alias{getCPOTrainedCapability}
\alias{CPOTrainedCapability}
\title{Get the CPOTrained's Capabilities}
\usage{
getCPOTrainedCapability(cpo)
}
\arguments{
\item{cpo}{[\code{\link{CPOTrained}}]\cr
The \code{\link{CPOTrained}} object to query.}
}
\value{
[named \code{integer(2)}]. The first component is named \dQuote{retrafo} and specifies whether the object can perform
  retrafo operations; the second component is named \dQuote{invert} and specifies whether it can perform invert operations.
  \code{0} indicates no effect for the operation, \code{1} indicates an operation is performed, \code{-1} indicates the object
  cannot be used for the purpose.
}
\description{
While \code{\link{CPOInverter}} is only used for inversion,
both \code{\link{CPORetrafo}} and \code{\link{CPOInverter}} objects could be used for inversion using
\code{\link{invert}} in principle. However, some \code{\link{CPORetrafo}}
objects forbid inversion (and one must use the \code{\link{CPOInverter}} object instead),
some \code{\link{CPORetrafo}} objects are NO-OPS when called with \code{\link{invert}},
some can be used both for transformation and inversion.

The \code{CPOTrainedCapability} is a named \code{integer(2)} with two slots: \dQuote{retrafo} and
\dQuote{invert}. Both can be \code{1} (\code{\link{CPOTrained}} does something when used in retrafo
/ inversion), \code{0} (\code{\link{CPOTrained}} is a NO-OP when used in retrafo / inversion) or
\code{-1} (\code{\link{CPOTrained}} cannot be used in retrafo / inversion).
}
\section{Inverter capability}{

The invert capability of a \code{\link{CPOTrained}} depends on the \code{\link{CPO}} which was used to
create it. Whenever a \code{\link{CPO}} is applied to some data, the result has the \code{link{retrafo}}
and \code{\link{inverter}} attributes set that can be retrieved using the respectively named functions to
get the \code{\link{CPORetrafo}} and \code{\link{CPOInverter}} object.

Every \code{\link{CPO}} can be a
\dQuote{Feature Operation} CPO, a \dQuote{Target Operation} CPO, or a \dQuote{Retrafoless} CPO, or a composition
of these (see \link{OperatingType}).

If a (possibly compound) CPO contains only Feature Operation CPOs and Retrafoless CPOs, then it does not perform any operation
on the target column of a data set; hence there is no inversion to be performed, the resulting \code{\link{CPORetrafo}}
is a NO-OP when used with \code{\link{invert}}. The \code{\link{inverter}} attribute created is in fact a
\code{\link{NULLCPO}}), while the \code{\link{retrafo}} attribute contains a \code{\link{CPORetrafo}} with
capabilities \code{c(retrafo = 1, invert = 0)}.

If a (possibly compound) CPO also contains Target Operation CPOs, but they are independent of the prediction data features--e.g. a CPO that
takes the logarithm of the target column in a regression task--then the \code{\link{CPORetrafo}} object has enough information
to perform inversion and hence can also meaningfully be used with \code{\link{invert}}. In this case the capability
of the \code{\link{CPORetrafo}} will be \code{c(retrafo = 1, invert = 1)}. The \code{\link{CPOInverter}}
object retrieved using the \code{\link{inverter}} function can be used for the same task, but the benefit of the
\code{\link{CPORetrafo}} object is that it can be used for \emph{all} prediction data applied to it, while the
\code{\link{CPOInverter}} object needs to be retrieved for each prediction data set anew. The \code{\link{CPOInverter}}
object furthermore cannot be used for retrafo and hence has, like all \code{\link{CPOInverter}}, capabilities \code{c(retrafo = -1, invert = 1)}.

If a (possibly compound) CPO contains Target Operation CPOs that are not prediction data independent then the resulting
\code{\link{CPORetrafo}} has capability \code{c(retrafo = 1, invert = -1)}, since the inversion requires information about
the particular data set that was transformed.

A \code{\link{CPOInverter}} object \emph{always} has capabilities \code{c(retrafo = -1, invert = 1)}, since it can always be used
for \code{\link{invert}} and never used in the place of a \code{\link{CPORetrafo}}.

The only object with capabilities \code{c(retrafo = 0, invert = 0)} is \code{NULLCPO}. Other objects that don't have at least
one capability equal to \code{1} cannot be created.
}

\seealso{
Other getters and setters: 
\code{\link{CPO}},
\code{\link{getCPOAffect}()},
\code{\link{getCPOClass}()},
\code{\link{getCPOConstructor}()},
\code{\link{getCPOId}()},
\code{\link{getCPOName}()},
\code{\link{getCPOOperatingType}()},
\code{\link{getCPOPredictType}()},
\code{\link{getCPOProperties}()},
\code{\link{getCPOTrainedCPO}()},
\code{\link{setCPOId}()}

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
\code{\link{getCPOTrainedState}()},
\code{\link{is.retrafo}()},
\code{\link{makeCPOTrainedFromState}()},
\code{\link{pipeCPO}()},
\code{\link{print.CPOConstructor}()}

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
\code{\link{getCPOTrainedState}()},
\code{\link{is.inverter}()},
\code{\link{makeCPOTrainedFromState}()},
\code{\link{pipeCPO}()},
\code{\link{print.CPOConstructor}()}

Other CPO classifications: 
\code{\link{CPO}},
\code{\link{getCPOClass}()},
\code{\link{getCPOOperatingType}()}
}
\concept{CPO classifications}
\concept{getters and setters}
\concept{inverter related}
\concept{retrafo related}
