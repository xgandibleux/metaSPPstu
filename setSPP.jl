# --------------------------------------------------------------------------- #

# Setting an ip model of SPP
function setSPP(solverSelected, C, A)
  m, n = size(A)
  #ip = Model( with_optimizer(GLPK.Optimizer) )
  ip = Model(with_optimizer(solverSelected))
  @variable(ip, x[1:n], Bin)
  @objective(ip, Max, dot(C, x))
  @constraint(ip , cte[i=1:m], sum(A[i,j] * x[j] for j=1:n) <= 1)
  return ip, x
end
