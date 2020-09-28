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
	document.title = "BANanoAPI - Canvas Day 19"
	'
	
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("globalAlpha", 2)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.fillStyle = "red"
	ctx.fillRect1(20, 20, 75, 50)

	'Turn transparency on
	ctx.globalAlpha = 0.2
	ctx.fillStyle = "blue"
	ctx.fillRect1(50, 50, 75, 50)
	ctx.fillStyle = "green"
	ctx.fillRect1(80, 80, 75, 50)
	'
	'r1c1
	tb1.row(0).cell(1).innerHTML = "globalCompositeOperation"
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.fillStyle = "red"
	ctx1.fillRect1(20, 20, 75, 50)
	ctx1.fillStyle = "blue"
	ctx1.globalCompositeOperation = "source-over"
	ctx1.fillRect1(50, 50, 75, 50)
	ctx1.fillStyle = "red"
	ctx1.fillRect1(150, 20, 75, 50)
	ctx1.fillStyle = "blue"
	ctx1.globalCompositeOperation = "destination-over"
	ctx1.fillRect1(180, 50, 75, 50)
End Sub