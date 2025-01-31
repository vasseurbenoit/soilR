#' Calculation of the saturation, field capacity and permanent wilting point
#' characteristic humidities.
#'
#' @param clay_percentage Percentage clay.
#' @param sand_percentage Percentage sand.
#' @param organic_carbon_percentage Percentage organic carbon.
#' @param bulk_density_g_cm3 Bulk density (g/cm3)
#'
#' @description This pedotransfert function comes from Rawls et al (1982),
#' Estimation of Soil Water Properties. Parameters used come from table 3 for
#' a metric potential (bars) of -0.04, -0.33 and -15.0 for humidity at
#' saturation, field capacity and permanent wilting point, respectively.
#' For each of these metric potential (bars), the equation with the highest
#' correlation coefficient were chosen.
#'
#' @return List with humidity at permanent_wilting_point, field_capacity and
#' at saturation expressed in cm3/cm3.
#' @export
#'
#' @examples
#' p_rawls_1982(clay_percentage = 20,
#'              sand_percentage = 20,
#'              organic_carbon_percentage = 2,
#'              bulk_density_g_cm3 = 1.5)
p_rawls_1982 <- function(clay_percentage,
                         sand_percentage,
                         organic_carbon_percentage,
                         bulk_density_g_cm3){

  # Humidity permanent wilting point (cm3/cm3) ----
  humidity_permanent_wilting_point_cm3_cm3 <-
    0.0260 +
    0.0050 * clay_percentage +
    0.0158 * organic_carbon_percentage * parameters[["organic_carbon_to_organic_matter_conversion_factor"]]

  # Humidity field capacity (cm3/cm3) ----
  humidity_field_capacity_cm3_cm3 <-
    0.2391 -
    0.0019 * sand_percentage +
    0.0210 * organic_carbon_percentage * parameters[["organic_carbon_to_organic_matter_conversion_factor"]] +
    0.72 * humidity_permanent_wilting_point_cm3_cm3

  # Humidity at saturation (cm3/cm3) ----
  humidity_saturation_cm3_cm3 <-
    0.1829 -
    0.0246 * organic_carbon_percentage * parameters[["organic_carbon_to_organic_matter_conversion_factor"]] -
    0.0376 * bulk_density_g_cm3 +
    1.89 * humidity_field_capacity_cm3_cm3 -
    1.38 * humidity_permanent_wilting_point_cm3_cm3

  # Output ----
  output <- list(humidity_permanent_wilting_point_cm3_cm3,
                 humidity_field_capacity_cm3_cm3,
                 humidity_saturation_cm3_cm3)
  names(output) <- c("humidity_permanent_wilting_point_cm3_cm3",
                     "humidity_field_capacity_cm3_cm3",
                     "humidity_saturation_cm3_cm3")
  return(output)

}
