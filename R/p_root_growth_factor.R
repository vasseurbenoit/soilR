#' Calculation of root growth factor
#'
#' @description The method to calculated root growth factor comes from the DSSAT
#' documentation (DSSAT45 Volume 2)
#'
#' @param center_of_layer Center of the layer (cm)
#'
#' @return root growth factor (-)
#' @export
#'
#' @examples
#' p_root_growth_factor(center_of_layer = 5)
#' p_root_growth_factor(center_of_layer = 50)
p_root_growth_factor <- function(center_of_layer){

  root_growth_factor <-
    if(center_of_layer > 20){
      exp(-0.02 * center_of_layer)
    } else {
      1
    }

  return(root_growth_factor)

}
