B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
Sub Class_Globals
	Private AMLbo As BANanoObject
End Sub

Public Sub Initialize As JSAML
	'create a new app
	AMLbo.Initialize2("AppML", Null)
	Log(AMLbo)
	Return Me
End Sub

'appName
Sub getappName As String
	Return AMLbo.GetField("appName").result
End Sub

'container
Sub getcontainer As BANanoObject
	Return AMLbo.GetField("container")
End Sub

'controller
Sub getcontroller As BANanoObject
	Return AMLbo.GetField("controller")
End Sub

'data
Sub model As BANanoObject
	Dim bo As BANanoObject = AMLbo.GetField("data").GetField("model")
	Return bo
End Sub

'set dataSource
Sub setdataSource(ds As String) As JSAML
	AMLbo.SetField("dataSource", ds)
	Return Me
End Sub

'get data source
Sub getdataSource() As String
	Return AMLbo.GetField("dataSource").Result
End Sub

'
'getData
Sub GetData() As JSAML
	AMLbo.RunMethod("getData", Null)
	Return Me
End Sub

'message
Sub message As BANanoObject
	Return AMLbo.getfield("message")
End Sub

'records
Sub records As List
	Dim bo As BANanoObject = AMLbo.GetField("data").GetField("records")
	Return bo.Result
End Sub

'run
Sub run As JSAML
	AMLbo.RunMethod("run", Null)
	Return Me
End Sub

'return an object saved
Sub appml(value As String) As Object
	Return AMLbo.RunMethod("appml", Array(value)).Result
End Sub

'displayMessage
Sub displayMessage(value As String) As JSAML
	AMLbo.RunMethod("displayMessage", Array(value))
	Return Me
End Sub

'setError(no, description)
Sub setError(no As Object, description As Object) As JSAML
	AMLbo.RunMethod("setError", Array(no, description))
	Return Me
End Sub