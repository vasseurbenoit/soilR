test_that("Class of the output", {

  expect_true(
    is.list(
      p_rawls_1982(clay_percentage = 20,
                   sand_percentage = 20,
                   organic_carbon_percentage = 2,
                   bulk_density_g_cm3 = 1.5)
    )
  )

})
