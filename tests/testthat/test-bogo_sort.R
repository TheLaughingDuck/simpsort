### Set which sorting algorithm to test
sorting_algorithm <- bogo_sort

### Test that the correct output is returned
test_that("Test that correct output is returned", {
  expect_equal(sorting_algorithm(c(3,5,1,2), ascending=T), c(1,2,3,5))
})

test_that("Test that correct output is returned", {
  expect_equal(sorting_algorithm(c(3,5,1,2), ascending=0), c(5,3,2,1))
})

test_that("Test that correct output is returned", {
  expect_equal(sorting_algorithm(c(1,"A",3,2, "B")), c("1", "2", "3", "A", "B"))
})

### Test that errors are thrown for incorrect arguments
test_that("Errors are thrown", {
  expect_error(sorting_algorithm(c(1), ascending=3))
})

test_that("Errors are thrown", {
  expect_error(sorting_algorithm(list(c(1,2,3), "A")))
})
