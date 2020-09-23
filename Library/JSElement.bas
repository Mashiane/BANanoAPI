B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12, 11
Sub Class_Globals
	Public Element As BANanoElement
	Private banano As BANano
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(bo As BANanoObject) As JSElement
	Element = banano.ToElement(bo)
	Return Me
End Sub

'fromBANanoElement
Sub fromBANanoElement(el As BANanoElement) As JSElement
	Element = el
	Return Me
End Sub

'colSpan
Sub setcolSpan(cspan As Int) As JSElement
	cspan = banano.parseInt(cspan)
	Element.SetField("colSpan", cspan)
	Return Me
End Sub

'rowSpan
Sub rowSpan(rspan As Int) As JSElement
	rspan = banano.parseint(rspan)
	Element.SetField("rowSpan", rspan)
	Return Me
End Sub

'deleteRow
Sub deleteRow(pos As Int) As JSElement
	pos = banano.parseInt(pos)
	Element.RunMethod("deleteRow", Array(pos))
	Return Me
End Sub

'cells
Sub cells() As List
	Return Element.getfield("cells").result
End Sub

'row
Sub cell(pos As Int) As JSElement
	Dim bo As BANanoObject = cells.Get(pos)
	Return ToJSElement(bo)
End Sub

'deleteCell
Sub deleteCell(pos As Int) As JSElement
	pos = banano.parseint(pos)
	Element.RunMethod("deleteCell", Array(pos))
	Return Me
End Sub

'insertRow
Sub insertRow(pos As Int) As JSElement
	pos = banano.parseint(pos)
	Dim bo As BANanoObject = Element.RunMethod("insertRow", Array(pos))
	Return ToJSElement(bo)
End Sub

'insertCell
Sub insertCell(pos As Int) As JSElement
	pos = banano.parseint(pos)
	Dim bo As BANanoObject = Element.RunMethod("insertCell", Array(pos))
	Return ToJSElement(bo)
End Sub

'insertBefore
Sub insertBefore(newNode As JSElement, existingNode As JSElement) As JSElement
	Dim bo1 As BANanoObject = newNode.ToObject
	Dim bo2 As BANanoObject = existingNode.toobject
	Element.RunMethod("insertBefore", Array(bo1, bo2))
	Return Me
End Sub

'GetField
Sub GetField(fldName As String) As BANanoObject
	Return Element.GetField(fldName)
End Sub

'SetField
Sub SetField(fldName As String, fldValue As String) As JSElement
	Element.SetField(fldName, fldName)
	Return Me
End Sub

'RunMethod
Sub RunMethod(methodName As String, params As Object) As BANanoObject
	Return Element.RunMethod(methodName, params)
End Sub

'set className 
Sub setclassName(value As String) As JSElement
	Element.SetField("className", value)
	Return Me
End Sub

'src 
Sub setsrc(ssrc As String) As JSElement
	Element.SetField("src", ssrc)
	Return Me
End Sub

'get src 
Sub getsrc() As String
	Dim ssrc As String = Element.GetField("src").Result
	Return ssrc
End Sub

'normalize
Sub normalize As JSElement
	Element.RunMethod("normalize", Null)
	Return Me
End Sub

'nodeName
Sub nodeName As String
	Dim rslt As String = Element.GetField("nodeName").Result
	Return rslt
End Sub

'nodeType
Sub nodeType As Int
	Dim rslt As Int = Element.GetField("nodeType").Result
	Return rslt
End Sub

'nodeValue
Sub nodeValue As String
	Dim rslt As String = Element.GetField("nodeValue").Result
	Return rslt
End Sub



'insertAdjacentElement
Sub insertAdjacentElement(position As String, insertNode As JSElement) As JSElement
	Dim bo As BANanoObject = insertNode.ToObject 
	Element.RunMethod("insertAdjacentElement", Array(position, bo))
	Return Me
End Sub


'insertAdjacentText
Sub insertAdjacentText(position As String, txt As String) As JSElement
	Element.RunMethod("insertAdjacentText", Array(position, txt))
	Return Me
End Sub

'set input type
Sub setinputType(typeofx As String) As JSElement
	setAttribute("type", typeofx)
	Return Me
