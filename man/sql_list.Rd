% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sql_list.R
\name{sql_list}
\alias{sql_list}
\title{Convert R vector to Single SQL Query Clause String.}
\usage{
sql_list(MyVector)
}
\arguments{
\item{MyVector}{A single dimension vector. Will be cast to character with
\code{as.character()}}
}
\value{
A single character sting of elements in the input vector surrounded
  by parens. Each element is enclosed in single quotes and seperated by
  commas.
}
\description{
\code{sql_list()} Returns a character string which can be pasted into
a SQL query without throwing an error.
}
\details{
Usually used in SQL WHERE clause as
\code{paste("... WHERE <exp> IN", sql_list(vector))}.
}
\examples{
sql_list(c(1, 2, 3))
sql_list(c("a", "b", "c"))

}
