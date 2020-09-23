B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private document As JSDocument
	Private math As JSMath
	Private BANano As BANano
	Private window As JSWindow
End Sub

Sub Init
	'initialize the window
	window.Initialize
	'get the document
	document = window.document
	math.Initialize
	
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "PI : " & math.PI
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "clz32(10) : " & math.clz32(10)
	document.body.appendChild(p)
	
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "round(4.7) : " & math.round1(4.7)
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "pow(8, 2) : " & math.pow1(8, 2)
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "sqrt(64) : " & math.sqrt1(64)
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "abs(-4.7) : " & math.abs1(-4.7)
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "ceil(4.4) : " & math.ceil1(4.4)
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "floor(4.4) : " & math.floor1(4.4)
	document.body.appendChild(p)
	'
	Dim dbl As Double = (90 * math.PI) / 180
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "sin((90 * PI) / 180) : " & math.sin1(dbl)
	document.body.appendChild(p)
	'
	Dim dbl1 As Double = (0 * math.PI) / 180
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "cos((0 * PI) / 180) : " & math.cos1(dbl1)
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "random : " & math.random1
	document.body.appendChild(p)
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = "min(1,2,3,4,5) : " & math.min1(Array As Int(1, 2, 3, 4, 5))
	document.body.appendChild(p)
	
	'
	Dim p As JSElement = document.createElement("P")
	p.innerHTML = $"<p><b>Math.E:</b> ${math.E}</p>
<p><b>Math.PI:</b> ${math.PI}</p>
<p><b>Math.SQRT2:</b> ${math.SQRT2}</p>
<p><b>Math.SQRT1_2:</b> ${math.SQRT1_2}</p>
<p><b>Math.LN2:</b> ${math.LN2}</p>
<p><b>Math.LN10:</b> ${math.LN10}</p>
<p><b>Math.LOG2E:</b> ${math.LOG2E}</p>
<p><b>Math.Log10E:</b> ${math.LOG10E}</p>"$
	document.body.appendChild(p)
	
	
End Sub
