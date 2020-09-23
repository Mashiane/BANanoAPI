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
	
	Dim a As Int = 33
	Dim b As Int = 10
	Dim c As String = "Test"
	Dim linebreak As String = "<br />"
    Dim result As Int = 0
	'
	document.write("a = ")
	document.write(a)
	document.write(linebreak)
	'
	document.write("b = ")
	document.write(b)
	document.write(linebreak)
	'
	document.write("c = ")
	document.write(c)
	document.write(linebreak)
		
	document.write("a + b = ")
	result = a + b
	document.write(result)
	document.write(linebreak)
	     
	document.write("a - b = ")
	result = a - b
	document.write(result)
	document.write(linebreak)
         
	document.write("a / b = ")
	result = a / b
	document.write(result)
	document.write(linebreak)
         
	document.write("a % b (i.e Mod) = ")
	result = a Mod b
	document.write(result)
	document.write(linebreak)
         
	document.write("a + b + c = ")
	result = a + b + c
	document.write(result)
	document.write(linebreak)
         
	a = a + 1
	document.write("++a (i.e a = a + 1) = ")
	result = a
	document.write(result)
	document.write(linebreak)
	'
	a = a + 5
	document.write("a += 5 (i.e a = a + 5) = ")
	result = a
	document.write(result)
	document.write(linebreak)
	'
	a = a - 5
	document.write("a -= 5 (i.e a = a - 5) = ")
	result = a
	document.write(result)
	document.write(linebreak)
	'
	a = a * 2
	document.write("a *= 2 (i.e a = a * 2) = ")
	result = a
	document.write(result)
	document.write(linebreak)
	'
	a = a / 2
	document.write("a /= 2 (i.e a = a / 2) = ")
	result = a
	document.write(result)
	document.write(linebreak)
	'
	a = a Mod 2
	document.write("a %= 2 (i.e a = a Mod 2) = ")
	result = a
	document.write(result)
	document.write(linebreak)
         
	b = b - 1
	document.write("--b (i.e b = b - 1 = ")
	result = b
	document.write(result)
	document.write(linebreak)
	
	document.close
	'change this after document close
	document.title = "BANanoAPI - Operators"
End Sub
