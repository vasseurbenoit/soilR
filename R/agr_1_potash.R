#' Recommendation of potash application in KY, USA.
#'
#' @description
#' Based on the reference values of AGR1 guidelines issued by the University
#' of Kentucky, potash fertilizer rates can be calculated for corn and
#' soybean.
#'
#' @param k Potash soil test result (lb/acre).
#' @param crop `corn` or `soybean`
#'
#' @return Amount of K2O (lb/ac) to apply.
#' @export
#'
#' @examples
#' agr_1_potash(k = 20, crop = "corn")
#'
#' agr_1_potash(k = 20, crop = "soybean")
agr_1_potash <- function(k,
                         crop){

  k2o <- if(crop == "corn"){

    # CORN
    ifelse(
      k > 301,
      0,
      ifelse(
        k >= 242 & k <= 300,
        30,
        ifelse(
          k >= 226 & k <= 241,
          40,
          ifelse(
            k >= 209 & k <= 225,
            50,
            ifelse(
              k >= 191 & k <= 208,
              60,
              ifelse(
                k >= 173 & k <= 190,
                70,
                ifelse(
                  k >= 155 & k <= 172,
                  80,
                  ifelse(
                    k >= 136 & k <= 154,
                    90,
                    ifelse(
                      k >= 118 & k <= 135,
                      100,
                      ifelse(
                        k >= 100 & k <= 117,
                        110,
                        120))))))))))

  } else {

    # SOYBEAN
    ifelse(
      k > 301,
      0,
      ifelse(
        k >= 242 & k <= 300,
        30,
        ifelse(
          k >= 226 & k <= 241,
          40,
          ifelse(
            k >= 209 & k <= 225,
            50,
            ifelse(
              k >= 191 & k <= 208,
              60,
              ifelse(
                k >= 173 & k <= 190,
                70,
                ifelse(
                  k >= 155 & k <= 172,
                  80,
                  ifelse(
                    k >= 136 & k <= 154,
                    90,
                    ifelse(
                      k >= 118 & k <= 135,
                      100,
                      ifelse(
                        k >= 100 & k <= 117,
                        110,
                        ifelse(
                          k >= 82 & k <= 99,
                          120,
                          ifelse(
                            k >= 64 & k <= 81,
                            130,
                            ifelse(
                              k >= 46 & k <= 63,
                              140,
                              150
                            )))))))))))))

  }

  return(k2o)

}
