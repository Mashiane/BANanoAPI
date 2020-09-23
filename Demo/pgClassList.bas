B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private fx As JFX
	Private BANano As BANano  'ignore
	Public document As JSDocument
	Public window As JSWindow
End Sub

#if css
.mystyle {
  width: 500px;
  height: 50px;
  padding: 15px;
  border: 1px solid black;
}

.anotherClass {
  background-color: coral;
  color: white;
}

.thirdClass {
  text-transform: uppercase;
  text-align: center;
  font-size: 25px;
}

.newClassName {
  width: 400px;
  height: 100px;
  background-color: lightblue;
  text-align: center;
  font-size: 25px;
  color: navy;
  margin-bottom: 10px;
}

.mystyle1 {
  width: 300px;
  height: 100px;
  background-color: coral;
  text-align: center;
  font-size: 25px;
  color: white;
  margin-bottom: 10px;
}

#End If

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'
	'add a button
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.appendChild(document.createTextNode("Add style to div"))
	btn.addEventListener(Me, "click", "addstyle", False)
	document.body.appendChild(btn)
	
	'add a div
	document.body.appendChild(document.createElement("DIV"))
	'
	Dim btn1 As JSElement = document.createElement("BUTTON")
	btn1.appendChild(document.createTextNode("Add multiple styles to div"))
	btn1.addEventListener(Me, "click", "addstyles", False)
	document.body.appendChild(btn1)
	'
	'add a div
	document.body.appendChild(document.createElement("DIV"))
	'
	Dim btn2 As JSElement = document.createElement("BUTTON")
	btn2.appendChild(document.createTextNode("Remove mystyle"))
	btn2.addEventListener(Me, "click", "removestyle", False)
	document.body.appendChild(btn2)
	'
	'add a div
	document.body.appendChild(document.createElement("DIV"))
	'
	Dim btn3 As JSElement = document.createElement("BUTTON")
	btn3.appendChild(document.createTextNode("Toggle Style"))
	btn3.addEventListener(Me, "click", "togglestyle", False)
	document.body.appendChild(btn3)
	'
	Dim btn4 As JSElement = document.createElement("BUTTON")
	btn4.appendChild(document.createTextNode("Get Class Names"))
	btn4.addEventListener(Me, "click", "getclassnames", False)
	document.body.appendChild(btn4)
	'
	Dim btn5 As JSElement = document.createElement("BUTTON")
	btn5.appendChild(document.createTextNode("Use Class Names"))
	btn5.addEventListener(Me, "click", "useclassname", False)
	document.body.appendChild(btn5)
	
	
	'add a div element
	Dim div1 As JSElement = document.createElement("DIV")
	div1.ID = "myDIV"
	div1.appendChild(document.createTextNode("I am a div element"))
	document.body.appendChild(div1)
	'
	Dim div2 As JSElement = document.createElement("DIV")
	div2.ID = "namesof"
	div2.appendChild(document.createTextNode("Names of classes"))
	document.body.appendChild(div2)
End Sub

Sub useclassname(e As BANanoEvent)
	document.getElementById("mydiv").className = "mystyle1"
End Sub

Sub getclassnames(e As BANanoEvent)
	Dim x As String = document.getElementById("mydiv").classList.names
	document.getElementById("namesof").innerHTML = x
End Sub


Sub togglestyle(e As BANanoEvent)
	document.getElementById("myDIV").classList.toggle("newClassName")
End Sub

Sub addstyle(e As BANanoEvent)
	document.getElementById("myDIV").classList.add("mystyle")
End Sub


Sub addstyles(e As BANanoEvent)
	document.getElementById("myDIV").classList.addMulti(Array("mystyle", "anotherClass", "thirdClass"))
End Sub

Sub removestyle(e As BANanoEvent)
	document.getElementById("myDIV").classList.remove("thirdClass")
End Sub