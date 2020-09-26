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
	document.title = "BANanoAPI - Canvas Day 03"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("shadowColor", 1)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 0)
	ctx1.shadowBlur = 20
	ctx1.fillStyle = "red"

	ctx1.shadowColor = "black"
	ctx1.fillRect1(20, 20, 100, 80)

	ctx1.shadowColor = "blue"
	ctx1.fillRect1(140, 20, 100, 80)
	
	
End Sub
