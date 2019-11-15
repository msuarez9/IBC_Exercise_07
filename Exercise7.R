# Mariana Suarez and Jake Fry 
# Biocomputing Assignment 7

#Read in iris.csv file
iris <- read.csv(file="iris.csv")

# 1
# Return odd rows of a dataframe
oddRows <- function(df)
{
  for(i in 1:nrow(df)){
    if (i%%2 != 0){
      print(df[i,])
    }
  }
}

# 2
#Number of observances of indicated species. Arguments are species name and dataframe of interest
speciesNum <- function(species,df)
{
  cat(species, ":", nrow(df[df$Species==species,]))
}

#Rows with sepal width > User input. Arguments are width threshold and dataframe of interest
sepalWidth <- function(n,df)
{
  df[which(df$Sepal.Width>n),]
}

#Make data for a certain species into a csv file with the species name as file name. Arguments are species name and dataframe of interest
speciesFile <- function(species,df)
{
  write.csv(df[df$Species==species,],paste(species,".csv"))
}

