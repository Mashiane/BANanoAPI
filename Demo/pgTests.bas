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
	'
	Dim angle As Int
	Dim lastTime As Object
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	body = document.body
	document.title = "BANanoAPI - Tests"
	
	'Dim a As JSElement = document.createElement1("A", CreateMap("href":"http://www.b4x.com"), Array("B4x Home Page"))
	'body.appendchild(a)
	
	'
	body.style.minHeight = "200px"
	'
	Dim cat As JSElement = document.createElement1("IMG", CreateMap("src":"./assets/cat.png", "id":"cat"), Null)
	cat.style.position = "absolute"
	body.appendChild(cat)
	'
	Dim hat As JSElement = document.createElement1("IMG", CreateMap("src":"./assets/hat.png", "id":"hat"), Null)
	hat.style.position = "absolute"
	body.appendchild(hat)
	
	angle = 0
	lastTime = Null
	
	BANano.Window.RequestAnimationFrame(Me, "animate")
End Sub
'
Sub animate(timeStamp As Double)
	Dim cat As JSElement = document.getElementById("cat")
	Dim hat As JSElement = document.getElementById("hat")
	'
	If (lastTime <> Null) Then
		angle = angle + (timeStamp - lastTime) * 0.001
	End If
	lastTime = timeStamp
	cat.style.top = (Sin(angle) * 40 + 40) & "px"
	cat.style.left = (Cos(angle) * 200 + 230) & "px"
	hat.style.top = (Sin(angle + cPI) * 40 + 40) & "px"
	hat.style.left = (Cos(angle + cPI) * 200 + 230) & "px"
	BANano.Window.RequestAnimationFrame(Me, "animate")
End Sub
