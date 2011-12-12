# In puppet < 2.7 variables with hyphens in the name were not interpolated.
# Only the part up to the hyphen was taken as part of variable name.
$variable-with-hyphen = "x"
$variable = "y"
$quirky ="Interpolation of $variable-with-hyphen"

# Stackhammer helps you catch this problem. Fix using {} around the name - e.g.
# ${variable}-with-hyphen or ${variable-with-hyphen} depending on expected result.

# Runtime sometimes allows access between parameters, but order is undefined.
# Stackhammer helps you catch this problem (do not reference other parameters) 
define uninitialized($a = $c, $b = $a, $c=10) {
}