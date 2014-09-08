##################
# Kaggle: Criteo Challenge
# Jason Green
# 9/8/2014
##################

library(party)
library(beeswarm)
library(RODBC)
library(scales)
library(gridExtra)
library(ggplot2) 
library(reshape)
library(plyr)

setwd("~/GitHub/Criteo")
# ---------------------------------------------------------------------------------

query <-
  "SELECT Id, Label, I8, C9, C20, C17, C23
FROM train
WHERE 0.001 >= CAST(CHECKSUM(NEWID(), id) & 0x7fffffff AS float) / CAST (0x7fffffff AS int);"




# Database Connection -----------------------------------------------------------
criteo <- odbcDriverConnect('driver={SQL Server};server=(local);database=CRITEO;trusted_connection=true')

# Query for data
cData <- sqlQuery(criteo,query )   #   dataconnection,query


# Close Data Connection
odbcCloseAll()  # Used to close all connections.

head(cData)
#----------------------------------------------------------------------
# Work with the data:
criteoTree <- ctree(Label ~ I8 + C17, data=cData)
plot(criteoTree, type="simple")
   
   