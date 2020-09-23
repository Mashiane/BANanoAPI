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
	
	document.title = "BJS - Visibility"
	'
	Dim p As JSElement = document.createElement("P")
	p.ID = "p1"
	p.innerHTML = "This is a paragraph"
	document.body.appendChild(p)
	
	'
	Dim btnHide As JSElement = document.createElement("INPUT")
	btnHide.inputtype = "button"
	btnHide.value = "Hide Text"
	btnHide.addEventListener(Me, "click", "hidep", False)
	document.body.appendChild(btnHide)
	'
	Dim btn As JSElement = document.createElement("INPUT")
	btn.inputtype = "button"
	btn.value = "Show Text"
	btn.addEventListener(Me, "click", "showp", False)
	document.body.appendChild(btn)
	
End Sub

Sub hidep(e As BANanoEvent)
	document.getElementById("p1").style.visibility = document.VISIBILITY_HIDDEN  
End Sub

Sub showp(e As BANanoEvent)
	document.getElementById("p1").style.visibility = document.VISIBILITY_VISIBLE  
End Sub