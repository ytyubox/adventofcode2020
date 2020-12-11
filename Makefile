

# test: 
# 	xcodebuild build test -scheme AdventOfCode2020 2>&1 | grep failed

gen: 
	xcodegen generate

init:
	git config core.hooksPath .githooks

scan:
	periphery scan --retain-public --retain-unused-protocol-func-params

