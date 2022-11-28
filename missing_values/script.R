#Criando o Dataset de exemplo com NAs
varA <- c(15.0,10.0,8.0,19.0,7.0,5.0,NA,11.0,12.0,NA)
varB <- c(NA,1.0,2.0,3.0,4.0,3.0,3.0,2.0,1.0,NA)
df <- data.frame(varA,varB)

# Extrair as medianas
median(df$varA, na.rm=TRUE)  # Mediana - 10.5
median(df$varB, na.rm=TRUE)  # Mediana - 2.5

# Duplicando o dataser
df1 <- df

# 1ª forma com o Replace

#Colunas a serem modificadas com a Mediana no lugar do NA

col <- c("varA", "varB")                           

df1[col] <- sapply(df1[col], 
                   function(x) replace(x, is.na(x), median(x, na.rm = TRUE)))
df1 

# 2ª Forma
library(dplyr)
df2 <- df

df2 <- df2 %>%
  mutate(across(where(is.numeric), ~ if_else(is.na(.), median(., na.rm = TRUE), as.numeric(.))))

#3ª Forma

# COM ZOO
df3 <- df
library(zoo)
df3 <-  na.aggregate(df3, FUN = median)
