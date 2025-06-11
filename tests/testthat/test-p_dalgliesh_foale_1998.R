test_that("Checking the class of the output", {

  expect_true(
    is.numeric(
      p_dalgliesh_foale_1998(soil_texture_class_usda = "S",
                             porosity = 0.1)
    )
  )

})
