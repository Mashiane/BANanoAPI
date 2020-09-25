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
'	Private dataObj As BANanoObject
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
var dataObj = {
"records":[
]};
#End If

Sub Init
	'AppML.Initialize2("AppML", Null)
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
	body.appendchild(h1)
	
	Dim dataObj As BANanoObject
	dataObj.Initialize("dataObj")
	Dim records As List = dataObj.Getfield("records").Result
	'
	records.Add(CreateMap("CustomerName": "Alfreds Futterkiste", "City": "Berlin", "Country": "Germany"))
	records.Add(CreateMap("CustomerName": "Ana Trujillo Emparedados y helados",	"City": "México D.F.", "Country": "Mexico"))
	records.Add(CreateMap("CustomerName": "Antonio Moreno Taquería", "City": "México D.F.", "Country": "Mexico"))
	records.Add(CreateMap("CustomerName":"Alfreds Futterkiste","City":"Berlin","Country":"Germany"))
	records.Add(CreateMap("CustomerName":"Ana Trujillo Emparedados y helados","City":"México D.F.","Country":"Mexico"))
	records.Add(CreateMap("CustomerName":"Antonio Moreno Taquería","City":"México D.F.","Country":"Mexico"))
	records.Add(CreateMap("CustomerName":"Around the Horn","City":"London","Country":"UK"))
	records.Add(CreateMap("CustomerName":"B's Beverages","City":"London","Country":"UK"))
	records.Add(CreateMap("CustomerName":"Berglunds snabbköp","City":"Luleå","Country":"Sweden"))
	records.Add(CreateMap("CustomerName":"Blauer See Delikatessen","City":"Mannheim","Country":"Germany"))
	records.Add(CreateMap("CustomerName":"Blondel père et fils","City":"Strasbourg","Country":"France"))
	records.Add(CreateMap("CustomerName":"Bólido Comidas preparadas","City":"Madrid","Country":"Spain"))
	records.Add(CreateMap("CustomerName":"Bon app'","City":"Marseille","Country":"France"))
	records.Add(CreateMap("CustomerName":"Bottom-Dollar Marketse","City":"Tsawassen","Country":"Canada"))
	records.Add(CreateMap("CustomerName":"Cactus Comidas para llevar","City":"Buenos Aires","Country":"Argentina"))
	records.Add(CreateMap("CustomerName":"Centro comercial Moctezuma","City":"México D.F.","Country":"Mexico"))
	records.Add(CreateMap("CustomerName":"Chop-suey Chinese","City":"Bern","Country":"Switzerland"))
	records.Add(CreateMap("CustomerName":"Comércio Mineiro","City":"São Paulo","Country":"Brazil"))
	
'	'
	Dim tb1 As JSTable
	tb1.Initialize(document, "tb1")
	'set data source
	tb1.setAttribute("appml-data", "dataObj")
	 
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