End Sub

'get accessKey 
Sub getaccessKey() As String
	Dim rslt As String = Element.GetField("accessKey").Result
	Return rslt
End Sub

'replaceChild
Sub replaceChild(newChild As JSElement, oldChild As JSElement) As JSElement
	Dim bo1 As BANanoObject = newChild.ToObject
	Dim bo2 As BANanoObject = oldChild.ToObject
	Element.RunMethod("replaceChild", Array(bo1, bo2))
	Return Me
End Sub

'set accessKey 
Sub setaccessKey(saccessKey As String) As JSElement
	Element.SetField("accessKey", Array(saccessKey))
	Return Me
End Sub

'setAttribute
Sub setAttribute(name As String, value As String) As JSElement
	Element.RunMethod("setAttribute", Array(name, value))
	Return Me
End Sub

'add an event listener to the document
'<code>
'addEventListener(Me, "click", "doThis", True)
'Sub doThis(e As BANanoEvent)
'End Sub
'</code>
Sub addEventListener(Module As Object, eventName As String, MethodName As String, useCapture As Boolean) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener(eventName, cb, useCapture)
	Return Me
End Sub

'remove an event listener to the document
'<code>
'removeEventListener(Me, "click", "doThis", True)
'</code>
Sub removeEventListener(Module As Object, eventName As String, MethodName As String, useCapture As Boolean) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.removeEventListener(eventName, cb)
	Return Me
End Sub

