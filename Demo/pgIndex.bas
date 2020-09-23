B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=7.8
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private BANano As BANano  'ignore
	Public document As JSDocument
	Public window As JSWindow
End Sub


Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	'set design mode on
	document.designMode = "on"
	'
	'document.write("Testing document writing...")
	
	'get the document ready state
	Dim rs As JSElement = document.createElement("P")
	rs.AppendChild(document.createTextNode($"Ready state: ${document.readyState}"$))
	document.body.appendChild(rs)
	'
	'get the document title
	Dim tt As JSElement = document.createElement("P")
	tt.ID = "doctitle"
	tt.AppendChild(document.createTextNode($"Document Title: ${document.title}"$))
	document.body.appendChild(tt)
	
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.innerHTML = "Change Document Title"
	btn.addEventListener(Me, "click", "changetitle", False)
	document.body.appendChild(btn)
	'
	Dim h As JSElement = document.createElement("H1")
	h.appendChild(document.createTextNode("Hello World"))
	document.body.appendChild(h)
	
	Dim h2 As JSElement = document.createElement("H2")
	h2.appendChild(document.createTextNode("Select Text And Press Shift"))
	document.body.appendChild(h2)
	'
	Dim p1 As JSElement = document.createElement("P")
	p1.appendChild(document.createTextNode("Select some text in this page, and press the SHIFT button to make the selected text toggle between bold and normal."))
	document.body.appendChild(p1)
	
	'add on keydown event
	document.addEventListener(Me, "keydown", "lovely", False)
	'
	Dim p2 As JSElement = document.createElement("P")
	p2.appendChild(document.createTextNode("Click on the button to change the text."))
	document.body.appendChild(p2)
	'
	Dim btn As JSElement = document.createElement("BUTTON")
	btn.appendChild(document.createTextNode("Change Demo Text"))
	btn.addEventListener(Me, "click", "changedemo", False)
	document.body.appendChild(btn)
	'
	Dim p3 As JSElement = document.createElement("P")
	p3.id = "demo"
	p3.appendChild(document.createTextNode("This is a demo!"))
	document.body.appendChild(p3)
	
	Dim a1 As JSElement = document.createElement("A")
	a1.ID = "a1"
	a1.setAttribute("href", "https://www.w3schools.com/")
	a1.appendChild(document.createTextNode("WWW3School - Press Alt + W"))
	document.body.appendChild(a1)
	'set access key
	document.getElementById("a1").accessKey = "w"
	
	'create a list with 2 items
	Dim ul As JSElement = document.createElement("UL")
	ul.ID = "myList"
	Dim li1 As JSElement = document.createElement("LI").appendChild(document.createTextNode("Coffee"))
	Dim li2 As JSElement = document.createElement("LI").appendChild(document.createTextNode("Tea"))
	ul.appendChild(li1)
	ul.appendChild(li2)
	document.body.appendChild(ul)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Click below to append to the list"$))
	document.body.appendChild(tt)
	
	Dim btnA As JSElement = document.createElement("BUTTON")
	btnA.appendChild(document.createTextNode("Append List"))
	btnA.addEventListener(Me, "click", "addlistitem", False)
	document.body.appendChild(btnA)
	
	Dim btnA As JSElement = document.createElement("BUTTON")
	btnA.appendChild(document.createTextNode("Prepend List"))
	btnA.addEventListener(Me, "click", "prependlist", False)
	document.body.appendChild(btnA)
	'
	Dim btnA As JSElement = document.createElement("BUTTON")
	btnA.appendChild(document.createTextNode("Replace Child"))
	btnA.addEventListener(Me, "click", "replaceachild", False)
	document.body.appendChild(btnA)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Click below to get the first child"$))
	document.body.appendChild(tt)
	
	Dim btnFC As JSElement = document.createElement("BUTTON")
	btnFC.appendChild(document.createTextNode("First Child"))
	btnFC.addEventListener(Me, "click", "getfirstchild", False)
	document.body.appendChild(btnFC)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"We will set focus and loose focus"$))
	document.body.appendChild(tt)
	
	Dim ix As JSElement = document.createElement("INPUT")
	ix.setAttribute("type", "text")
	ix.ID = "mytext"
	ix.value = "A text field"
	document.body.appendChild(ix)
	
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Click to set focus"$))
	document.body.appendChild(tt)
	' get focus
	Dim b1 As JSElement = document.createElement("BUTTON")
	b1.setAttribute("type", "button")
	b1.appendChild(document.createTextNode("Get focus"))
	b1.addEventListener(Me, "click", "getfocus", False)
	document.body.appendChild(b1)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Click to loose focus"$))
	document.body.appendChild(tt)
	' blur
	Dim b2 As JSElement = document.createElement("BUTTON")
	b2.setAttribute("type", "button")
	b2.appendChild(document.createTextNode("Loose focus"))
	b2.addEventListener(Me, "click", "loosefocus", False)
	document.body.appendChild(b2)
	'
	'inserts
	Dim h As JSElement = document.createElement("H2")
	h.appendChild(document.createTextNode("My Header"))
	h.ID = "myh2"
	document.body.appendChild(h)
	
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Will insert text after-end"$))
	document.body.appendChild(tt)
	'
	Dim c As JSElement = document.createElement("button")
	c.appendChild(document.createTextNode("Insert After-End"))
	c.addEventListener(Me, "click", "insertafterend", False)
	document.body.appendChild(c)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Will insert text after-begin"$))
	document.body.appendChild(tt)
	
	Dim c As JSElement = document.createElement("button")
	c.appendChild(document.createTextNode("Insert After-Begin"))
	c.addEventListener(Me, "click", "insertafterbegin", False)
	document.body.appendChild(c)
	
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Will insert text before-begin"$))
	document.body.appendChild(tt)
	
	Dim c As JSElement = document.createElement("button")
	c.appendChild(document.createTextNode("Insert Before-Begin"))
	c.addEventListener(Me, "click", "insertbeforebegin", False)
	document.body.appendChild(c)
	
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Will insert text before-end"$))
	document.body.appendChild(tt)
	
	Dim c As JSElement = document.createElement("button")
	c.appendChild(document.createTextNode("Insert Before-End"))
	c.addEventListener(Me, "click", "insertbeforeend", False)
	document.body.appendChild(c)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Full Screen Video"$))
	document.body.appendChild(tt)
	'
	Dim c As JSElement = document.createElement("button")
	c.appendChild(document.createTextNode("Press to play full screen video"))
	c.addEventListener(Me, "click", "playfullscreen", False)
	document.body.appendChild(c)
	'
	Dim tt As JSElement = document.createElement("P")
	tt.AppendChild(document.createTextNode($"Press Esc key to exit full screen"$))
	document.body.appendChild(tt)
	'
	Dim v As JSElement = document.createElement("VIDEO").setAttribute("width", "500px").setAttribute("controls", "controls")
	v.ID = "myvideo"
	'
	Dim mp4 As JSElement = document.createElement("SOURCE").setAttribute("src", "https://www.w3schools.com/jsref/rain.mp4").setAttribute("type", "video/mp4")
	Dim ogg As JSElement = document.createElement("SOURCE").setAttribute("src", "https://www.w3schools.com/jsref/rain.ogg").setAttribute("type", "video/ogg")
	
	v.appendChild(mp4)
	v.appendChild(ogg)
	document.body.appendChild(v)
	
