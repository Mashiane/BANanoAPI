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
'body {
'    font: 14px Verdana, sans-serif;
'}
'h1 {
'    color: #996600;
'}
'table {
'    width: 100%;
'    border-collapse: collapse;
'}
'th, td {
'    border: 1px solid grey;
'    padding: 5px;
'    text-align: left;
'}
'table tr:nth-child(odd) {
'    background-color: #f1f1f1;
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
	document.title = "BANanoAPI - Customers"
	'
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "Customers"
	body.appendChild(h1)
		
	Dim tb1 As JSTable
	tb1.Initialize(document, "tb1")
	'set data source
	tb1.setAttribute("appml-data", "./assets/customers.php")
	
	'helper - create headings
	tb1.SetHeaders(Array As String("Customer", "City", "Country"))
	'
	'add rows
	Dim r1 As JSElement = tb1.AddRow(Array("{{CustomerName}}", "{{City}}", "{{Country}}"))
	r1.setAttribute("appml-repeat", "records")
	'
	'add form to body
	body.AppendChild(tb1.Table)
End Sub

