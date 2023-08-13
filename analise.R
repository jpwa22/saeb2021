
# Carregando Bibliotecas
if(!require(data.table)){install.packages('data.table')}
if(!require(tidyverse)){install.packages('tidyverse')}

# Carregando os dados
TS_ALUNO_9EF <- readRDS("dados/TS_ALUNO_9EF_PE.rds")
# Dando uma "olhada"
dplyr::glimpse(TS_ALUNO_9EF)
