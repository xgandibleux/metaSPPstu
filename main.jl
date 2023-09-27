# =========================================================================== #
# Compliant julia 1.x

# Using the following packages
using JuMP, GLPK
using LinearAlgebra

include("loadSPP.jl")
include("setSPP.jl")
include("getfname.jl")

# =========================================================================== #

# Loading a SPP instance
println("\nLoading...")
fname = "Data/didactic.dat"
C, A = loadSPP(fname)
@show C
@show A

# Solving a SPP instance with GLPK
println("\nSolving...")
solverSelected = GLPK.Optimizer
ip, ip_x = setSPP(solverSelected, C, A)
optimize!(ip)

# Displaying the results
println("z = ", objective_value(ip))
print("x = "); println(value.(ip_x))

# =========================================================================== #

# Collecting the names of instances to solve
println("\nCollecting...")
target = "Data"
fnames = getfname(target)

println("\nThat's all folks !")
