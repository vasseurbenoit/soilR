test_that("Class of the output", {

  # Corn
  expect_true(
    is.numeric(
      agr_1_potash(k = 20,
                   crop = "corn")
    )
  )

  # Soybean
  expect_true(
    is.numeric(
      agr_1_potash(k = 20,
                   crop = "soybean")
    )
  )

})
