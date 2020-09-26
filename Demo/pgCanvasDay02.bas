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
	Private tb1 As JSTable
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	body = document.body
	document.title = "BANanoAPI - Canvas Day 02"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("strokeStyle", 3)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 0)
	ctx1.strokeStyle = "#ff0000"
	ctx1.strokeRect1(20, 20, 150, 100)
	
	'r1c1
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 1)
	Dim gradient As JSCanvas = ctx2.createLinearGradient1(0, 0, 170, 0)
	gradient.addColorStop1(0, "magenta")
	gradient.addColorStop1(0.5, "blue")
	gradient.addColorStop1(1.0, "red")
	ctx2.strokeStyle = gradient.Context
	ctx2.lineWidth = 5
	ctx2.strokeRect1(20, 20, 150, 100)
	
	'r1c2
	Dim ctx3 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx3", 1, 2)
	Dim c As JSElement = document.getElementById("ctx3")
	ctx3.font = "30px Verdana"
	Dim gradient3 As JSCanvas = ctx3.createLinearGradient1(0, 0, c.width, 0)
	gradient3.addColorStop1("0", "magenta")
	gradient3.addColorStop1("0.5", "blue")
	gradient3.addColorStop1("1.0", "red")
	ctx3.strokeStyle = gradient3.context
	ctx3.strokeText1("Big smile!", 10, 50)
End Sub
