# Max Z = 7x1 + 3x2 + 2x3
# Sujeito a
# 5x1 + 2x2 + 2x3 menor igual a 19
# 2x1 + x2 + 2x3 menor igual a 8
# x1 maior igual a 0, x2 maior igual a 0, x3 maior igual a 0

# install.packages("linprog")

library("linprog")

c = c(7,3,2) # Função Objetivo
b = c(19,8) # Restrições
A = rbind(c(5,2,3), c(2,1,2)) # Equações
res = solveLP(c, b, A, maximum=TRUE)
print(res)
