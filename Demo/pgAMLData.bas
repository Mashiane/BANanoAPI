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
	'
	Dim p As JSElement = document.createElement("P")
	p.id = "demo"
	body.appendChild(p)
	'
	Dim myObj As JSAML
	myObj.Initialize
	myObj.dataSource = "./assets/customers.php"
	myObj.GetData
	
	Dim myArr As List = myObj.Records
	'
	Dim txt As StringBuilder
	txt.Initialize 
	'
	For Each rec As Map In myArr
		Dim sCustomerName As String = rec.Get("CustomerName")
		txt.Append($"${sCustomerName}<br>"$)
	Next
	
	document.getElementById("demo").innerHTML = txt.tostring
End Sub

