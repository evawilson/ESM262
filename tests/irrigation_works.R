test_that("irrigation_works", {
  expect_equal(irrigation_time(PE = 6, ET = 10), 0) 
  expect_equal(irrigation_time(PE = 4, ET = 10), 1)
})
