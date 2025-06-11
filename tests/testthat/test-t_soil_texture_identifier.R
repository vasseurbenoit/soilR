test_that("checking outputs", {

  expect_true(
    t_soil_texture_identifier(clay_percentage = 70,
                              silt_percentage = 20,
                              sand_percentage = 10) == "C"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 38,
                              silt_percentage = 50,
                              sand_percentage = 12) == "SICL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 38,
                              silt_percentage = 32,
                              sand_percentage = 30) == "CL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 38,
                              silt_percentage = 70,
                              sand_percentage = 12) == "SICL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 30,
                              silt_percentage = 10,
                              sand_percentage = 60) == "SCL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 20,
                              silt_percentage = 40,
                              sand_percentage = 40) == "L"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 20,
                              silt_percentage = 65,
                              sand_percentage = 15) == "SIL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 5,
                              silt_percentage = 90,
                              sand_percentage = 5) == "SI"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 10,
                              silt_percentage = 30,
                              sand_percentage = 60) == "SL"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 2,
                              silt_percentage = 2,
                              sand_percentage = 96) == "S"
  )

  expect_true(
    t_soil_texture_identifier(clay_percentage = 10,
                              silt_percentage = 9,
                              sand_percentage = 81) == "LS"
  )

})
