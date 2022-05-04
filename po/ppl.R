# Importanto o pacote lpsolve
library(lpSolve) 

# Objetivos da função
f.obj <- c(2.0, 1.2, 1.5, 2.0) 

# Montando a matiz
f.con <- matrix(c(2.0,2.0,10.0,20.0,50.0,20.0,10.0,30.0,80.0,70.0,10.0,80.0), nrow = 3, byrow = TRUE) 

# Restrições
f.dir <- c(">=", ">=", ">=") 

# Coeficientes das restrições
f.rhs <- c(11.0, 70.0, 200.0) 

# Valor Final
lp(direction = "min", f.obj, f.con, f.dir, f.rhs) 

# Imprime as variáveis
lp("min", f.obj, f.con, f.dir, f.rhs)$solution
