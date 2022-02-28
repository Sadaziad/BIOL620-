# Author: Driffin, Date: Feb 22, 2022; Purpose: To generate box plots for raw microarray datasets

setwd("/Users/sadaziadriffin/desktop/GSE344_RAW/1GSE344_RAW")
library(affy)
eset <- ReadAffy()

# Box plots for raw datasets 
boxplot(eset)

# Perform RMA normalization 
eset_Norm <- rma(eset)

# Box plots for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)