% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CPO_meta.R
\name{makeCPOCase}
\alias{makeCPOCase}
\alias{cpoCase}
\title{Build Data-Dependent CPOs}
\usage{
makeCPOCase(
  par.set = makeParamSet(),
  par.vals = list(),
  export.cpos = list(),
  dataformat = c("df.features", "split", "df.all", "task", "factor", "ordered",
    "numeric"),
  dataformat.factor.with.ordered = TRUE,
  properties.data = NULL,
  properties.adding = NULL,
  properties.needed = NULL,
  properties.target = NULL,
  cpo.build
)

cpoCase(
  par.set = makeParamSet(),
  par.vals = list(),
  export.cpos = list(),
  dataformat = c("df.features", "split", "df.all", "task", "factor", "ordered",
    "numeric"),
  dataformat.factor.with.ordered = TRUE,
  properties.data = NULL,
  properties.adding = NULL,
  properties.needed = NULL,
  properties.target = NULL,
  cpo.build,
  id,
  export = "export.default",
  affect.type = NULL,
  affect.index = integer(0),
  affect.names = character(0),
  affect.pattern = NULL,
  affect.invert = FALSE,
  affect.pattern.ignore.case = FALSE,
  affect.pattern.perl = FALSE,
  affect.pattern.fixed = FALSE
)
}
\arguments{
\item{par.set}{[\code{\link[ParamHelpers:makeParamSet]{ParamSet}}]\cr
Parameters (additionally to the exported CPOs) of the CPO. Default is the empty ParamSet.}

\item{par.vals}{[\code{list}]\cr
Named list of default parameter values for the CPO. These are used additionally to the
parameter default values of \code{par.set}. It is often more elegant to use
these default values, and not \code{par.vals}. Default is \code{list()}.
Default is \code{list()}.}

\item{export.cpos}{[\code{list} of \code{CPO}]\cr
  List of \code{CPO} objects that have their hyperparameters exported. If this is a named list, the
  names must be unique and represent the parameter name by which
  they are given to the \code{cpo.build} function. They are also the IDs that will
  be given to the CPOs upon construction. If the list is not named,
  the IDs (or default names, in case of \code{\link{CPOConstructor}}s),
  are used instead, and need to be unique.

  All \code{\link{CPO}}s in the list must either be all Feature Operation CPOs,
  all Target Operation CPOs performing the same conversion, or all Retrafoless CPOs.

  The \code{cpo.build} function needs to have an argument for each of the names in the list. The \code{CPO} objects
  are pre-configured by the framework to have the hyperparameter settings as set by the ones exported by \code{cpoCase}.
  Default is \code{list()}.}

\item{dataformat}{[\code{character(1)}]\cr
  Indicate what format the data should be as seen by \dQuote{cpo.build}. See the parameter in \code{\link{makeCPO}}
  for details.

  Note that if the \code{\link{CPO}}s in \code{export.cpos} are Retrafoless CPOs, this must be either \dQuote{task} or \dQuote{df.all}.
  Default is \dQuote{df.features}.}

\item{dataformat.factor.with.ordered}{[\code{logical(1)}]\cr
Whether to treat \code{ordered} typed features as \code{factor} typed features. See the parameter in \code{\link{makeCPO}}.
Default is \code{TRUE}.}

\item{properties.data}{[\code{character}]\cr
  See the parameter in \code{\link{makeCPO}}.

  The properties of the resulting \code{\link{CPO}} are calculated from the constituent \code{\link{CPO}}s automatically in the
  most lenient way. If this parameter is not \code{NULL}, the calculated the given properties are used instead of the calculated properties.

  Default is \code{NULL}.}

\item{properties.adding}{[\code{character}]\cr
  See the parameter in \code{\link{makeCPO}}.

  The properties of the resulting \code{\link{CPO}} are calculated from the constituent \code{\link{CPO}}s automatically in the
  most lenient way. If this parameter is not \code{NULL}, the calculated the given properties are used instead of the calculated properties.

  Default is \code{NULL}.}

\item{properties.needed}{[\code{character}]\cr
  See the parameter in \code{\link{makeCPO}}.

  The properties of the resulting \code{\link{CPO}} are calculated from the constituent \code{\link{CPO}}s automatically in the
  most lenient way. If this parameter is not \code{NULL}, the calculated the given properties are used instead of the calculated properties.

  Default is \code{NULL}.}

\item{properties.target}{[\code{character}]\cr
  See the parameter in \code{\link{makeCPO}}.

  The properties of the resulting \code{\link{CPO}} are calculated from the constituent \code{\link{CPO}}s automatically in the
  most lenient way. If this parameter is not \code{NULL}, the calculated the given properties are used instead of the calculated properties.

  Default is \code{NULL}.}

\item{cpo.build}{[\code{function}]\cr
  This function works similar to \code{cpo.trafo} in \code{\link{makeCPO}}: It has the arguments \code{data}, \code{target}, one argument for each
  hyperparameter declared in \code{par.set}. However, it also has one parameter for each entry in \code{export.cpos}, named by each item
  in that list. The \code{cpoCase} framework supplies the pre-configured \code{CPO}s (pre-configured as the exported hyperparameters of \code{cpoCase}
  demand) to the \code{cpo.build} code via these parameters. The return value of \code{cpo.build} must be a \code{CPO}, which will then be used on the data.

  Just as \code{cpo.trafo} in \code{\link{makeCPO}}, this can also be a \sQuote{headless} function; it then must be written as an expression, starting
  with a \code{\{}.}

\item{id}{[\code{character(1)}]\cr
id to use as prefix for the CPO's hyperparameters. this
must be used to avoid name clashes when composing two
CPOs of the same type, or with learners or other CPOS
with hyperparameters with clashing names.}

\item{export}{[\code{character}]\cr
Either a character vector indicating the parameters to
export as hyperparameters, or one of the special values
\dQuote{export.all} (export all parameters),
\dQuote{export.default} (export all parameters that are exported by default),
\dQuote{export.set} (export all parameters that were set during construction),
\dQuote{export.default.set} (export the intersection of the \dQuote{default} and \dQuote{set} parameters),
\dQuote{export.unset} (export all parameters that were \emph{not} set during construction) or
\dQuote{export.default.unset} (export the intersection of the \dQuote{default} and \dQuote{unset} parameters).
Default is \dQuote{export.default}.}

\item{affect.type}{[\code{character} | \code{NULL}]\cr
Type of columns to affect. A subset of \dQuote{numeric}, \dQuote{factor}, \dQuote{ordered}, \dQuote{other}, or \code{NULL}
to not match by column type. Default is \code{NULL}.}

\item{affect.index}{[\code{numeric}]\cr
Indices of feature columns to affect. The order of indices given is respected. Target column indices are not counted
(since target columns are always included). Default is \code{integer(0)}.}

\item{affect.names}{[\code{character}]\cr
Feature names of feature columns to affect. The order of names given is respected. Default is \code{character(0)}.}

\item{affect.pattern}{[\code{character(1)} | \code{NULL}]\cr
\code{\link[base]{grep}} pattern to match feature names by. Default is \code{NULL} (no pattern matching)}

\item{affect.invert}{[\code{logical(1)}]\cr
Whether to affect all features \emph{not} matched by other \code{affect.*} parameters.}

\item{affect.pattern.ignore.case}{[\code{logical(1)}]\cr
Ignore case when matching features with \code{affect.pattern}; see \code{\link[base]{grep}}. Default is \code{FALSE}.}

\item{affect.pattern.perl}{[\code{logical(1)}]\cr
Use Perl-style regular expressions for \code{affect.pattern}; see \code{\link[base]{grep}}. Default is \code{FALSE}.}

\item{affect.pattern.fixed}{[\code{logical(1)}]\cr
Use fixed matching instead of regular expressions for \code{affect.pattern}; see \code{\link[base]{grep}}. Default is \code{FALSE}.}
}
\value{
[\code{\link{CPO}}].
}
\description{
This is a \code{\link{CPOConstructor}} to be used to create a
\code{\link{CPO}}. It is called like any R function and returns
the created \code{\link{CPO}}.

The meta CPO which determines what CPO to apply to a data depending on
a provided function. Many parameters coincide with the parameters of \code{\link{makeCPO}},
it is suggested to read the relevant parameter description there.

\code{makeCPOCase} creates a \code{\link{CPOConstructor}}, while \code{cpoCase} can be
used as \code{\link{CPOConstructor}} itself.
}
\section{General CPO info}{

This function creates a CPO object, which can be applied to
\code{\link[mlr]{Task}}s, \code{data.frame}s, \code{link[mlr]{Learner}}s
and other CPO objects using the \code{\link{\%>>\%}} operator.

The parameters of this object can be changed after creation
using the function \code{\link[mlr]{setHyperPars}}. The other
hyper-parameter manipulating functins, \code{\link[mlr]{getHyperPars}}
and \code{\link[ParamHelpers]{getParamSet}} similarly work as one expects.

If the \dQuote{id} parameter is given, the hyperparameters
will have this id as aprefix; this will, however, not change
the parameters of the creator function.
}

\section{Calling a \code{\link{CPOConstructor}}}{

CPO constructor functions are called with optional values of parameters, and additional \dQuote{special} optional values.
The special optional values are the \code{id} parameter, and the \code{affect.*} parameters. The \code{affect.*} parameters
enable the user to control which subset of a given dataset is affected. If no \code{affect.*} parameters are given, all
data features are affected by default.
}

\seealso{
Other CPOs: 
\code{\link{cpoApplyFun}()},
\code{\link{cpoApplyFunRegrTarget}()},
\code{\link{cpoAsNumeric}()},
\code{\link{cpoCache}()},
\code{\link{cpoCbind}()},
\code{\link{cpoCollapseFact}()},
\code{\link{cpoDropConstants}()},
\code{\link{cpoDropMostlyConstants}()},
\code{\link{cpoDummyEncode}()},
\code{\link{cpoFilterAnova}()},
\code{\link{cpoFilterCarscore}()},
\code{\link{cpoFilterChiSquared}()},
\code{\link{cpoFilterFeatures}()},
\code{\link{cpoFilterGainRatio}()},
\code{\link{cpoFilterInformationGain}()},
\code{\link{cpoFilterKruskal}()},
\code{\link{cpoFilterLinearCorrelation}()},
\code{\link{cpoFilterMrmr}()},
\code{\link{cpoFilterOneR}()},
\code{\link{cpoFilterPermutationImportance}()},
\code{\link{cpoFilterRankCorrelation}()},
\code{\link{cpoFilterRelief}()},
\code{\link{cpoFilterRfCImportance}()},
\code{\link{cpoFilterRfImportance}()},
\code{\link{cpoFilterRfSRCImportance}()},
\code{\link{cpoFilterSymmetricalUncertainty}()},
\code{\link{cpoFilterUnivariate}()},
\code{\link{cpoFilterVariance}()},
\code{\link{cpoFixFactors}()},
\code{\link{cpoIca}()},
\code{\link{cpoImpactEncodeClassif}()},
\code{\link{cpoImpactEncodeRegr}()},
\code{\link{cpoImpute}()},
\code{\link{cpoImputeConstant}()},
\code{\link{cpoImputeHist}()},
\code{\link{cpoImputeLearner}()},
\code{\link{cpoImputeMax}()},
\code{\link{cpoImputeMean}()},
\code{\link{cpoImputeMedian}()},
\code{\link{cpoImputeMin}()},
\code{\link{cpoImputeMode}()},
\code{\link{cpoImputeNormal}()},
\code{\link{cpoImputeUniform}()},
\code{\link{cpoLogTrafoRegr}()},
\code{\link{cpoMakeCols}()},
\code{\link{cpoMissingIndicators}()},
\code{\link{cpoModelMatrix}()},
\code{\link{cpoOversample}()},
\code{\link{cpoPca}()},
\code{\link{cpoProbEncode}()},
\code{\link{cpoQuantileBinNumerics}()},
\code{\link{cpoRegrResiduals}()},
\code{\link{cpoResponseFromSE}()},
\code{\link{cpoSample}()},
\code{\link{cpoScale}()},
\code{\link{cpoScaleMaxAbs}()},
\code{\link{cpoScaleRange}()},
\code{\link{cpoSelect}()},
\code{\link{cpoSmote}()},
\code{\link{cpoSpatialSign}()},
\code{\link{cpoTransformParams}()},
\code{\link{cpoWrap}()},
\code{\link{makeCPOMultiplex}()}

Other special CPOs: 
\code{\link{cpoCbind}()},
\code{\link{cpoTransformParams}()},
\code{\link{cpoWrap}()},
\code{\link{makeCPOMultiplex}()}
}
\concept{CPOs}
\concept{special CPOs}
