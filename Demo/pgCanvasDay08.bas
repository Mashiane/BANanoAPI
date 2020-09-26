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
	Private tb2 As JSTable
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	body = document.body
	document.title = "BANanoAPI - Canvas Day 08"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("miterLimit", 1)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.lineWidth = 10
	ctx.lineJoin = "miter"
	ctx.miterLimit = 5
	ctx.moveTo1(20, 20)
	ctx.lineTo1(50, 27)
	ctx.lineTo1(20, 34)
	ctx.stroke1
End Sub
