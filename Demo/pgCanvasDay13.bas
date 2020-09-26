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
	document.title = "BANanoAPI - Canvas Day 13"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("arcTo", 6)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.beginPath1
	ctx.moveTo1(20, 20)               'Create a starting point
	ctx.lineTo1(100, 20)              'Create a horizontal line
	ctx.arcTo1(150, 20, 150, 70, 50)  'Create an arc
	ctx.lineTo1(150, 120)             'Continue with vertical line
	ctx.stroke1                     'Draw it
	
	
	'
	'r1c1
	tb1.row(0).cell(1).innerHTML = "isPointInPath1"
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.rect1(20, 20, 150, 100)
	If ctx1.isPointInPath1(20, 50) Then ctx1.stroke1
	
	'
	tb1.row(0).cell(2).innerHTML = "scale"
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 2)
	ctx2.strokeRect1(5, 5, 25, 15)
	ctx2.scale1(2, 2)
	ctx2.strokeRect1(5, 5, 25, 15)
	
	'
	tb1.row(0).cell(3).innerHTML = "scale"
	Dim ctx3 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx3", 1, 3)
	ctx3.strokeRect1(5, 5, 25, 15)
	ctx3.scale1(2, 2)
	ctx3.strokeRect1(5, 5, 25, 15)
	ctx3.scale1(2, 2)
	ctx3.strokeRect1(5, 5, 25, 15)
	ctx3.scale1(2, 2)
	ctx3.strokeRect1(5, 5, 25, 15)
	
	'
	tb1.row(0).cell(4).innerHTML = "rotate"
	Dim ctx4 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx4", 1, 4)
	ctx4.rotate1(20 * cPI / 180)
	ctx4.fillRect1(50, 20, 100, 50)
	
	
	tb1.row(0).cell(5).innerHTML = "translate"
	Dim ctx5 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx5", 1, 5)
	ctx5.fillRect1(10, 10, 100, 50)
	ctx5.translate1(70, 70)
	ctx5.fillRect1(10, 10, 100, 50)
End Sub
