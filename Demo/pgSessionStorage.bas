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
	Public body As JSElement
	Public sessionStorage As JSSessionStorage
End Sub

Sub Init
	'initialize the window * COMPULSORY
	window.Initialize
	'get the document * COMPULSORY
	document = window.document
	'get the document body * COMPULSORY
	body = document.body
	'get the session storage
	sessionStorage = window.sessionStorage
	'
	document.title = "BANanoAPI - SessionStorage"
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo"
	body.appendChild(p)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "sessionStorage - setItem() method"
	body.appendChild(h1)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "This example demonstrates how To use the setItem() method To set the value of a specified session storage item."
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "createItem")
	btn.textContent = "Set session storage item"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "sessionStorage - getItem() method"
	body.appendChild(h1)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to get the item value"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "getItem")
	btn.textContent = "Get session storage item"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "sessionStorage - removeItem() method"
	body.appendChild(h1)
	
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to delete the item value"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "removeItem")
	btn.textContent = "Delete session storage item"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "sessionStorage - clear() method"
	body.appendChild(h1)
	
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to clear sessionStorage"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "clearLS")
	btn.textContent = "Clear session storage"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "sessionStorage - length property"
	body.appendChild(h1)
	
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to get length"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "getLength")
	btn.textContent = "Get Length"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "sessionStorage - key() method"
	body.appendChild(h1)
	
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to get key(0)"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "getKey")
	btn.textContent = "Get Key @ 0"
	body.appendChild(btn)
End Sub

Sub getKey(e As BANanoEvent)
	Dim item As Object = sessionStorage.key(0)
	document.getElementById("demo").innerHTML = item
End Sub

Sub getLength(e As BANanoEvent)
	document.getElementById("demo").innerHTML = sessionStorage.length1
End Sub

Sub clearLS(e As BANanoEvent)  'ignore
	sessionStorage.clear
End Sub

Sub createitem(e As BANanoEvent)   'ignore
	sessionStorage.setItem("mytime", DateTime.Now)
End Sub

Sub getitem(e As BANanoEvent)      'ignore
	Dim x As Object = sessionStorage.getItem("mytime")
	document.getElementById("demo").innerHTML = x
End Sub

Sub removeItem(e As BANanoEvent)   'ignore
	sessionStorage.removeItem("mytime")
End Sub