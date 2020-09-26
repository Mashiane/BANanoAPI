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
	document.title = "BANanoAPI - Canvas Day 16"
	'
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("drawImage", 3)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "Image to use:"
	tb1.row(0).cell(0).appendChild(p)
	'
	Dim img As JSElement = document.createElement("IMG")
	img.id = "scream"
	img.width = 220
	img.height = 277
	img.src = "./assets/img_the_scream.jpg"
	img.alt = "The Scream"
	img.on("load", Me, "loadimage")
	tb1.row(0).cell(0).appendChild(img)
	
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "Canvas:"
	tb1.row(0).cell(0).appendChild(p)
	
	'create the canvas
	Dim mycanvasx As JSElement = document.createElement("CANVAS")
	mycanvasx.id = "c"
	mycanvasx.width = 240
	mycanvasx.height = 297
	mycanvasx.style.border = "1px solid #d3d3d3"
	mycanvasx.innerHTML = "Your browser does Not support the HTML5 canvas tag"
	tb1.row(0).cell(0).appendChild(mycanvasx)
	
	'c2
	tb1.row(0).cell(1).empty
	tb1.row(0).cell(1).appendChild(document.createElement("P"))
	Dim c2 As JSElement = document.createElement("CANVAS")
	c2.id = "c2"
	c2.width = 240
	c2.height = 297
	c2.style.border = "1px solid #d3d3d3"
	c2.innerHTML = "Your browser does Not support the HTML5 canvas tag"
	tb1.row(0).cell(1).appendChild(c2)
	'
	tb1.row(0).cell(2).empty
	tb1.row(0).cell(2).appendChild(document.createElement("P"))
	Dim c3 As JSElement = document.createElement("CANVAS")
	c3.id = "c3"
	c3.width = 240
	c3.height = 297
	c3.style.border = "1px solid #d3d3d3"
	c3.innerHTML = "Your browser does Not support the HTML5 canvas tag"
	tb1.row(0).cell(2).appendChild(c3)
	
	
	'add table to body
	body.appendchild(tb1.table)
End Sub

Sub loadimage(e As BANanoEvent)
	Dim c As JSElement = document.getElementById("c")
	Dim ctx As JSCanvas
	ctx.Initialize(c, "2d")
	Dim imgx As JSElement = document.getElementById("scream")
	ctx.drawImage1(imgx, 10, 10)
	
	'crop the image	
	Dim c2 As JSElement = document.getElementById("c2")
	Dim ctx1 As JSCanvas
	ctx1.Initialize(c2, "2d")
	Dim imgx1 As JSElement = document.getElementById("scream")
	ctx1.drawImage2(imgx1, 10, 10, 150, 180)
	
	'crop and resize
	Dim c3 As JSElement = document.getElementById("c3")
	Dim ctx2 As JSCanvas
	ctx2.Initialize(c3, "2d")
	Dim imgx2 As JSElement = document.getElementById("scream")
	ctx2.drawImage3(imgx2, 90, 130, 50, 60, 10, 10, 50, 60)
End Sub
