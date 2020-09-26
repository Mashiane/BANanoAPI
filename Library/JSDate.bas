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
	Private Dat As BANanoObject
	Private monthnam As List
	Private daynam As List
End Sub

Public Sub Initialize(dt As Object) As JSDate
	If BANano.IsNull(dt) Then
		obj.Initialize2("Date", Null)
	Else
		obj.Initialize2("Date", dt)
	End If
	Dat.Initialize("Date")
	monthnam.Initialize 
	monthnam.AddAll(Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))
	daynam.Initialize 
	daynam.AddAll(Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))
	Return Me
End Sub

Public Sub Initialize3(yyyy As Int, mm As Int, dd As Int) As JSDate
	obj.Initialize2("Date", Array(yyyy,mm, dd))
	Return Me
End Sub

'getTimezoneOffset
Sub getTimezoneOffset As Int
	Return obj.RunMethod("getTimezoneOffset", Null).result
End Sub

'return the object
Sub This As BANanoObject
	Return obj
End Sub

'valueOf
Sub valueOf As Int
	Return obj.RunMethod("valueOf", Null).result
End Sub

'toTimeString
Sub toTimeString As String
	Return obj.RunMethod("toTimeString", Null).result
End Sub

'parse
Sub parse(dt As String) As Long
	Return Dat.RunMethod("parse", Array(dt)).result
End Sub

' get time
Sub getTime() As Long
	Return obj.RunMethod("getTime", Null).result
End Sub

'toString
Sub toString As String
	Return obj.RunMethod("toString", Null).result
End Sub

'toUTCString
Sub toUTCString As String
	Return obj.RunMethod("toUTCString", Null).Result
End Sub

'toDateString
Sub toDateString As String
	Return obj.RunMethod("toDateString", Null).Result
End Sub

'toISOString
Sub toISOString As String
	Return obj.RunMethod("toISOString", Null).Result
End Sub

'getFullYear
Sub getFullYear As Int
	Return obj.RunMethod("getFullYear", Null).result
End Sub

'getMonth
Sub getMonth As Int
	Return obj.runmethod("getMonth", Null).result
End Sub

'getMonthName
Sub getMonthName As String
	Dim im As Int = getMonth
	Return monthnam.Get(im)
End Sub

'getDayName
Sub getDayName As String
	Dim im As Int = getDay
	Return daynam.Get(im)
End Sub


'getDate
Sub getDate As Int
	Return obj.RunMethod("getDate", Null).result
End Sub

'getHours
Sub getHours As Int
	Return obj.RunMethod("getHours", Null).result
End Sub

'getMinutes
Sub getMinutes As Int
	Return obj.RunMethod("getMinutes", Null).result
End Sub

'getSeconds
Sub getSeconds As Int
	Return obj.RunMethod("getSeconds", Null).result
End Sub

'getMilliseconds
Sub getMilliseconds As Int
	Return obj.RunMethod("getMilliseconds", Null).result
End Sub

'getDay()	
Sub getDay() As Int
	Return obj.RunMethod("getDay", Null).result
End Sub

'getUTCDate
Sub getUTCDate() As Int
	Return obj.RunMethod("getUTCDate", Null).result
End Sub

'getUTCDay
Sub getUTCDay() As Int
	Return obj.RunMethod("getUTCDay", Null).result
End Sub

'getUTCFullYear
Sub getUTCFullYear() As Int
	Return obj.RunMethod("getUTCFullYear", Null).result
End Sub

'getUTCHours
Sub getUTCHours() As Int
	Return obj.RunMethod("getUTCHours", Null).result
End Sub

'getUTCMilliseconds
Sub getUTCMilliseconds() As Int
	Return obj.RunMethod("getUTCMilliseconds", Null).result
End Sub

'getUTCMinutes
Sub getUTCMinutes() As Int
	Return obj.RunMethod("getUTCMinutes", Null).result
End Sub

'getUTCMonth
Sub getUTCMonth() As Int
	Return obj.RunMethod("getUTCMonth", Null).result
End Sub

'getUTCSeconds
Sub getUTCSeconds() As Int
	Return obj.RunMethod("getUTCSeconds", Null).result
End Sub

'setDate
Sub setDate(dt As Int) As JSDate
	obj.RunMethod("setDate", Array(dt))
	Return Me
End Sub

Sub setFullYear(yyyy As Int, mm As Int, dd As Int) As JSDate
	yyyy = BANano.parseInt(yyyy)
	mm = BANano.parseInt(mm)
	dd = BANano.parseInt(dd)
	obj.RunMethod("setFullYear", Array(yyyy, mm, dd))
	Return Me
End Sub

Sub setHours(dt As Int) As JSDate
	obj.RunMethod("setHours", Array(dt))
	Return Me
End Sub

Sub setMilliseconds(dt As Int) As JSDate
	obj.RunMethod("setMilliseconds", Array(dt))
	Return Me
End Sub

