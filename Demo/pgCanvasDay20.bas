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

#if css
canvas {
  border: 1px solid #d3d3d3;
  margin-right: 10px;
  margin-bottom: 20px;
}
#End If

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	body = document.body
	document.title = "BANanoAPI - Canvas Day 20"
	'
	Dim gco As List
	gco.Initialize 
	gco.add("source-atop")
	gco.add("source-in")
	gco.add("source-out")
	gco.add("source-over")
	gco.add("destination-atop")
	gco.add("destination-in")
	gco.add("destination-out")
	gco.add("destination-over")
	gco.add("lighter")
	gco.add("copy")
	gco.add("xor")

	Dim n As Int
	Dim g As Int = gco.Size - 1
	For n = 0 To g
		Dim p As JSElement = document.createElement("P")
		p.id = $"p_${n}"$
		p.innerHTML = gco.Get(n) & ":<br>"
		p.style.float1 = "left"
		
		Dim c As JSElement = document.createElement("canvas")
		c.width = 120
		c.height = 100
		'add canvas to paragraph
		p.appendChild(c)
		Dim ctx As JSCanvas
		ctx.Initialize(c, "2d")
		ctx.fillStyle = "blue"
		ctx.fillRect1(10, 10, 50, 50)
		ctx.globalCompositeOperation = gco.Get(n)
		ctx.beginPath1
		ctx.fillStyle = "red"
		ctx.arc1(50, 50, 30, 0, 2 * cPI)
		ctx.fill1
		'
		body.appendChild(p)
		body.appendChild(document.createElement("DIV"))
	Next
End Sub