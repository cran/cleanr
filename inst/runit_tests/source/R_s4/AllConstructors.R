bincap <- function(response, predicted, true = "1") {
    return(methods::new(Class = "bincap", response = response,
                        predicted = predicted, true = true))
}
