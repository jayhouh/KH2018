####################################################################################################
# Program name: Analysis
# Description : Ka Huakai 2018 data analysis
# Author      : Justin Hong
# Owner       : Kamehameha Schools
####################################################################################################

###------------------------------- PROGRAM STRUCTURE --------------------------------------------###
# (Format)
# Reference number
# Title
# Source(s)
# Data source(s)
# Notes: methodology, definitions
# Tabulation, output dataset (CODE)
# Bullets
# Supporting analysis, output datasets (if applicable; CODE)
# Considerations, based on supporting analysis
# Write to file (CODE)
###----------------------------------------------------------------------------------------------###

###------------------------------- PROGRAM STRUCTURE (EXAMPLE) ----------------------------------###
# (Example)
# MFL000_000 
# Native Hawaiian Population Trends
# Source: Nordyke 1989
# Data source: U.S. Census 2000, Summary File 2
# Notes: The surge in the Native Hawaiian population in 2000 is attributable to the Census Bureau's...
male   <- 49
female <- 51
MFL000_000 <- data.frame(
  Sex = c("Male", "Female"),
  Pct = c(male, female)
)
# Bullets
# - Forty-nine percent of the male population...
# - Fifty-one percent of the female population...
# Supporting analysis
MFL000_000[,2] * 2
MFL000_000_C <- MFL000_000
MFL000_000_C[,2] <- MFL000_000_C[,2] * 2
# Considerations
# - Multiplied by two, the percentages are double...
# Write to file
saveRDS(MFL000_000, "/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Analysis/MFL000_000.rds")
saveRDS(MFL000_000_C, "/Users/Hong/Documents/Justin/Work/Ka Huakai 2018/Examples/Analysis/MFL000_000_C.rds")
###----------------------------------------------------------------------------------------------###

###-------------------------------- CONVENTIONS -------------------------------------------------###
# For output dataset: MFL###_###
# For supporting analysis dataset: MFL###_###_C#
###----------------------------------------------------------------------------------------------###

###------------------------------- DATA SOURCES -------------------------------------------------###
PUMS5_2015   <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/PUMS/files/ACS_5yr/mf5.rds")

PUMS1        <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/PUMS/files/ACS_1yr/mf1.rds")

SPT2010_Hawn <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/ACS2010_SPT/Hawaiian (062) KSreg.rds")
SPT2010_Chin <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/ACS2010_SPT/Chinese_combo (035) KSreg.rds")
SPT2010_Fili <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/ACS2010_SPT/Filipino_combo (038) KSreg.rds")
SPT2010_Japa <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/ACS2010_SPT/Japanese_combo (041) KSreg.rds")
SPT2010_Whit <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/ACS2010_SPT/White_alone (002) KSreg.rds")
SPT2010_Totl <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/ACS2010_SPT/Total_population (001) KSreg.rds")

SPT2000_Hawn <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/Census2000SF4/Hawaiian (062) KSreg.rds")
SPT2000_Chin <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/Census2000SF4/Chinese_combo (035) KSreg.rds")
SPT2000_Fili <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/Census2000SF4/Filipino_combo (038) KSreg.rds")
SPT2000_Japa <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/Census2000SF4/Japanese_combo (041) KSreg.rds")
SPT2000_Whit <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/Census2000SF4/White_alone (002) KSreg.rds")
SPT2000_Totl <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/CSPT/files/Census2000SF4/Total_population (001) KSreg.rds")

Census2010_Hawn <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Hawaiian (062) KSreg.rds")
Census2010_Chin <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Chinese_combo (035) KSreg.rds")
Census2010_Fili <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Filipino_combo (038) KSreg.rds")
Census2010_Japa <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Japanese_combo (041) KSreg.rds")
Census2010_Whit <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/White_alone (002) KSreg.rds")
Census2010_Totl <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Total_population (001) KSreg.rds")

Census2000_Hawn <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Hawaiian (062) KSreg.rds")
Census2000_Chin <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Chinese_combo (035) KSreg.rds")
Census2000_Fili <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Filipino_combo (038) KSreg.rds")
Census2000_Japa <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Japanese_combo (041) KSreg.rds")
Census2000_Whit <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/White_alone (002) KSreg.rds")
Census2000_Totl <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Total_population (001) KSreg.rds")

Census2010_State_Hawn <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Hawaiian (062) State.rds")
Census2010_State_Chin <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Chinese_combo (035) State.rds")
Census2010_State_Fili <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Filipino_combo (038) State.rds")
Census2010_State_Japa <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Japanese_combo (041) State.rds")
Census2010_State_Whit <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/White_alone (002) State.rds")
Census2010_State_Totl <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2010_SF2/Total_population (001) State.rds")

