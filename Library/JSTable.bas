B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 11
Sub Class_Globals
	Public Table As JSElement
	Public ID As String
	Private document As JSDocument
	Private banano As BANano
	
	Public header As JSElement
	Public footer As JSElement
	Private colWidths As List
	Private colVisibles As List
	Private colSortables As List
	Private colDataFields As List
End Sub

'initialize the table
Public Sub Initialize(doc As JSDocument, tableID As String) As JSTable
	ID = tableID
	Table = doc.createElement("TABLE")
	Table.id = ID
	document = doc
	'
	colWidths.Initialize 
	colVisibles.Initialize 
	colSortables.Initialize
	colDataFields.Initialize 
	Return Me 
End Sub

'addClass
Sub addClass(value As String) As JSTable
	Table.addClass(value)
	Return Me
End Sub

'set attribute
Sub setAttribute(k As String, v As String) As JSTable
	Table.setAttribute(k, v)
	Return Me
End Sub

'clear
Sub Clear
	Dim trows As Int = rows.Size - 1
	Dim crow As Int
	For crow = trows To 1 Step -1
		deleteRow(crow)
	Next
End Sub

'set column widths
Sub SetColumnWidths(widths As List) As JSTable
	colWidths.clear
	For Each fld As String In widths
		Dim ifld As Int = banano.parseInt(fld)
		colWidths.Add(ifld)
	Next
	Return Me
End Sub

private Sub CStr(o As Object) As String
	Return "" & o
End Sub

'set width
Sub setwidth(swidth As String) As JSTable
	style.width = swidth
	Return Me
End Sub

'get width
Sub getwidth() As String
	Return style.width
End Sub

'set height
Sub setheight(sheight As String) As JSTable
	style.height = sheight
	Return Me
End Sub

'get height
Sub getheight() As String
	Return style.height
End Sub

'set cellSpacing
Sub setcellSpacing(scellSpacing As String) As JSTable
	style.borderSpacing = scellSpacing
	Return Me
End Sub

'get cellSpacing
Sub getcellSpacing() As String 
	Return style.borderSpacing
End Sub

'SetHeaderHeights
Sub SetHeaderHeights(hdrs As List) As JSTable
	Dim colPos As Int = -1
	For Each fld As String In hdrs
		colPos = colPos + 1
		Dim ifld As Int = banano.parseInt(fld)
		'get the heading cell
		Dim hcell As JSElement = row(0).cell(colPos)
		hcell.style.height = CStr(ifld) & "px"	
	Next
	Return Me
End Sub

'set cellPadding
Sub setcellPadding(scellPadding As String) As JSTable
	style.padding = scellPadding
	Return Me
End Sub

'get cellPadding
Sub getcellPadding() As String
	Return style.padding
End Sub

'set border
Sub setborder(sborder As String) As JSTable
	style.border = sborder
	Return Me
End Sub

'get border
Sub getborder() As String
	Return style.border
End Sub

'set headers
Sub SetHeaders(hdrs As List) As JSElement
	'create the header
	header = createTHead
	'create a header row
	Dim hrow As JSElement = header.insertRow(0)
	'
	For Each fld As String In hdrs
		Dim hcell As JSElement = hrow.insertCell(-1)
		hcell.innerHTML = fld
	Next
	Return hrow
End Sub

'add new row
Sub AddRow(hdrs As List) As JSElement
	'create the row
	Dim trow As JSElement = insertRow(-1)
	For Each fld As String In hdrs
		Dim hcell As JSElement = trow.insertCell(-1)
		hcell.textContent = fld
	Next
	Return trow
End Sub

'set align
Sub setalign(align As String) As JSTable
	style.cssFloat = align
	Return Me
End Sub

'get align
Sub getalign() As String
	Return style.cssFloat
End Sub

'set backgroundColor
Sub setbackgroundColor(color As String) As JSTable
	style.backgroundColor = color
	Return Me
End Sub

'get backgroundColor
Sub getbackgroundColor() As String
	Return style.backgroundColor
End Sub

