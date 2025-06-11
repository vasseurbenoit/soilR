#' Calculation of the saturation characteristic humidity.
#'
#' @param soil_texture_class_usda Soil textural class as defined in the USDA
#' texture triangle.
#' - C: clay
#' - SIC: silty clay
#' - SC: sandy clay
#' - CL: clay loam
#' - SICL: silty clay loam
#' - SCL: sandy clay loam
#' - L: loam
#' - SIL: silt loam
#' - SL: sandy loam
#' - SI: silt
#' - LS: loamy sand
#' - S: sand
#' @param porosity Porosity.
#'
#' @return Humidity at saturation expressed in cm3/cm3.
#' @export
#'
#' @examples
#' p_dalgliesh_foale_1998(soil_texture_class_usda = "S",
#'                        porosity = 0.1)
p_dalgliesh_foale_1998 <- function(soil_texture_class_usda,
                                   porosity){

  humidity_saturation_cm3_cm3 <-
    switch(soil_texture_class_usda,
           "S" = 0.93,
           "SL" = 0.93,
           "LS" = 0.93,
           "L" = 0.95,
           "SIL" = 0.95,
           "SI" = 0.95,
           "SCL" = 0.95,
           "SC" = 0.95,
           "C" = 0.97,
           "CL" = 0.97,
           "SIC" = 0.97,
           "SICL" = 0.97) * porosity

  return(humidity_saturation_cm3_cm3)

}
