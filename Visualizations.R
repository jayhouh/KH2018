####################################################################################################
# Program name: Visualizations
# Description : Ka Huakai 2018 table and figure generation
# Authors     : Nolan Malone and Justin Hong
# Owner       : Kamehameha Schools
####################################################################################################

###------------------------------- LIBRARIES ----------------------------------------------------###
library(ggplot2)    #<!-- Graphics package
library(magrittr)   #<!-- Pipes
library(ReporteRs)  #<!-- Tables
library(reshape2)   #<!-- Structuring tables
###----------------------------------------------------------------------------------------------###

###-------------------------------- READ-IN FILES -----------------------------------------------###
# NOTES: Output datasets that were created in Analysis.R and Analysis.SAS are read in here.

anlyOutNM <- list.files()
for(i in seq_along(anlyOutNM)){
  ###
}

anlyOutJH <- list.files("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Analysis")
for(i in seq_along(anlyOutJH)){
  assign(
    paste0(substr(anlyOutJH[i], 1, gregexpr("\\.", anlyOutJH[i])[[1]][1]-1)), 
    readRDS(paste0("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Analysis/", anlyOutJH[i]))
  )
}
###----------------------------------------------------------------------------------------------###

###-------------------------------- CONVENTIONS -------------------------------------------------###
# For figures: MFL###_###FIG
# For tables : MFL###_###TBL
###----------------------------------------------------------------------------------------------###

###-------------------------------- CREATE TABLE AND FIGURE OBJECTS -----------------------------###
# (EXAMPLE)
MFL000_000FIG <- ggplot(MFL000_000, aes(x=Sex, y=Pct)) +
  geom_bar(stat = "identity") +
  theme_minimal()

MFL000_000TBL <- vanilla.table(MFL000_000)

saveRDS(MFL000_000FIG, "/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Visualizations/MFL000_000FIG.rds")
ggsave("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Visualizations/MFL000_000FIG.png", 
       MFL000_000FIG, width = 5, height = 3, units = "in", dpi = 1200)

# (START HERE)

###----------------------------------------------------------------------------------------------###





