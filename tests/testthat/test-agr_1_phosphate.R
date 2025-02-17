test_that("Class of the output", {

  # Corn
  expect_true(
    is.numeric(
      agr_1_phosphate(p = 6,
                      crop = "corn")
    )
  )

  # Soybean
  expect_true(
    is.numeric(
      agr_1_phosphate(p = 6,
                      crop = "soybean")
    )
  )

})
