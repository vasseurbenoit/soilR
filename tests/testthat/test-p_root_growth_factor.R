test_that("Root growth factor equals 1 when depth of the center layer < 20", {

  expect_true(
    object = p_root_growth_factor(center_of_layer = 10) == 1
  )

})


test_that("Root growth factor < 1 when depth of the center layer > 20", {

  expect_true(
    object = p_root_growth_factor(center_of_layer = 30) < 1
  )

})
