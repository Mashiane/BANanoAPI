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
	Private ctx As JSCanvas
	Private radius As Int
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	body = document.body
	document.title = "BANanoAPI - Clock"
	
	'add html element to the page
	Dim canvas As JSElement = document.createElement("canvas")
	canvas.id = "clock"
	canvas.width = 400
	canvas.height = 400
	canvas.innerHTML = "Your browser does Not support the HTML5 canvas tag"
	canvas.style.backgroundcolor = "#333"
	body.appendChild(canvas)
	
	'creare the context for drawing
	ctx.Initialize(canvas, "2d")
	'the radius is based on the height of the canvas
	radius = canvas.height / 2
	'remap and center the
	ctx.translate1(radius, radius)
	'clock should be inside radius
	radius = radius * 0.90
	window.setInterval(Me, "drawclock", 1000)
End Sub

Sub drawClock()
	drawFace(ctx, radius)
	drawNumbers(ctx, radius)
	drawTime(ctx, radius)
End Sub

Sub drawFace(ctx1 As JSCanvas, radius1 As Int)
  'draw the white circle
  ctx1.beginPath1
  ctx1.arc1(0, 0, radius1, 0, 2 * cPI)
  ctx1.fillStyle = "white"
  ctx1.fill1
  'create a radient circle
  Dim grad As JSCanvas = ctx1.createRadialGradient1(0,0,radius1*0.95, 0,0,radius1*1.05)
  'color stops on the gradient
  grad.addColorStop1(0, "#333")
  grad.addColorStop1(0.5, "white")
  grad.addColorStop1(1, "#333")
  ctx1.strokeStyle = grad.context
  'line width 10% of the radius
  ctx1.lineWidth = radius1*0.1
  'draw circle
  ctx1.stroke1
  'draw clock centre
  ctx1.beginPath1
  ctx1.arc1(0, 0, radius1*0.1, 0, 2*cPI)
  ctx1.fillStyle = "#333"
	ctx1.fill1
End Sub


Sub drawNumbers(ctx1 As JSCanvas, radius1 As Int)
  Dim ang As Int
  Dim num As Int
  'set font size to be 15% of the canvas
  Dim fs As Int = radius1*0.15
  ctx1.font = "" & fs & "px arial"
  'put text of middle and center of print pos
  ctx1.textBaseline="middle"
  ctx1.textAlign="center"
  'print positions for each of the numbers
  For num = 1 To 12
    ang = num * cPI / 6
    ctx1.rotate1(ang)
    ctx1.translate1(0, -radius1*0.85)
    ctx1.rotate1(-ang)
    ctx1.fillText1("" & num, 0, 0)
    ctx1.rotate1(ang)
    ctx1.translate1(0, radius1*0.85)
	ctx1.rotate1(-ang)
Next
End Sub

Sub drawTime(ctx1 As JSCanvas, radius1 As Int)
    Dim now As JSDate
	now.Initialize(Null)
	Dim hour As Int = now.getHours
    Dim minute As Int = now.getMinutes
    Dim second As Int = now.getSeconds
	'hour
    hour = hour Mod 12
    hour = (hour*cPI/6) + (minute* cPI/(6*60)) + (second*cPI/(360*60))
    drawHand(ctx1, hour, radius1*0.5, radius1*0.07)
    'minute
    minute=(minute*cPI/30)+(second*cPI/(30*60))
    drawHand(ctx1, minute, radius1*0.8, radius1*0.07)
    'second
    second=(second*cPI/30)
    drawHand(ctx1, second, radius1*0.9, radius1*0.02)
End Sub

Sub drawHand(ctx1 As JSCanvas, pos As Double, ilength As Int, width As Double)
	pos = BANano.parseFloat(pos)
	ilength = BANano.parseInt(ilength)
	width = BANano.parseFloat(width)
	'
	ilength = ilength * (0-1)
    ctx1.beginPath1
    ctx1.lineWidth = width
    ctx1.lineCap = "round"
    ctx1.moveTo1(0,0)
    ctx1.rotate1(pos)
    ctx1.lineTo1(0, ilength)
    ctx1.stroke1
    ctx1.rotate1(-pos)
End Sub