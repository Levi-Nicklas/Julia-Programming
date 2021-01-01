# Least Squares Examples 1
# Levi C. Nicklas
# 1/1/2021
####################################
# Notes:    This least squares example comes from
#           Numerical Analysis (2nd Ed.) from Tim
#           Sauer.
####################################

# Define Problem 
A = [3 -1 -2; 4 1 0; -3 2 1; 1 1 5; -2 0 3]
b = [10 10 -5 15 0]'

# Solve
x = A \ b # Use built in SOLVE (\) operator!
print("x = " * string(x))

# Reeval w/ Least Squares
y_hat = A * x
print("y_hat = " * string(y_hat))

# Calculate Residuals
resid = y_hat - b
print("residual= " * string(resid))



# Plot Data points:
using Plots
plot(A[:,1],A[:,2],A[:,3],
seriestype = :scatter)


