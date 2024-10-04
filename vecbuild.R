cat("A = ")
rpa <- scan(what = "", n = 1)

cat("B = ")
rpb <- scan(what = "", n = 1)

pointA <- as.integer(unlist(strsplit(rpa, " ")))
pointB <- as.integer(unlist(strsplit(rpb, " ")))

res <- numeric(length(pointA))
for (i in seq_along(pointA)) {
    res[i] <- pointB[i] - pointA[i]
}

cat("{ ")
cat(res, sep = " ")
cat("}\n")

