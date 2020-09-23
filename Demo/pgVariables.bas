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
	Private globalVar As String = "isGlobal"
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'get the document body
	body = document.body
	'
	document.open
	document.write($"<p>globalVar: ${globalVar}</p>"$)
	'
	checkScope
	'
	document.write($"<p>globalVar after checkScope: ${globalVar}</p>"$)
	
	Dim myOwn As Double = 10
	document.write($"<p></p>"$)
	
	document.write(myOwn)
	
	document.close
	'
	document.title = "BANanoAPI - Variables"
End Sub

Sub checkScope()
	Dim localVar As String = "isLocal"
	document.write($"<p>localVar: ${localVar}</p>"$)
	Dim globalVar As String = "local globalVar..."
	document.write($"<p>globalVar: ${globalVar}</p>"$)
End Sub