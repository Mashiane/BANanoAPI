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
	Public localStorage As JSLocalStorage
End Sub

Sub Init
	'initialize the window * COMPULSORY
	window.Initialize
	'get the document * COMPULSORY
	document = window.document
	'get the document body * COMPULSORY
	body = document.body
	'get the local storage
	localStorage = window.localStorage
	'
	document.title = "BANanoAPI - LocalStorage"
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo"
	body.appendChild(p)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "localStorage - setItem() method"
	body.appendChild(h1)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "This example demonstrates how To use the setItem() method To set the value of a specified local storage item."
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "createItem")
	btn.textContent = "Set local storage item"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "localStorage - getItem() method"
	body.appendChild(h1)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to get the item value"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "getItem")
	btn.textContent = "Get local storage item"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "localStorage - removeItem() method"
	body.appendChild(h1)
	
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to delete the item value"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "removeItem")
	btn.textContent = "Delete local storage item"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "localStorage - clear() method"
	body.appendChild(h1)
	
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button to clear localstorage"
	body.appendChild(p)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.onClick(Me, "clearLS")
	btn.textContent = "Clear local storage"
	body.appendChild(btn)
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "localStorage - length property"
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
	h1.textContent = "localStorage - key() method"
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
	Dim item As Object = localStorage.key(0)
	document.getElementById("demo").innerHTML = item
End Sub

Sub getLength(e As BANanoEvent)
	document.getElementById("demo").innerHTML = localStorage.size
End Sub

Sub clearLS(e As BANanoEvent)  'ignore
	localStorage.clear
End Sub

Sub createitem(e As BANanoEvent)   'ignore
	localStorage.setItem("mytime", DateTime.Now) 
End Sub

Sub getitem(e As BANanoEvent)      'ignore
	Dim x As Object = localStorage.getItem("mytime")
	document.getElementById("demo").innerHTML = x
End Sub

Sub removeItem(e As BANanoEvent)   'ignore
	localStorage.removeItem("mytime")
End Sub