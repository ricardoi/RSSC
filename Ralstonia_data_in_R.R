

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

phylotypes <- c(
  #Baringo
paste("potato", rep("phylotypeI", 9), sep = "_"),
paste("potato", rep("phylotypeII", 1), sep = "_"),
paste("potato", rep("NC", 3), sep = "_"),
paste("tomato", rep("phylotypeI", 1), sep = "_"),
# paste("tomato", rep("phylotypeII", 0), sep = "_"),
paste("tomato", rep("NC", 1), sep = "_"),
#Bomet
paste("potato", rep("phylotypeI", 50), sep = "_"),
# paste("potato", rep("phylotypeI", 0), sep = "_"),
paste("potato", rep("NC", 9), sep = "_"),
#Bungoma
# paste("nightshade", rep("phylotypeI", 0), sep = "_"),
paste("nightshade", rep("phylotypeII", 1), sep = "_"),
paste("nightshade", rep("NC", 1), sep = "_"),
paste("potato", rep("phylotypeI", 1), sep = "_"),
paste("potato", rep("phylotypeII", 31), sep = "_"),
paste("potato", rep("NC", 8), sep = "_"),
#paste("sodom apple", rep("phylotypeI", 0), sep = "_"),
paste("sodom apple", rep("phylotypeII", 2), sep = "_"),
#paste("sodom apple", rep("NC", 1), sep = "_"),
#Elgeyo
#paste("potato", rep("phylotypeI", 1), sep = "_"),
paste("potato", rep("phylotypeII", 10), sep = "_"),
paste("potato", rep("NC", 5), sep = "_"),
#Meru
paste("potato", rep("phylotypeI", 2), sep = "_"),
paste("potato", rep("phylotypeII", 24), sep = "_"),
paste("potato", rep("NC", 9), sep = "_"),
#Nakuru
paste("potato", rep("phylotypeI", 1), sep = "_"),
paste("potato", rep("phylotypeII", 96), sep = "_"),
paste("potato", rep("NC", 6), sep = "_"),
#Nandi
# paste("nightshade", rep("phylotypeI", 1), sep = "_"),
paste("nightshade", rep("phylotypeII", 1), sep = "_"),
paste("nightshade", rep("NC", 1), sep = "_"),
# paste("pepper", rep("phylotypeI", 1), sep = "_"),
paste("pepper", rep("phylotypeII", 1), sep = "_"),
paste("pepper", rep("NC", 1), sep = "_"),
paste("potato", rep("phylotypeI", 1), sep = "_"),
paste("potato", rep("phylotypeII", 52), sep = "_"),
paste("potato", rep("NC", 11), sep = "_"),
#Narok
# paste("potato", rep("phylotypeI", 0), sep = "_"),
paste("potato", rep("phylotypeII", 32), sep = "_"),
paste("potato", rep("NC", 11), sep = "_"),
# Nyandaru
paste("potato", rep("phylotypeI", 3), sep = "_"),
paste("potato", rep("phylotypeII", 81), sep = "_"),
paste("potato", rep("NC", 9), sep = "_"),
# Nyeri
# paste("potato", rep("phylotypeI", 0), sep = "_"),
paste("potato", rep("phylotypeII", 30), sep = "_"),
paste("potato", rep("NC", 10), sep = "_"),
# paste("tomato", rep("phylotypeI", 0), sep = "_"),
paste("tomato", rep("phylotypeII", 1), sep = "_"),
paste("tomato", rep("NC", 1), sep = "_"),
# Taita Taveta
paste("pepper", rep("phylotypeI", 1), sep = "_"),
# paste("pepper", rep("phylotypeII", 0), sep = "_"),
paste("pepper", rep("NC", 2), sep = "_"),
paste("potato", rep("phylotypeI", 7), sep = "_"),
paste("potato", rep("phylotypeII", 11), sep = "_"),
paste("potato", rep("NC", 3), sep = "_"),
paste("tomato", rep("phylotypeI", 5), sep = "_"),
paste("tomato", rep("phylotypeII", 3), sep = "_"),
paste("tomato", rep("NC", 2), sep = "_"),
# Trans Nzoia
# paste("potato", rep("phylotypeI", 0), sep = "_"),
paste("potato", rep("phylotypeII", 16), sep = "_"),
paste("potato", rep("NC", 4), sep = "_"),
# Uasin Gishu
# paste("potato", rep("phylotypeI", 0), sep = "_"),
paste("potato", rep("phylotypeII", 51), sep = "_"),
paste("potato", rep("NC", 8), sep = "_"),
#Vihiga
paste("pepper", rep("phylotypeI", 1), sep = "_"),
# paste("pepper", rep("phylotypeII", 0), sep = "_"),
paste("pepper", rep("NC", 2), sep = "_"),
# paste("potato", rep("phylotypeI", 0), sep = "_"),
paste("potato", rep("phylotypeII", 5), sep = "_"),
paste("potato", rep("NC", 5), sep = "_"),
paste("tomato", rep("phylotypeI", 5), sep = "_"),
# paste("tomato", rep("phylotypeII", 0), sep = "_"),
paste("tomato", rep("NC", 2), sep = "_")
)

phylotypes <- as.data.frame(t(matrix(unlist(strsplit(phylotypes, "_")), 2)))
colnames(phylotypes) <- c("Host", "Phylotype")
dim(phylotypes)
head(phylotypes)

# Merging datasets 
data <- cbind(dat, phylotypes$Phylotype)
data








# RAW DATA



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
