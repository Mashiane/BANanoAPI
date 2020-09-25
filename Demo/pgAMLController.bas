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

#if javascript
function myController($appml) {
	if ($appml.message == "ready") {
        $appml.today = new Date();
        $appml.copyright = "Anele Mbanga (Mashy)";
    }

   if ($appml.message == "display") {
        if ($appml.display.name == "CustomerName") {
            $appml.display.value = $appml.display.value.toUpperCase();
        }
    }
}
#End If

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	'change this after document close
	document.title = "BANanoAPI - Customers"
	
	'create a div to hold everything
	Dim div As JSElement = document.createElement("DIV")
	div.setAttribute("appml-controller", "myController")
	div.setAttribute("appml-data", "./assets/customers.json")
		
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "Customers"
	div.appendChild(h1)
	'
	Dim p As JSElement = document.createElement("P")
	p.textcontent = "{{today}}"
	div.appendChild(p)	
	'	
	Dim tb1 As JSTable
	tb1.Initialize(document, "tb1")
	'set data source
	tb1.setAttribute("appml-data", "./assets/customers.json")
	tb1.setAttribute("appml-controller", "myController")
	
	'helper - create headings
	tb1.SetHeaders(Array As String("Customer", "City", "Country"))
	'
	'add rows
	Dim r1 As JSElement = tb1.AddRow(Array("{{CustomerName}}", "{{City}}", "{{Country}}"))
	r1.setAttribute("appml-repeat", "records")
	'
	'add form to body
	div.AppendChild(tb1.Table)
	'
	Dim p As JSElement = document.createElement("P")
	p.textContent = "Copyright {{copyright}}"
	div.appendChild(p)
	'
	body.appendChild(div)
End Sub

