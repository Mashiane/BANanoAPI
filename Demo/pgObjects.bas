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
	document.title = "BANanoAPI - Objects"
	'
	Dim p As JSElement = document.createElement("P")
	p.innerhtml = "Working with JavaScript Objects"
	body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo1"
	body.appendchild(p)
	
	Dim p As JSElement = document.createElement("P")
	p.id = "demo2"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo3"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo4"
	body.appendchild(p)
	
	Dim person As JSObject
	person.Initialize(Null)
	person.set("firstName",  "John")
	person.set("lastName", "Doe")
	person.set("age", 50)
	person.set("eyeColor", "blue")
	'dont allow changes
	person.freeze
	person.set("city", "East London")
	
	document.getElementById("demo").innerHTML = person.get("firstName") & " " & person.get("lastName")
	document.getElementById("demo1").innerHTML = person.get("firstName") & " is " & person.get("age") & " years old."
	'
	document.getElementById("demo2").innerHTML = " Keys: " & person.keys.toString
	document.getElementById("demo3").innerHTML = "Values: " & person.values.toString
	document.getElementById("demo4").innerHTML = "JSON: " & person.ToJSON
End Sub
