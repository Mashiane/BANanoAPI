B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private obj As BANanoObject
	Private BANano As BANano  'ignore
	Private O As BANanoObject
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(source As Map) As JSMap
	O.Initialize("Object")
	obj.Initialize2("Map", Null)
	If BANano.IsNull(source) = False Then
		For Each k As String In source.keys
			Dim v As Object = source.Get(k)
			set(k, v)
		Next
	End If
	Return Me
End Sub

'size
Sub size As Int
	Return obj.GetField("size").result
End Sub

'keys
Sub keys As JSArray
	Dim res As List = O.RunMethod("keys", Array(obj))
	Dim jse As JSArray
	jse.Initialize(res)
	Return jse
End Sub

'values
Sub values As JSArray
	Dim res As List = O.RunMethod("values", Array(obj))
	Dim jse As JSArray
	jse.Initialize(res)
	Return jse
End Sub


'delete
Sub delete(k As String) As JSMap
	obj.RunMethod("delete", Array(k))
	Return Me
End Sub

'clear
Sub clear As JSMap
	obj.RunMethod("clear", Null)
	Return Me
End Sub

'has
Sub has(k As String) As Boolean
	Return obj.RunMethod("has", Array(k)).result
End Sub

'set item
Sub set(k As String, v As Object) As JSMap
	obj.SetField(k, v)
	Return Me
End Sub

'get item
Sub get(k As String) As Object
	Dim res As Object = obj.GetField(k).result
	Return res
End Sub

'convert to json
Sub ToJSON As String
	Return BANano.ToJson(obj)
End Sub

'from json
Sub FromJSON(sJSON As String) As JSMap
	obj = BANano.FromJson(sJSON)
	Return Me
End Sub

'return the object
Sub This As BANanoObject
	Return obj
End Sub
