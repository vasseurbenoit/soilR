test_that("checking soil texture outputs", {

  expect_true(
    t_soil_texture_identifier(clay_percentage = 70,
                              sand_percentage = 10) == "C"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 38,
                              sand_percentage = 12) == "SICL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 38,
                              sand_percentage = 30) == "CL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 38,
                              sand_percentage = 12) == "SICL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 30,
                              sand_percentage = 60) == "SCL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 20,
                              sand_percentage = 40) == "L"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 20,
                              sand_percentage = 15) == "SIL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 5,
                              sand_percentage = 5) == "SI"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 10,
                              sand_percentage = 60) == "SL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 2,
                              sand_percentage = 96) == "S"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 10,
                              sand_percentage = 81) == "LS"
  )

})
