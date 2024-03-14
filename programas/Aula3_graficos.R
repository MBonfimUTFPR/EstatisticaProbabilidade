dados = read.csv('dados_plot.csv')
install.packages('ggplot2')

head(dados)
dim(dados)


names(dados) = c('linha', 'empresa', 'rendimento', 'tamanho', 'vendas', 'palavra', 'fre_palavra')

#tabelas
table(dados$empresa)
table(dados$empresa, dados$tamanho)
tapply(dados$rendimento, dados$empresa, mean)
tapply(dados$rendimento, dados$empresa, sum)

#### grafico de barras ####
library(ggplot2)
names(dados)
ggplot(dados,aes(x=empresa))
ggplot(dados,aes(x=empresa)) + geom_bar()
ggplot(dados,aes(x=empresa)) + geom_bar() + coord_flip()
ggplot(dados,aes(x=empresa,fill=empresa)) + geom_bar()
ggplot(dados,aes(x=empresa,fill=empresa)) + geom_bar() + labs(title='Titulo',x='Empresa',y='Total')
ggplot(dados,aes(x=empresa,fill=empresa)) + geom_bar() + scale_fill_brewer(palette = "Set3") + 
labs(title='Titulo',x='Empresa',y='Total')
ggplot(dados,aes(x=empresa,fill=tamanho)) + geom_bar() + scale_fill_brewer(palette = "Set3") + 
  labs(title='Titulo',x='Empresa',y='Total') + theme_dark()
ggplot(dados,aes(x=empresa,fill=tamanho)) + geom_bar() + scale_fill_brewer(palette = "Set3") + 
  labs(title='Titulo',x='Empresa',y='Total') + theme_dark() + facet_wrap(~tamanho)
