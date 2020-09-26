B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 11, 9
Sub Class_Globals
	Private d As BANanoObject
	Private banano As BANano
	Public body As JSElement
	Public head As JSElement
	Public EnumTag As JSTags
	
	Public const DIR_RTL As String = "rtl"
	Public const DIR_LRT As String = "ltr"
	Public const DIR_AUTO As String = "auto"
	'
	Public const POS_AFTER_BEGIN As String = "afterbegin"
	Public const POS_AFTER_END As String = "afterend"
	Public const POS_BEFORE_BEGIN As String = "beforebegin"
	Public const POS_BEFORE_END As String = "beforeend"
	'
	Public const VISIBILITY_HIDDEN As String = "hidden"
	Public const VISIBILITY_VISIBLE As String = "visible"
	
	'
	Public const DISPLAY_NONE As String = "none"
	Public const DISPLAY_BLOCK As String = "block"
	'
	Public const ALIGN_CONTENT_STRETCH As String = "stretch"
	Public const ALIGN_CONTENT_STRETCH As String = "center"
	Public const ALIGN_CONTENT_STRETCH As String = "flex-start"
	Public const ALIGN_CONTENT_STRETCH As String = "flex-end"
	Public const ALIGN_CONTENT_STRETCH As String = "space-between"
	Public const ALIGN_CONTENT_STRETCH As String = "space-around"
	Public const ALIGN_CONTENT_STRETCH As String = "initial"
	Public const ALIGN_CONTENT_STRETCH As String = "inherit"
End Sub

#if javascript
	function useStrict(){
		"use strict";
	}
#End If

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(doc As BANanoObject) As JSDocument
	d = doc
	'get the body of the document
	Dim bo As BANanoObject = d.GetField("body")
	body = ToJSElement(bo)
	Dim boh As BANanoObject = d.GetField("head")
	head = ToJSElement(boh)
	EnumTag.Initialize 
	Return Me
End Sub

'SetField
Sub SetField(k As String, v As Object) As JSDocument
	d.SetField(k, v)
	Return Me
End Sub

'GetField
Sub GetField(k As String) As BANanoObject
	Return d.GetField(k)
End Sub

'addBR
Sub addBR(jse As JSElement) As JSDocument
	Dim child As JSElement = createElement("BR")
	jse.appendChild(child)
	Return Me
End Sub

'addHR
Sub addHR(jse As JSElement) As JSDocument
	Dim child As JSElement = createElement("HR")
	jse.appendChild(child)
	Return Me
End Sub

'addScript
Sub addScript(sURL As String) As JSDocument
	Dim hm As JSElement = createElement("script")
	hm.src = sURL
	Dim s As JSElement = getElementsByTagName("script").Get(0)
	s.parentNode.insertBefore(hm, s)
	Return Me
End Sub

'activeElement
Sub activeElement As JSElement
	Dim b As BANanoObject = d.GetField("activeElement")
	Return ToJSElement(b)
End Sub

'adoptNode
Sub adoptNode(node As JSElement) As JSElement
	Dim b As BANanoObject = node.Element
	Dim nnode As BANanoObject = d.RunMethod("adoptNode", Array(b))
	Return ToJSElement(nnode)
End Sub

'applets
Sub applets() As List
	Return d.GetField("applets").Result
End Sub

'set cookie
Sub setcookie(txt As String) As JSDocument
	d.SetField("cookie", txt)
	Return Me
End Sub

'get cookie
Sub getcookie() As String
	Return d.GetField("cookie").result
End Sub

'hasFocus
Sub hasFocus As Boolean
	Return d.GetField("hasFocus").result
End Sub

'URL
Sub URL As String
	Dim rslt As String = d.GetField("URL").Result
	Return rslt
End Sub

'set title
Sub settitle(tt As String) As JSDocument
	d.SetField("title", tt)
	Return Me
End Sub

'get the title
Sub gettitle() As String
	Dim rslt As String = d.GetField("title").Result
	Return rslt
End Sub

'get scripts
Sub getscripts As JSElement
	Dim bo As BANanoObject = d.GetField("scripts")
	Return ToJSElement(bo)	
End Sub

'scripts
Sub scripts() As List
	Dim rslt As List = d.GetField("scripts").Result
	Return rslt
End Sub