Census2000_State_Hawn <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Hawaiian (062) State.rds")
Census2000_State_Chin <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Chinese_combo (035) State.rds")
Census2000_State_Fili <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Filipino_combo (038) State.rds")
Census2000_State_Japa <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Japanese_combo (041) State.rds")
Census2000_State_Whit <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/White_alone (002) State.rds")
Census2000_State_Totl <- readRDS("/Users/Hong/Documents/Justin/Work/Ka Huakai/Deliverables 20170630/Census/files/Census2000_SF2/Total_population (001) State.rds")
###----------------------------------------------------------------------------------------------###




### TEST RUN
# PCT0010001/HCT001001 
chariter <- c("Hawn", "Chin", "Fili", "Japa", "Whit", "Totl")

REG2010 <- vector("list", 6)
for(i in seq_along(chariter)){
  REG2010[[i]] <- get(paste0("Census2010_", chariter[i]))[get(paste0("Census2010_", chariter[i]))$tblid == "PCT0010001", 13:21] / get(paste0("Census2010_", chariter[i]))[get(paste0("Census2010_", chariter[i]))$tblid == "HCT0010001", 13:21]
}

STATE2010 <- vector("list", 6)
for(i in seq_along(chariter)){
  STATE2010[[i]] <- get(paste0("Census2010_State_", chariter[i]))[get(paste0("Census2010_State_", chariter[i]))$tblid == "PCT0010001", 13] / get(paste0("Census2010_State_", chariter[i]))[get(paste0("Census2010_State_", chariter[i]))$tblid == "HCT0010001", 13]
}

DP12_2010 <- data.frame(
  Ethnicity = c(rep(c("Hawaiian", "Chinese", "Filipino", "Japanese", "White", "Total"), each = 9), c("Hawaiian", "Chinese", "Filipino", "Japanese", "White", "Total")),
  Geography = c(names(unlist(REG2010)), rep("State", 6)),
  Number    = c(unlist(REG2010), unlist(STATE2010)),
  Year      = rep("2010", 60)
)


# PCT001001/HCT001001
REG2000 <- vector("list", 6)
for(i in seq_along(chariter)){
  REG2000[[i]] <- get(paste0("Census2000_", chariter[i]))[get(paste0("Census2000_", chariter[i]))$tblid == "PCT001001", 13:21] / get(paste0("Census2000_", chariter[i]))[get(paste0("Census2000_", chariter[i]))$tblid == "HCT001001", 13:21]
}
STATE2000 <- vector("list", 6)
for(i in seq_along(chariter)){
  STATE2000[[i]] <- get(paste0("Census2000_State_", chariter[i]))[get(paste0("Census2000_State_", chariter[i]))$tblid == "PCT001001", 13] / get(paste0("Census2000_State_", chariter[i]))[get(paste0("Census2000_State_", chariter[i]))$tblid == "HCT001001", 13]
}

DP12_2000 <- data.frame(
  Ethnicity = c(rep(c("Hawaiian", "Chinese", "Filipino", "Japanese", "White", "Total"), each = 9), c("Hawaiian", "Chinese", "Filipino", "Japanese", "White", "Total")),
  Geography = c(names(unlist(REG2000)), rep("State", 6)),
  Number    = c(unlist(REG2000), unlist(STATE2000)),
  Year      = rep("2000", 60)
)

### FINAL DATASET
DP12 <- rbind(DP12_2000, DP12_2010)
DP12$Ethnicity <- factor(DP12$Ethnicity, levels = c("Hawaiian", "Chinese", "Filipino", "Japanese", "White", "Total"))
DP12$Geography <- factor(DP12$Geography, 
                         levels = c("East Hawaii", "West Hawaii", "Maui", "Honolulu", "Windward", "North Shore", "Central", "Leeward", "Kauai", "State"),
                         labels = c("East\nHawaii", "West\nHawaii", "Maui", "Honolulu", "Windward", "North\nShore", "Central", "Leeward", "Kauai", "State")
                         )

### RESULTS

# BY REGION (HAWAIIAN)
DP12_current_hawaiian <- DP12[DP12$Year == 2010 & DP12$Ethnicity == "Hawaiian",]
dp12.1 <- ggplot(DP12_current_hawaiian, aes(x = Geography, y = Number)) +
  geom_bar(stat = "identity", fill = "#F8766D") +
  geom_text(aes(x = Geography, y = Number, label = round(Number, 1))) +
  theme_minimal()

# BY ETHNICITY (STATE)
DP12_current_ethnicit <- DP12[DP12$Year == 2010 & DP12$Geography == "State",]
dp12.2 <- ggplot(DP12_current_ethnicit, aes(x = Ethnicity, y = Number)) +
  geom_bar(stat = "identity", fill = "#F8766D") +
  geom_text(aes(x = Ethnicity, y = Number, label = round(Number, 1))) +
  theme_minimal()

