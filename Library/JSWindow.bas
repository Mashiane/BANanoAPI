B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 11, 10
Sub Class_Globals
	Public localStorage As JSLocalStorage
	Public sessionStorage As JSSessionStorage
	Public document As JSDocument
	Private banano As BANano
	Public navigator As JSNavigator
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize() As JSWindow
	'get the window object
	'get local and session storage
	Dim ls As BANanoObject = banano.Window.GetField("localStorage")
	Dim ss As BANanoObject = banano.Window.GetField("sessionStorage")
	Dim doc As BANanoObject = banano.Window.GetField("document")
	Dim nav As BANanoObject = banano.Window.GetField("navigator")
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
	Dim rslt As Object = banano.Window.SetTimeout(cb, ms)
	Return rslt
End Sub

'execute function after waiting and repeat
Sub setInterval(Module As Object, methodName As String, ms As Int) As Object
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, methodName, Array(e))
	Dim rslt As Object = banano.Window.SetInterval(cb, ms)
	Return rslt
End Sub