﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private BANano As BANano  'ignore
	Private window As JSWindow
	Private document As JSDocument
	Private body As JSElement
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	
	'open the document for writing
	document.open
	
	Dim count As Int = 0
	
	document.write("Exiting a loop @ 5 </br>")         
	Do Until (count = 10)
		document.write($"Current Count : ${count}<br />"$)
		count = count + 1
		'*****
		If count = 5 Then Exit
	Loop	
	document.write("Loop stopped!")
	'
	document.write("<p>Skipping an item @ 6</p>")
	Dim b As Int = 0
	For b = 1 To 10
		If b = 6 Then 
			Continue
		End If
		document.write($"Item: ${b}</br>"$)	
	Next
	document.write($"Received an exit @ ${b}</br>"$)
	
	'
	document.close
	'change this after document close
	document.title = "BANanoAPI - Do Until Loop"
End Sub
