class module_b {
	# references variable $cvar in module_c without this module_b having declared the dependency
	$bvar = $module_c::cvar
}