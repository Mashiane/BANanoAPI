B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private objMath As BANanoObject
	Private BANano As BANano  'ignore
End Sub

Public Sub Initialize() As JSMath
	objMath.Initialize("Math") 
	Return Me	
End Sub


'sqrt - square root
Sub sqrt1(value As Int) As Int
	value = BANano.parseint(value)
	Return objMath.runmethod("sqrt", Array(value)).result
End Sub

'get pi
Sub PI() As Double
	Return objMath.GetField("PI").result
End Sub

'get abs
Sub abs1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("abs", Array(value)).Result
End Sub

'get log
Sub log1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("log", Array(value)).Result
End Sub

'get sign
Sub sign1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("sign", Array(value)).Result
End Sub

'get log2
Sub log2(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("log2", Array(value)).Result
End Sub


'get log1p
Sub log1p(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("log1p", Array(value)).Result
End Sub

'get clz32
Sub clz32(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("clz32", Array(value)).Result
End Sub

'round
Sub round1(value As Double) As Int
	value = BANano.parseFloat(value)
	Return objMath.runmethod("round", Array(value)).Result
End Sub

'pow
Sub pow1(x As Long, y As Long) As Long
	x = BANano.parseint(x)
	y = BANano.parseInt(y)
	Return objMath.runmethod("pow", Array(x, y)).Result
End Sub

'ceil
Sub ceil1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("ceil", Array(value)).Result
End Sub

'floor
Sub floor1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("floor", Array(value)).Result
End Sub

'sin
Sub sin1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("sin", Array(value)).Result
End Sub

'trunc
Sub trunc1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("trunc", Array(value)).Result
End Sub

'sinh
Sub sinh1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("sinh", Array(value)).Result
End Sub

'tan
Sub tan1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("tan", Array(value)).Result
End Sub

'tanh
Sub tanh1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("tanh", Array(value)).Result
End Sub

'asin
Sub asin1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("asin", Array(value)).Result
End Sub

'atan
Sub atan1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("atan", Array(value)).Result
End Sub

'atanh
Sub atanh1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("atanh", Array(value)).Result
End Sub

'cbrt
Sub cbrt1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("cbrt", Array(value)).Result
End Sub

'atan2
Sub atan2yx(y As Double, x As Double) As Double
	y = BANano.parsefloat(y)
	x = BANano.parsefloat(x)
	Return objMath.runmethod("atan2", Array(y,x)).Result
End Sub

'asinh
Sub asinh1(value As Double) As Double
	value = BANano.parsefloat(value)
	Return objMath.runmethod("asinh", Array(value)).Result
End Sub

'cos
Sub cos1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("cos", Array(value)).Result
End Sub

'cosh
Sub cosh1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("cosh", Array(value)).Result
End Sub

'acos
Sub acos1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("acos", Array(value)).Result
End Sub

'acosh
Sub acosh1(value As Double) As Double
	value = BANano.parseFloat(value)
	Return objMath.runmethod("acosh", Array(value)).Result
End Sub


'min
Sub min1(args As List) As Double
	Dim rslt As Double = objMath.GetFunction("min").RunMethod("apply", Array(objMath, args)).Result
	Return rslt
End Sub

'max
Sub max1(args As List) As Double
	Dim rslt As Double = objMath.GetFunction("min").RunMethod("apply", Array(objMath, args)).Result
	Return rslt
End Sub

'random
Sub random1() As Double
	Return objMath.RunMethod("random", Null).Result
End Sub

'constant E
Sub E() As Double
	Return objMath.GetField("E").result
End Sub

'constant SQRT2
Sub SQRT2() As Double
	Return objMath.GetField("SQRT2").result
End Sub

'constant SQRT1_2
Sub SQRT1_2() As Double
	Return objMath.GetField("SQRT1_2").result
End Sub

'constant LN2
Sub LN2() As Double
	Return objMath.GetField("LN2").result
End Sub

'constant LN10
Sub LN10() As Double
	Return objMath.GetField("LN10").result
End Sub


'constant LOG2E
Sub LOG2E() As Double
	Return objMath.GetField("LOG2E").result
End Sub

'constant LOG10E
Sub LOG10E() As Double
	Return objMath.GetField("LOG10E").result
End Sub