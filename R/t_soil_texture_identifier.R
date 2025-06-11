#' Identification of the soil class texture.
#'
#' @param clay_percentage Measured clay content (%)
#' @param silt_percentage Measured silt content (%)
#' @param sand_percentage Measured sand content (%)
#'
#' @return USDA soil class texture.
#' @export
#'
#' @examples
#' t_soil_texture_identifier(clay_percentage = 60,
#'                           sand_percentage = 20,
#'                           silt_percentage = 20)
t_soil_texture_identifier <- function(clay_percentage,
                                      silt_percentage,
                                      sand_percentage){

  soil_texture_class_usda_test <-
    soil_texture_triangle_usda %>%
    group_by(texture) %>%
    summarise(clay_min = min(clay),
              clay_max = max(clay),
              silt_min = min(silt),
              silt_max = max(silt),
              sand_min = min(sand),
              sand_max = max(sand)) %>%
    mutate("selection" =
             clay_percentage < clay_max & clay_percentage > clay_min &
             silt_percentage < silt_max & silt_percentage > silt_min &
             sand_percentage < sand_max & sand_percentage > sand_min) %>%
    ungroup() %>%
    filter(selection == TRUE) %>%
    select(texture) %>%
    pull(texture) %>%
    unique()

  return(soil_texture_class_usda)

}
