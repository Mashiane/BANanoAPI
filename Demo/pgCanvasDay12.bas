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
	document.title = "BANanoAPI - Canvas Day 12"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("quadraticCurveTo", 6)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.beginPath1
	ctx.moveTo1(20, 20)
	ctx.quadraticCurveTo1(20, 100, 200, 20)
	ctx.stroke1
	
	
	'r1c1
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.beginPath1
	ctx1.moveTo1(10, 90)
	ctx1.quadraticCurveTo1(60, 10, 90, 90)
	ctx1.lineTo1(60, 10)
	ctx1.closePath1
	ctx1.stroke1
	'
	'r1c2
	tb1.row(0).cell(2).innerText = "bezierCurveTo"
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 2)
	ctx2.beginPath1
	ctx2.moveTo1(10, 90)
	ctx2.bezierCurveTo1(10, 10, 90, 10, 50, 90)
	ctx2.lineTo1(90, 10)
	ctx2.lineTo1(10, 10)
	ctx2.closePath1
	ctx2.stroke1
	'
	'init math
	Dim m As JSMath
	m.Initialize 
	'r1c3
	tb1.row(0).cell(3).innerHTML = "arc"
	Dim ctx3 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx3", 1, 3)
	ctx3.beginPath1
	ctx3.arc1(50, 50, 40, 0, 7)
	ctx3.arc1(150, 50, 40, 0, 0.5 * m.PI)
	ctx3.stroke1
	
	'
	'r1c4
	tb1.row(0).cell(4).innerHTML = "bezierCurveTo"
	Dim ctx4 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx4", 1, 4)
	ctx4.beginPath1
	ctx4.moveTo1(20, 20)
	ctx4.bezierCurveTo1(20, 100, 200, 100, 200, 20)
	ctx4.stroke1
	'
	tb1.row(0).cell(5).innerHTML = "arc"
	Dim ctx5 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx5", 1, 5)
	ctx5.beginPath1
	ctx5.arc1(100, 75, 50, 0, 2 * m.PI)
	ctx5.stroke1
	
End Sub
