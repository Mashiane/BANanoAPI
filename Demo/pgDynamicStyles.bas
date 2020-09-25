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
	'
	document.title = "BANanoAPI - Dynamic Styles"
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Exploring Dynamic Stylesheets, such will be added to the div below."
	body.appendChild(p)
	'
	'add a div
	Dim div As JSElement = document.createElement(document.EnumTag.TDIV)
	div.id = "dynadiv"
	div.textContent = "Testing dynamic styles"
	div.style.width = "200px"
	div.style.height = "200px"
	div.style.border = "1px solid black"
	body.appendChild(div)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button below to add the style."
	body.appendChild(p)
	
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.textContent = "Add Dynamic Style"
	btn.onClick(Me, "addstyle")
	body.appendChild(btn)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button below to change to another the style."
	body.appendChild(p)
	
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.textContent = "Change Style"
	btn.onClick(Me, "changestyle")
	body.appendChild(btn)
	'
	'exists
	'Dim cssDone As JSStyleSheet = document.getStyleSheetByTitle("anele")
	'Log(cssDone)
	
	Log(document.styleSheets)
	
End Sub

Sub changestyle(e As BANanoEvent)
	Dim el As JSElement = document.getElementById("dynadiv")
	el.style.color = "red"
	el.style.fontSize = "15px"
	el.style.backgroundColor = "white"
End Sub

Sub addstyle(e As BANanoEvent)
	'create a styleSheet
	Dim sheet As JSElement = document.createElement("style")
	sheet.id = "anele"
	sheet.title = "anele"
	sheet.innerHTML = "div {border: 2px solid black; background-color: blue;}"
	'sheet.style.backgroundColor = "blue"
	'sheet.style.borderStyle = "solid"
	'sheet.style.borderColor = "black"
	'sheet.style.borderWidth = "2px"
	body.appendChild(sheet)
End Sub
