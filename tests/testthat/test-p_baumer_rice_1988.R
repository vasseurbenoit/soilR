test_that("Checking the class of the output", {

  expect_true(
    is.numeric(
      p_baumer_rice_1988(bulk_density_g_cm3 = 1.5,
                         organic_carbon_percentage = 2)
    )
  )

})
