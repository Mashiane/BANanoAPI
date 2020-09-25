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

'#if css
'td, th {
'  border: 1px solid #dddddd;
'  text-align: left;
'  padding: 8px;
'}
'
'tr:nth-child(even) {
'  background-color: #dddddd;
'}
'#End If

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	'change this after document close
	document.title = "BANanoAPI - Table"
	'
	Dim tb1 As JSTable
	tb1.Initialize(document, "tb1")
	tb1.style.fontFamily = "arial, sans-serif"
	tb1.style.borderCollapse = "collapse"
	tb1.style.width = "100%"
	
	tb1.createCaption.innerHTML = BANano.SF($"<B>BANano API - Table{/B}"$)
	
	'helper - create headings
	tb1.SetHeaders(Array As String("Company", "Contact", "Country"))
	'tb1.SetHeaderHeights(Array As Int(100, 100, 100))
	'
	'add rows
	tb1.AddRow(Array("Alfreds Futterkiste", "Maria Anders", "Germany"))
	tb1.AddRow(Array("Centro comercial Moctezuma", "Francisco Chang", "Mexico"))
	tb1.AddRow(Array("Ernst Handel", "Roland Mendel", "Austria"))
	tb1.AddRow(Array("Island Trading", "Helen Bennett", "UK"))
	tb1.AddRow(Array("Laughing Bacchus Winecellars", "Yoshi Tannamuri", "Canada"))
	tb1.AddRow(Array("Magazzini Alimentari Riuniti", "Giovanni Rovelli", "Italy"))
	'
	'add footer
	tb1.SetFooters(Array("Total", "200", "300"))
	'add form to body
	body.AppendChild(tb1.Table)
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "totrows"
	p.textContent = "Total Table Rows"
	body.appendChild(p)
	'
	document.getElementById("totrows").innerHTML = "Total Rows: " & tb1.tBodies.size

	
	'create a header
	'Dim header As JSElement = tb1.createTHead
	'Dim hrow As JSElement = header.insertRow(0)
	'Dim hcell As JSElement = hrow.insertCell(0)
	'hcell.innerHTML = "<b>This is a table header</b>"
	
	'insert row at top
	'Dim row As JSElement = tb1.insertRow(-1)
	'insert cells
	'Dim cell1 As JSElement = row.insertCell(0)
	'Dim cell2 As JSElement = row.insertCell(1)
	'
	'cell1.innerHTML = BANano.SF($"{B}First Name{/B}"$)
	'cell2.innerHTML = BANano.SF($"{B}Last Name{/B}"$)
	
	'create a footer
	'Dim footer As JSElement = tb1.createTFoot
	'Dim frow As JSElement = footer.insertRow(-1)
	'Dim fcell As JSElement = frow.insertCell(0)
	'fcell.innerHTML = "<b>This is a table footer</b>"
	
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button below to add a column to first row"
	body.appendChild(p)
	
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.textContent = "Add R1 cell"
	btn.onClick(Me, "addr1c1")
	body.appendChild(btn)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button below to delete the last column from first row"
	body.appendChild(p)
	
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.textContent = "Delete R1 last cell"
	btn.onClick(Me, "deleter1c1")
	body.appendChild(btn)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Click the button below to update R1C1"
	body.appendChild(p)
	
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.textContent = "Update R1C1"
	btn.onClick(Me, "updater1c1")
	body.appendChild(btn)
End Sub

Sub updater1c1(e As BANanoEvent)
	'get the table
	Dim tbs As JSTable = document.getElementById("tb1").ToJSTable
	'update r1c1
	tbs.row(1).cell(1).innerHTML = "Mashy"
End Sub


Sub addr1c1(e As BANanoEvent)
	'get the table
	Dim tbs As JSTable = document.getElementById("tb1").ToJSTable
	'insert the row
	Dim cell As JSElement = tbs.row(1).insertCell(-1)
	cell.innerHTML = "Inner Cell"
End Sub

Sub deleter1c1(e As BANanoEvent)
	'get the table
	Dim tbs As JSTable = document.getElementById("tb1").ToJSTable
	'get the rows
	tbs.row(1).deleteCell(-1)
End Sub