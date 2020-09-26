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
	body = document.body
	'
	document.title = "BANanoAPI - Map Object"
	'
	Dim p As JSElement = document.createElement("P")
	p.innerText = "Handling the Map Object"
	body.appendChild(p)
	
	
End Sub

