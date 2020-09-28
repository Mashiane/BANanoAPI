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
'<code>
'Dim bo As BANanoObject = BANano.getfield("window").getfield("document")
'Dim document As JSDocument
'document.Initialize(bo)
'</code>
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
'<code>
'document.SetField("x", y)
'</code>
Sub SetField(k As String, v As Object) As JSDocument
	d.SetField(k, v)
	Return Me
End Sub

'GetField
'<code>
'dim rslt As String = document.GetField("x")
'</code>
Sub GetField(k As String) As BANanoObject
	Return d.GetField(k)
End Sub

'addBR
'<code>
'document.addBR(parentNode)
'</code>
Sub addBR(jse As JSElement) As JSDocument
	Dim child As JSElement = createElement("BR")
	jse.appendChild(child)
	Return Me
End Sub

'addHR
'<code>
'document.addHR(parentNode)
'</code>
Sub addHR(jse As JSElement) As JSDocument
	Dim child As JSElement = createElement("HR")
	jse.appendChild(child)
	Return Me
End Sub

'addScript
'<code>
'document.addScript("bootstrap", "http://www.getbootstrap.com")
'</code>
Sub addScript(sID As String, sURL As String) As JSDocument
	Dim hm As JSElement = createElement("script")
	hm.src = sURL
	hm.id = sID
	Dim s As JSElement = getElementsByTagName("script").Get(0)
	s.parentNode.insertBefore(hm, s)
	Return Me
End Sub

'activeElement
'<code>
'dim jse as JSElement = document.activeElement
'</code>
Sub activeElement As JSElement
	Dim b As BANanoObject = d.GetField("activeElement")
	Return ToJSElement(b)
End Sub

'adoptNode
'<code>
'dim jse as JSElement = document.adoptNode(sourceNode)
'</code>
Sub adoptNode(node As JSElement) As JSElement
	Dim b As BANanoObject = node.Element
	Dim nnode As BANanoObject = d.RunMethod("adoptNode", Array(b))
	Return ToJSElement(nnode)
End Sub

'applets
'<code>
'dim applets as List = document.applets
'</code>
Sub applets() As List
	Return d.GetField("applets").Result
End Sub

'set cookie
'<code>
'document.cookie = "this cookir"
'</code>
Sub setcookie(txt As String) As JSDocument
	d.SetField("cookie", txt)
	Return Me
End Sub

'get cookie
'<code>
'dim cookie As String = document.cookie
'</code>
Sub getcookie() As String
	Return d.GetField("cookie").result
End Sub

'hasFocus
'<code>
'dim hasFocus As Boolean = document.hasFocus
'</code>
Sub hasFocus As Boolean
	Return d.GetField("hasFocus").result
End Sub

'URL
'<code>
'dim url As Boolean = document.url
'</code>
Sub URL As String
	Dim rslt As String = d.GetField("URL").Result
	Return rslt
End Sub

'set title
'<code>
'document.title = "My New Page"
'</code>
Sub settitle(tt As String) As JSDocument
	d.SetField("title", tt)
	Return Me
End Sub

'get the title
'<code>
'dim title As String = document.title
'</code>
Sub gettitle() As String
	Dim rslt As String = d.GetField("title").Result
	Return rslt
End Sub


'scripts
'<code>
'Dim scripts As List = document.scripts
'</code>
Sub scripts() As List
	Dim rslt As List = d.GetField("scripts").Result
	Return rslt
End Sub

'readyState
'<code>
'Dim readyState As String = document.readyState
'</code>
Sub readyState As String
	Dim rslt As String = d.GetField("readyState").Result
	Return rslt
End Sub

'lastModified
'<code>
'Dim lastModifield As Int = document.lastModified
'Dim jDate As JDate
'jDate.Initialize(lastModifield)
'Log(jDate.toDateTime)
'</code>
Sub lastModified As String
	Dim rslt As String = d.GetField("lastModified").Result
	Return rslt
