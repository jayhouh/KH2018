####################################################################################################
# Program name: Output_documentation
# Description : Ka Huakai 2018 analysis and visualization output document
# Authors     : Nolan Malone and Justin Hong
# Owner       : Kamehameha Schools
####################################################################################################

###------------------------------- LIBRARIES ----------------------------------------------------###
library(ggplot2)
library(magrittr)
library(ReporteRs)
###----------------------------------------------------------------------------------------------###

###-------------------------------- READ-IN FILES -----------------------------------------------###
allViz <- list.files("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Visualizations", pattern = "*.rds")
for(i in seq_along(allViz)){
  assign(
    paste0(substr(allViz[i], 1, gregexpr("\\.", allViz[i])[[1]][1]-1)), 
    readRDS(paste0("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Visualizations/", allViz[i]))
  )
}

allDat <- list.files("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Analysis")
for(i in seq_along(allDat)){
  assign(
    paste0(substr(allDat[i], 1, gregexpr("\\.", allDat[i])[[1]][1]-1)), 
    readRDS(paste0("/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Analysis/", allDat[i]))
  )
}
###----------------------------------------------------------------------------------------------###

###-------------------------------- ANALYSIS AND VISUALIZATION OUTPUT REPORT --------------------###
# (Example)
# Create document
doc <- docx(title = "Output", "/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Programs/_templates_/template.docx", empty_template = T)

# Reference number
doc <- addParagraph(doc, "MFL000_000; Version 01; (NM)", style = "Rparagraph")

# Figure
doc <- addParagraph(doc, "Figure 1.1 Native Hawaiian Population Trends", style = "Rcaption") %>%
  addParagraph("[Some subcaption here...]", style = "Rsubcaption") %>%
  addPlot(function(){print(MFL000_000FIG)}, width = 5, height = 3) %>%
  addParagraph("Source: Nordyke 1989", style = "Rsource") %>%
  addParagraph("Note: The surge in the Native Hawaiian population in 2000 is attributable to the Census Bureau's...", style = "Rsource") %>%
  addParagraph("\n")

# Table
doc <- addFlexTable(doc, vanilla.table(MFL000_000)) %>%
  addParagraph("\n")

# Bullets
doc <- addParagraph(doc, "Forty-nine percent of the male population...", style = "Rbullet") %>%
  addParagraph("Fifty-one percent of the female population...", style = "Rbullet")

doc <- addPageBreak(doc)

# Methodology
doc <- addParagraph(doc, "Methodology...", style = "Rparagraph") %>%
  addParagraph("Considerations...", style = "Rparagraph") %>%
  addParagraph("\n")

# Raw data table (in applicable)
doc <- addFlexTable(doc, vanilla.table(MFL000_000_C))

doc <- addPageBreak(doc)

# Write document
writeDoc(doc, "/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Output/Output_Report.docx")

# (START HERE)

#<!-- Add version description
###----------------------------------------------------------------------------------------------###
