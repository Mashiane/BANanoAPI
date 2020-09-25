B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
'https://www.w3.org/wiki/Dynamic_style_-_manipulating_CSS_with_JavaScript
Sub Class_Globals
	Public Sheet As JSElement
	Private document As JSDocument
	Private ID As String
End Sub

'initialize the css rule
Public Sub Initialize(doc As JSDocument, cssID As String) As JSStyleSheet
	document = doc
	ID = cssID
	Sheet = document.createElement("style")
	Sheet.id = ID
	Return Me
End Sub

'set title
Sub settitle(t As String) As JSStyleSheet
	Sheet.title = t
	Return Me
End Sub

'get title
Sub gettitle() As String
	Return Sheet.title
End Sub

''add CSSRule
'Sub addCSSRule(selector As String, rule As String) As JSStyleSheet
'	Dim scode As String = $"${selector} ${rule}"$
'	Sheet.innerHTML = scode
'	document.body.appendChild(Sheet)
'	Return Me
'End Sub
'
''remove Rule
'Sub removeRule As JSStyleSheet
'	Dim sheetToBeRemoved As JSElement = document.getElementById(ID)
'	Dim sheetParent As JSElement = sheetToBeRemoved.parentNode
'	sheetParent.removeChild(sheetToBeRemoved)
'	Return Me
'End Sub

'insertRule
Sub insertRule(rule As String, index As Int) 
	Sheet.RunMethod("insertRule", Array(rule, index))
End Sub

'deleteRule
Sub deleteRule(index As Int) As JSStyleSheet
	Sheet.RunMethod("deleteRule", Array(index))
	Return Me
End Sub

'rules
Sub rules() As List
	'get the rules
	Dim bo As BANanoObject = Sheet.GetField("rules")
	'get the number of items
	Dim tSyles As Int = bo.GetField("length").result
	tSyles = tSyles - 1
	'
	Dim nl As List
	nl.Initialize
	
	If tSyles >= 0 Then
		Dim cstyle As Int
		For cstyle = 0 To tSyles
			Dim boStyle As BANanoObject = bo.RunMethod("item", Array(cstyle))
			nl.Add(boStyle)
		Next
	End If
	Return nl
End Sub

'cssRules
Sub cssRules() As List
	'get the rules
	Dim bo As BANanoObject = Sheet.GetField("cssRules")
	'get the number of items
	Dim tSyles As Int = bo.GetField("length").result
	tSyles = tSyles - 1
	'
	Dim nl As List
	nl.Initialize
	
	If tSyles >= 0 Then
		Dim cstyle As Int
		For cstyle = 0 To tSyles
			Dim boStyle As BANanoObject = bo.RunMethod("item", Array(cstyle))
			nl.Add(boStyle)
		Next
	End If
	Return nl
End Sub

'disabled
Sub disabled As Boolean
	Return Sheet.GetField("disabled").result
End Sub

'ownerRule
Sub ownerRule As Object
	Return Sheet.GetField("ownerRule").Result
End Sub

'type
Sub type1 As String
	Return Sheet.GetField("type").result
End Sub
