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

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	
	'open the document for writing
	document.open
	
	Dim book As String = "maths"
	Dim linebreak As String = "<br />"
	 
	document.write("book = ")
	document.write(book)
	document.write(linebreak)
'
	If book = "history" Then
		document.write("<b>History Book</b>")
	else if book = "maths" Then
		document.write("<b>Maths Book</b>")
	else if book = "economics" Then
		document.write("<b>Economics Book</b>")
	Else
		document.write("<b>Unknown Book</b>")
    End If
	'
	document.close
	'change this after document close
	document.title = "BANanoAPI - if statement"
End Sub
