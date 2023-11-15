dosya_url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya_isim <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(dosya_url, destfile = dosya_isim, method = "auto")
maps <- read.csv(dosya_isim, sep = ";", header = TRUE)
print(dim(maps))
maps$Latitude <- as.numeric(gsub("N", "", maps$Latitude))
idx <- grep("W", maps$Longitude)