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
	'change this after document close
	document.title = "BANanoAPI - Functions"
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the following button to call the function"
	body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo"
	body.appendChild(p)
	'
	Dim f As JSElement = document.createElement("FORM")
	Dim i As JSElement = document.createElement("INPUT")
	i.inputType = "button"
	i.value = "Say Hello"
	i.onClick(Me, "sayHello")
	'add button to form
	f.appendChild(i)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the following button to display name and age"
	f.appendChild(p)
	'
	Dim i As JSElement = document.createElement("INPUT")
	i.inputType = "button"
	i.value = "Say Hello with name"
	i.onClick(Me, "sayHello1")
	'add button to form
	f.appendChild(i)
	
	'add form to body
	body.AppendChild(f)
End Sub

Sub sayHello(e As BANanoEvent)
	document.getElementById("demo").textContent = "Hello there!"
End Sub

Sub sayHello1(e As BANanoEvent)
	Dim name As String = "Zoyey"
	Dim age As Int = 7
    document.getElementById("demo").textContent = name & " is " & age & " years old."
End Sub