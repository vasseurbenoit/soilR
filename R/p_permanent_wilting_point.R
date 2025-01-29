#' Calculation of the permanent wilting point
#'
#' @description
#' This pedotransfert function comes from Rawls et al (1982),
#' Estimation of Soil Water Properties
#'
#' @param clay Percentage of clay
#' @param organic_carbon Percentage organic carbon
#'
#' @return Permanent wilting point (cm3/cm3)
#' @export
#'
#' @examples
#' p_permanent_wilting_point(clay = 20,
#'                           organic_carbon = 2)
p_permanent_wilting_point <- function(clay,
                                      organic_carbon){

  permanent_wilting_point <-
    0.0260 +
    0.0050 * clay +
    0.0158 * organic_carbon * parameters[["organic_carbon_to_organic_matter_conversion_factor"]]

  return(permanent_wilting_point)

}
