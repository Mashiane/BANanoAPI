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
	document.title = "BANanoAPI - Canvas Day 18"
	'
	
	tb1.Initialize(document, "tbcanvas")
	Dim cols As List = canvdays.Columns("pie", 5)
	tb1.SetHeaders(cols)
	tb1.AddRow(cols)
	body.appendChild(tb1.Table)
	
	'r1c0
	Dim ctx As JSCanvas = canvdays.Skeleton(document, tb1, "ctx", 1, 0)
	ctx.Canvas.width = 300
	ctx.Canvas.height = 300
	ctx.drawLine(100, 100, 200, 200)
	ctx.drawArc(150, 150, 150, 0, cPI / 3)
	ctx.drawPieSlice(150, 150, 150, (cPI / 2), (cPI / 2) + (cPI / 4), "#ff0000")
	
	'
	'r1c1
	Dim ctx1 As JSCanvas = canvdays.Skeleton(document, tb1, "ctx1", 1, 1)
	ctx1.Canvas.width = 600
	ctx1.Canvas.height = 600
	Dim legend As JSElement = document.createElement("DIV")
	tb1.row(1).cell(1).appendChild(legend)
	
	Dim myVinyls As Map = CreateMap("Classical music": 10, "Alternative rock": 14, "Pop": 2, "Jazz": 12)
	Dim colors As List
	colors.Initialize 
	colors.AddAll(Array("#fde23e", "#f16e23", "#57d9ff","#937e88"))
	Dim options As Map = CreateMap("data":myVinyls, "colors":colors)
	'options.put("doughnutHoleSize", 0.5)
	options.Put("legend", legend)
	'
	'calculate total value
	Dim total_value As Int = 0
	Dim color_index As Int = 0
	Dim idata As Map = options.Get("data")
	Dim icolors As List = options.get("colors") 
	'
	For Each k As String In idata.keys
		Dim v As Int = idata.get(k)
		total_value = total_value + v
	Next
	'
	Dim m As JSMath
	m.initialize
	
	Dim start_angle As Int = 0
	Dim color_index As Int = -1
    For Each categ As String In idata.keys
		Dim val As String = idata.get(categ) 
		val = BANano.parseint(val)
	    '
		Dim slice_angle As Double = (2 * cPI * val) / total_value
		'
		Dim minof As Int = m.min1(Array(ctx1.canvas.width / 2, ctx1.canvas.height / 2))
		'
		color_index = color_index + 1
		Dim scolor As String = icolors.get(color_index)
 		'
		ctx1.drawPieSlice(ctx1.canvas.width / 2, ctx1.canvas.height / 2, minof, start_angle, start_angle + slice_angle, scolor)
        
		start_angle = start_angle + slice_angle
	Next
	
	'drawing a white circle over the chart
	'To create the doughnut chart
	Dim doughnutHoleSize As Double = options.getdefault("doughnutHoleSize",0)
	If doughnutHoleSize > 0 Then
		ctx1.drawPieSlice(ctx1.canvas.width / 2, ctx1.canvas.height / 2, doughnutHoleSize * m.min1(Array(ctx1.canvas.width / 2, ctx1.canvas.height / 2)) , 0, 2 * cPI, "#ff0000")
	End If
	'
	start_angle = 0
	For Each categ As String In idata.keys
		Dim val As String = idata.get(categ) 
		val = BANano.parseInt(val)
		slice_angle = 2 * cPI * val / total_value
		Dim pieRadius As Double = m.min1(Array(ctx1.canvas.width/2,ctx1.canvas.height/2))
		Dim labelX As Int = ctx1.canvas.width/2 + (pieRadius / 2) * Cos(start_angle + slice_angle/2)
		Dim labelY As Int = ctx1.canvas.height/2 + (pieRadius / 2) * Sin(start_angle + slice_angle/2)
 
		If (doughnutHoleSize) > 0 Then
			Dim offset As Int = (pieRadius * doughnutHoleSize ) / 2
			labelX = ctx1.canvas.width/2 + (offset + pieRadius / 2) * Cos(start_angle + slice_angle/2)
			labelY = ctx1.canvas.height/2 + (offset + pieRadius / 2) * Sin(start_angle + slice_angle/2)
	    End If
	 
		Dim labelText As Int = Round(100 * val / total_value)
		ctx1.fillStyle = "white"
		ctx1.font = "bold 20px Arial"
		ctx1.fillText1(labelText & "%", labelX, labelY)
		start_angle = start_angle + slice_angle
	Next
	'
	If options.ContainsKey("legend") Then
		color_index = -1
		Dim legendHTML As StringBuilder
		legendHTML.initialize
		For Each categ As String In idata.keys
			color_index = color_index + 1
			legendHTML.Append("<div><span style='display:inline-block;width:20px;background-color:")
			legendHTML.append(icolors.get(color_index) & ";'>&nbsp;</span> " & categ & "</div>")
		Next	
		Dim lgnd As JSElement = options.get("legend")
		lgnd.innerHTML = legendHTML
	End If
End Sub
