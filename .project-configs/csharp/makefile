buildDirectory := bin
defaultOptions := 
compiler := dotnet
SHELL := /bin/bash

linux:
	if [[ ! -d $(buildDirectory) ]]; then mkdir $(buildDirectory); fi
	$(compiler) build $(defaultOptions) -o $(buildDirectory)

windows:
	powershell -c "if (-not (Test-Path -Path $(buildDirectory))) {mkdir bin}"
	$(compiler) build $(defaultOptions) -o $(buildDirectory)

clean:
	rm -rf $(buildDirectory)/*
