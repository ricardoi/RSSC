#'@author Ricardo I Alcala for Kalpana Sharma
#'@title RSSC - Summary statistics
#'@description
#'

#- setting working directory

#----functions

#------ loading libraries


metadata <- data.frame( County = c("Baringo", "Bomet", "Bungoma",
                                   "Elgeyo-Marakwet", "Meru", "Nakuru",
                                   "Nandi", "Narok", "Nyandarua",
                                   "Nyeri", "Taita Taveta", "Trans-Nzoia",
                                   "Uasin Gishu", "Vihiga"),
                        Elevation = c("2200-2400", "1900-2100", "1900-2200",
                                      "2500-2700", "2000-2500", "2000-2400",
                                      "1500-1800", "2000-2400", "2000-2600",
                                      "1700-2100", "1400-1700", "1800-2100",
                                      "2100-2400", "1700-1800"))

# Collected data
phylotypes <- c(
  #Baringo
#Potato
  paste("Baringo", "potato", rep("phylotypeI", 1), sep = "_"),
  paste("Baringo", "potato", rep("phylotypeII", 9), sep = "_"),
  paste("Baringo", "potato", rep("NC", 3), sep = "_"),
#Tomato
  paste("Baringo", "tomato", rep("phylotypeI", 1), sep = "_"),
 #paste("Baringo","tomato", rep("phylotypeII", 0), sep = "_"),
  paste("Baringo","tomato", rep("NC", 1), sep = "_"),
  #Bomet
#Potato
# paste("Bomet", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Bomet","potato", rep("phylotypeII", 50), sep = "_"),
paste("Bomet","potato", rep("NC", 9), sep = "_"),
  #Bungoma
#Nightshade
# paste("Bungoma", "nightshade", rep("phylotypeI", 0), sep = "_"),
paste("Bungoma","nightshade", rep("phylotypeII", 1), sep = "_"),
paste("Bungoma","nightshade", rep("NC", 1), sep = "_"),
#Potato
paste("Bungoma", "potato", rep("phylotypeI", 1), sep = "_"),
paste("Bungoma","potato", rep("phylotypeII", 31), sep = "_"),
paste("Bungoma","potato", rep("NC", 8), sep = "_"),
#Sodom Apple
#paste("Bungoma","sodom apple", rep("phylotypeI", 0), sep = "_"),
paste("Bungoma","sodom apple", rep("phylotypeII", 2), sep = "_"),
#paste("Bungoma","sodom apple", rep("NC", 1), sep = "_"),
  #Elgeyo
#Potato
#paste("Elgeyo", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Elgeyo","potato", rep("phylotypeII", 10), sep = "_"),
paste("Elgeyo","potato", rep("NC", 5), sep = "_"),
  #Meru
#Potato
paste("Meru", "potato", rep("phylotypeI", 2), sep = "_"),
paste("Meru", "potato", rep("phylotypeII", 24), sep = "_"),
paste("Meru","potato", rep("NC", 9), sep = "_"),
  #Nakuru
#Potato
paste("Nakuru", "potato", rep("phylotypeI", 1), sep = "_"),
paste("Nakuru","potato", rep("phylotypeII", 96), sep = "_"),
paste("Nakuru","potato", rep("NC", 6), sep = "_"),
  #Nandi
#nightshade
# paste("Nandi", "nightshade", rep("phylotypeI", 1), sep = "_"),
paste("Nandi", "nightshade", rep("phylotypeII", 1), sep = "_"),
paste("Nandi","nightshade", rep("NC", 1), sep = "_"),
#pepper
# paste("Nandi", "pepper", rep("phylotypeI", 1), sep = "_"),
paste("Nandi", "pepper", rep("phylotypeII", 1), sep = "_"),
paste("Nandi", "pepper", rep("NC", 1), sep = "_"),
#Potato
paste("Nandi", "potato", rep("phylotypeI", 1), sep = "_"),
paste("Nandi", "potato", rep("phylotypeII", 52), sep = "_"),
paste("Nandi", "potato", rep("NC", 11), sep = "_"),
  #Narok
#potato
# paste("Narok", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Narok", "potato", rep("phylotypeII", 32), sep = "_"),
paste("Narok", "potato", rep("NC", 11), sep = "_"),
  # Nyandaru
#potato
paste("Nyandaru", "potato", rep("phylotypeI", 3), sep = "_"),
paste("Nyandaru", "potato", rep("phylotypeII", 81), sep = "_"),
paste("Nyandaru","potato", rep("NC", 9), sep = "_"),
  # Nyeri
#potato
# paste("Nyeri", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Nyeri", "potato", rep("phylotypeII", 30), sep = "_"),
paste("Nyeri", "potato", rep("NC", 10), sep = "_"),
#tomato
paste("Nyeri", "tomato", rep("phylotypeI", 1), sep = "_"),
# paste("Nyeri", "tomato", rep("phylotypeII", 0), sep = "_"),
paste("Nyeri", "tomato", rep("NC", 1), sep = "_"),
  # Taita Taveta
#pepper
paste("Taita-Taveta", "pepper", rep("phylotypeI", 1), sep = "_"),
# paste("Taita-Taveta","pepper", rep("phylotypeII", 0), sep = "_"),
paste("Taita-Taveta", "pepper", rep("NC", 2), sep = "_"),
#potato
paste("Taita-Taveta", "potato", rep("phylotypeI", 7), sep = "_"),
paste("Taita-Taveta", "potato", rep("phylotypeII", 11), sep = "_"),
paste("Taita-Taveta", "potato", rep("NC", 3), sep = "_"),
# tomato
paste("Taita-Taveta", "tomato", rep("phylotypeI", 5), sep = "_"),
paste("Taita-Taveta", "tomato", rep("phylotypeII", 3), sep = "_"),
paste("Taita-Taveta","tomato", rep("NC", 2), sep = "_"),
  # Trans Nzoia
#potato
# paste("Trans-Nzoia", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Trans-Nzoia", "potato", rep("phylotypeII", 16), sep = "_"),
paste("Trans-Nzoia", "potato", rep("NC", 4), sep = "_"),
  # Uasin Gishu
#potato
# paste("Uasin-Gishu", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Uasin-Gishu", "potato", rep("phylotypeII", 51), sep = "_"),
paste("Uasin-Gishu", "potato", rep("NC", 8), sep = "_"),
  #Vihiga
#pepper
paste("Vihiga", "pepper", rep("phylotypeI", 1), sep = "_"),
# paste("Vihiga","pepper", rep("phylotypeII", 0), sep = "_"),
paste("Vihiga","pepper", rep("NC", 2), sep = "_"),
#potato
# paste("Vihiga", "potato", rep("phylotypeI", 0), sep = "_"),
paste("Vihiga", "potato", rep("phylotypeII", 5), sep = "_"),
paste("Vihiga", "potato", rep("NC", 5), sep = "_"),
#tomato
paste("Vihiga", "tomato", rep("phylotypeI", 5), sep = "_"),
# paste("Vihiga", "tomato", rep("phylotypeII", 0), sep = "_"),
paste("Vihiga", "tomato", rep("NC", 2), sep = "_")
)

