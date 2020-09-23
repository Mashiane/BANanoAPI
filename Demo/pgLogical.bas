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
	
	Dim a As Boolean = True
	Dim b As Boolean = False
	Dim linebreak As Boolean = "<br />"
    Dim result As Object
	
	document.write("a = ")
	document.write(a)
	document.write(linebreak)
	'
	document.write("b = ")
	document.write(b)
	document.write(linebreak)
	
	'  
	document.write("(a && b) i.e. and = ")
	result = (a And b)
	document.write(result)
	document.write(linebreak)
         
	document.write("(a || b) i.e OR = ")
	result = (a Or b)
	document.write(result)
	document.write(linebreak)
         
	document.write("!(a && b) i.e. Not(a And b) => ")
	result = (Not(a And b))
	document.write(result)
	document.write(linebreak)
	
	document.close
	'change this after document close
	document.title = "BANanoAPI - Logical Comparisons"
End Sub
