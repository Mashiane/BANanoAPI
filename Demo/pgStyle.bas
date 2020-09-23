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
	Public document As JSDocument
	Public window As JSWindow
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	document.title = "BJS - Styles"
	'
	Dim p As JSElement = document.createElement("P")
	p.ID = "p1"
	p.innerHTML = "Hello World!"
	document.body.appendChild(p)
	
	Dim p As JSElement = document.createElement("P")
	p.ID = "p2"
	p.innerHTML = "Hello Anele Mbanga (Mashy)"
	document.body.appendChild(p)
	
	document.getElementById("p2").style.color = "blue"
	document.getElementById("p2").style.fontFamily = "Arial"
	document.getElementById("p2").style.fontSize = "larger"
	
End Sub