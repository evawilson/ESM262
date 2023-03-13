test_that("irrigation_works", {
  expect_equal(irrigation(precip = 2, ET = 3, crop_type = "barley"), c(-1, "No", 0))
  expect_equal(irrigation(precip = 10, ET = 3, crop_type = "barley"), c(7, "Yes", 1))
})
