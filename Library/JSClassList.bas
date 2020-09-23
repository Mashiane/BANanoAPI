B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 10
Sub Class_Globals
	Private Banano As BANano
	Private ClassList As BANanoObject
End Sub

Public Sub Initialize(bo As BANanoObject) As JSClassList
	ClassList = bo
	Return Me
End Sub

'get list of items in the class 
Sub items As List
	Dim el As List = ClassList.Result
	Return el
End Sub

'get names
Sub names As String
	Dim sb As StringBuilder
	sb.Initialize 
	For Each k As String In items
		sb.Append(k).Append(" ")
	Next
	Dim sout As String = sb.tostring
	sout = sout.trim
	Return sout
End Sub

'get the length
Sub size As Int
	Return items.size
End Sub

'add a class
Sub add(className As String) As JSClassList
	ClassList.RunMethod("add", Array(className))
	Return Me
End Sub

'add multi
Sub addMulti(classNames As List) As JSClassList
	For Each strItem As String In classNames
		add(strItem)
	Next
	Return Me
End Sub

'remove a class
Sub remove(className As String) As JSClassList
	ClassList.RunMethod("remove", Array(className))
	Return Me
End Sub

'remove multi
Sub removeMulti(classNames As List) As JSClassList
	For Each strItem As String In classNames
		remove(strItem)
	Next
	Return Me
End Sub


'toggle a class
Sub toggle(className As String) As JSClassList
	ClassList.RunMethod("toggle", Array(className))
	Return Me
End Sub

'contains
Sub containsClass(className As String) As Boolean
	Dim rslt As Boolean = ClassList.RunMethod("contains", Array(className))
	Return rslt
End Sub

