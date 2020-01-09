methods::setClass(Class = "cap",
         representation = methods::representation(response = "factor",
                                                  "VIRTUAL"),
         prototype = methods::prototype(response = factor()),
         validity = function(object) {
         }
         )

methods::setClass(Class = "bincap",
         contains = "cap",
         representation = methods::representation(predicted = "numeric",
                                         true = "character"),
         prototype = methods::prototype(predicted = numeric(),
                                        true = character()),
         validity = function(object) {
             if (length(object@response) != length(object@predicted))
              return("response and predicted must have the same number of obs.")
             if (any(object@predicted < 0, na.rm = TRUE) ||
                 any(object@predicted > 1, na.rm = TRUE))
              return("probabilities should be in [0,1].")
             if (length(object@true) > 1)
              return("give a single character for the 'true'/'presence' class.")
             if (length(levels(object@response)) > 2)
              return("response has to be a two class factor.")
         }
         )
