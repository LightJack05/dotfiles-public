sourceFiles := main.c
buildDirectory := bin
cStandard := c11
defaultOptions := -std=$(cStandard) -fdiagnostics-color=always -Wall -g
programName := main
compiler := gcc
SHELL := /bin/bash

linux:
	if [[ ! -d $(buildDirectory) ]]; then mkdir $(buildDirectory); fi
	$(compiler) $(defaultOptions) $(sourceFiles) -o $(buildDirectory)/$(programName) -lm

linux-gtk:
	if [[ ! -d $(buildDirectory) ]]; then mkdir $(buildDirectory); fi
	$(compiler) $(defaultOptions) `pkg-config --cflags gtk4` $(sourceFiles) -o $(buildDirectory)/$(programName) `pkg-config --libs gtk4`

windows:
	powershell -c "if (-not (Test-Path -Path $(buildDirectory))) {mkdir bin}"
	$(compiler) $(defaultOptions) $(sourceFiles) -o $(buildDirectory)/$(programName).exe


clean:
	rm -rf $(buildDirectory)/*