phylotypes <- as.data.frame(t(matrix(unlist(strsplit(phylotypes, "_")), 3)))
colnames(phylotypes) <- c("County","Host", "Phylotype")
dim(phylotypes)
head(phylotypes)

phylotypes$HC <- paste(phylotypes$County, phylotypes$Host, sep = "-")
# # Merging datasets
# data <- cbind(dat, phylotypes$Phylotype)
# data

phylotable <- table(phylotypes$HC, phylotypes$Phylotype)
cbind(phylotable, rowSums(phylotable))

write.csv(phylotypes, "Ralstonia_solanacearum_data_table1_2021-fromR.csv")



# RAW DATA from table sup. 2

#
phylo1 <- c(1,1,0,0,1,0,0,2,1,0,0,1,0,3,0,1,1,7,5,0,0,1,0,5)
phylo2 <- c(9,0,50,1,31,2,10,24,96,1,1,52,32,81,30,0,0,11,3,16,51,0,5,0)

table(dat$County)
table(dat$Host)



# raw data
Samples <- c(13, 2, 59, 2, 40, 2, 15, 35, 103, 2, 2, 64, 43, 93, 40, 2, 3, 21, 10, 20, 59, 3, 10, 7)

RSSC <- phylo1+phylo2

nocomplex <- Samples - RSSC
sum(nocomplex)

#by host
tablehost
potato <- c(13, 59, 40, 15, 35,  103, 64, 43, 93, 40, 21, 20, 59, 3)
tomato <- c(2, 2, 10, 10)
nightshade <- c(2, 2)
sodom.apple <- c(2)
pepper <- c(2, 3, 3)

byhost <- data.frame(sum(potato),
  sum(tomato),
  sum(nightshade),
  sum(sodom.apple),
  sum(pepper)
  )
byhost

hosts <- c(paste("Baringo", rep("potato", 13), sep = "_"),
           paste("Baringo", rep("tomato", 2), sep = "_" ),
           paste("Bomet", rep("potato", 59), sep = "_" ),
           paste("Bungoma", rep("nightshade", 2), sep = "_" ),
           paste("Bungoma", rep("potato", 40), sep = "_" ),
           paste("Bungoma", rep("sodom apple", 2), sep = "_" ),
           paste("Elgeyo-Marakwet", rep("potato", 15), sep = "_" ),
           paste("Meru", rep("potato", 35), sep = "_" ),
           paste("Nakuru", rep("potato", 103), sep = "_" ),
           paste("Nandi", rep("nightshade", 2), sep = "_" ),
           paste("Nandi", rep("pepper", 2), sep = "_" ),
           paste("Nandi", rep("potato", 64), sep = "_" ),
           paste("Narok", rep("potato", 43), sep = "_" ),
           paste("Nyandarua", rep("potato", 93), sep = "_" ),
           paste("Nyeri", rep("potato", 40), sep = "_" ),
           paste("Nyeri", rep("potato", 2), sep = "_" ),
           paste("Taita Taveta", rep("pepper", 3), sep = "_" ),
           paste("Taita Taveta", rep("potato", 21), sep = "_" ),
           paste("Taita Taveta", rep("tomato", 10), sep = "_" ),
           paste("Trans-Nzoia", rep("potato", 20), sep = "_" ),
           paste("Uasin Gishu", rep("potato", 59), sep = "_" ),
           paste("Vihiga", rep("pepper", 3), sep = "_" ),
           paste("Vihiga", rep("potato", 10), sep = "_" ),
           paste("Vihiga", rep("tomato", 7), sep = "_" )
)

hosts <- t(matrix(unlist(strsplit(hosts, "_")), 2))
colnames(hosts) <- c("County", "Host")

dat <- merge(metadata, hosts, by = "County")
dim(dat)
