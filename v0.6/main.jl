# =========================================================================== #

# Using the following packages
using JuMP, GLPKMathProgInterface

include("loadSPP.jl")
include("setSPP.jl")
include("getfname.jl")

# =========================================================================== #

# Setting the data
fname = "Desktop/Data/didactic.dat"  # path for a standard config on macOS
cost, matrix = loadSPP(fname)

# Proceeding to the optimization
solverSelected = GLPKSolverMIP()
ip, ip_x = setSPP(solverSelected, cost, matrix)
println("Solving..."); solve(ip)

# Displaying the results
println("z  = ", getobjectivevalue(ip))
print("x  = "); println(getvalue(ip_x))

# =========================================================================== #

# Collecting the names of instances to solve
target = "Desktop/Data"            # path for a standard config on macOS
fnames = getfname(target)

