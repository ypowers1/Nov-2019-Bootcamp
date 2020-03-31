#------------------------------------------------------------------------------#
#                                                                              #
#                                     DIME                                     #
#                        Introduction to R for Stata users                     #                                     
#                                    MASTER                                    #                           
#                                                                              #
#------------------------------------------------------------------------------#

# PURPOSE:    Set-up configurations and run scripts that are part of DIME's R 
#             Training

# NOTES:      
  
# WRITTEN BY: Luiza Cardoso de Andrade, Robert A. Marty, Leonardo Viotti

#                                                     Last modified in Nov 2019

# PART 1: Select sections to run ----------------------------------------------

  PACKAGES             <- 0
  Lab1                 <- 0
  Lab2                 <- 0
  Lab3                 <- 0
  Lab4                 <- 0
  Lab5                 <- 0
  Lab6                 <- 0
 
# PART 2: Load packages   -----------------------------------------------------
  
  packages  <- c("readstata13", "foreign",
                 "doBy", "broom", "dplyr",
                 "stargazer",
                 "ggplot2", "plotly", "ggrepel",
                 "RColorBrewer",
                 "sp", "rgdal", "rgeos", "raster", "velox",
                 "ggmap", "rasterVis", "leaflet",
                 "htmlwidgets", "geosphere")
  
  # If you selected the option to install packages, install them
  if (PACKAGES) {
    
    # Install packages that are not yet installed
    sapply(packages, function(x) {
      if (!(x %in% installed.packages())) {
        install.packages(x, dependencies = TRUE) 
      }
    }
    )
    
  }
  
  # Load all packages -- this is equivalent to using library(package) for each 
  # package listed before
  invisible(sapply(packages, library, character.only = TRUE))
  
# PART 3: Set folder folder paths --------------------------------------------

  #-------------#
  # Root folder #
  #-------------#
  
  # Add your username and folder path here (for Windows computers)
  # To find out what your username is, type Sys.getenv("USERNAME")
  if (Sys.getenv("USERNAME") == "luiza") {
    
    projectFolder  <- "C:/Users/luiza/Documents/GitHub/R-Training"
    
  }
  
  #--------------------#
  # Project subfolders #
  #--------------------#

  dataWorkFolder    <- file.path(projectFolder,"DataWork")
  Data              <- file.path(dataWorkFolder,"DataSets")
  rawData           <- file.path(Data,"Raw")
  intData           <- file.path(Data,"Intermediate")
  finalData         <- file.path(Data,"Final")
  Code              <- file.path(dataWorkFolder,"Code")
  Doc               <- file.path(dataWorkFolder,"Documentation")
  Output            <- file.path(dataWorkFolder,"Output")
  rawOutput         <- file.path(Output,"Raw")
  finalOutput       <- file.path(Output,"Final")

 

# PART 4: Run selected sections -----------------------------------------------
  
  # ------------------------------------------------------------------------- #
  #                       LAB 1: Intro to R I                                 #
  # ------------------------------------------------------------------------- #
  # OBJECTIVE: Run basic commands to get started with R                       #
  # REQUIRES: file.path(Data,"Final", "whr_panel.csv)                         #
  # ------------------------------------------------------------------------- #
  
  if (Lab1) {
    source(file.path(Code, "Lab1.R"))
  }
  
  # ------------------------------------------------------------------------- #
  #                       LAB 2: Intro to R II                                #
  # ------------------------------------------------------------------------- #
  # OBJECTIVE: Run more advanced commands                                     #
  # REQUIRES: file.path(finalData,"whr_panel.csv")                            #
  # ------------------------------------------------------------------------- #
  
  if (Lab2) {
    source(file.path(Code, "Lab2.R"))
  }
  
  # ------------------------------------------------------------------------- #
  #                       LAB 3: Data processing                              #
  # ------------------------------------------------------------------------- #
  # OBJECTIVE: Basic data processing commands (explore data set, test unique  #
  #            ID, append and merge data sets, save data sets, add variables) #
  # REQUIRES: file.path(rawData,"WHR2015.csv")                                #
  #           file.path(rawData,"WHR2016.csv")                                #
  #           file.path(rawData,"WHR2017.csv")                                #
  # CREATES:  file.path(finalData, "whr_panel.csv")                           #
  #           file.path(finalData, "whr_panel.Rda")                           #
  #           file.path(finalData, "whr_panel.dta")                           #
  # ------------------------------------------------------------------------- #
  
  if (Lab3) {
    source(file.path(Code, "Lab3.R"))
  }
  
  