'readyState
Sub readyState As String
	Dim rslt As String = d.GetField("readyState").Result
	Return rslt
End Sub

'lastModified
Sub lastModified As String
	Dim rslt As String = d.GetField("lastModified").Result
	Return rslt
End Sub

'links
Sub links As List
	Dim rslt As List = d.GetField("links").Result
	Return rslt
End Sub

'normalize
Sub normalize As JSDocument
	d.RunMethod("normalize", Null)
	Return Me
End Sub

'use strict to ensure variables are defined
Sub useStrict
	'ensure variable declarations are done
	banano.RunJavascriptMethod("useStrict", Null)
End Sub

'execCommand
Sub execCommand(command As String) As JSDocument
	d.RunMethod("execCommand", Array(command))
	Return Me
End Sub

'fullscreenElement
Sub fullscreenElement As JSElement
	Dim b As BANanoObject = d.GetField("fullscreenElement")
	Return ToJSElement(b)
End Sub

'fullscreenEnabled
Sub fullscreenEnabled As Boolean
	Dim rslt As Boolean = d.GetField("fullscreenEnabled").Result
	Return rslt
End Sub

'webkitFullscreenEnabled 
Sub webkitFullscreenEnabled  As Boolean
	Dim rslt As Boolean = d.GetField("webkitFullscreenEnabled").Result
	Return rslt
End Sub

'mozFullScreenEnabled 
Sub mozFullScreenEnabled  As Boolean
	Dim rslt As Boolean = d.GetField("mozFullScreenEnabled").Result
	Return rslt
End Sub

Sub msFullscreenEnabled As Boolean
	Dim rslt As Boolean = d.GetField("msFullscreenEnabled").Result
	Return rslt
End Sub

'images
Sub images() As List
	Dim rslt As List = d.GetField("images").Result
	Return rslt
End Sub

'forms
Sub forms() As List
	Dim lforms As List = d.GetField("forms").Result
	Return lforms
End Sub

'get the domain 
Sub domain() As String
	Dim rslt As String = d.GetField("domain").Result
	Return rslt
End Sub

'get embeds in the document
Sub embeds() As List
	Dim rslt As List = d.GetField("embeds").Result
	Return rslt
End Sub

'shortcut add event listener
Sub on(eventName As String, module As Object, methodName As String) As JSDocument
	addEventListener(module, eventName, methodName, False)
	Return Me
End Sub

'shortcut - remove event listener
Sub off(eventName As String, module As Object, methodName As String) As JSDocument
	removeEventListener(module, eventName, methodName, False)
	Return Me
End Sub

'add an event listener to the document
'<code>
'addEventListener("click", "doThis", True)
'Sub doThis(e As BANanoEvent)
'End Sub
'</code>
Sub addEventListener(Module As Object, eventName As String, MethodName As String, useCapture As Boolean)
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	d.AddEventListener(eventName, cb, useCapture)
End Sub

'remove an event listener to the document
'<code>
'removeEventListener("click", "doThis", True)
'</code>
Sub removeEventListener(Module As Object, eventName As String, MethodName As String, useCapture As Boolean)
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	d.removeEventListener(eventName, cb)
End Sub

'get styleSheets
Sub styleSheets() As List
	'get the stylesheets
	Dim bo As BANanoObject = d.GetField("styleSheets")
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
		Return nl
	Else
		Return nl
	End If
End Sub

'get the documentURI
Sub getdocumentURI() As String
	Dim rslt As String = d.GetField("documentURI").Result
	Return rslt
End Sub

'set the documentURI
Sub setdocumentURI(uri As String) As JSDocument
	d.SetField("documentURI", Array(uri))
	Return Me
End Sub

'set the design mode to on|off
Sub setdesignMode(status As String) As JSDocument
	d.SetField("designMode", Array(status))
	Return Me
End Sub

'get the design mode
Sub getdesignMode() As String
	Dim rslt As String = d.GetField("designMode").Result
	Return rslt
End Sub

'open
Sub open() As JSDocument
	d.RunMethod("open", Null)
	Return Me
End Sub

'get the character set of the document
Sub characterSet As String
	Dim rslt As String = d.GetField("characterSet").Result
	Return rslt
End Sub

'create an attribute
Sub createAttribute(argument As String) As BANanoObject
	Dim attr As BANanoObject = d.RunMethod("createAttribute", Array(argument))
	Return attr
