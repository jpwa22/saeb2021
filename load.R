# /***************************************************************************************/


 if(!require(data.table)){install.packages('data.table')}

#------------------
# Carga dos microdados


# Alunos ------------------------------------------------------------------

 
TS_ALUNO_9EF <- data.table::fread(input='../DADOS/TS_ALUNO_9EF.csv',integer64='character')
saveRDS(TS_ALUNO_9EF,"dados/TS_ALUNO_9EF.rds")
View(head(TS_ALUNO_9EF))
TS_ALUNO_9EF <- subset(TS_ALUNO_9EF,ID_UF == 26)
saveRDS(TS_ALUNO_9EF,"dados/TS_ALUNO_9EF_PE.rds")
rm(TS_ALUNO_9EF)
gc()
# Professor ---------------------------------------------------------------

TS_PROFESSOR <- data.table::fread(input='../DADOS/TS_PROFESSOR.csv',integer64='character')
saveRDS(TS_PROFESSOR,"dados/TS_PROFESSOR.rds")
TS_PROFESSOR <- subset(TS_PROFESSOR,ID_UF==26)
saveRDS(TS_PROFESSOR,"dados/TS_PROFESSOR_PE.rds")


# Escolas -----------------------------------------------------------------

TS_ESCOLA <- data.table::fread(input='../DADOS/TS_ESCOLA.csv',integer64='character')
TS_ESCOLA <- subset(TS_ESCOLA,ID_UF==26)
saveRDS(TS_ESCOLA,"dados/TS_ESCOLA_PE.rds")
