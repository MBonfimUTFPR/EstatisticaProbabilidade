#### criando base de dados no pelo ####

idade=c(18,20,23,25)
sexo=c("M","F","F","M")
(dados = data.frame(idade,sexo))

#### lendo base de dados ####

(dados = read.csv('idade_sexo_aulaIntroducao.csv',sep = ";",dec = ','))

#### vendo partes da base de dados ####
dim(dados) #dimensao
names(dados) #nomes atributos
head(dados) #começo

#### utilizando atributos ####

dados$idade
dados$classe = c('a','a','b','b')

#### linhas e colunas ####
dados[1,2] # LINHA x COLUNA
dados[,1]
dados[1,]
dados[,c(1,2)]

dados
dados[4,3] = 'c'

#### controle condição ####
(dados$verifica = ifelse(dados$idade<=20,'jovem','velho'))
dados


#### exercicio ####
(dados2 = read.csv('exrcicio_introducao.csv',sep = ';',dec = ','))

calculaImc = function(peso,altura){peso/altura^2}

imc = calculaImc(dados2$peso,dados2$altura)
dados$imc = round(imc,2)
dados
(dados$analise_imc = ifelse(dados$imc < 19,'baixo','normal'))
