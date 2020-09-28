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
	document.title = "BANanoAPI - Canvas Day 15"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("fillText", 4)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.font = "20px Georgia"
	ctx.fillText1("Hello World!", 10, 50)
	ctx.font = "30px Verdana"
	'Create gradient
	Dim c As JSElement = document.getElementById("ctx")
	Dim gradient As JSCanvas = ctx.createLinearGradient1(0, 0, c.width, 0)
	gradient.addColorStop1("0", "magenta")
	gradient.addColorStop1("0.5", "blue")
	gradient.addColorStop1("1.0", "red")
	'Fill with gradient
	ctx.fillStyle = gradient.context
	ctx.fillText1("Big smile!", 10, 90)
	
	'
	'r1c1
	tb1.row(0).cell(1).innerHTML = "strokeText"
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.font = "20px Georgia"
	ctx1.strokeText1("Hello World!", 10, 50)
	ctx1.font = "30px Verdana"
	'Create gradient
	Dim gradient1 As JSCanvas = ctx.createLinearGradient1(0, 0, c.width, 0)
	gradient1.addColorStop1("0", "magenta")
	gradient1.addColorStop1("0.5", "blue")
	gradient1.addColorStop1("1.0", "red")
	'Fill with gradient
	ctx1.strokeStyle = gradient1.context
	ctx1.strokeText1("Big smile!", 10, 90)
	
	'
	'r1c2
	tb1.row(0).cell(2).innerHTML = "measureText"
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 2)
	ctx2.font = "30px Arial"
	Dim txt As String = "Hello World"
	Dim w As Int = ctx2.measureText1(txt)
	ctx2.fillText1("width:" & w, 10, 50)
	ctx2.fillText1(txt, 10, 100)
	'
	'r1c3
	tb1.row(0).cell(3).innerHTML = "fillStyle"
	Dim ctx3 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 3)
	ctx3.font="30px Comic Sans MS"
	ctx3.fillStyle = "red"
	ctx3.textAlign = "center"
	ctx3.fillText1("Hello World", ctx3.canvas.width/2, ctx3.canvas.height/2)
End Sub
