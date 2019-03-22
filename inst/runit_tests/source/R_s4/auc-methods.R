setMethod(f = "auc", signature(object = "bincap"),
          function(object) {
              n0 <- sum(object@response == object@true)
              n1 <- sum(object@response != object@true)
              s0 <- sum(rank(object@predicted, ties.method = "average",
                             na.last = TRUE) * (object@response == object@true))
              result <- (s0 - n0 * (n0 + 1) / 2) / (n0 * n1)
              return(result)
          }
          )
