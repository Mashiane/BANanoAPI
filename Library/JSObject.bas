B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7.8
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private obj As BANanoObject
	Private BANano As BANano  'ignore
	Private O As BANanoObject
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(source As Map) As JSObject
	O.Initialize("Object") 
	'var obj = new Object;
	obj.Initialize2("Object", Null)
	If BANano.IsNull(source) = False Then
		For Each k As String In source.keys
			Dim v As Object = source.Get(k)
			set(k, v)
		Next
	End If
	Return Me
End Sub

'hasOwnProperty
Sub hasOwnProperty(prop As String) As Boolean
	Return obj.RunMethod("hasOwnProperty", Array(prop))
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

'remove
Sub rem(k As String)
	obj.SetField(k, BANano.UNDEFINED)
End Sub

'set item
Sub set(k As String, v As Object) As JSObject
	obj.SetField(k, v)
	Return Me
End Sub

'get item
Sub get(k As String) As Object
	Dim res As Object = obj.GetField(k).result
	Return res
End Sub

'set a property to callback
Sub setCallBack(k As String, Module As Object, methodname As String)
	Dim value As Object
	Dim cb As BANanoObject = BANano.CallBack(Module, methodname, Array(value))
	obj.SetField(k, cb.Result)
End Sub

'convert to json
Sub ToJSON As String
	Return BANano.ToJson(obj)
End Sub

'from json
Sub FromJSON(sJSON As String) As JSObject
	obj = BANano.FromJson(sJSON)
	Return Me
End Sub

'return the object
Sub This As BANanoObject
	Return obj
End Sub

'freeze
Sub freeze As JSObject
	O.RunMethod("freeze", Array(obj))
	Return Me
End Sub

'seal
Sub seal As JSObject
	O.RunMethod("seal", Array(obj))
	Return Me
End Sub

'isSealed
Sub isSealed As Boolean
	Return O.GetField("isSealed").result
End Sub

'isFrozen
Sub isFrozen As Boolean
	Return O.GetField("isFrozen").result
End Sub