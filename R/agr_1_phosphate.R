#' Recommendation of phosphate application in KY, USA.
#'
#' @description
#' Based on the reference values of AGR1 guidelines issued by the University
#' of Kentucky, phosphate fertilizer rates can be calculated for corn and
#' soybean.
#'
#' @param p Phosphorous soil test result.
#' @param crop `corn` or `soybean`
#'
#' @return Amount of P2O5 (lb/ac) to apply.
#' @export
#'
#' @examples
#' agr_1_phosphate(p = 6, crop = "corn")
#'
#' agr_1_phosphate(p = 6, crop = "soybean")
agr_1_phosphate <- function(p,
                            crop){

  p2o5 <- if(crop == "corn"){

    # CORN
    ifelse(
      p > 60,
      0,
      ifelse(
        p >= 46 & p <= 60,
        30,
        ifelse(
          p >= 41 & p <= 45,
          40,
          ifelse(
            p >= 37 & p <= 40,
            50,
            ifelse(
              p >= 33 & p <= 36,
              60,
              ifelse(
                p >= 28 & p <= 32,
                70,
                ifelse(
                  p >= 23 & p <= 27,
                  80,
                  ifelse(
                    p >= 19 & p <= 22,
                    90,
                    ifelse(
                      p >= 14 & p <= 18,
                      100,
                      ifelse(
                        p >= 9 & p <= 13,
                        110,
                        ifelse(
                          p >= 6 & p <= 8,
                          120,
                          200)))))))))))

  } else {

    # SOYBEAN
    ifelse(
      p > 60,
      0,
      ifelse(
        p >= 40 & p <= 60,
        30,
        ifelse(
          p >= 34 & p <= 39,
          40,
          ifelse(
            p >= 28 & p <= 33,
            50,
            ifelse(
              p >= 22 & p <= 27,
              60,
              ifelse(
                p >= 16 & p <= 21,
                70,
                ifelse(
                  p >= 11 & p <= 15,
                  80,
                  ifelse(
                    p >= 9 & p <= 10,
                    90,
                    ifelse(
                      p >= 7 & p <= 8,
                      100,
                      ifelse(
                        p == 6,
                        110,
                        120))))))))))

  }

  return(p2o5)

}
