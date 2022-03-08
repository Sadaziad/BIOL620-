Author: Driffin, Date: March 8, 2022; Purpose: To generate box plots for raw microarray datasets

setwd("/Users/sadaziadriffin/desktop/GSE344_RAW/1GSE344_RAW")
library(affy)
eset <- ReadAffy()
#Perform RMA normalization 
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)

#Log Base 2, or base 1, To perfrom log transformation do following 
Treatment <- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)
Control <- apply(rma[,c("GSM4845.CEL", "GSM4846.CEL", "GSM4847.CEL")], 1, log)

#Transpose: Switch columns to rows and rows to columns !!
#Perform transpose so that samples are your columns and genes are your rows !!
Treatment_T <- t(Treatment)
Control_T <- t(Control)

#To make fold changes, we first need to take mean/average for treatment and for control samples r
Treatment_T_Means <- rowMeans(Treatment_T)
Control_T_Means <- rowMeans(Control_T)
#Get the subtraction fold change for treatment over control 
Fold_Change <- Treatment_T_Means-Control_T_Means
head(Fold_Change)

# Assignment: Export variable "Fold_Change" as a .csv format file with name "fold_changes.csv"
Hint: https://www.statology.org/export-data-frame-to-csv-in-r/
write.csv(Fold_Change, "fold_changes.csv", row.names=TRUE)