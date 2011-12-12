# a manifest with various link problems

# debug function is not spelled correctly
debugg " running a manifests with link problems " 

class linkproblems {
	$tempfilegroup = "other"
	file {
		'/tmp/testfile' :
		# property not spelled correctly ('owner')
			ovner => "root",
			
		# reference to '$tempfilegroup' is spelled wrong
			group => $linkproblems::tmpfilegroup
	}
}