# TREND (STATE, BY ETHINICTY)
DP12_trend <- DP12[DP12$Geography == "State",]
dp12.3 <- ggplot(DP12_trend, aes(x = Ethnicity, y = Number, fill = Year)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(x = Ethnicity, y = Number, label = round(Number, 1)), position = position_dodge(width = 1)) +
  theme_minimal()

# AGE GROUPS (STATE, HAWAIIAN/TOTAL)
pop1 <- PUMS5_2015$RT == "H"
pop2 <- PUMS5_2015$hhwpkc == 1 & PUMS5_2015$RT == "H"
pop3 <- PUMS5_2015$hhwelc == 1 & PUMS5_2015$RT == "H"
pop4 <- PUMS5_2015$hhwmic == 1 & PUMS5_2015$RT == "H"
pop5 <- PUMS5_2015$hhwhic == 1 & PUMS5_2015$RT == "H"

pop6 <- PUMS5_2015$RT == "H" & PUMS5_2015$hawaiianhh == 1
pop7 <- PUMS5_2015$hhwpkc == 1 & PUMS5_2015$RT == "H" & PUMS5_2015$hawaiianhh == 1
pop8 <- PUMS5_2015$hhwelc == 1 & PUMS5_2015$RT == "H" & PUMS5_2015$hawaiianhh == 1
pop9 <- PUMS5_2015$hhwmic == 1 & PUMS5_2015$RT == "H" & PUMS5_2015$hawaiianhh == 1
pop10 <- PUMS5_2015$hhwhic == 1 & PUMS5_2015$RT == "H" & PUMS5_2015$hawaiianhh == 1

tmp <- vector("list", 10)
for(i in 1:10){
  tmp[[i]] <- weighted.mean(PUMS5_2015$NP[get(paste0("pop", i))], PUMS5_2015$WGTP[get(paste0("pop", i))])
}
DP12_age <- data.frame(
  Ethnicity = rep(c("Total", "Hawaiian"), each = 5),
  Age       = rep(c("All", "Prek", "Elementary", "Middle", "High"), 2),
  Number    = unlist(tmp)
)
DP12_age$Ethnicity <- factor(DP12_age$Ethnicity, levels = c("Hawaiian", "Total"))
DP12_age$Age       <- factor(DP12_age$Age, levels = c("Prek", "Elementary", "Middle", "High", "All"))
dp12.4 <- ggplot(DP12_age, aes(x = Ethnicity, y = Number, fill = Age)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_text(aes(x = Ethnicity, y = Number, label = round(Number, 1)), position = position_dodge(width = 1)) +
  theme_minimal()

### OUTPUT
doc <- docx(title = "example", template = "/Users/Hong/Documents/Justin/Work/Requests/Income_Predictors(LN26.9.17)/template.docx", empty_template = T)

doc <- addParagraph(doc, "Average number of residents within households among Hawaiian households", style = "Rcaption") %>%
  addParagraph("[by region, state of Hawaii, 2015]", style = "Rsubcaption") %>%
  addPlot(function(){print(dp12.1)}, height = 3) %>%
  addParagraph("Data source: Census 2010", style = "Rsource") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("\n\nContext and other information...", style = "Rparagraph") %>%
  addSection()

doc <- addParagraph(doc, "Average number of residents within households", style = "Rcaption") %>%
  addParagraph("[by ethnicity, state of Hawaii, 2015]", style = "Rsubcaption") %>%
  addPlot(function(){print(dp12.2)}, height = 3) %>%
  addParagraph("Data source: Census 2010", style = "Rsource") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("\n\nContext and other information...", style = "Rparagraph") %>%
  addSection()

doc <- addParagraph(doc, "Trends in average number of residents within households", style = "Rcaption") %>%
  addParagraph("[by region, state of Hawaii, 2015]", style = "Rsubcaption") %>%
  addPlot(function(){print(dp12.3)}, height = 3) %>%
  addParagraph("Data source: Census 2010", style = "Rsource") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("\n\nContext and other information...", style = "Rparagraph") %>%
  addSection()

doc <- addParagraph(doc, "Average number of residents within households", style = "Rcaption") %>%
  addParagraph("[by age group, state of Hawaii, 2015]", style = "Rsubcaption") %>%
  addPlot(function(){print(dp12.4)}, height = 3) %>%
  addParagraph("Data source: Census 2010", style = "Rsource") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("bullet goes here...", style = "Rbullet") %>%
  addParagraph("\n\nContext and other information...", style = "Rparagraph") %>%
  addSection()

writeDoc(doc, "/Users/Hong/Desktop/example.docx")









