library(tidyverse)
library (dplyr)
library(readr)

setwd("C:/Users/mishra1/Desktop")

df1 <- read_delim('voc_omicron.txt')

head(df1)

df2 <- read_delim('test2.txt')

head(df2)

colnames(df2) = c("REGION", "POS", "REF", "ALT", "REF_DP", "ALT_DP", "ALT_FREQ", "TOTAL_DP", "PVAL", "PASS")

head(df2)

head(df1)

df3 <- left_join(df1, df2, by = c('POS' = 'POS', 'REF' = 'REF', 'ALT' = 'ALT'))

matched_result <- df3

view(matched_result)

library("xlsx")

write.xlsx(matched_result, "C:/Users/mishra1/Desktop/omicron_matching.xlsx", sheetName = "omicron_matching", 
           col.names = TRUE, row.names = TRUE, append = FALSE)
