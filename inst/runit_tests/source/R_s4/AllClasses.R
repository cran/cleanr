setClass(Class = "cap",
         representation = representation(response = "factor", "VIRTUAL"),
         prototype = prototype(response = factor()),
         validity = function(object) {
         }
         )

setClass(Class = "bincap",
         contains = "cap",
         representation = representation(predicted = "numeric",
                                         true = "character"),
         prototype = prototype(predicted = numeric(), true = character()),
         validity = function(object) {
             if (length(object@response) != length(object@predicted))
              return("response and predicted must have the same number of obs.")
             if (any(object@predicted < 0, na.rm = TRUE) ||
                dany(object@predicted > 1, na.rm = TRUE))
              return("probabilities should be in [0,1].")
             if (length(object@true) > 1)
              return("give a single character for the 'true'/'presence' class.")
             if (length(levels(object@response)) > 2)
              return("response has to be a two class factor.")
         }
         )