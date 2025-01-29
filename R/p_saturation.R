#' Calculation of the saturation
#'
#' @description
#' This pedotransfert function comes from Rawls et al (1982),
#' Estimation of Soil Water Properties
#'
#' @param sand Percentage sand
#' @param organic_carbon Percentage organic carbon
#' @param bulk_density Bulk density (g/cm3)
#' @param field_capacity Field capacity (cm3/cm3)
#' @param wilting_point Wilting point (cm3/cm3)
#'
#' @return Saturation (cm3/cm3)
#' @export
#'
#' @examples
#' p_saturation(sand = 20,
#'              organic_carbon = 2,
#'              bulk_density = 1.5,
#'              field_capacity = 0.5,
#'              wilting_point = 0.25)
p_saturation <- function(sand,
                             organic_carbon,
                             bulk_density,
                             field_capacity,
                             wilting_point){

  saturation <-
    0.1829 -
    0.0246 * organic_carbon * parameters[["organic_carbon_to_organic_matter_conversion_factor"]] +
    1.89 * field_capacity -
    1.38 * wilting_point

  return(saturation)

}
