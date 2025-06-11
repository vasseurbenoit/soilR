#' Identification of the soil class texture.
#'
#' @param clay_percentage Measured clay content (%)
#' @param sand_percentage Measured sand content (%)
#'
#' @return USDA soil class texture.
#' @export
#'
#' @import dplyr
#'
#' @examples
#' t_soil_texture_identifier(clay_percentage = 60,
#'                           sand_percentage = 20)
t_soil_texture_identifier <- function(clay_percentage,
                                      sand_percentage){

  soil_texture_class_usda <-
    soil_texture_triangle_usda %>%
    group_by(texture) %>%
    summarise(clay_min = min(clay),
              clay_max = max(clay),
              silt_min = min(silt),
              silt_max = max(silt),
              sand_min = min(sand),
              sand_max = max(sand))

  soil_texture_class_usda <-
    ifelse(
      clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "S"] &
        clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "S"] &
        sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "S"] &
        sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "S"],
      "S",
      ifelse(
        clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "LS"] &
          clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "LS"] &
          sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "LS"] &
          sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "LS"],
        "LS",
        ifelse(
          clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SL"] &
            clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SL"] &
            sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SL"] &
            sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SL"],
          "SL",
          ifelse(
            clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "L"] &
              clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "L"] &
              sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "L"] &
              sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "L"],
            "L",
            ifelse(
              clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SI"] &
                clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SI"] &
                sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SI"] &
                sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SI"],
              "SI",
              ifelse(
                clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SIL"] &
                  clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SIL"] &
                  sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SIL"] &
                  sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SIL"],
                "SIL",
                ifelse(
                  clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SCL"] &
                    clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SCL"] &
                    sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SCL"] &
                    sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SCL"],
                  "SCL",
                  ifelse(
                    clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "CL"] &
                      clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "CL"] &
                      sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "CL"] &
                      sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "CL"],
                    "CL",
                    ifelse(
                      clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SICL"] &
                        clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SICL"] &
                        sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SICL"] &
                        sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SICL"],
                      "SICL",
                      ifelse(
                        clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SC"] &
                          clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SC"] &
                          sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SC"] &
                          sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SC"],
                        "SC",
                        ifelse(
                          clay_percentage < soil_texture_class_usda$clay_max[soil_texture_class_usda == "SIC"] &
                            clay_percentage >= soil_texture_class_usda$clay_min[soil_texture_class_usda == "SIC"] &
                            sand_percentage < soil_texture_class_usda$sand_max[soil_texture_class_usda == "SIC"] &
                            sand_percentage >= soil_texture_class_usda$sand_min[soil_texture_class_usda == "SIC"],
                          "SIC",
                          "C"
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )

  return(soil_texture_class_usda)

}
