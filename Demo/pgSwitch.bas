B4J=true
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
	
	Dim grade As String = "A"
	
	document.write("Entering switch block<br />")
	
	Select Case grade
	Case "A"
		document.write("Good job<br />")
	Case "B"
		document.write("Pretty good<br />")
	Case "C"
		 document.write("Passed<br />")
	Case "D"
		 document.write("Not so good<br />")
	Case "F"
		 document.write("Failed<br />")
	Case Else
		document.write("Unknown grade<br />")
	End Select
	document.write("Exiting switch block")
	'
	document.close
	'change this after document close
	document.title = "BANanoAPI - Switch / Case statement"
End Sub