End Sub

Sub playfullscreen(e As BANanoEvent)
	Dim elem As JSElement = document.getElementById("myvideo")
	If elem.requestFullscreenB Then
		elem.requestFullscreen
	else if elem.mozRequestFullScreenB Then
		elem.mozRequestFullScreen
	else if elem.webkitRequestFullscreenB Then
		elem.webkitRequestFullscreen
	else if elem.msRequestFullscreenB Then
		elem.msRequestFullscreen
	End If	
End Sub

Sub replaceachild(e As BANanoEvent)
	'create a new text node
	Dim textNode As JSElement = document.createTextNode("Anele Mbanga (Mashy)")
	'get the list
	Dim myList As JSElement = document.getElementById("mylist")
	'get the child nodes
	Dim childNodes As List = myList.childNodes
	'get the first item
	Dim item As JSElement = document.ToJSElement(childNodes.Get(0))
	'get the text node of the first child
	Dim textNodeOL As JSElement = document.ToJSElement(item.childNodes.Get(0))
	'replace text nodes
	item.replaceChild(textNode, textNodeOL)
End Sub

Sub insertbeforeend(e As BANanoEvent)
	document.getElementById("myh2").insertAdjacentHTML(document.POS_BEFORE_END,  $"<span style='color:red'>Before End</span>"$)
End Sub

Sub insertbeforebegin(e As BANanoEvent)
	document.getElementById("myh2").insertAdjacentHTML(document.POS_BEFORE_BEGIN,  $"<span style='color:red'>Before Begin</span>"$)
End Sub

Sub insertafterbegin(e As BANanoEvent)
	document.getElementById("myh2").insertAdjacentHTML(document.POS_AFTER_BEGIN,  $"<span style='color:red'>After Begin</span>"$)
End Sub

Sub insertafterend(e As BANanoEvent)
	document.getElementById("myh2").insertAdjacentHTML(document.POS_AFTER_END,  $"<p style='color:red'>After End</p>"$)
End Sub

Sub getfocus(e As BANanoEvent)
	document.getElementById("mytext").focus 	
End Sub	

Sub loosefocus(e As BANanoEvent)
	document.getElementById("mytext").blur
End Sub


Sub getfirstchild(e As BANanoEvent)
	Dim fc As JSElement = document.getElementById("mylist").firstchild
	BANano.Alert(fc.innerHTML) 
End Sub

Sub prependlist(e As BANanoEvent)
	Dim node As JSElement = document.createElement("LI").appendChild(document.createTextNode("Prepend Item"))
	'get the existing list
	Dim exlist As JSElement = document.getElementById("myList")
	'get the first item on the list
	Dim fi As JSElement = document.ToJSElement(exlist.childNodes.Get(0))
	'insert to list
	exlist.insertBefore(node, fi)
End Sub

Sub addlistitem(e As BANanoEvent)
	Dim node As JSElement = document.createElement("LI")
	Dim textnode As JSElement = document.createTextNode("Water")
	node.appendChild(textnode)
	document.getElementById("myList").appendChild(node)
End Sub

Sub changetitle(e As BANanoEvent)
	document.title = "Anele Mbanga (Mashy)"
	document.getElementById("doctitle").innerHTML = document.title
End Sub

Sub changedemo(e As BANanoEvent)
	document.getElementById("demo").innerHTML = "Hello Mashy!"
End Sub

Sub lovely(e As BANanoEvent)
	'If (event.keyCode == 16) {
	'// Execute command If user presses the SHIFT button:
	'document.execCommand("bold");}
	
  	'we have pressed shift
	If e.KeyCode = 16 Then
		document.execCommand("bold")
	End If
End Sub
