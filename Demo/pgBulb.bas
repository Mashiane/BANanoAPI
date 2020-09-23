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
	'
	document.title = "BJS - Bulb"	
	
	'add the off button
	Dim boff As JSElement = document.createElement("BUTTON").onClick(Me, "turnoff")
	boff.innerText = "Turn off the light"
	body.appendChild(boff)
	
	'add the bulb
	Dim bulb As JSElement = document.createElement("IMG")
	bulb.ID = "bulb"
	bulb.src = "./assets/pic_bulboff.gif"
	bulb.style.width = "100px"
	body.appendChild(bulb)	
	
	'add the on button
	Dim bon As JSElement = document.createElement("BUTTON").onClick(Me, "turnon")
	bon.innerText = "Turn on the light"
	body.appendChild(bon)
	
End Sub

Sub turnon(e As BANanoEvent)
	document.getElementById("bulb").src = "./assets/pic_bulbon.gif"
	'BANano.GetElement("#bulb").SetAttr("src", "./assets/pic_bulbon.gif")
End Sub

Sub turnoff(e As BANanoEvent)
	document.getElementById("bulb").src = "./assets/pic_bulboff.gif"
	'BANano.GetElement("#bulb").SetAttr("src", "./assets/pic_bulboff.gif")
End Sub
