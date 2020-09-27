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

#if javascript
function customController($appml) {
    if ($appml.message == "ready") {return -1;}
    if ($appml.message == "loaded") {
        document.getElementById("frmcustomer").style.display="";
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
	'
	Dim div As JSElement = document.createElement("DIV")
	div.addClass("container")
	div.AppendChild(BuildForm)
	body.appendChild(div)
	
	'containing div
	Dim div As JSElement = document.createElement("DIV")
	div.addClass("container")
	'set data source
	'div.setAttribute("appml-data", "local?model=./assets/proto_customers_single.json")
	div.setAttribute("appml-data", "local?model=./assets/proto_customers_all.json")
	div.setattribute("appml-data", "local?model=./assets/model_customerslist.json")
	
	Dim h1 As JSElement = document.createElement("H1")
	h1.textContent = "Customers"
	div.appendChild(h1)
	'
	div.appendchild(BuildCommands)
	'
	div.Appendchild(BuildFilter)
	'
	div.appendChild(BuildAlert)
	'
	Dim tb1 As JSTable
	tb1.Initialize(document, "tb1")
	tb1.addClass("table")
	tb1.addClass("table-striped")
	tb1.addClass("table-bordered")
	tb1.addClass("table-hover")
	
	'helper - create headings
	tb1.SetHeaders(Array As String("Customer", "City", "Country","Edit"))
	'
	'add rows
	Dim r1 As JSElement = tb1.AddRow(Array("{{CustomerName}}", "{{City}}", "{{Country}}", "Edit"))
	r1.cell(3).style.cursor = "pointer"
	r1.cell(3).style.width = "34px"
	r1.cell(3).innerHTML = $"<i class="far fa-edit"></i>"$
	r1.cell(3).setAttribute("onclick", "appml('frmcustomer').run({{CustomerID}})")
	'
	r1.setAttribute("appml-repeat", "records")
	'
	'add form to body
	div.AppendChild(tb1.Table)
	'add div to page
	body.appendChild(div)
	'
	BANano.GetElement("#fc").LoadLayout("ordering")
	
	'
'	Dim p As JSElement = document.createElement("P")
'	p.id = "demo"
'	body.appendChild(p)
'	'
'	Dim myObj As JSAML
'	myObj.Initialize
'	myObj.dataSource = "./assets/customers.php"
'	myObj.GetData
'	
'	Dim myArr As List = myObj.Records
'	'
'	Dim txt As StringBuilder
'	txt.Initialize
'	'
'	For Each rec As Map In myArr
'		Dim sCustomerName As String = rec.Get("CustomerName")
'		txt.Append($"${sCustomerName}<br>"$)
'	Next
'	
'	document.getElementById("demo").innerHTML = txt.tostring
End Sub

Sub BuildForm As JSElement
	Dim Form As JSElement = document.createElement("DIV")
	Form.id = "frmcustomer"
	Form.setAttribute("appml-data","local?model=./assets/model_customerform.json")
	Form.setAttribute("appml-controller", "customController")
	Form.addclass("jumbotron")
	Form.style.display = "none"
	'
	Dim b1 As JSElement = document.createElement("BUTTON").addClass("close")
	b1.inputType = "button"
	b1.innerHTML = "&times;"
	b1.onClick(Me, "closeForm")
	Form.appendChild(b1)
	'
'	Dim b2 As JSElement = document.createElement("BUTTON").addClass("close")
'	b2.innerHTML = "&times;"
'	b2.inputType = "button"
'	Form.appendChild(b2)
	'
	'define the toolbar
	Dim tools As JSElement = document.createElement("DIV").addClass("btn-toolbar")
	tools.style.marginBottom = "20px"
	'
	Dim bg As JSElement = document.createElement("DIV").addClass("btn-group")
	'
	Dim btnnew As JSElement = BootstrapButton("btnNew", "", "New")
	btnnew.setAttribute("onclick", "appml('frmcustomer').newRecord();")
	'btnnew.onClick(Me, "onNewCustomer")
	bg.appendChild(btnnew)
	'
	Dim btnSave As JSElement = BootstrapButton("btnSave", "", "Save")
	btnSave.setAttribute("onclick", "appml('frmcustomer').saveRecord();")
	'btnSave.onClick(Me, "onSaveCustomer")
	bg.appendChild(btnSave)
	'
	Dim btnDelete As JSElement = BootstrapButton("btnDelete", "", "Delete")
	btnDelete.setAttribute("onclick", "appml('frmcustomer').deleteRecord();")
	'btnDelete.onClick(Me, "onDeleteCustomer")
	bg.appendChild(btnDelete)
	tools.appendchild(bg)
	Form.appendChild(tools)
		
	Form.appendchild(BuildAlert)
	'
	
	Form.appendChild(FormControl("customername", "Customer:"))
	Form.appendChild(FormControl("address", "Address:"))
	Form.appendChild(FormControl("city", "City:"))
	Form.appendChild(FormControl("postalcode", "Postal Code:"))
	Form.appendChild(FormControl("country", "Country:"))
	
	Return Form
End Sub

Sub BuildAlert() As JSElement
	'add message
	Dim message As JSElement = document.createElement("DIV")
	message.addClass("alert")
	message.addClass("alert-warning")
	message.addClass("alert-dismissible")
	message.addClass("fade")
	message.addClass("show")
	message.setAttribute("role", "alert")
	message.id = "appmlmessage"
	message.innerHTML = "This is a warning"
	message.style.display = "none"
	
	Dim bx As JSElement = document.createElement("BUTTON").addClass("close")
	bx.inputType = "button"
	bx.setAttribute("data-dismiss", "alert")
	bx.setAttribute("arial-label", "Close")
	'
	Dim s As JSElement = document.createElement("SPAN")
	s.innerHTML = "&times;"
	s.setAttribute("aria-hidden","true")
	bx.appendChild(s)
	message.appendChild(bx)
	'message
	Dim msg As JSElement = document.createelement("DIV")
	msg.id = "message"
	message.appendChild(msg)
	Return message
End Sub

Sub onNewCustomer(e As BANanoEvent)
	
End Sub

Sub closeForm(e As BANanoEvent)
	document.getElementById("frmcustomer").style.display = "none"
	BANano.Alert("X")
End Sub

Sub FormControl(k As String, v As String) As JSElement
	Dim d As JSElement = document.createElement("DIV").addClass("form-group")
	Dim l As JSElement = document.createElement("LABEL").setAttribute("for", k)
	l.innerHTML = v
	Dim i As JSElement = document.createElement("INPUT").addClass("form-control")
	i.id = k
	d.appendChild(l)
	d.appendChild(i)
	Return d
End Sub


Sub BuildFilter As JSElement
	Dim filter As JSElement = document.createElement("DIV")
	filter.id = "appml_filtercontainer"
	filter.addclass("jumbotron")
	filter.style.display = "none"
	'
	Dim btn As JSElement = BootstrapButton("appmlbtn_queryClose", "", "&times")
	btn.addClass("close")
	filter.appendChild(btn)
	'
	Dim h2 As JSElement = document.createElement("H2")
	h2.textContent = "Filter"
	filter.appendChild(h2)
	
	Dim flt As JSElement = document.createElement("div")
	flt.id = "appml_filter"
	'
	Dim filteritems As JSElement = document.createElement("DIV")
	filteritems.setAttribute("appml-repeat", "filteritems")
	'
	Dim row As JSElement = document.createElement("DIV")
	row.addclass("row")
	'
	Dim col As JSElement = document.createElement("DIV").addClass("col-sm-3")
	Dim lbl As JSElement = document.createElement("LABEL")
	lbl.innerHTML = "{{label||item}}:"
	col.appendChild(lbl)
	row.appendChild(col)
	
	Dim col1 As JSElement = document.createElement("DIV").addClass("col-sm-2")
	Dim inp As JSElement = document.createElement("INPUT")
	inp.inputType = "hidden"
	inp.id = "appml_datatype_{{item}}"
	col1.appendChild(inp)
	'
	Dim sel As JSElement = document.createElement("SELECT").addClass("form-control")
	sel.id = "appml_operator_{{item}}"
	sel.appendChild(CreateOption("0", "="))
	sel.appendChild(CreateOption("1", "&lt;&gt;"))
	sel.appendChild(CreateOption("2", "&lt;"))
	sel.appendChild(CreateOption("3", "&gt;"))
	sel.appendChild(CreateOption("4", "&lt;="))
	sel.appendChild(CreateOption("6", "&gt;="))
	sel.appendChild(CreateOption("6", "%"))
	
	col1.appendChild(sel)
	row.appendchild(col1)
	'
	Dim col2 As JSElement = document.createElement("DIV").addClass("col-sm-7")
	Dim inp As JSElement = document.createElement("INPUT").addClass("form-control")
	inp.id = "appml_query_{{item}}"
	col2.appendchild(inp)
	row.appendchild(col2)
	
	filteritems.appendChild(row)
	flt.appendchild(filteritems)
	filter.appendchild(flt)
	'***
	Dim fc As JSElement = document.createElement("DIV")
	fc.id = "fc"
	filter.appendChild(fc)
	'
	document.addBR(filter)
	'
	Dim bOk As JSElement = document.createElement("BUTTON")
	bOk.id = "appmlbtn_queryOK"
	bOk.inputType = "button"
	bOk.addClass("btn")
	bOk.addClass("btn-primary")
	bOk.innerHTML = "OK"
	bOk.addclass("btn-outline-success")
	filter.appendChild(bOk)
	
	Return filter
End Sub

Sub CreateOption(key As String, value As String) As JSElement
	Dim opt As JSElement = document.createElement("OPTION")
	opt.value = key
	opt.innerHTML = value
	Return opt
End Sub


Sub BootstrapButton(btnid As String, btnicon As String, btnText As String) As JSElement
	Dim btn As JSElement = document.createElement("BUTTON")
	btnid = btnid
	btn.inputType = "button"
	btn.addClass("btn")
	btn.addclass("btn-outline-primary")
	'
	Dim spanx As JSElement = document.createElement("SPAN")
	'spanx.addClass(btnicon)
	spanx.innerHTML = btnText
	btn.appendChild(spanx)
	Return btn
End Sub

Sub BuildCommands As JSElement
	'add commands
	Dim Commands As JSElement = document.createElement("DIV")
	Commands.addClass("btn-group")
	Commands.setAttribute("role", "toolbar")
	Commands.style.marginBottom = "10px"
	'
	Commands.appendChild(BootstrapButton("appmlbtn_new", "", "New"))
	Commands.appendchild(BootstrapButton("appmlbtn_first", "", "First"))
	Commands.appendchild(BootstrapButton("appmlbtn_previous", "", "Previous"))
	
	Dim btnText As JSElement = document.createElement("BUTTON")
	btnText.id = "appmlbtn_text"
	btnText.inputType = "button"
	btnText.addClass("btn")
	btnText.addclass("btn-default")
	btnText.setAttribute("disabled", "disabled")
	Commands.appendChild(btnText)
		
	Commands.appendchild(BootstrapButton("appmlbtn_next", "", "Next"))
	Commands.appendchild(BootstrapButton("appmlbtn_last", "", "Last"))
	Commands.appendchild(BootstrapButton("appmlbtn_query", "", "Query"))
	'
	Return Commands
End Sub