End Sub

'create a comment
Sub createComment(text As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("createComment", Array(text))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'close
Sub close() As JSDocument
	d.RunMethod("close", Null)
	Return Me
End Sub

'write
Sub write(xvalue As String) As JSDocument
	d.RunMethod("write", Array(xvalue))
	Return Me
End Sub

'writeln
Sub writeln(xvalue As String) As JSDocument
	d.RunMethod("writeln", Array(xvalue))
	Return Me
End Sub

'return anchors in the document
Sub anchors() As List
	Dim rslt As List = d.GetField("anchors").Result
	Return rslt
End Sub

'get base uri of the document
Sub baseURI As String
	Dim rslt As String = d.GetField("baseURI").Result
	Return rslt
End Sub

'createElement
Sub createElement(arguements As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("createElement", Array(arguements))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'createDocumentFragment
Sub createDocumentFragment() As JSElement
	Dim bo As BANanoObject = d.RunMethod("createDocumentFragment", Null)
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'createTextNode
Sub createTextNode(value As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("createTextNode", Array(value))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'getElementById
Sub getElementById(arguements As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("getElementById", Array(arguements))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

''getElementById1
'Sub getElementByIdBO(arguements As String) As BANanoObject
'	Dim bo As BANanoObject = d.RunMethod("getElementById", Array(arguements))
'	Return bo
'End Sub

'getElementsByTagName
Sub getElementsByTagName(arguements As String) As List
	Dim lst As List = d.RunMethod("getElementsByTagName", Array(arguements)).result
	Return lst
End Sub

'convert bananoobject to jselement
Sub ToJSElement(bo As BANanoObject) As JSElement
	Dim jse As JSElement
	jse.Initialize(bo)
	Return jse
End Sub

'getElementsByName
Sub getElementsByName(arguments As String) As List
	Dim rslt As List = d.RunMethod("getElementsByName", Array(arguments)).Result
	Return rslt
End Sub

'getElementsByClassName
Sub getElementsByClassName(arguements As BANanoElement) As List
	Dim lst As List = d.RunMethod("getElementsByClassName", Array(arguements)).result
	Return lst
End Sub


'querySelector
Sub querySelector(arguments As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("querySelector", Array(arguments))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub


'querySelectorAll
Sub querySelectorAll(arguments As String) As List
	Dim rslt As List = d.RunMethod("querySelectorAll", Array(arguments)).Result
	Return rslt
End Sub

'documentElement
Sub documentElement() As JSElement
	Dim bo As BANanoObject = d.GetField("documentElement")
	Return ToJSElement(bo)
End Sub

''defaultView
'Sub defaultView As JSWindow
'	Dim bw As BANanoObject = d.GetField("defaultView")
'	Return ToJSWindow(bw)
'End Sub
	'
'doctype
Sub doctype As String
	Return d.GetField("doctype").result
End Sub

'documentMode
Sub documentMode As String
	Return d.GetField("documentMode").result
End Sub

'importNode
Sub importNode(node As JSElement, deep As Boolean) As JSElement
	Dim bn As BANanoObject = node.Element
	Dim nn As BANanoObject = d.RunMethod("importNode", Array(bn, deep))
	Return ToJSElement(nn)
End Sub

'inputEncoding
Sub inputEncoding As String
	Return d.GetField("inputEncoding").result
End Sub

'referrer
Sub referrer As String
	Return d.GetField("referrer").result
End Sub

''helper - getstyleSheetByTitle
'Sub getStyleSheetByTitle(unique_title As String) As JSStyleSheet
'	Dim tSyles As Int = d.GetField("styleSheets").GetField("length").result
'	Log(tSyles)
''	Dim cStyles As Int
''	For cStyles = 0 To tSyles
''		Dim sheetBO As BANanoObject = styleSheets.get(cStyles)
''		Dim sheet As JSStyleSheet = ToJSStyleSheet(sheetBO)
''		If sheet.title.EqualsIgnoreCase(unique_title) Then
''			Return sheet
''		End If
''	Next
'	Return Null
'End Sub

'to jsStyleSheet
Sub ToJSStyleSheet(bo As BANanoObject) As JSStyleSheet
	Dim el As JSStyleSheet
	el.Sheet = ToJSElement(bo)
	Return el
End Sub