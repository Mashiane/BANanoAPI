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
	document.title = "BANanoAPI - Canvas Day 05"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("shadowOffsetY", 1)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 0)
	ctx1.shadowBlur = 10
	ctx1.shadowOffsetY = 20
	ctx1.shadowColor = "black"
	ctx1.fillStyle = "red"
	ctx1.fillRect1(20, 20, 100, 80)
	
	'
	'addColorStop
	tb2.Initialize(document, "tb2")
	Dim cols2 As List = canvdays.Columns("addColorStop", 1)
	tb2.SetHeaders(cols2)
	tb2.AddRow(cols2)
	body.appendChild(tb2.Table)
	
	'r1c0
	Dim ctx10 As JSCanvas = canvdays.Skeleton(document, tb2, "ctx10", 1, 0)
	Dim grd10 As JSCanvas = ctx10.createLinearGradient1(0, 0, 170, 0)
	grd10.addColorStop1(0, "black")
	grd10.addColorStop1("0.3", "magenta")
	grd10.addColorStop1("0.5", "blue")
	grd10.addColorStop1("0.6", "green")
	grd10.addColorStop1("0.8", "yellow")
	grd10.addColorStop1(1, "red")
 
	ctx10.fillStyle = grd10.Context
	ctx10.fillRect1(20, 20, 150, 100)
	
End Sub
