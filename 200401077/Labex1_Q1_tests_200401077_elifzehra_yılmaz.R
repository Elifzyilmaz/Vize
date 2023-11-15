library(testthat)

rm(list = ls())
source("Labex1_Q1_200401077_elifzehra_yılmaz.R")

 
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})

test_that("Test : maps adlı değiken Global Workspace’de mevcuttur", {
  testthat::expect_true(exists("maps", envir = .GlobalEnv))
})

test_that("Test : maps nesnesi bir data.frame’dir", {
  testthat::expect_true(is.data.frame(maps))
})

test_that("Test : maps adlı data.frame’in ilk sütunun adı 'City' olmalıdır", {
  testthat::expect_equal(names(maps)[1], "City")
})

test_that("Test : maps adlı data.frame’in 5. sütunun adında 'Title' kelimesi geçmelidir", {
  testthat::expect_true(grepl("Title", colnames(maps)[5], fixed = TRUE))
})

maps$Latitude <- as.numeric(gsub("N", "", maps$Latitude))

test_that("idx değişkeni Global Workspace'de mevcut olmalıdır", {
  testthat::expect_true(exists("idx"))
})

test_that("idx değişkeni integer olmalıdır", {
  testthat::expect_true(is.integer(idx))
})

test_that("Test : Longitude adlı sütun numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Longitude)))
})

test_that("Test : Year adlı sütun numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Year)))
})