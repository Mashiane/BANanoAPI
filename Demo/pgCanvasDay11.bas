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
	document.title = "BANanoAPI - Canvas Day 11"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("clip", 6)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.rect1(50, 20, 200, 120)
	ctx.stroke1
	ctx.fillStyle = "red"
	ctx.fillRect1(0, 0, 150, 100)
	
	'r1c1
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.rect1(50, 20, 200, 120)
	ctx1.stroke1
	ctx1.clip1
	ctx1.fillStyle = "red"
	ctx1.fillRect1(0, 0, 150, 100)
End Sub
