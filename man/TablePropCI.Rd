\name{TablePropCI}
\alias{TablePropCI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
TablePropCI
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
TablePropCI(df, method = "sisonglaz")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
%%     ~~Describe \code{df} here~~
}
  \item{method}{
%%     ~~Describe \code{method} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (df, method = "sisonglaz")
{
    res <- c()
    names <- colnames(df)
    nomscols <- c()
    for (i in 1:dim(df)[2]) nomscols <- c(nomscols, rep(names[i],
        dim(df)[1]))
    names <- rownames(df)
    nomsrows <- rep(names, dim(df)[2])
    for (i in 1:dim(df)[2]) res <- rbind(res, MultinomCI(df[,
        i], method = method))
    dd <- data.frame(Cols = nomscols, Rows = nomsrows, res \%>\%
        round(3))
    row.names(dd) <- NULL
    dd
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
