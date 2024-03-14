#### Trigonometria ####
sin(pi/2)
cos(pi)
tan(pi/4)

#### Vetores ####
x=c(1,2,3,4)
x+1
(y=c(2:5))
x+y

#### Presta atencao quando rodar ####
dados=1
dados+1

dados=10
dados+1

#### Matrizes ####
z=matrix()

x
(x=4)
(x=1:4)

(z = matrix(x,nrow = 2,byrow = F))

(z = matrix(x,nrow = 2,byrow = T))

solve(z) #inversa
t(z) #transposta
c = determinant(z)
c = determinant(z,logarithm = FALSE)
################################
#derivadas
D(expression(x^2),'x')
D(expression(tan(x)*sin(x)^2),'x')

######################
#funcoes
funcao = function(x){
  2*x-1
}
funcao(2)

curve(funcao,-10,10)
abline(h=0,col='pink')
abline(v=0,col='blue')

uniroot(funcao,lower=0,upper = 4)

sample(1:10,1)
################################
library(rootSolve)

funcao2 = function(x){
  2*x^2-3*x-4
}
curve(funcao2,-2,3)
abline(h=0)
multiroot(funcao2, start = c(-1,2))
abline(v = c(-0.850,2.350), col=2)
#############################

integrate(funcao,0,2)

##########################

funcao3 = function(x){
  x^2 - 5*x + 6
}
curve(funcao3,1,4)
abline(h=0)
raizes = multiroot(funcao3,start = c(1,4))
abline(v = c(raizes$root[1],raizes$root[2]), col = 2)
integral = integrate(funcao3,raizes$root[1],raizes$root[2])








