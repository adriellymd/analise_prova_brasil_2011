library(readxl)
library(writexl)

arquivo <- "dados/Amostra_g01_Adrielly_Amanda_Erick_Raquel.xlsx"
dados <- read_excel(arquivo)

set.seed(42)
dados_amostra <- dados[sample(nrow(dados), 50),]

write_xlsx(dados_amostra, "dados/Amostra_50_linhas.xlsx")