End Sub

'links
'<code>
'Dim links As List = document.links
'</code>
Sub links As List
	Dim rslt As List = d.GetField("links").Result
	Return rslt
End Sub

'normalize
'<code>
'document.normalize
'</code>
Sub normalize As JSDocument
	d.RunMethod("normalize", Null)
	Return Me
End Sub

'use strict to ensure variables are defined
'<code>
'document.useStrict
'</code>
Sub useStrict
	'ensure variable declarations are done
	banano.RunJavascriptMethod("useStrict", Null)
End Sub

'execCommand
'<code>
'document.execCommand("PRINT")
'</code>
Sub execCommand(command As String) As JSDocument
	d.RunMethod("execCommand", Array(command))
	Return Me
End Sub

'fullscreenElement
'<code>
'Dim jse As JSElemnt = document.fullscreenElement
'</code>
Sub fullscreenElement As JSElement
	Dim b As BANanoObject = d.GetField("fullscreenElement")
	Return ToJSElement(b)
End Sub

'fullscreenEnabled
'<code>
'Dim fullscreenEnabled As Boolean = document.fullscreenEnabled
'</code>
Sub fullscreenEnabled As Boolean
	Dim rslt As Boolean = d.GetField("fullscreenEnabled").Result
	Return rslt
End Sub

'webkitFullscreenEnabled 
'<code>
'Dim webkitFullscreenEnabled As Boolean = document.webkitFullscreenEnabled
'</code>
Sub webkitFullscreenEnabled  As Boolean
	Dim rslt As Boolean = d.GetField("webkitFullscreenEnabled").Result
	Return rslt
End Sub

'mozFullScreenEnabled 
'<code>
'Dim mozFullScreenEnabled As Boolean = document.mozFullScreenEnabled
'</code>
Sub mozFullScreenEnabled  As Boolean
	Dim rslt As Boolean = d.GetField("mozFullScreenEnabled").Result
	Return rslt
End Sub

'msFullscreenEnabled
'<code>
'Dim msFullscreenEnabled As Boolean = document.msFullscreenEnabled
'</code>
Sub msFullscreenEnabled As Boolean
	Dim rslt As Boolean = d.GetField("msFullscreenEnabled").Result
	Return rslt
End Sub

'images
'<code>
'Dim images As List = document.images
'</code>
Sub images() As List
	Dim rslt As List = d.GetField("images").Result
	Return rslt
End Sub

'forms
'<code>
'Dim forms As List = document.forms
'</code>
Sub forms() As List
	Dim lforms As List = d.GetField("forms").Result
	Return lforms
End Sub

'get the domain 
'<code>
'Dim domain As String = document.domain
'</code>
Sub domain() As String
	Dim rslt As String = d.GetField("domain").Result
	Return rslt
End Sub

'get embeds in the document
'<code>
'Dim embeds As List = document.embeds
'</code>
Sub embeds() As List
	Dim rslt As List = d.GetField("embeds").Result
	Return rslt
End Sub

'shortcut add event listener
'<code>
'document.on("click", Me, "doThis")
'</code>
Sub on(eventName As String, module As Object, methodName As String) As JSDocument
	addEventListener(module, eventName, methodName, False)
	Return Me
End Sub

'shortcut - remove event listener
'<code>
'document.off("click", Me, "doThis")
'body.appendChild(el)
'</code>
Sub off(eventName As String, module As Object, methodName As String) As JSDocument
	removeEventListener(module, eventName, methodName, False)
	Return Me
End Sub

'add an event listener to the document
'by default useCapture is false so that events bubble up
'<code>
'document.addEventListener(Me, "click", "doThis", False)
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
'document.removeEventListener(Me, "click", "doThis", True)
'</code>
Sub removeEventListener(Module As Object, eventName As String, MethodName As String, useCapture As Boolean)
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	d.removeEventListener(eventName, cb)
End Sub

