test_that("my_add adds two numbers", {
  expect_equal(my_add(1, 2), 3)
})

test_that("my_add y param defaults to 10", {
  expect_equal(my_add(1), 11)
})

test_that("my_add returns NA when either input is NA", {
  expect_equal(my_add(NA), NA)
  expect_equal(my_add(10, NA), NA)
})

test_that("my_add produces error message when params are not numeric", {
  expect_error(my_add("10", "20"))
  expect_error(my_add("something"))
})

test_that("my_add produces error before returning NA", {
  expect_error(my_add(NA, "5"))
})
