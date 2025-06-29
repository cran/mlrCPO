% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CPO_applyFun.R
\name{cpoLogTrafoRegr}
\alias{cpoLogTrafoRegr}
\title{Log-Transform a Regression Target Variable.}
\usage{
cpoLogTrafoRegr(id)
}
\arguments{
\item{id}{[\code{character(1)}]\cr
id to use as prefix for the CPO's hyperparameters. this
must be used to avoid name clashes when composing two
CPOs of the same type, or with learners or other CPOS
with hyperparameters with clashing names.}
}
\value{
[\code{\link{CPO}}].
}
\description{
This is a \code{\link{CPOConstructor}} to be used to create a
\code{\link{CPO}}. It is called like any R function and returns
the created \code{\link{CPO}}.

Log-transforms the regression \code{\link[mlr:Task]{Task}}'s target variable.

If \code{predict.type} is \dQuote{response} for inversion, the model's prediction is
exponentiated.

If \code{predict.type} = \dQuote{se} prediction is performed, the model's prediction
is taken as the parameters of a lognormal random variable; the inverted prediction is then
\code{mean = exp(mean + se^2 / 2)}, \code{se = sqrt((exp(se^2) - 1) * exp(2 * mean + se^2))}.

It is therefore recommended to use \dQuote{se} prediction, possibly with the help of
\code{\link{cpoResponseFromSE}}.
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
\code{\link{makeCPOCase}()},
\code{\link{makeCPOMultiplex}()}
}
\concept{CPOs}
