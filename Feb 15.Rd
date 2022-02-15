# Author: Driffin, Date: Feb 15 2022, Purpose: To perform microarray normalization

# Set the wiorking directory to your .CEL files folder 
setwd("/Users/sadaziadriffin/desktop/GSE344_RAW/1GSE344_RAW")

# Load package affy 
library(affy)

# Reading the .CEL files 
eset <- ReadAffy()


