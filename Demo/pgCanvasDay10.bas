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
	document.title = "BANanoAPI - Canvas Day 10"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("rect", 6)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.beginPath1
	ctx.rect1(20, 20, 150, 100)
	ctx.fillStyle = "red"
	ctx.fill1

	ctx.beginPath1
	ctx.rect1(40, 40, 150, 100)
	ctx.fillStyle = "blue"
	ctx.fill1
	'
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.beginPath1
	ctx1.moveTo1(20, 20)
	ctx1.lineTo1(20, 100)
	ctx1.lineTo1(70, 100)
	ctx1.strokeStyle = "red"
	'
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 2)
	ctx2.beginPath1
	ctx2.lineWidth = "5"
	ctx2.strokeStyle = "green"
	ctx2.moveTo1(0, 75)
	ctx2.lineTo1(250, 75)
	ctx2.stroke1

	ctx2.beginPath1
	ctx2.strokeStyle = "purple"
	ctx2.moveTo1(50, 0)
	ctx2.lineTo1(150, 130)
	ctx2.stroke1
	'
	Dim ctx3 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx3", 1, 3)
	ctx3.beginPath1
	ctx3.moveTo1(0, 0)
	ctx3.lineTo1(300, 150)
	ctx3.stroke1
	'
	Dim ctx4 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx4", 1, 4)
	ctx4.beginPath1
	ctx4.moveTo1(20, 20)
	ctx4.lineTo1(20, 100)
	ctx4.lineTo1(70, 100)
	ctx4.closePath1  'join with starting point
	ctx4.stroke1  'draw
	'
	Dim ctx5 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx5", 1, 5)
	ctx5.beginPath1
	ctx5.moveTo1(20, 20)
	ctx5.lineTo1(20, 100)
	ctx5.lineTo1(70, 100)
	ctx5.closePath1
	ctx5.stroke1
	ctx5.fillStyle = "red"
	ctx5.fill1
End Sub
