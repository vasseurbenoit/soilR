# Libraries ----


# Parameters ----
parameters <- list(
  "organic_carbon_to_organic_matter_conversion_factor" = 1.72,
  "particle_density_g_cm3" = 2.65
)


# Saving ----
usethis::use_data(parameters,
                  overwrite = TRUE)
checkhelper::use_data_doc(name = "parameters",
                          description = "List of the parameters used in the package.")
attachment::att_amend_desc()
