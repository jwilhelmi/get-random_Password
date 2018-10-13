﻿<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.155
	 Created on:   	10/11/2018 10:31 AM
	 Created by:   	John Wilhelmi
	 Organization: 	JWC
	 Filename:     	Test-Module.ps1
	===========================================================================
	.DESCRIPTION
	The Test-Module.ps1 script lets you test the functions and other features of
	your module in your PowerShell Studio module project. It's part of your project,
	but it is not included in your module.

	In this test script, import the module (be careful to import the correct version)
	and write commands that test the module features. You can include Pester
	tests, too.

	To run the script, click Run or Run in Console. Or, when working on any file
	in the project, click Home\Run or Home\Run in Console, or in the Project pane, 
	right-click the project name, and then click Run Project.
#>


#Explicitly import the module for testing
Import-Module 'get-random_Password'

#Run each module function
get-random_Password 5 5 "--YYYY--"
get-random_Password 5 5
#Sample Pester Test
Describe "Test get-random_Password" {
	It "tests Test get-random_Password" {
		Test get-random_Password 5 1
	}	
}