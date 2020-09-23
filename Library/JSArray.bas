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
End Sub

'initialize array from items
Sub Initialize(nItems As List) As JSArray
	obj.Initialize2("Array", Null)
	If BANano.IsNull(nItems) = False Then
		For Each Item As Object In nItems
			push(Item)
		Next
	End If
	Return Me	
End Sub

'lastIndexOf - return index of item
Sub lastIndexOf1(value As Object, aStart As Int) As Int
	Dim rslt As Int = obj.RunMethod("lastIndexOf", Array(value, aStart)).Result
	Return rslt
End Sub

'indexOf - return index of item
Sub indexOf1(value As Object, aStart As Int) As Int
	Dim rslt As Int = obj.RunMethod("indexOf", Array(value, aStart)).Result
	Return rslt
End Sub

'copyWithin
Sub copyWithin(atarget As Int, astart As Int, aend As Int) As JSArray
	obj.RunMethod("copyWithin", Array(atarget, astart, aend))
	Return Me
End Sub

'reverse
Sub reverse As JSArray
	obj.RunMethod("reverse", Null)
	Return Me
End Sub

'splice - remove items in an array
Sub splice(pos As Int, remove As Int) As JSArray
	obj.RunMethod("splice", Array(pos, remove))
	Return Me
End Sub

'slice - copy an array to a new one
Sub slice(startat As Int, endat As Int) As JSArray
	Dim bo As BANanoObject
	If BANano.IsNull(endat) Then
		bo = obj.RunMethod("slice", Array(startat))
	Else
		bo = obj.RunMethod("slice", Array(startat, endat))
	End If
	Return ToJSArray(bo) 
End Sub

'addAll
Sub addAll(nitems As List) As JSArray
	If BANano.IsNull(nitems) = False Then
		For Each Item As Object In nitems
			push(Item)
		Next
	End If
	Return Me	
End Sub

'return the items of the araray
Sub items As List
	Return obj.result
End Sub

'assign object
Sub Initialize1(bo As BANanoObject) As JSArray
	obj = bo
	Return Me	
End Sub

'concat 2 arrays
Sub concat(otherArray As JSArray) As JSArray
	Dim bo As BANanoObject = otherArray.obj
	Dim rslt As BANanoObject = obj.RunMethod("concat", Array(bo))
	Return ToJSArray(rslt)
End Sub

'convert to jsarray
Sub ToJSArray(bo As BANanoObject) As JSArray
	Dim el As JSArray
	el.Initialize1(bo)
	Return el
End Sub

'shift - remove first item and return position
Sub shift() As Int
	Dim rslt As Int = obj.RunMethod("shift", Null).result
	Return rslt
End Sub

'add an item to an array and return position
Sub push(Item As Object) As Int
	Dim rslt As Int = obj.RunMethod("push", Array(Item)).result
	Return rslt
End Sub

'add an item to array beginning and return position
Sub unshift(Item As Object) As Int
	Dim rslt As Int = obj.RunMethod("unshift", Array(Item)).result
	Return rslt
End Sub

'get Length of an arry to a variable
Sub size() As Int
	Dim rslt As Int = obj.getfield("length").Result
	Return rslt
End Sub

'fill all values with this value
Sub fill(value As Object) As JSArray
	obj.RunMethod("fill", Array(value))
	Return Me
End Sub

'toString - return comma delimited values
Sub toString As String
	Dim rslt As String = obj.RunMethod("toString", Null).Result
	Return rslt
End Sub

'pop - removes last element
Sub pop() As Object
	Dim rslt As Object = obj.RunMethod("pop", Null).Result
	Return rslt
End Sub

'join using delim
Sub join(value As String) As String
	Dim rslt As String = obj.RunMethod("join", Array(value)).Result
	Return rslt
End Sub

'forEach callback
'<code>
'Sub forEachCallBack(value As Object, index As Int, arr As Object)
'End Sub
'</code>
Sub forEach(module As Object, methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("forEach", cb)
	Return rslt.Result
End Sub

'map callback
'<code>
'Sub mapCallBack(value As Object, index As Int, arr As Object) As Object
'End Sub
'</code>
Sub map(module As Object, methodName As String) As JSArray
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("map", cb)
	Return ToJSArray(rslt)
End Sub

'every callback
'<code>
'Sub everyCallBack(value As Object, index as int, arr As Object) As Boolean
'End Sub
'</code>
Sub every(module As Object, methodName As String) As Boolean
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("every", cb)
	Return rslt.result
End Sub

'some callback
'<code>
'Sub someCallBack(value As Object, index as int, arr As Object) As Boolean
'End Sub
'</code>
Sub some(module As Object, methodName As String) As Boolean
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim rslt As BANanoObject = obj.RunMethod("some", cb)
	Return rslt.result
End Sub

'filter callback
'<code>
'Sub filterCallBack(value As Object, index As Int, arr As Object) As Object
'End Sub
'</code>
Sub filter(module As Object, methodName As String) As JSArray
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("filter", cb)
	Return ToJSArray(bo)
End Sub

'reduce callback
'<code>
'Sub reduceCallBack(total as object, value As Object, index As Int, arr As Object) As Object
'total = banano.ParseInt(total)
'value = banano.ParseInt(value)
'End Sub
'</code>
Sub reduce(module As Object, methodName As String, initValue As Int) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim total As Int = 0
	If BANano.IsNull(initValue) = False Then
		total = BANano.parseInt(initValue)
	End If
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(total, value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("reduce", cb)
	Return bo.result
End Sub

'reduceRight callback
'<code>
'Sub reduceRightCallBack(total as object, value As Object, index As Int, arr As Object) As Object
'total = banano.ParseInt(total)
'value = banano.ParseInt(value)
'End Sub
'</code>
Sub reduceRight(module As Object, methodName As String, initValue As Int) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim total As Int = 0
	If BANano.IsNull(initValue) = False Then
		total = BANano.parseInt(initValue)
	End If
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(total, value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("reduceRight", cb)
	Return bo.result
End Sub

'find callback
'<code>
'Sub findCallBack(value As Object, index As Int, arr As Object) As Object
'End Sub
'</code>
Sub find(module As Object, methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("find", cb)
	Return bo.result
End Sub

'findIndex callback
'<code>
'Sub findIndexCallBack(value As Object, index As Int, arr As Object) As Object
'End Sub
'</code>
Sub findIndex(module As Object, methodName As String) As Object
	Dim value As Object
	Dim index As Object
	Dim arr As Object
	Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value, index, arr))
	Dim bo As BANanoObject = obj.RunMethod("findIndex", cb)
	Return bo.result
End Sub

'entries - makes list enumerable
Sub entries() As List
	Dim rslt As List = obj.runmethod("entries", Null).result
	Return rslt
End Sub
'
'array sort
Sub sort() As JSArray
	obj.RunMethod("sort", Null)
	Return Me
End Sub
'