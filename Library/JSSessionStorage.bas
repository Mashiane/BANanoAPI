B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 10
Sub Class_Globals
	Private banano As BANano
	Private bo As BANanoObject
End Sub

Public Sub Initialize(b As BANanoObject) As JSSessionStorage
	bo = b
	Return Me
End Sub

'key
Sub key(pos As Int) As Object
	Return bo.RunMethod("key", Array(pos)).result
End Sub

'getItem
Sub getItem(k As String) As Object
	Return bo.RunMethod("getItem", Array(k)).Result
End Sub

'setItem
Sub setItem(k As String, v As Object) As JSSessionStorage
	bo.RunMethod("setItem", Array(k, v))
	Return Me
End Sub

'removeItem
Sub removeItem(k As String) As JSSessionStorage
	bo.RunMethod("removeItem", Array(k))
	Return Me
End Sub

'clear
Sub clear As JSSessionStorage
	bo.RunMethod("clear", Null)
	Return Me
End Sub

'length
Sub length1 As Int
	Return bo.GetField("length").result
End Sub