#'@author Ricardo I Alcala for Kalpana Sharma
#'@title RSSC - Summary statistics
#'@description
#'

#- setting working directory
setwd("~/git_local/RSSC/")

#----function

#------ loading libraries
library(reshape2)
library(ggplot2)
library(igraph)
library(bipartite)

#---- Loading data

dat <- read.csv("Ralstonia_solanacearum_data_table1_2021-fromR.csv")

table(dat$Host, dat$Phylotype)

totals <- table(dat$HC, dat$Phylotype)
total <- cbind(totals, rowSums(totals))

sum(total)

#-----

rbind(total, colSums(total))