Sub setMinutes(dt As Int) As JSDate
	obj.RunMethod("setMinutes", Array(dt))
	Return Me
End Sub

Sub setMonth(dt As Int) As JSDate
	obj.RunMethod("setMonth", Array(dt))
	Return Me
End Sub

Sub setSeconds(dt As Int) As JSDate
	obj.RunMethod("setSeconds", Array(dt))
	Return Me
End Sub

Sub setTime(dt As Int) As JSDate
	obj.RunMethod("setTime", Array(dt))
	Return Me
End Sub

'daysBetween
Sub daysBetween(date1 As String, date2 As String ) As Int
  'Get 1 day in milliseconds
  Dim one_day As Long = 1000 * 60 * 60 * 24

  'Convert both dates To milliseconds
  Dim dt1 As JSDate
  dt1.Initialize(date1)
  
  Dim dt2 As JSDate
  dt2.Initialize(date2)
  
  Dim date1_ms As Long = dt1.getTime
  Dim date2_ms As Long = dt2.getTime

  'Calculate the difference in milliseconds
  Dim difference_ms As Long = date2_ms - date1_ms
    
  'Convert back To days And Return
  Return Round(difference_ms / one_day) 
End Sub

'toYYYYMMDD
Sub toDate As String
	Dim dd As Int = getDate
	Dim mm As Int = getMonth
	Dim yyyy As Int = getFullYear
	
	yyyy = BANano.parseInt(yyyy)
	dd = BANano.parseInt(dd)
	mm = BANano.parseInt(mm) + 1
  	
	Dim sdd As String = "" & dd
	If dd < 10 Then sdd = "0" & sdd
	'
	Dim smm As String = "" & mm
	If mm < 10 Then smm = "0" &  smm
    '
	Dim stoday As String = $"${yyyy}-${smm}-${sdd}"$
	Return stoday
End Sub

'toLocaleString
Sub toLocaleString As String
	Return obj.RunMethod("toLocaleString", Null).result
End Sub

'toLocaleTimeString
Sub toLocaleTimeString As String
	Return obj.RunMethod("toLocaleTimeString", Null).Result
End Sub

'toLocaleDateString
Sub toLocaleDateString As String
	Return obj.RunMethod("toLocaleDateString", Null).result
End Sub

'toDateTime
Sub toDateTime As String
	Dim dd As Int = getDate
	Dim mm As Int = getMonth
	Dim hh As Int = getHours
	Dim mim As Int = getMinutes
	Dim yyyy As Int = getFullYear
	
	yyyy = BANano.parseInt(yyyy)
	mim = BANano.parseInt(mim)
	hh = BANano.parseInt(hh)
	dd = BANano.parseInt(dd)
	mm = BANano.parseInt(mm) + 1
  	
	Dim sdd As String = "" & dd
	If dd < 10 Then sdd = "0" & sdd
	'
	Dim smm As String = "" & mm
	If mm < 10 Then smm = "0" &  smm
    '
	Dim shh As String = "" & hh
	If hh < 10 Then shh = "0" & shh
	'
	Dim smim As String = "" & mim
	If mim < 10 Then smim = "0" & smim
	
	Dim stoday As String = $"${yyyy}-${smm}-${sdd} ${shh}:${smim}"$
	Return stoday
End Sub

'now
Sub now As Long
	Dim n As Long = Dat.RunMethod("now", Null).Result
	Return n
End Sub

'
''dateDiff
''datepart: 'y', 'm', 'w', 'd', 'h', 'n', 's'
'Sub dateDiff(datePart As String, date1 As String, date2 As String) As Int
'	datePart = datePart.ToLowerCase
'  	Dim dt1 As JSDate
'	dt1.Initialize(date1)
'	Dim dt2 As JSDate
'	dt2.Initialize(date2)
'	'
'  	Dim diff As Long = dt1.getTime - dt2.getTime
'	Dim divideBy As Map = CreateMap("w":604800000, "d":86400000, "h":3600000, "n":60000, "s":1000)
'	Dim divA As Int = divideBy.get(datePart)
'	Return Floor( diff / divA)
'End Sub
'
'Sub dateAdd(datePart As String, n As Int) As JSDate
'	datePart = datePart.ToLowerCase
'	Select Case datePart
'	Case "y"
'		Dim cy As Int = getFullYear
'		cy = cy + n
'		setFullYear(cy, 0, 0)
'	Case "m"
'		Dim cm As Int = getMonth
'		cm = cm + n
'		setMonth(cm + 1)
'	Case "d"
'		Dim cd As Int = getDate
'		cd = cd + n
'		setDate(cd)
'	Case "h"
'		Dim ch As Int = getHours
'		ch = ch + n
'		setHours(ch)
'	Case "n"
'		Dim cn As Int = getMinutes
'		cn = cn + n
'		setMinutes(cn)
'	Case "s"
'		Dim cs As Int = getSeconds
'		cs = cs + n	
'		setSeconds(cs)
'	End Select
'	Return Me
'End Sub