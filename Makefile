

gen: 
	xcodegen generate


test: 
	xcodebuild build test -scheme AdventOfCode2020


init:
	git config core.hooksPath .githooks

scan:
	periphery scan --retain-public --retain-unused-protocol-func-params

