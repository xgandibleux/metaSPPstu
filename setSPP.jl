# --------------------------------------------------------------------------- #
# Setting the JuMP model of SPP

function setSPP(C, A)
  m, n = size(A)
  spp = Model()
  @variable(spp, x[1:n], Bin)
  @objective(spp, Max, dot(C, x))
  @constraint(spp , cte[i=1:m], sum(A[i,j] * x[j] for j=1:n) <= 1)
  return spp
end
