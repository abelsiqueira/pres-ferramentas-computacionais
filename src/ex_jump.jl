using JuMP

m = Model()
@defVar(m, x >= 0)
@defVar(m, y, Int)
@addConstraint(m, 2*x + 3*y <= 11)
@setObjective(m, Max, x + 2*y)

print(m)
status = solve(m)

println("Objective: ", getObjectiveValue(m))
println("x = ", getValue(x))
println("y = ", getValue(y))
