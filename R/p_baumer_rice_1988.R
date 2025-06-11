#' Calculation of the porosity.
#'
#' @description The particle density is adjusted to take into account Soil
#' Organic Matter within this function.
#'
#' The function coded here is: porosity = 1 - BD/rho with BD the bulk density
#' (g/cm3) and rho the particle density (g/cm3).
#'
#' @param bulk_density_g_cm3 Bulk density (g/cm3).
#' @param organic_carbon_percentage Organic carbon percentage.
#'
#' @return Porosity
#' @export
#'
#' @examples
#' p_baumer_rice_1998(bulk_density_g_cm3 = 1.5,
#'                    organic_carbon_percentage = 2)
p_baumer_rice_1988 <- function(bulk_density_g_cm3,
                               organic_carbon_percentage){


  porosity <- 1 - (
    bulk_density_g_cm3/
      (
        soilR::parameters[["particle_density_g_cm3"]] *
          (100 -
             organic_carbon_percentage *
             soilR::parameters[["organic_carbon_to_organic_matter_conversion_factor"]]
          )/ 100
      )
  )

  return(porosity)

}
