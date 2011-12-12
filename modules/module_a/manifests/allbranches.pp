# stackhammer checks all branches, not just what is evaluated for a particular platform
if $::operatingsystem == "ubuntu" {
	$myvar = $allbranches::x
}
else {
	# 'allbranches' is not spelled correctly. Problem caught without having to 
	# evaluate the manifest on non "unbuntu"
	$myvar = $albranches::x
}

# Class that introduces the variable $allbranches::x used by logic above to illustrate
# that all branches of conditional logic is checked by validation
class allbranches($x = 10) {
}