'get styleSheets
'<code>
'dim styleSheets As List = document.styleSheets
'For each styleSheet As BANanoObject in styleSheets
'	Dim jss As JSStyleSheet = ToJSStyleSheet(styleSheet)	
'Next
'</code>
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
'<code>
'dim documentURI As String = document.documentURI
'</code>
Sub getdocumentURI() As String
	Dim rslt As String = d.GetField("documentURI").Result
	Return rslt
End Sub

'set the documentURI
'<code>
'document.documentURI = documentURI
'</code>
Sub setdocumentURI(uri As String) As JSDocument
	d.SetField("documentURI", Array(uri))
	Return Me
End Sub

'set the design mode to on|off
'<code>
'document.designMode = True/False
'</code>
Sub setdesignMode(status As String) As JSDocument
	d.SetField("designMode", Array(status))
	Return Me
End Sub

'get the design mode
'<code>
'dim designMode As Boolean = document.designMode
'</code>
Sub getdesignMode() As String
	Dim rslt As String = d.GetField("designMode").Result
	Return rslt
End Sub

'open
'<code>
'document.open
'</code>
Sub open() As JSDocument
	d.RunMethod("open", Null)
	Return Me
End Sub

'get the character set of the document
'<code>
'Dim characterSet As String = document.characterSet
'</code>
Sub characterSet As String
	Dim rslt As String = d.GetField("characterSet").Result
	Return rslt
End Sub

'create an attribute
'<code>
'Dim jse As JSElement = document.createAttribute("class")
'jse.value = "blue"
'parentNode.setAttributeNode(jse)
'</code>
Sub createAttribute(argument As String) As BANanoObject
	Dim attr As BANanoObject = d.RunMethod("createAttribute", Array(argument))
	Return attr
End Sub

