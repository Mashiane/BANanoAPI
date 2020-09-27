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
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	'change the page title on browser
	document.title = "BANanoAPI - Canvas Day 01"
	'create a table
	Dim tb1 As JSTable
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("fillStyle", 5)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	' r1c0
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 0)
	ctx1.fillStyle = "#ff0000"
	ctx1.fillRect1(20, 20, 150, 100)
	
	'r1c1
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 1)
	Dim my_gradient As JSCanvas = ctx2.createLinearGradient1(0, 0, 0, 170)
	my_gradient.addColorStop1(0, "black")
	my_gradient.addColorStop1(1, "white")
	ctx2.fillStyle = my_gradient.Context
	ctx2.fillRect1(20, 20, 150, 100)
	
	'r1c2
	Dim ctx3 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx3", 1, 2)
	Dim my_gradient1 As JSCanvas = ctx3.createLinearGradient1(0, 0, 170, 0)
	my_gradient1.addColorStop1(0, "black")
	my_gradient1.addColorStop1(1, "white")
	ctx3.fillStyle = my_gradient1.Context
	ctx3.fillRect1(20, 20, 150, 100)
	
	
	
	
	'r1c3
	Dim ctx4 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx4", 1, 3)
	Dim my_gradient3 As JSCanvas = ctx4.createLinearGradient1(0, 0, 170, 0)
	my_gradient3.addColorStop1(0, "black")
	my_gradient3.addColorStop1(0.5, "red")
	my_gradient3.addColorStop1(1, "white")
	ctx4.fillStyle = my_gradient3.Context
	ctx4.fillRect1(20, 20, 150, 100)
	
	'r1c4
	tb1.row(1).cell(4).empty
	Dim p As JSElement = document.createElement("P")
	p.innerText = "Image to use:"
	tb1.row(1).cell(4).appendChild(p)
	'
	Dim img As JSElement = document.createElement("IMG")
	img.src = "./assets/img_lamp.jpg"
	img.id = "lamp"
	img.width = 32
	img.height = 32
	tb1.row(1).cell(4).appendChild(img)
	'
	Dim p As JSElement = document.createElement("P")
	tb1.row(1).cell(4).appendChild(p)
	
	'
	canvdays.canvas(document, tb1, "ctx5", 1, 4)
	document.addBR(tb1.row(1).cell(4))
	document.addBR(tb1.row(1).cell(4))
	'
	Dim b1 As JSElement = document.createElement("BUTTON")
	b1.innerText = "Repeat"
	b1.onClick(Me, "brepeat")
	tb1.row(1).cell(4).appendChild(b1)
End Sub

Sub brepeat(e As BANanoEvent)
	draw("repeat")
End Sub

Sub draw(direction As String)
	Dim c As JSElement = document.getElementById("ctx5")
  	Dim ctx As JSCanvas
 	ctx.Initialize(c, "2d")
  	ctx.clearRect1(0, 0, c.width, c.height) 
  	Dim img As JSElement = document.getElementById("lamp")
  	Dim pat As JSCanvas = ctx.createPattern1(img, direction)
    ctx.rect1(0, 0, 150, 100)
    ctx.fillStyle = pat.context
   	ctx.fill1
End Sub
