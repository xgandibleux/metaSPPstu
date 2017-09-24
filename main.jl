# =========================================================================== #
# Using the following packages
using JuMP, GLPKMathProgInterface

include("loadSPP.jl")
include("setSPP.jl")

# =========================================================================== #
# Setting the data
fname = "pb_100rnd0100.dat"
cost, matrix = loadSPP(fname)

# Proceeding to the optimization
solverSelected = GLPKSolverMIP()
ip, ip_x = setSPP(solverSelected, cost, matrix)
println("Solving..."); solve(ip)

# Displaying the results
println("z  = ", getobjectivevalue(ip))
print("x  = "); println(getvalue(ip_x))
