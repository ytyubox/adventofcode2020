

# test: 
#     xcodebuild clean build test

init:
	git config core.hooksPath .githooks

gen: 
	xcodegen generate

scan:
	periphery scan --retain-public --retain-unused-protocol-func-params