'assign on click method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
'</code>
Sub onClick(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("click", cb, False)
	Return Me
End Sub

'assign on mouse over method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onMouseOver(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("mouseover", cb, False)
	Return Me
End Sub

'assign on mouse out method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onMouseOut(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("mouseout", cb, False)
	Return Me
End Sub

'assign on mouse down method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onMouseDown(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("mousedown", cb, False)
	Return Me
End Sub

'assign on mouse up method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onMouseUp(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("mouseup", cb, False)
	Return Me
End Sub

'assign on keydown method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onKeyDown(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("keydown", cb, False)
	Return Me
End Sub

'assign on load ethod
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onLoad(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("load", cb, False)
	Return Me
End Sub

'assign on unload ethod
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onUnLoad(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("unload", cb, False)
	Return Me
End Sub

'assign on onchange method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onChange(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("change", cb, False)
	Return Me
End Sub

'assign on onsubmit method
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onSubmit(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("submit", cb, False)
	Return Me
End Sub


'on resize
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onResize(Module As Object, MethodName As String)
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("resize", cb, False)
End Sub


'assign on focus ethod
'<code>
'Sub doThis(e As BANanoEvent)
'End Sub
Sub onFocus(Module As Object, MethodName As String) As JSElement
	Dim e As BANanoEvent
	Dim cb As BANanoObject = banano.CallBack(Module, MethodName, Array(e))
	Element.AddEventListener("focus", cb, False)
	Return Me
End Sub

'set text
Sub setText(txt As String) As JSElement
	Element.SetField("text", txt)
	Return Me
End Sub

'namedItem
Sub namedItem(name As String) As JSElement
	Dim bo As BANanoObject = Element.GetField(name)
	Return ToJSElement(bo)
End Sub

'get text
Sub getText() As String
	Dim rslt As String = Element.GetField("text").Result
	Return rslt
End Sub

'set id
Sub setid(sid As String) As JSElement
	sid = sid.tolowercase
	Element.SetField("id", sid)
	Return Me
End Sub

'get id
Sub getid As String
	Dim rslt As String = Element.GetField("id").Result
	Return rslt
End Sub

'scrollHeight 
Sub scrollHeight As String
	Dim rslt As String = Element.GetField("scrollHeight").Result
	Return rslt
End Sub

'scrollWidth 
Sub scrollWidth As String
	Dim rslt As String = Element.GetField("scrollWidth").Result
	Return rslt
End Sub

'scrollIntoView
Sub scrollIntoView(b As Boolean) As JSElement
	Element.RunMethod("scrollIntoView", Array(b))
	Return Me
End Sub

'set scrollLeft 
Sub setscrollLeft(i As Int) As JSElement
	Element.SetField("scrollLeft", i)
	Return Me
End Sub

'get scrollLeft 
Sub getscrollLeft() As Int
	Dim rslt As Int = Element.getfield("scrollLeft").Result
	Return rslt
End Sub

'set scrollTop 
Sub setscrollTop(i As Int) As JSElement
	Element.SetField("scrollTop", i)
	Return Me
End Sub
'
'get scrollTop 
Sub getscrollTop() As Int
	Dim rslt As Int = Element.GetField("scrollTop").Result
	Return rslt
End Sub


'set an attribute node created with createAttribute
Sub setAttributeNode(attr As JSElement) As JSElement
	Dim bo As BANanoObject = attr.toobject
	Element.RunMethod("setAttributeNode", Array(bo))
	Return Me
End Sub

'set requestFullscreen
Sub requestFullscreen As JSElement
	Element.RunMethod("requestFullscreen", Null)
	Return Me
End Sub

'get requestFullscreen
Sub requestFullscreenB As Boolean
	Dim rslt As Boolean = Element.getfield("requestFullscreen").Result
	Return rslt
End Sub

'set msRequestFullscreen
Sub msRequestFullscreen As JSElement
	Element.RunMethod("msRequestFullscreen", Null)
	Return Me
End Sub

'get msRequestFullscreen
Sub msRequestFullscreenB As Boolean
	Dim rslt As Boolean = Element.getfield("msRequestFullscreen").Result
	Return rslt
End Sub


'set mozRequestFullScreen
Sub mozRequestFullScreen As JSElement
	Element.RunMethod("mozRequestFullScreen", Null)
	Return Me
End Sub

'get mozRequestFullScreen
Sub mozRequestFullScreenB As Boolean
	Dim rslt As Boolean = Element.getfield("mozRequestFullScreen").Result
	Return rslt
End Sub

'get webkitRequestFullscreen
Sub webkitRequestFullscreenB As Boolean
	Dim rslt As Boolean = Element.GetField("webkitRequestFullscreen").Result
	Return rslt
End Sub

'set webkitRequestFullscreen
Sub webkitRequestFullscreen As JSElement
	Element.RunMethod("webkitRequestFullscreen", Null)
	Return Me
End Sub

'convert class to bananoobject
Sub ToObject As BANanoObject
	Dim bo As BANanoElement = banano.ToObject(Element)
	Return bo
End Sub

'get the name
Sub getname As String
	Dim rslt As Object = Element.GetField("name").Result
	Return rslt
End Sub

'set the name
Sub setname(name As String) As JSElement
	Element.SetField("name", name)
	Return Me
End Sub

'get the value
Sub getvalue As Object
	Dim rslt As Object = Element.GetField("value").result
	Return rslt
End Sub

'set the value
Sub setvalue(value As Object) As JSElement
	Element.SetField("value", value)
	Return Me
End Sub

'return childNodes list 
Sub childNodes() As List
	Dim items As List = Element.GetField("childNodes").result
	Return items
End Sub

'return children list
Sub children() As List
	Dim items As List = Element.GetField("children").result
	Return items
End Sub

'convert bananoobject to jselement
Sub ToJSElement(bo As BANanoObject) As JSElement
	Dim jse As JSElement
	jse.Initialize(bo)
	Return jse
End Sub

'convert jselement to jstable
Sub ToJSTable() As JSTable
	Dim jse As JSTable
	jse.FromJSElement(Me)
	Return jse
End Sub


'getAttributeNode
Sub getAttributeNode(attrName As String) As JSElement
	Dim bo As BANanoObject = Element.RunMethod("getAttributeNode", Array(attrName))
	Return ToJSElement(bo)
End Sub

'querySelector
Sub querySelector(arguments As String) As JSElement
	Dim bo As BANanoObject = Element.RunMethod("querySelector", Array(arguments))
	Dim jse As JSElement = ToJSElement(bo)
	Return jse
End Sub

'querySelectorAll
Sub querySelectorAll(arguments As String) As List
	Dim rslt As List = Element.RunMethod("querySelectorAll", Array(arguments)).Result
	Return rslt
End Sub

'childElementCount
Sub childElementCount() As Long
	Dim lng As Long = Element.RunMethod("childElementCount", Null).Result
	Return lng
End Sub

'getAttribute
Sub getAttribute(arguments As String) As String
	Dim lng As String = Element.RunMethod("getAttribute", Array(arguments)).Result
	Return lng
End Sub

'getStyle
Sub style() As JSStyle
	Dim bo As BANanoObject = Element.GetField("style")
	Dim st As JSStyle
	st.Initialize(bo)
	Return st
End Sub

'set tabIndex
Sub settabIndex(ti As Int) As JSElement
	Element.SetField("tabIndex", ti)
	Return Me
End Sub

'set title
Sub settitle(t As String) As JSElement
	Element.SetField("title", t)
	Return Me
End Sub

'get title
Sub gettitle() As String
	Dim rslt As String = Element.GetField("title").Result
	Return rslt
End Sub

'get tabIndex
Sub gettabIndex() As Int
	Dim rslt As Int = Element.GetField("tabIndex").Result
	Return rslt
End Sub

'tagName
Sub tagName As String
	Dim rslt As String = Element.GetField("tagName").Result
	Return rslt
End Sub

'set textContent
Sub settextContent(txt As String) As JSElement
	Element.SetField("textContent", txt)
	Return Me
End Sub

'get textContent
Sub gettextContent() As String
	Dim rslt As String = Element.GetField("textContent").Result
	Return rslt
End Sub

'focus
Sub focus() As JSElement
	Element.RunMethod("focus", Null)
	Return Me
End Sub

'blur i.e loose focus
Sub blur() As JSElement
	Element.RunMethod("blur", Null)
	Return Me
End Sub

'GetOuterHTML
Sub getouterHTML() As String
	Dim sout As String = Element.GetFIeld("outerHTML").Result
	Return sout
End Sub

'SetOuterHTML
Sub setouterHTML(sout As String) As JSElement
	Element.SetField("outerHTML", sout)
	Return Me
End Sub

'GetOuterText
Sub getouterText() As String
	Dim sout As String = Element.GetFIeld("outerText").Result
	Return sout
End Sub

'matches
Sub matches(n As String) As Boolean
	Return Element.RunMethod("matches", Array(n)).result
End Sub

'set outerText, replaces the element
Sub setouterText(sout As String) As JSElement
	Element.SetField("outerText", sout)
	Return Me
End Sub

'isSameNode
Sub isSameNode(node As JSElement) As Boolean
	Dim n As BANanoObject = node.ToObject 
	Return Element.RunMethod("isSameNode", Array(n)).result
End Sub

'isEqualNode
Sub isEqualNode(node As JSElement) As Boolean
	Dim n As BANanoObject = node.Toobject
	Return Element.RunMethod("isEqualNode", Array(n)).Result
End Sub

'GetInnerHTML
Sub getinnerHTML() As String
	Dim sout As String = Element.GetField("innerHTML").Result
	Return sout
End Sub

'SetInnerHTML
Sub setinnerHTML(sout As String) As JSElement
	Element.SetField("innerHTML", sout)
	Return Me
End Sub

'setinnerText
Sub setinnerText(sout As String) As JSElement
	Element.SetField("innerText", sout)
	Return Me
End Sub

'getInnerText
Sub getinnerText() As String
	Return Element.getField("innerText").Result
End Sub

''set attribute 
'Sub setattribute(attrName As String) As JSElement
'	Element.SetField("attribute", sout)
'	Return Me
'End Sub
'
''get attribute 
'Sub getattribute() As string
'	dim rslt as string = Element.GetField("attribute ").Result
'	Return rslt
'End Sub

'prepend
Sub prepend(child As JSElement) As JSElement
	Dim bo As BANanoObject = child.ToObject
	Element.RunMethod("prepend", Array(bo))
	Return Me
End Sub

'appendChild
Sub appendChild(jse As JSElement) As JSElement
	Dim bo As BANanoObject = jse.ToObject
	Element.RunMethod("appendChild", Array(bo))
	Return Me
End Sub

'replaceWith
Sub replaceWith(child As JSElement) As JSElement
	Dim bo As BANanoObject = child.ToObject
	Element.RunMethod("replaceWith", Array(bo))
	Return Me
End Sub

'setStyle, updating existing tyles
Sub SetStyle(name As String, value As String) As JSElement
	Element.GetField("style").SetField(name, value)
	Return Me
End Sub

'hasAttribute
Sub hasAttribute(prop As String) As Boolean
	Dim bo As Boolean = Element.RunMethod("hasAttribute", Array(prop)).Result
	Return bo
End Sub

'remove - does not work on old browsers
Sub remove As JSElement
	Element.RunMethod("remove", Null)
	Return Me
End Sub

'removeChild
Sub removeChild(jse As JSElement) As JSElement
	Dim bo As BANanoObject = jse.ToObject
	Element.RunMethod("removeChild", Array(bo))
	Return Me
End Sub

'removeAttribute
Sub removeAttribute(name As String) As JSElement
	Element.RunMethod("removeAttribute", Array(name))
	Return Me
End Sub

'removeAttributeNode
Sub removeAttributeNode(jse As JSElement) As JSElement
	Dim bo As BANanoObject = jse.ToObject
	Element.RunMethod("removeAttributeNode", Array(bo))
	Return Me
End Sub

'get prev sibling
Sub previousSibling() As JSElement
	'get the previous sibling
	Dim bo As BANanoObject = Element.GetField("previousSibling")
	Return ToJSElement(bo)
End Sub

'previousElementSibling
Sub previousElementSibling() As JSElement
	Dim bo As BANanoObject = Element.GetField("previousElementSibling")
	Return ToJSElement(bo)
End Sub

'get next sibling
Sub nextSibling() As JSElement
	'get the previous sibling
	Dim bo As BANanoObject = Element.GetField("nextSibling")
	Return ToJSElement(bo)
End Sub


'nextElementSibling
Sub nextElementSibling() As JSElement
	'get the previous sibling
	Dim bo As BANanoObject = Element.GetField("nextElementSibling")
	Return ToJSElement(bo)
End Sub


'get last child
Sub lastChild() As JSElement
	'get the last child that keeps the span
	Dim bo As BANanoObject = Element.GetField("lastChild")
	Return ToJSElement(bo)
End Sub


'lastElementChild
Sub lastElementChild() As JSElement
	'get the last child that keeps the span
	Dim bo As BANanoObject = Element.GetField("lastElementChild")
	Return ToJSElement(bo)
End Sub

'get attributes
Sub attributes() As List
	Dim rslt As List = Element.GetField("attributes").Result
	Return rslt
End Sub

'classList
Sub classList() As JSClassList
	Dim rslt As BANanoObject = Element.GetField("classList")
	Dim jcl As JSClassList
	jcl.Initialize(rslt)
	Return jcl
End Sub

'fire a click event
Sub click
	Element.RunMethod("click", Null)
End Sub

'clientHeight 
Sub clientHeight As String
	Dim rslt As String = Element.GetField("clientHeight").Result
	Return rslt
End Sub

'offsetHeight 
Sub offsetHeight As String
	Dim rslt As String = Element.GetField("offsetHeight").Result
	Return rslt
End Sub

'clientWidth 
Sub clientWidth As String
	Dim rslt As String = Element.GetField("clientWidth").Result
	Return rslt
End Sub

'offsetWidth 
Sub offsetWidth As String
	Dim rslt As String = Element.GetField("offsetWidth").Result
	Return rslt
End Sub

'offsetLeft
Sub offsetLeft As String
	Dim rslt As String = Element.GetField("offsetLeft").Result
	Return rslt
End Sub

'offsetTop
Sub offsetTop As String
	Dim rslt As String = Element.GetField("offsetTop").Result
	Return rslt
End Sub


'offsetParent
Sub offsetParent As String
	Dim rslt As String = Element.GetField("offsetParent").Result
	Return rslt
End Sub

'getBoundingClientRect
Sub getBoundingClientRect As Object
	Dim rslt As Object = Element.runmethod("getBoundingClientRect", Null).Result
	Return rslt
End Sub

'compareDocumentPosition
Sub compareDocumentPosition(node As JSElement) As Int
	Dim boNode As BANanoObject = node.ToObject
	Return Element.RunMethod("compareDocumentPosition", Array(boNode)).result
End Sub

'clientTop 
Sub clientTop As String
	Dim rslt As String = Element.GetField("clientTop").Result
	Return rslt
End Sub

'clientLeft 
Sub clientLeft As String
	Dim rslt As String = Element.GetField("clientLeft").Result
	Return rslt
End Sub

'cloneNode
Sub cloneNode(includeChildren As Boolean) As JSElement
	Dim bo As BANanoObject = Element.RunMethod("cloneNode", Array(includeChildren))
	Return ToJSElement(bo)
End Sub

'closest
Sub closest(arguments As String) As JSElement
	Dim bo As BANanoObject = Element.RunMethod("closest", Array(arguments))
	Return ToJSElement(bo)
End Sub

'contains child
Sub contains1(child As JSElement) As Boolean
	Dim bo As BANanoObject = child.ToObject
	Dim rslt As Boolean = Element.RunMethod("containts", Array(bo)).Result
	Return rslt
End Sub

'set contentEditable 
Sub setcontentEditable(b As Boolean) As JSElement
	Element.SetField("contentEditable", b)
	Return Me
End Sub

'get contentEditable 
Sub getcontentEditable() As Boolean
	Dim rslt As Boolean = Element.GetField("contentEditable").Result
	Return rslt
End Sub

'set dir 
Sub setdir(sdir As String) As JSElement
	Element.SetField("dir", sdir)
	Return Me
End Sub

'get dir 
Sub getdir() As String
	Dim rslt As String = Element.GetField("dir").Result
	Return rslt
End Sub

'exitFullscreen
Sub exitFullscreen As JSElement
	Element.RunMethod("exitFullscreen", Null)
	Return Me
End Sub

'mozCancelFullScreen
Sub mozCancelFullScreen As JSElement
	Element.RunMethod("mozCancelFullScreen", Null)
	Return Me
End Sub

'webkitExitFullscreen
Sub webkitExitFullscreen As JSElement
	Element.RunMethod("webkitExitFullscreen", Null)
	Return Me
End Sub

'msExitFullscreen
Sub msExitFullscreen As JSElement
	Element.RunMethod("msExitFullscreen", Null)
	Return Me
End Sub

'firstChild
Sub firstChild As JSElement
	Dim bo As BANanoObject = Element.getfield("firstChild")
	Return ToJSElement(bo) 
End Sub

'firstElementChild
Sub firstElementChild As JSElement
	Dim bo As BANanoObject = Element.getfield("firstElementChild")
	Return ToJSElement(bo) 
End Sub


'getElementsByClassName
Sub getElementsByClassName(arguments As String) As List
	Dim lst As List = Element.RunMethod("getElementsByClassName", Array(arguments)).result
	Return lst
End Sub


'getElementsByTagName
Sub getElementsByTagName(arguements As String) As List
	Dim lst As List = Element.RunMethod("getElementsByTagName", Array(arguements)).result
	Return lst
End Sub


'hasAttributes 
Sub hasAttributes As Boolean
	Dim rslt As Boolean = Element.GetField("hasAttributes").Result
	Return rslt
End Sub

'hasChildNodes
Sub hasChildNodes As Boolean
	Dim rslt As Boolean = Element.GetField("hasChildNodes").Result
	Return rslt
End Sub

'insertAdjacentHTML
Sub insertAdjacentHTML(pos As String, txt As String) As JSElement
	Element.RunMethod("insertAdjacentHTML", Array(pos, txt))
	Return Me	
End Sub

'ownerDocument
Sub ownerDocument() As JSElement
	Dim bo As BANanoObject = Element.GetField("ownerDocument")
	Return ToJSElement(bo)
End Sub

'parentNode
Sub parentNode() As JSElement
	Dim bo As BANanoObject = Element.GetField("parentNode")
	Return ToJSElement(bo)
End Sub

'parentElement
Sub parentElement() As JSElement
	Dim bo As BANanoObject = Element.GetField("parentElement")
	Return ToJSElement(bo)
End Sub

'set the method
Sub setmethod(value As String) As JSElement
	Element.SetField("method", value)
	Return Me
End Sub

'set action
Sub setaction(value As String) As JSElement
	Element.SetField("action", value)
	Return Me
End Sub