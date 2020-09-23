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
	document.title = "BANanoAPI - Hello World"
	'
	Dim btn As JSElement = document.createElement(document.EnumTag.TINPUT)
	btn.addEventListener(Me, "click", "sayHello", False)
	btn.value = "Say Hello"
	btn.inputType = document.EnumTag.TBUTTON
	body.appendChild(btn)
End Sub

Sub sayHello(e As BANanoEvent)
	window.alert("Hello world!")
End Sub