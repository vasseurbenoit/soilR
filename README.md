
<!-- README.md is generated from README.Rmd. Please edit that file -->

# soilR

<!-- badges: start -->

![](man/figures/logo.jpg)

<!-- badges: end -->

The goal of soilR is to gather soil equations found in the literature.

- `p` functions are pedotransfert functions.
- `t` functions are related to the soil texture.
- `agr` functions are the University of kentucky fertilization
  recommendations (University of Kentucky, n.d.)

## Installation

You can install the development version of soilR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("vasseurbenoit/soilR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(soilR)

# agr-functions
agr_1_phosphate(p = 6, crop = "corn")
#> [1] 120

# p-functions
p_rawls_1982(clay_percentage = 20,
             sand_percentage = 20,
             organic_carbon_percentage = 2,
             bulk_density_g_cm3 = 1.5)
#> $humidity_permanent_wilting_point_cm3_cm3
#> [1] 0.180352
#> 
#> $humidity_field_capacity_cm3_cm3
#> [1] 0.392456
#> 
#> $humidity_saturation_cm3_cm3
#> [1] 0.5347321

# t-functions
t_soil_texture_identifier(clay_percentage = 60,
                          sand_percentage = 20)
#> [1] "C"
```

## References

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-universityofkentucky" class="csl-entry">

University of Kentucky. n.d. “AGR-1 Lime and Nutrient Recommendations.”

</div>

</div>