'create a comment
'<code>
'document.createComment("This is a comment")
'</code>
Sub createComment(text As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("createComment", Array(text))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'close
'<code>
'document.close
'</code>
Sub close() As JSDocument
	d.RunMethod("close", Null)
	Return Me
End Sub

'write
'<code>
'document.write("This is BANanoAPI")
'</code>
Sub write(xvalue As String) As JSDocument
	d.RunMethod("write", Array(xvalue))
	Return Me
End Sub

'writeln
'<code>
'document.writeln("Im not sure if this works!")
'</code>
Sub writeln(xvalue As String) As JSDocument
	d.RunMethod("writeln", Array(xvalue))
	Return Me
End Sub

'return anchors in the document
'<code>
'Dim anchors As List = document.anchors
'</code>
Sub anchors() As List
	Dim rslt As List = d.GetField("anchors").Result
	Return rslt
End Sub

'get base uri of the document
'<code>
'Dim baseURI As List = document.baseURI
'</code>
Sub baseURI As String
	Dim rslt As String = d.GetField("baseURI").Result
	Return rslt
End Sub

'createElement
'<code>
'Dim el As JSElement = document.createElement("A")
'body.appendChild(el)
'</code>
Sub createElement(arguements As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("createElement", Array(arguements))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'createDocumentFragment
'<code>
'Dim el As JSElement = document.createElement("A")
'body.appendChild(el)
'</code>
Sub createDocumentFragment() As JSElement
	Dim bo As BANanoObject = d.RunMethod("createDocumentFragment", Null)
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'createTextNode
'<code>
'Dim el As JSElement = document.createTextNode("A")
'body.appendChild(el)
'</code>
Sub createTextNode(value As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("createTextNode", Array(value))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'getElementById
'<code>
'Dim el As JSElement = document.getElementById("id")
'</code>
Sub getElementById(arguements As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("getElementById", Array(arguements))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'getElementsByTagName
'<code>
'Dim el As JSElement = document.getElementsByTagName("p")
'</code>
Sub getElementsByTagName(arguements As String) As List
	Dim lst As List = d.RunMethod("getElementsByTagName", Array(arguements)).result
	Return lst
End Sub

'convert bananoobject to jselement
'<code>
'Dim jse As JSElement = document.ToJSElement(BANanoObject)
'</code>
Sub ToJSElement(bo As BANanoObject) As JSElement
	Dim jse As JSElement
	jse.Initialize(bo)
	Return jse
End Sub

'getElementsByName
'<code>
'Dim els As List = document.getElementsByName("radio")
'</code>
Sub getElementsByName(arguments As String) As List
	Dim rslt As List = d.RunMethod("getElementsByName", Array(arguments)).Result
	Return rslt
End Sub

'getElementsByClassName
'<code>
'Dim els As List = document.getElementsByClassName("brown")
'</code>
Sub getElementsByClassName(arguements As BANanoElement) As List
	Dim lst As List = d.RunMethod("getElementsByClassName", Array(arguements)).result
	Return lst
End Sub


'querySelector
'<code>
'Dim els As JSElement = document.querySelector(".brown")
'</code>
Sub querySelector(arguments As String) As JSElement
	Dim bo As BANanoObject = d.RunMethod("querySelector", Array(arguments))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub


'querySelectorAll
'<code>
'Dim els As List = document.querySelectorAll(".brown")
'</code>
Sub querySelectorAll(arguments As String) As List
	Dim rslt As List = d.RunMethod("querySelectorAll", Array(arguments)).Result
	Return rslt
End Sub

'documentElement
'<code>
'Dim els As JSElement = document.documentElement("A")
'</code>
Sub documentElement() As JSElement
	Dim bo As BANanoObject = d.GetField("documentElement")
	Return ToJSElement(bo)
End Sub

'doctype
'<code>
'Dim doctype As String = document.doctype
'</code>
Sub doctype As String
	Return d.GetField("doctype").result
End Sub

'documentMode
'<code>
'Dim documentMode As String = document.documentMode
'</code>
Sub documentMode As String
	Return d.GetField("documentMode").result
End Sub

'importNode
'<code>
'Dim el As JSElement = document.importNode(node, True)
'</code>
Sub importNode(node As JSElement, deep As Boolean) As JSElement
	Dim bn As BANanoObject = node.Element
	Dim nn As BANanoObject = d.RunMethod("importNode", Array(bn, deep))
	Return ToJSElement(nn)
End Sub

'inputEncoding
'<code>
'Dim inputEncoding As String = document.inputEncoding
'</code>
Sub inputEncoding As String
	Return d.GetField("inputEncoding").result
End Sub

'referrer
'<code>
'Dim referrer As String = document.referrer
'</code>
Sub referrer As String
	Return d.GetField("referrer").result
End Sub


'to jsStyleSheet
'Dim styleSheets As List = document.stylesheets
'For each styleSheet As BANanoObject in styleSheets
'	Dim jss As JSStyleSheet = ToJSStyleSheet(styleSheet)	
'Next
'</code>
Sub ToJSStyleSheet(bo As BANanoObject) As JSStyleSheet
	Dim el As JSStyleSheet
	el.Sheet = ToJSElement(bo)
	Return el
End Sub

'shortcut to create elements with attributes and children
'<code>
'Dim el As JSElement = document.createElement1("DIV", CreateMap("css":"background-color:green;border:1px solid black;","class":"blue there"), Null)
'body.appendChild(el)
'</code>
Sub createElement1(nodeType As String, attrs As Map, children As List) As JSElement
	Dim node As JSElement = createElement(nodeType)
	For Each k As String In attrs.Keys
		Dim v As String = attrs.Get(k)
		If k = "css" Then
			node.style.cssText = v
		else if k = "class" Then
			node.addClass(v)
		Else	
			node.setAttribute(k, v)
		End If
	Next
	If banano.IsNull(children) Then Return node
	For Each child As Object In children
		If banano.IsString(child) Then
			Dim childNode As JSElement = createTextNode(child)
			node.appendChild(childNode)
		Else
			node.appendChild(child)
		End If
	Next
	Return node
End Sub