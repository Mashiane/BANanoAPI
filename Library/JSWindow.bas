B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 11, 10
Sub Class_Globals
	Private w As BANanoWindow
	Public localStorage As JSLocalStorage
	Public sessionStorage As JSSessionStorage
	Public document As JSDocument
	Private banano As BANano
	Public navigator As JSNavigator
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize() As JSWindow
	'get the window object
	w = banano.Window
	'get local and session storage
	Dim ls As BANanoObject = w.GetField("localStorage")
	Dim ss As BANanoObject = w.GetField("sessionStorage")
	Dim doc As BANanoObject = w.GetField("document")
	Dim nav As BANanoObject = w.GetField("navigator")
	'
	'initialize the local and session storage
	localStorage.Initialize(ls)
	sessionStorage.Initialize(ss)
	navigator.Initialize(nav) 
	'initialize class
	document.Initialize(doc)
	Return Me
End Sub

'execute a function after waiting
Sub setTimeout(Module As Object, methodName As String, ms As Int) As Object
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, methodName, Array(e))
	Dim rslt As Object = w.SetTimeout(cb, ms)
	Return rslt
End Sub

'execute function after waiting and repeat
Sub setInterval(Module As Object, methodName As String, ms As Int) As Object
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, methodName, Array(e))
	Dim rslt As Object = w.SetInterval(cb, ms)
	Return rslt
End Sub

'clearTimeout
Sub clearTimeout(obj As Object) As JSWindow
	w.ClearTimeout(obj)
	Return Me
End Sub

'clearInterval
Sub clearInterval(obj As Object) As JSWindow
	w.ClearInterval(obj)
	Return Me
End Sub

'alert
Sub alert(value As String) As JSWindow
	w.Alert(value)	
	Return Me
End Sub
