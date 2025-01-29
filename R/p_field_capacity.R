#' Calculation of the field capacity
#'
#' @description
#' This pedotransfert function comes from Rawls et al (1982),
#' Estimation of Soil Water Properties
#'
#' @param sand Percentage sand
#' @param organic_carbon Percentage organic carbon
#' @param permanent_wilting_point Permanent wilting point (cm3/cm3)
#'
#' @return Field capacity (cm3/cm3)
#' @export
#'
#' @examples
#' p_field_capacity(sand = 20,
#'                  organic_carbon = 2,
#'                  permanent_wilting_point = 0.25)
p_field_capacity <- function(sand,
                             organic_carbon,
                             permanent_wilting_point){

  field_capacity <-
    0.2391 -
    0.0019 * sand +
    0.0210 * organic_carbon * parameters[["organic_carbon_to_organic_matter_conversion_factor"]] +
    0.72 * permanent_wilting_point

  return(field_capacity)

}
