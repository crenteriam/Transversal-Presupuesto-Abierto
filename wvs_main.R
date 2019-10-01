# 19TRU PolSci Paper (No name yet)
# Cesar Renteria
# April 16th, 2019
# Source: World Values Survey

# Environment Setup ------------------------------------------------------------------
rm(list=ls()) # Clear Workspace
options(stringsAsFactors = FALSE)
wd.dir    = "C:/Users/rente/OneDrive/2019 Trust PolSci"
wd.clean  = paste0(wd.dir, "/1_data/clean/")
wd.script = paste0(wd.dir, "/3_scripts/")
wd.display= paste0(wd.dir, "/2_displays/")

# Packages
Packages <- c("haven", "tidyverse", "sjlabelled")
#install.packages(Packages)
lapply(Packages, library, character.only = TRUE)

# Load Data  -------------------------------------------------------------------------
source(paste0(wd.script, "/Data_Management/wvs_load.R"), echo = TRUE)

# Recode Values  ---------------------------------------------------------------------
source(paste0(wd.script, "/Data_Management/wvs_recode_values.R"), echo = TRUE)

# Append Data  -----------------------------------------------------------------------
wvs_allwaves = data.frame()
wvs_allwaves = bind_rows(wvs_allwaves, short.wvs1)
wvs_allwaves = bind_rows(wvs_allwaves, short.wvs2)
wvs_allwaves = bind_rows(wvs_allwaves, short.wvs3)
wvs_allwaves = bind_rows(wvs_allwaves, short.wvs4)
wvs_allwaves = bind_rows(wvs_allwaves, short.wvs5)
wvs_allwaves = bind_rows(wvs_allwaves, short.wvs6)

# Keep Countries of interest  --------------------------------------------------------
target <- c("Chile", "Colombia", "Mexico", "Poland", "Turkey", "India", "Indonesia")
wvs_allwaves = filter(wvs_allwaves, country %in% target)

# Generate Cohort and Age Variables  -------------------------------------------------

# Age
wvs_allwaves$age = wvs_allwaves$survey_year - wvs_allwaves$birth
wvs_allwaves$age2 = wvs_allwaves$age^2

# Cohort
wvs_allwaves$cohort = NA
list_cohorts = as.list(seq(from = 1900, to = 2000, by = 5))
for (i in list_cohorts){
  wvs_allwaves$cohort[wvs_allwaves$birth>=i & wvs_allwaves$birth<i + 5] = i
}

# Subset: over 18 years old, and cohorts>1915
wvs_allwaves = filter(wvs_allwaves, age >= 18)
wvs_allwaves = filter(wvs_allwaves, cohort > 1915)

# Save  ------------------------------------------------------------------------------
write_csv(wvs_allwaves, paste0(wd.clean, "clean_wvs_main.csv"))
