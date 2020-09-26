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
	document.title = "BANanoAPI - Canvas Day 17"
	'
	
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("createImageData", 5)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	
	'add a paragraph
	Dim p As JSElement = document.createElement("P")
	p.id = "imgwidth"
	p.innerHTML = "Width of imgData: "
	tb1.row(1).cell(0).appendchild(p)
	
	'create image data
	Dim imgData As JSCanvas = ctx.createImageData1(100, 100)
	document.getElementById("imgwidth").innerHTML = "Width of imgData: " & imgData.width
	'
	Dim i As Int
	Dim d As Int = imgData.data.size
	For i = 0 To d
		imgData.setPixelColor(i, 255, 0, 0, 255)
		i = i + 4
	Next
	ctx.putImageData1(imgData, 10, 10)
	'
	'r1c1
	tb1.row(0).cell(1).innerHTML = "getImageData"
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.fillStyle = "red"
	ctx1.fillRect1(10, 10, 50, 50)
	'
	'copy the image
	Dim imgData As JSCanvas = ctx1.getImageData1(10, 10, 50, 50)
	ctx1.putImageData1(imgData, 10, 70)
	'
	'r1c2
	tb1.row(0).cell(2).innerHTML = "getImageData - Get Pixels"
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 2)
	ctx1.fillStyle = "red"
	ctx1.fillRect1(10, 10, 50, 50)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "pixels"
	tb1.row(1).cell(2).appendchild(p)
	
	'
	Dim imgData As JSCanvas = ctx1.getImageData1(30, 30, 50, 50)
	Dim pxl As Pixel = imgData.getPixelColor(0)
	document.getElementById("pixels").innerHTML = $"R:${pxl.red} G:${pxl.green} B:${pxl.blue} A:${pxl.alpha}"$
	'
	'r1c3
	tb1.row(0).cell(3).innerHTML = "invert Image"
	tb1.row(1).cell(3).innerHTML = ""
	'create an image
	Dim img As JSElement = document.createElement("IMG")
	img.id = "scream"
	img.width = 220
	img.height = 277
	img.src = "./assets/img_the_scream.jpg"
	img.alt = "The Scream"
	img.on("load", Me, "loadimage")
	tb1.row(1).cell(3).appendChild(img)
'	'create a canvas
'	Dim c As JSElement = document.getElementById("ctx2")
	
	'For (i = 0; i < imgData.data.length; i += 4) {
	'imgData.data[i] = 255 - imgData.data[i];
	'imgData.data[i+1] = 255 - imgData.data[i+1];
	'imgData.data[i+2] = 255 - imgData.data[i+2];
	'imgData.data[i+3] = 255;
  '}
	'ctx.putImageData(imgData, 0, 0);
	
End Sub

Sub loadimage(e As BANanoEvent)
	Dim ctx2 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx2", 1, 4)
	Dim imgx As JSElement = document.getElementById("scream")
	ctx2.canvas.width = imgx.width
	ctx2.canvas.height = imgx.height
	
	'draw image on canvas
	ctx2.drawImage1(imgx, 0, 0)
	'
	Dim imgData As JSCanvas = ctx2.getImageData1(0, 0, ctx2.canvas.width, ctx2.canvas.height)
	'get each pixel
	Dim i As Int
	Dim s As Int = imgData.data.Size - 1
	For i = 0 To s
		Dim pxl As Pixel = imgData.getPixelColor(i)
		pxl.red = 255 - pxl.red
		pxl.green = 255 - pxl.green
		pxl.blue = 255 - pxl.blue
		pxl.alpha = 255
		imgData.setPixelColor1(i, pxl)
	Next	
	ctx2.putImageData1(imgData, 0, 0)
End Sub

