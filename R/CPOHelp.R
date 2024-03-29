# make a dummy documentation that all CPOs

#' @title Dummy Function for Documentation Purposes
#'
#' @description
#' Not used.
#'
#' @param id [\code{character(1)}]\cr
#'   id to use as prefix for the CPO's hyperparameters. this
#'   must be used to avoid name clashes when composing two
#'   CPOs of the same type, or with learners or other CPOS
#'   with hyperparameters with clashing names.
#' @param export [\code{character}]\cr
#'   Either a character vector indicating the parameters to
#'   export as hyperparameters, or one of the special values
#'   \dQuote{export.all} (export all parameters),
#'   \dQuote{export.default} (export all parameters that are exported by default),
#'   \dQuote{export.set} (export all parameters that were set during construction),
#'   \dQuote{export.default.set} (export the intersection of the \dQuote{default} and \dQuote{set} parameters),
#'   \dQuote{export.unset} (export all parameters that were \emph{not} set during construction) or
#'   \dQuote{export.default.unset} (export the intersection of the \dQuote{default} and \dQuote{unset} parameters).
#'   Default is \dQuote{export.default}.
#' @param affect.type [\code{character} | \code{NULL}]\cr
#'   Type of columns to affect. A subset of \dQuote{numeric}, \dQuote{factor}, \dQuote{ordered}, \dQuote{other}, or \code{NULL}
#'   to not match by column type. Default is \code{NULL}.
#' @param affect.index [\code{numeric}]\cr
#'   Indices of feature columns to affect. The order of indices given is respected. Target column indices are not counted
#'   (since target columns are always included). Default is \code{integer(0)}.
#' @param affect.names [\code{character}]\cr
#'   Feature names of feature columns to affect. The order of names given is respected. Default is \code{character(0)}.
#' @param affect.pattern [\code{character(1)} | \code{NULL}]\cr
#'   \code{\link[base]{grep}} pattern to match feature names by. Default is \code{NULL} (no pattern matching)
#' @param affect.invert [\code{logical(1)}]\cr
#'   Whether to affect all features \emph{not} matched by other \code{affect.*} parameters.
#' @param affect.pattern.ignore.case [\code{logical(1)}]\cr
#'   Ignore case when matching features with \code{affect.pattern}; see \code{\link[base]{grep}}. Default is \code{FALSE}.
#' @param affect.pattern.perl [\code{logical(1)}]\cr
#'   Use Perl-style regular expressions for \code{affect.pattern}; see \code{\link[base]{grep}}. Default is \code{FALSE}.
#' @param affect.pattern.fixed [\code{logical(1)}]\cr
#'   Use fixed matching instead of regular expressions for \code{affect.pattern}; see \code{\link[base]{grep}}. Default is \code{FALSE}.
#' @keywords internal
cpoTemplate = function(id, export, affect.type, affect.index, affect.names, affect.pattern, affect.invert, affect.pattern.ignore.case, affect.pattern.perl, affect.pattern.fixed) {
  stop()
}
