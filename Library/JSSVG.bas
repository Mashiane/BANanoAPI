B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
Sub Class_Globals
	Public SVG As JSElement
	Private document As JSDocument
End Sub

Public Sub Initialize(doc As JSDocument, eid As String) As JSSVG
	document = doc
	SVG = doc.createElement("SVG")
	SVG.id = eid
	SVG.setAttribute("xmlns", "http:/www.w3.org/2000/svg")	
	Return Me
End Sub

'circle
Sub circle(id As String, r As Int, cx As Int, cy As Int) As JSSVG
	Dim c As JSElement = document.createElement("CIRCLE")
	c.SetField("r", r)
	c.SetField("cx", cx)
	c.SetField("cy", cy)
	c.id = id
	SVG.appendChild(c)
	Return Me
End Sub

'rect
Sub rect(id As String, x As Int, y As Int, width As Int, height As Int) As JSSVG
	Dim r As JSElement = document.createElement("RECT")
	r.setfield("x", x)
	r.SetField("y", y)
	r.SetField("width", width)
	r.SetField("height", height)
	r.id = id
	SVG.appendChild(r)
	Return Me
End Sub