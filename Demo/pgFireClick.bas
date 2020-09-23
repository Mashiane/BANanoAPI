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
	'
	'add a paragraph
	Dim p As JSElement = document.createElement("P")
	p.ID = "note"
	p.appendChild(document.createTextNode("Hover over the checkbox to simulate a click"))
	document.body.appendChild(p)
	
	'create a form
	Dim f As JSElement = document.createElement("FORM")
	'create a checkbox
	Dim i As JSElement = document.createElement("INPUT")
	i.setAttribute("type", "checkbox")
	i.ID = "mycheck"
	i.addEventListener(Me, "mouseover", "hoverit", False)
	i.addEventListener(Me, "click", "clickit", False) 
	f.appendchild(i)
	document.body.appendChild(f)
	'
	Dim btnTD As JSElement = document.createElement("BUTTON")
	btnTD.appendChild(document.createTextNode("Toggle Text Direction"))
	btnTD.addEventListener(Me, "click", "toggledir", False)
	document.body.appendChild(btnTD)
	
End Sub

Sub hoverit(e As BANanoEvent)
	document.getElementById("mycheck").click  
End Sub

Sub clickit(e As BANanoEvent)
	BANano.Alert("click event occured!")
End Sub

Sub toggledir(e As BANanoEvent)
	Dim dir As String = document.getElementById("note").dir
	Select Case dir
	Case document.DIR_LRT, ""
		document.getElementById("note").dir = document.DIR_RTL  
	Case document.DIR_RTL  
		document.getElementById("note").dir = document.DIR_LRT   
	End Select
End Sub