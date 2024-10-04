#     Vector operations
# To run some code from file --> [Ctrl + Enter]
# To run all file --> [Ctrl + Shift + Enter]
# Load necessary library
library(magrittr)

# Vector length
veclen <- function(coords) {
  return(sqrt(
    coords[1]^2 +
      coords[2]^2 +
      coords[3]^2
  ))
}

# Vector Summing
vecsum <- function(avec, bvec) {
  result <- numeric(length(avec))
  for (i in seq_along(avec)) {
    result[i] <- avec[i] + bvec[i]
  }
  return(result)
}

# Entry Point
dead <- FALSE

while (!dead) {
  raw <- readline(prompt = "3D int32 coords (using space): ")
  coords <- as.numeric(unlist(strsplit(raw, " ")))

  oper <- readline(prompt = "oper: ")

  if (oper == "len") {
    print(veclen(coords))
  }

  if (oper == "mula") {
    a <- as.integer(readline(prompt = "a: "))
    print(vecmul(coords, a))
  }

  if (oper == "sumv") {
    raw <- readline(prompt = "3D int32 coords (using space): ")
    next_coords <- as.numeric(unlist(strsplit(raw, " ")))
    print(vecsum(coords, next_coords))
  }

  if (oper == "q") {
    dead <- TRUE
  }
}
