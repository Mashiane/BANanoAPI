B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private banano As BANano
	Private fruits As JSArray
	Private text As String
End Sub


Sub Init
	Dim a1 As JSArray
	a1.Initialize(Array As String("Anele", "Mbanga", "(Mashy)"))
	Log("a1 size: " & a1.length1)
	text = "<ul>"
	a1.foreach(Me, "buildlist")
	text = text & "</ul>"
	Log(text)
	Log(a1.items)
	
	Dim hege As JSArray
	hege.Initialize(Array As String("Cecilie", "Lone"))
	'Log("hege: " & hege.Items)
	'
	Dim stale As JSArray
	stale.Initialize(Array As String("Emil", "Tobias", "Linus"))
	'Log("stale: " & stale.Items)
	'
	Dim child1 As JSArray = hege.concat(stale)
	Log("concat: " & child1.items)
	
	'
	Dim kai As JSArray
	kai.Initialize(Array("Robin"))
	
	
	'every
	Dim ages As JSArray
	ages.Initialize(Array As Int(32, 33, 16, 40))
	
	'check if all items are >= 18
	Dim sout As Boolean = ages.every(Me, "checkadult")
	Log("every: " & sout)
	
	'return all items >= 18
	Dim xout As JSArray = ages.filter(Me, "checkadult")
	Log("filter: " & xout.items)
	
	'tostring
	Log(a1.tostring)
	'join
	Log(a1.join(" * "))
	'pop
	Log(a1.pop)
	Log(a1.shift)
	a1.unshift("1")
	a1.unshift("2")
	a1.unshift("3")
	Log(a1.items)
	
	'remove elements from
	Dim fruits As JSArray
	fruits.Initialize(Array As String("Banana", "Orange", "Apple", "Mango"))
	fruits.splice(2,1)
	Log(fruits.items)
	
	'copy array from
	Dim fruits1 As JSArray
	fruits1.Initialize(Array As String("Banana", "Orange", "Lemon", "Apple", "Mango"))
	Dim citrus As JSArray = fruits1.slice(2, Null)
	Log(citrus.items)
	
	'
	'the map method
	Dim numbers1 As JSArray
	numbers1.Initialize(Array As Int(45, 4, 9, 16, 25))
	Dim numbers2 As JSArray = numbers1.map(Me, "myFunction")
	Log(numbers2.items)
	
	Dim numbersx As JSArray
	numbersx.Initialize(Array As Int(45, 4, 9, 16, 25))
	Dim sumx As Int  = numbersx.reduce(Me, "sumThem", 100)
	Log(sumx)
End Sub

Sub sumThem(total As Int, value As Int, index As Int, arr As Object) As Object
	total = banano.parseInt(total)
	value = banano.parseInt(value)
	total = total + value
	Return total
End Sub

Sub myFunction(value As Object, index As Int, arr As Object) As Int
	value = banano.parseInt(value)
	Return value * 2
End Sub'


Sub checkadult(age As Int) As Boolean
	age = banano.parseint(age)
	Return age >= 18
End Sub

Sub buildlist(value As Object)
	text = text & "<li>" & value & "</li>"
End Sub
