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
	Private navigator As JSNavigator
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	'get the navigator
	navigator = window.navigator
	
	'open the document for writing
	document.open
	'
	document.write("For Each Loop<br /> ")
	Dim appNames() As String = Array("b4a", "b4i", "b4j", "b4r")
	For Each appName As String In appNames 
		document.write(appName)
		document.write("<br />")
    Next
	document.write ("Exiting from the loop!")
	'
	document.write("<p></p>")
	'
	document.write("Counter For Loop<br /> ")
	'
	Dim x As Int = 10
	Dim y As Int
	For y = 1 To x
		document.write($"y: ${y}"$)
		document.write("<br />")
   Next
	document.write ("Exiting counter loop!")
	'
	document.write("<p></p>")
	'
	document.write("Step Down Loop<br /> ")
	'
	Dim x As Int = 10
	Dim y As Int
	For y = 10 To 1 Step -1
		document.write($"y: ${y}"$)
		document.write("<br />")
	Next
	document.write ("Exiting step counter loop!")
	
	document.close
	'change this after document close
	document.title = "BANanoAPI - For Loop"
End Sub
