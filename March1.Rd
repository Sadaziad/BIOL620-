Author: Driffin, Date: March 1, 2022; Purpose: To generate box plots for raw microarray datasets

setwd("/Users/sadaziadriffin/desktop/GSE344_RAW/1GSE344_RAW")
library(affy)
eset <- ReadAffy()
#Perform RMA normalization 
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)

#Log Base 2, or base 1, To perfrom log transformation do following 
Treatment <- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)
Control <- apply(rma[,c("GSM4845.CEL", "GSM4846.CEL", "GSM4847.CEL")], 1, log)
