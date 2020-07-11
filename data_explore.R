# Data explore

# Mario A. Garcia-Meza
# 10/Jul/2020

##################################################
######                                      ######
######          LIBRARIES                   ######
######                                      ######
##################################################

library(readxl) # For reading excel files
library(ggplot2)

##################################################
######                                      ######
######          LOAD DATA                   ######
######                                      ######
##################################################

delitos_m <- read_excel("data/delitos.xlsx", sheet = "Varones") # crimes commited by men
delitos_f <- read_excel("data/delitos.xlsx", sheet = "Mujeres") # crimes commited by females
delitos_total <- read_excel("data/delitos.xlsx", sheet = "Total") # total crimes
head(delitos_total)

##################################################
######                                      ######
######          GRAPHICS                  ######
######                                      ######
##################################################

# Need to load ggplot2

# Total infringements over time
ggplot(delitos_total, aes(x = Fecha))+
  geom_line(aes(y = Total)) # Change "Total" for any of the names in names(delitos_total)
