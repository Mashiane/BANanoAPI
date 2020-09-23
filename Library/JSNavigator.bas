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

Public Sub Initialize(b As BANanoObject) As JSNavigator
	bo = b
	Return Me
End Sub
