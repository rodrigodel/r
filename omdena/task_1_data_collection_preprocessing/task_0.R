# Crie um vetor de pacotes para instalar
pacotes <- c("ggplot2", "dplyr")

# Função para instalar e carregar pacotes
instalar_carregar_pacotes <- function(pacotes) {
  for(pkg in pacotes){
    # Verifique se o pacote está instalado
    if (!require(pkg, character.only = TRUE)) {
      # Tente instalar o pacote
      install.packages(pkg, dependencies = TRUE)
      # Tente carregar o pacote novamente
      if(!require(pkg, character.only = TRUE)) {
        print(paste("Falha ao carregar o pacote:", pkg))
      } else {
        print(paste("Carregado com sucesso:", pkg))
      }
    } else {
      print(paste("Pacote já carregado:", pkg))
    }
  }
}

# Chame a função com o vetor de pacotes
instalar_carregar_pacotes(pacotes)

#Carregando pacotes necessários para importar as bases

pacotes <- c("readr", "readxl")

instalar_carregar_pacotes(pacotes)

# criando um vetor com os novos nomes das colunas
new_names <- c("mes", "total", "mdu", "msa", "mdo", "max", "ano", "linha")

# Carregando Pacotes

###############################################################
#                        2021                                 #
##############################################################

# Ler arquivos CSV - Linha Azul 2021
linha_azul_2021 <- readr::read_csv2("entrada_2021.csv", skip = 5, n_max = 12, col_select = c(1:6), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_azul_2021$ano <- 2021
linha_azul_2021$linha <- "azul"

# renomeando as colunas usando o operador de atribuição names()
names(linha_azul_2021) <- new_names

# Removendo o asterisco da coluna mes
linha_azul_2021$mes <- gsub("\\*", "", linha_azul_2021$mes)

# Linha Verde

# Ler arquivos CSV
linha_verde_2021 <- readr::read_csv2("entrada_2021.csv", skip = 5, n_max = 12, col_select = c(8:13), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_verde_2021$ano <- 2021
linha_verde_2021$linha <- "verde"

# renomeando as colunas usando o operador de atribuição names()
names(linha_verde_2021) <- new_names

# Removendo o asterisco da coluna mes
linha_verde_2021$mes <- gsub("\\*", "", linha_verde_2021$mes)


# Linha Vermelha

# Ler arquivos CSV
linha_vermelha_2021 <- readr::read_csv2("entrada_2021.csv", skip = 24, n_max = 12, col_select = c(1:6), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_vermelha_2021$ano <- 2021
linha_vermelha_2021$linha <- "vermelha"

# renomeando as colunas usando o operador de atribuição names()
names(linha_vermelha_2021) <- new_names

# Removendo o asterisco da coluna mes
linha_vermelha_2021$mes <- gsub("\\*", "", linha_vermelha_2021$mes)

# Linha Prata

# Ler arquivos CSV
linha_prata_2021 <- readr::read_csv2("entrada_2021.csv", skip = 24, n_max = 12, col_select = c(8:13), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_prata_2021$ano <- 2021
linha_prata_2021$linha <- "prata"

# renomeando as colunas usando o operador de atribuição names()
names(linha_prata_2021) <- new_names

# Removendo o asterisco da coluna mes
linha_prata_2021$mes <- gsub("\\*", "", linha_prata_2021$mes)

# juntando as Bases

demanda_2021 <- rbind(linha_azul_2021, linha_verde_2021, linha_vermelha_2021, linha_prata_2021)

# Variáveis

glimpse(demanda_2021)

# Passar as colunas total, mdu, msa, mdo, max para numerico

# Criando um vetor com os nomes das colunas que você quer modificar
cols_to_modify <- c("total", "mdu", "msa", "mdo", "max")

# Usando sapply para aplicar as.numeric a cada uma dessas colunas
demanda_2021[cols_to_modify] <- sapply(demanda_2021[cols_to_modify], as.numeric)

# Verificando Total

summary(demanda_2021)

###############################################################
#                        2022                                 #
##############################################################

# Ler arquivos CSV - Linha Azul 2021
linha_azul_2022 <- readr::read_csv2("entrada_2022.csv", skip = 5, n_max = 12, col_select = c(1:6), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_azul_2022$ano <- 2022
linha_azul_2022$linha <- "azul"

# renomeando as colunas usando o operador de atribuição names()
names(linha_azul_2022) <- new_names

# Removendo o asterisco da coluna mes
linha_azul_2022$mes <- gsub("\\*", "", linha_azul_2022$mes)

# Linha Verde

# Ler arquivos CSV
linha_verde_2022 <- readr::read_csv2("entrada_2022.csv", skip = 5, n_max = 12, col_select = c(8:13), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_verde_2022$ano <- 2022
linha_verde_2022$linha <- "verde"

# renomeando as colunas usando o operador de atribuição names()
names(linha_verde_2022) <- new_names

# Removendo o asterisco da coluna mes
linha_verde_2022$mes <- gsub("\\*", "", linha_verde_2022$mes)


# Linha Vermelha

# Ler arquivos CSV
linha_vermelha_2022 <- readr::read_csv2("entrada_2022.csv", skip = 24, n_max = 12, col_select = c(1:6), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_vermelha_2022$ano <- 2022
linha_vermelha_2022$linha <- "vermelha"

# renomeando as colunas usando o operador de atribuição names()
names(linha_vermelha_2022) <- new_names

# Removendo o asterisco da coluna mes
linha_vermelha_2022$mes <- gsub("\\*", "", linha_vermelha_2022$mes)

# Linha Prata

# Ler arquivos CSV
linha_prata_2022 <- readr::read_csv2("entrada_2022.csv", skip = 24, n_max = 12, col_select = c(8:13), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_prata_2022$ano <- 2022
linha_prata_2022$linha <- "prata"

# renomeando as colunas usando o operador de atribuição names()
names(linha_prata_2022) <- new_names

# Removendo o asterisco da coluna mes
linha_prata_2022$mes <- gsub("\\*", "", linha_prata_2022$mes)

demanda_2022 <- rbind(linha_azul_2022, linha_verde_2022, linha_vermelha_2022, linha_prata_2022)

# Variáveis

glimpse(demanda_2022)

# Passar as colunas total, mdu, msa, mdo, max para numerico

# Criando um vetor com os nomes das colunas que você quer modificar
cols_to_modify <- c("total", "mdu", "msa", "mdo", "max")

# Usando sapply para aplicar as.numeric a cada uma dessas colunas
demanda_2022[cols_to_modify] <- sapply(demanda_2022[cols_to_modify], as.numeric)

# Verificando Total

summary(demanda_2022)

###############################################################
#                        2023                                 #
##############################################################

# Ler arquivos CSV - Linha Azul 2021
linha_azul_2023 <- readr::read_csv2("entrada_2023.csv", skip = 5, n_max = 4, col_select = c(1:6), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_azul_2023$ano <- 2023
linha_azul_2023$linha <- "azul"

# renomeando as colunas usando o operador de atribuição names()
names(linha_azul_2023) <- new_names

# Removendo o asterisco da coluna mes
linha_azul_2023$mes <- gsub("\\*", "", linha_azul_2023$mes)

# Linha Verde

# Ler arquivos CSV
linha_verde_2023 <- readr::read_csv2("entrada_2023.csv", skip = 5, n_max = 4, col_select = c(8:13), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_verde_2023$ano <- 2023
linha_verde_2023$linha <- "verde"

# renomeando as colunas usando o operador de atribuição names()
names(linha_verde_2023) <- new_names

# Removendo o asterisco da coluna mes
linha_verde_2023$mes <- gsub("\\*", "", linha_verde_2023$mes)


# Linha Vermelha

# Ler arquivos CSV
linha_vermelha_2023 <- readr::read_csv2("entrada_2023.csv", skip = 24, n_max = 4, col_select = c(1:6), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_vermelha_2023$ano <- 2023
linha_vermelha_2023$linha <- "vermelha"

# renomeando as colunas usando o operador de atribuição names()
names(linha_vermelha_2023) <- new_names

# Removendo o asterisco da coluna mes
linha_vermelha_2023$mes <- gsub("\\*", "", linha_vermelha_2023$mes)

# Linha Prata

# Ler arquivos CSV
linha_prata_2023 <- readr::read_csv2("entrada_2023.csv", skip = 24, n_max = 4, col_select = c(8:13), locale = readr::locale(encoding = "ISO-8859-1"))

#inserir o ano
linha_prata_2023$ano <- 2023
linha_prata_2023$linha <- "prata"

# renomeando as colunas usando o operador de atribuição names()
names(linha_prata_2023) <- new_names

# Removendo o asterisco da coluna mes
linha_prata_2023$mes <- gsub("\\*", "", linha_prata_2023$mes)

demanda_2023 <- rbind(linha_azul_2023, linha_verde_2023, linha_vermelha_2023, linha_prata_2023)

# Variáveis

glimpse(demanda_2023)

# Passar as colunas total, mdu, msa, mdo, max para numerico

# Criando um vetor com os nomes das colunas que você quer modificar
cols_to_modify <- c("total", "mdu", "msa", "mdo", "max")

# Usando sapply para aplicar as.numeric a cada uma dessas colunas
demanda_2023[cols_to_modify] <- sapply(demanda_2023[cols_to_modify], as.numeric)

# Verificando Total

summary(demanda_2023)

# Juntando as três bases

informacoes_demanda <- rbind(demanda_2021, demanda_2022, demanda_2023)

