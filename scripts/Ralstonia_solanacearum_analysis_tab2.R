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

dat <- read.csv("data/Ralstonia_solanacearum_data_table2_2021fromR.csv")


totals <- table(dat$Host, dat$phylotypes.Phylotype)
total <- rbind(totals, colSums(totals))
sum(totals)