'set footers
Sub SetFooters(hdrs As List) As JSElement
	'create the footer
	footer = createTFoot
	'create a footer row
	Dim frow As JSElement = footer.insertRow(0)
	'
	For Each fld As String In hdrs
		Dim hcell As JSElement = frow.insertCell(-1)
		hcell.textContent = fld
	Next
	Return frow
End Sub

'set footer
Public Sub SetFooter(footerText As String, colspan As Int) As JSElement
	'create the footer
	footer = createTFoot
	'create a footer row
	Dim frow As JSElement = footer.insertRow(0)
	Dim hcell As JSElement = frow.insertCell(-1)
	hcell.textContent = footerText
	hcell.colSpan = colspan
	Return frow
End Sub

'set column data fields
Sub SetColumnDataFields(data As List) As JSTable
	colDataFields.clear
	For Each fld As String In data
		colWidths.Add(fld)
	Next
	Return Me
End Sub

'set column visible
Sub SetColumnVisible(visible As List) As JSTable
	colWidths.clear
	For Each fld As Object In visible
		colWidths.Add(fld)
	Next
	Return Me
End Sub


'style
Sub style As JSStyle
	Return Table.style
End Sub

'deleteTFoot
Sub deleteTFoot As JSTable
	Table.RunMethod("deleteTFoot", Null)
	Return Me
End Sub

'deleteTHead
Sub deleteTHead As JSTable
	Table.RunMethod("deleteTHead", Null)
	Return Me
End Sub

'rc
Sub RC(rowPos As Int, cellPos As Int) As JSElement
	Return row(rowPos).cell(cellPos)
End Sub

'row
Sub row(pos As Int) As JSElement
	Dim bo As BANanoObject = rows.Get(pos)
	Return ToJSElement(bo)
End Sub

'FromJSElement
Sub FromJSElement(el As JSElement) As JSTable
	Table = el
	Return Me
End Sub

'createTHead
Sub createTHead As JSElement
	Dim bo As BANanoObject = Table.RunMethod("createTHead", Null)
	Return ToJSElement(bo)
End Sub

'deleteCaption
Sub deleteCaption As JSTable
	Table.RunMethod("deleteCaption", Null)
	Return Me
End Sub

'deleteRow
Sub deleteRow(pos As Int) As JSTable
	pos = banano.parseInt(pos)
	Table.RunMethod("deleteRow", Array(pos))
	Return Me
End Sub

'insertRow
Sub insertRow(pos As Int) As JSElement
	pos = banano.parseint(pos)
	Dim bo As BANanoObject = Table.RunMethod("insertRow", Array(pos))
	Return ToJSElement(bo)
End Sub

'deleteCell
Sub deleteCell(rowE As JSElement, pos As Int) As JSElement
	pos = banano.parseint(pos)
	rowE.RunMethod("deleteCell", Array(pos))
	Return rowE
End Sub

'insertCell
Sub insertCell(rowE As JSElement, pos As Int) As JSElement
	pos = banano.parseint(pos)
	Dim bo As BANanoObject = rowE.RunMethod("insertCell", Array(pos))
	Return ToJSElement(bo)
End Sub

'set caption
Sub caption As JSElement
	Dim bo As BANanoObject = Table.GetField("caption")
	Return ToJSElement(bo)
End Sub

'createTFoot
Sub createTFoot() As JSElement
	Dim bo As BANanoObject = Table.runmethod("createTFoot", Null)
	Return ToJSElement(bo)
End Sub

'createCaption
Sub createCaption() As JSElement
	Dim bo As BANanoObject = Table.RunMethod("createCaption", Null)
	Return ToJSElement(bo)
End Sub

'tBodies
Sub tBodies() As List
	Return Table.GetField("tBodies").result
End Sub

'rows
Sub rows() As List
	Return Table.GetField("rows").result
End Sub

'tHead
Sub tHead As JSElement
	Dim bo As BANanoObject = Table.GetField("tHead")
	Return ToJSElement(bo)
End Sub

'tFoot
Sub tFoot As JSElement
	Dim bo As BANanoObject = Table.GetField("tFoot")
	Return ToJSElement(bo)
End Sub

'convert bananoobject to jselement
Sub ToJSElement(bo As BANanoObject) As JSElement
	Dim jse As JSElement
	jse.Initialize(bo)
	Return jse
End Sub