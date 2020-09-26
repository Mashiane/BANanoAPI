B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals

End Sub


Sub Columns(prefix As String, num As Int) As List
	Dim arr As List
	arr.Initialize
	Dim x As Int
	For x = 1 To num
		Dim strline As String = $"${prefix}-${x}"$
		arr.add(strline)
	Next
	Return arr
End Sub

Sub Skeleton(doc As JSDocument, tb As JSTable, cid As String, rowPos As Int, cellPos As Int) As JSCanvas
	'create the canvas
	Dim mycanvas As JSElement = doc.createElement("CANVAS")
	mycanvas.id = cid
	mycanvas.width = 300
	mycanvas.height = 150
	mycanvas.style.border = "1px solid #d3d3d3"
	mycanvas.innerHTML = "Your browser does Not support the HTML5 canvas tag"
	'add canvas to table
	tb.row(rowPos).cell(cellPos).empty
	tb.row(rowPos).cell(cellPos).appendChild(mycanvas)
	'creare the context
	Dim ctx As JSCanvas
	ctx.Initialize(mycanvas, "2d")
	Return ctx
End Sub

Sub Canvas(doc As JSDocument, tb As JSTable, cid As String, rowPos As Int, cellPos As Int)
	'create the canvas
	Dim mycanvasx As JSElement = doc.createElement("CANVAS")
	mycanvasx.id = cid
	mycanvasx.width = 300
	mycanvasx.height = 150
	mycanvasx.style.border = "1px solid #d3d3d3"
	mycanvasx.innerHTML = "Your browser does Not support the HTML5 canvas tag"
	tb.row(rowPos).cell(cellPos).appendChild(mycanvasx)
End Sub
