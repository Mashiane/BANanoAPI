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
	document.title = "BANanoAPI - Dates"
	'
	Dim p As JSElement = document.createElement("P")
	p.innerhtml = "Working with JavaScript Dates"
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
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo5"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo6"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo7"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo8"
	body.appendchild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo9"
	body.appendchild(p)
	
	Dim d As JSDate
	d.Initialize(Null)
	document.getElementById("demo").innerHTML = "Today's Date: " & d.toString
	document.getElementById("demo1").innerHTML = "toUTCString: " & d.toUTCString
	document.getElementById("demo2").innerHTML = "toDateString: " & d.toDateString
	document.getElementById("demo3").innerHTML = "toISOString: " & d.toISOString
	document.getElementById("demo4").innerHTML = "getTime: " & d.getTime
	document.getElementById("demo5").innerHTML = "parse: " & d.parse("1973-04-15")
	
	document.getElementById("demo6").innerHTML = "daysBetween: " & d.daysBetween("1973-04-15", "2020-09-25")
	document.getElementById("demo7").innerHTML = "daysBetween: " & d.daysBetween("2010-04-01", "2020-09-25")
	document.getElementById("demo9").innerHTML = "ToDay: " & d.toDateTime
	
	'Log(d.dateAdd("y", 1).toDateTime)
	'Log(d.dateAdd("m", 1).toDateTime)
	'Log(d.dateAdd("d", 1).toDateTime)
End Sub
