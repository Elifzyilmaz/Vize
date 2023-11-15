library(testthat)

rm(list = ls())
source("Labex1_Q1_200401077_elifzehra_yılmaz.R")

test_that("MapsThatChangedOurWorld_StoryMap_Data.csv dosyası aktif dizinde mevcut olmalıdır", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})