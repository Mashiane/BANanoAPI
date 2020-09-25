B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
'Custom BANano View class
#Event: Click (e As BANanoEvent)
#Event: DblClick (e As BANanoEvent)
#Event: MouseMove (e As BANanoEvent)
#Event: KeyUp (e As BANanoEvent)
#Event: KeyPress (e As BANanoEvent)

#DesignerProperty: Key: TagName, DisplayName: TagName, FieldType: String, DefaultValue: div, Description: tag of the element
#DesignerProperty: Key: innerHTML, DisplayName: innerHTML, FieldType: String, DefaultValue: , Description: Text on the element
#DesignerProperty: Key: Value, DisplayName: Value, FieldType: String, DefaultValue: , Description: Text on the element
#DesignerProperty: Key: InputType, DisplayName: InputType, FieldType: String, DefaultValue: , Description: Text on the element
#DesignerProperty: Key: Name, DisplayName: Name, FieldType: String, DefaultValue: , Description: Text on the element
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
#DesignerProperty: Key: Attributes, DisplayName: Attributes, FieldType: String, DefaultValue: , Description: Attributes added to the HTML tag. Must be a json String.
#DesignerProperty: Key: LoremIpsum, DisplayName: LoremIpsum, FieldType: Boolean, DefaultValue: False, Description: Lorem ipsum.
#DesignerProperty: Key: Margin, DisplayName: Margin, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginBottom, DisplayName: MarginBottom, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginLeft, DisplayName: MarginLeft, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginRight, DisplayName: MarginRight, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: MarginTop, DisplayName: MarginTop, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: Padding, DisplayName: Padding, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingBottom, DisplayName: PaddingBottom, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingLeft, DisplayName: PaddingLeft, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingRight, DisplayName: PaddingRight, FieldType: String, DefaultValue:  , Description: 
#DesignerProperty: Key: PaddingTop, DisplayName: PaddingTop, FieldType: String, DefaultValue:  , Description: 

Sub Class_Globals
	Private BANano As BANano 'ignore
	Private mID As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	Private mClasses As String = ""
	Private mStyle As String = ""
	Private mAttributes As String = ""
	Private minnerHTML As String = ""
	Private classList As Map
	Private styleList As Map
	Private attributeList As Map
	Private mTagName As String = "div"
	Private sbText As StringBuilder
	Private stMarginBottom As String = ""
	Private stMarginLeft As String = ""
	Private stMarginRight As String = ""
	Private stMarginTop As String = ""
	Private stMargin As String = ""
	Private stPadding As String = ""
	Private stPaddingBottom As String = ""
	Private stPaddingLeft As String = ""
	Private stPaddingRight As String = ""
	Private stPaddingTop As String = ""
	Private bLoremIpsum As Boolean = False
	Private mValue As String = ""
	Private stName As String = ""
	Private stInputType As String = ""
End Sub

'initialize the custom view
Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	mID = Name
	mEventName = EventName
	mCallBack = CallBack
	classList.Initialize
	styleList.Initialize
	attributeList.Initialize
	sbText.Initialize
End Sub

'Create view in the designer
Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	mTarget = Target
	If Props <> Null Then
		bLoremIpsum = Props.Get("LoremIpsum")
		mClasses = Props.Get("Classes")
		mAttributes = Props.Get("Attributes")
		mStyle = Props.Get("Style")
		mTagName = Props.Get("TagName")
		stMargin = Props.Get("Margin")
		stMarginBottom = Props.Get("MarginBottom")
		stMarginLeft = Props.Get("MarginLeft")
		stMarginRight = Props.Get("MarginRight")
		stMarginTop = Props.Get("MarginTop")
		stPadding = Props.Get("Padding")
		stPaddingBottom = Props.Get("PaddingBottom")
		stPaddingLeft = Props.Get("PaddingLeft")
		stPaddingRight = Props.Get("PaddingRight")
		stPaddingTop = Props.Get("PaddingTop")
		minnerHTML = Props.Get("innerHTML")
		mValue = Props.Get("Value")
		stName = Props.Get("Name")
		stInputType = Props.Get("InputType")
	End If

	AddAttr("type", stInputType)
	AddAttr("name", stName)
	AddAttr("value", mValue)
	addStyle("margin", stMargin)
	addStyle("margin-bottom", stMarginBottom)
	addStyle("margin-left", stMarginLeft)
	addStyle("margin-right", stMarginRight)
	addStyle("margin-top", stMarginTop)
	addStyle("padding", stPadding)
	addStyle("padding-bottom", stPaddingBottom)
	addStyle("padding-left", stPaddingLeft)
	addStyle("padding-right", stPaddingRight)
	addStyle("padding-top", stPaddingTop)
	addClass(mClasses)
	setAttributes(mAttributes)
	setStyles(mStyle)
	
	'build and get the element
	Dim strHTML As String = ToString
	mElement = mTarget.Append(strHTML).Get("#" & mID)
End Sub

'return the generated html
Sub ToString As String
	If bLoremIpsum Then
		minnerHTML = BANanoShared.LoremIpsum(1)
	End If
	'build the 'class' attribute
	Dim className As String = BANanoShared.JoinMapKeys(classList, " ")
	AddAttr("class", className)
	'build the 'style' attribute
	Dim styleName As String = BANanoShared.BuildStyle(styleList)
	AddAttr("style", styleName)
	'build element internal structure
	Dim iStructure As String = BANanoShared.BuildAttributes(attributeList)
	iStructure = iStructure.trim
	Dim rslt As String = $"<${mTagName} id="${mID}" ${iStructure}>${minnerHTML}${sbText.ToString}</${mTagName}>"$
	Return rslt
End Sub

'add a break
Sub AddBR
	sbText.Append("<br>")
End Sub

'add a horizontal rule
Sub AddHR
	sbText.Append("<hr>")
End Sub

'add an element to the text
Sub AddElement(elID As String, tag As String, props As Map, styleProps As Map, classNames As List, loose As List, Text As String)
	elID = elID.Replace("#","")
	Dim elIT As HTMLElement
	elIT.Initialize(mCallBack, elID, tag)
	elIT.SetText(Text)
	If loose <> Null Then
		For Each k As String In loose
			elIT.AddAttr(k, True)
		Next
	End If
	If props <> Null Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			elIT.AddAttr(k, v)
		Next
	End If
	If styleProps <> Null Then
		For Each k As String In styleProps.Keys
			Dim v As String = styleProps.Get(k)
			elIT.AddAttr(k, v)
		Next
	End If
	If classNames <> Null Then
		elIT.AddClasses(classNames)
	End If
	'convert to string
	Dim sElement As String = elIT.tostring
	sbText.Append(sElement)
End Sub

'returns the BANanoElement
public Sub getElement() As BANanoElement
	Return mElement
End Sub

'returns the tag id
public Sub getID() As String
	Return mID
End Sub

'add the element to the parent
public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID)
	DesignerCreateView(mTarget, Null)
End Sub

'remove the component
public Sub Remove()
	mElement.Remove
	BANano.SetMeToNull
End Sub

'trigger an event
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

'add a class
public Sub addClass(varClass As String)
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then mElement.AddClass(varClass)
	Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
	For Each mt As String In mxItems
		classList.put(mt, mt)
	Next
End Sub

Sub addClasses(listOfClasses As List)
	Dim strClass As String = BANanoShared.Join(" ", listOfClasses)
	addClass(strClass)
End Sub

'add a class on condition
public Sub addClassOnCondition(varClass As String, varCondition As Boolean, varShouldBe As Boolean)
	If BANano.IsUndefined(varCondition) Or BANano.IsNull(varCondition) Then Return
	If varShouldBe <> varCondition Then Return
	If BANano.IsUndefined(varClass) Or BANano.IsNull(varClass) Then Return
	If BANano.IsNumber(varClass) Then varClass = BANanoShared.CStr(varClass)
	varClass = varClass.trim
	If varClass = "" Then Return
	If mElement <> Null Then mElement.AddClass(varClass)
	Dim mxItems As List = BANanoShared.StrParse(" ", varClass)
	For Each mt As String In mxItems
		classList.put(mt, mt)
	Next
End Sub

'add a style
public Sub addStyle(varProp As String, varStyle As String)
	If BANano.IsUndefined(varStyle) Or BANano.IsNull(varStyle) Then Return
	If BANano.IsNumber(varStyle) Then varStyle = BANanoShared.CStr(varStyle)
	If mElement <> Null Then
		Dim aStyle As Map = CreateMap()
		aStyle.put(varProp, varStyle)
		Dim sStyle As String = BANano.ToJSON(aStyle)
		mElement.SetStyle(sStyle)
	End If
	styleList.put(varProp, varStyle)
End Sub

'change the text of the element
Sub SetText(varText As String)
	addChild(varText)
End Sub

'add an attribute
private Sub AddAttr(varProp As String, varValue As String) As HTMLElement
	If BANano.IsUndefined(varValue) Or BANano.IsNull(varValue) Then Return Me
	If BANano.IsNumber(varValue) Then varValue = BANanoShared.CStr(varValue)
	attributeList.put(varProp, varValue)
	If mElement <> Null Then mElement.SetAttr(varProp, varValue)
	Return Me
End Sub

'returns the class names
Public Sub getClasses() As String
	Dim sbClass As StringBuilder
	sbClass.Initialize
	For Each k As String In classList.Keys
		sbClass.Append(k).Append(" ")
	Next
	mClasses = sbClass.ToString
	Return mClasses
End Sub

'set the style use a valid JSON string with {}
public Sub setStyle(varStyle As String)
	If mElement <> Null Then
		mElement.SetStyle(varStyle)
	End If
	Dim mres As Map = BANano.FromJSON(varStyle)
	For Each k As String In mres.Keys
		Dim v As String = mres.Get(k)
		styleList.put(k, v)
	Next
End Sub

'returns the style as JSON
public Sub getStyle() As String
	Dim sbStyle As StringBuilder
	sbStyle.Initialize
	sbStyle.Append("{")
	For Each k As String In styleList.Keys
		Dim v As String = styleList.Get(k)
		sbStyle.Append(k).Append(":").Append(v).Append(",")
	Next
	sbStyle.Append("}")
	mStyle = sbStyle.ToString
	Return mStyle
End Sub

'sets the attributes
public Sub setAttributes(varAttributes As String)
	If varAttributes.IndexOf(",") >= 0 Then varAttributes = varAttributes.Replace(",",";")
	Dim mxItems As List = BANanoShared.StrParse(";", varAttributes)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,"=")
		Dim v As String = BANanoShared.MvField(mt,2,"=")
		If mElement <> Null Then mElement.SetAttr(k, v)
		attributeList.put(k, v)
	Next
End Sub

'sets the styles from the designer
public Sub setStyles(varStyles As String)
	If varStyles.IndexOf(";") >= 0 Then varStyles = varStyles.Replace(";",",")
	Dim mxItems As List = BANanoShared.StrParse(",", varStyles)
	For Each mt As String In mxItems
		Dim k As String = BANanoShared.MvField(mt,1,":")
		Dim v As String = BANanoShared.MvField(mt,2,":")
		addStyle(k, v)
	Next
End Sub

'returns the attributes
public Sub getAttributes() As String
	Dim sbAttr As StringBuilder
	sbAttr.Initialize
	For Each k As String In attributeList.Keys
		Dim v As String = attributeList.Get(k)
		sbAttr.Append(k).Append("=").Append(v).Append(";")
	Next
	mAttributes = sbAttr.ToString
	Return mAttributes
End Sub

'sets the text
public Sub setinnerHTML(varCaption As String)
	If mElement <> Null Then
		mElement.SetHTML(BANano.SF(varCaption))
	End If
	minnerHTML = varCaption
End Sub

'returns the caption
public Sub getinnerHTML() As String
	Return minnerHTML
End Sub

public Sub setMargin(varMargin As String)
	addStyle("margin", varMargin)
	stMargin = varMargin
End Sub

public Sub getMargin() As String
	Return stMargin
End Sub

public Sub setMarginBottom(varMarginBottom As String)
	addStyle("margin-bottom", varMarginBottom)
	stMarginBottom = varMarginBottom
End Sub

public Sub getMarginBottom() As String
	Return stMarginBottom
End Sub

public Sub setMarginLeft(varMarginLeft As String)
	addStyle("margin-left", varMarginLeft)
	stMarginLeft = varMarginLeft
End Sub

public Sub getMarginLeft() As String
	Return stMarginLeft
End Sub

public Sub setMarginRight(varMarginRight As String)
	addStyle("margin-right", varMarginRight)
	stMarginRight = varMarginRight
End Sub

public Sub getMarginRight() As String
	Return stMarginRight
End Sub

public Sub setName(varName As String)
	AddAttr("name", varName)
	stName = varName
End Sub

public Sub getName() As String
	Return stName
End Sub

public Sub setValue(varName As String)
	AddAttr("value", varName)
	mValue = varName
End Sub

public Sub getValue() As String
	Return mValue
End Sub

public Sub setMarginTop(varMarginTop As String)
	addStyle("margin-top", varMarginTop)
	stMarginTop = varMarginTop
End Sub

public Sub getMarginTop() As String
	Return stMarginTop
End Sub

public Sub setPadding(varPadding As String)
	addStyle("padding", varPadding)
	stPadding = varPadding
End Sub

public Sub getPadding() As String
	Return stPadding
End Sub

public Sub setPaddingBottom(varPaddingBottom As String)
	addStyle("padding-bottom", varPaddingBottom)
	stPaddingBottom = varPaddingBottom
End Sub

public Sub getPaddingBottom() As String
	Return stPaddingBottom
End Sub

public Sub setPaddingLeft(varPaddingLeft As String)
	addStyle("padding-left", varPaddingLeft)
	stPaddingLeft = varPaddingLeft
End Sub

public Sub getPaddingLeft() As String
	Return stPaddingLeft
End Sub

public Sub setPaddingRight(varPaddingRight As String)
	addStyle("padding-right", varPaddingRight)
	stPaddingRight = varPaddingRight
End Sub

public Sub getPaddingRight() As String
	Return stPaddingRight
End Sub

public Sub setPaddingTop(varPaddingTop As String)
	addStyle("padding-top", varPaddingTop)
	stPaddingTop = varPaddingTop
End Sub

public Sub getPaddingTop() As String
	Return stPaddingTop
End Sub

public Sub setTagName(varTagName As String)
	mTagName = varTagName
End Sub

public Sub getTagName() As String
	Return mTagName
End Sub

'add a child component
Sub addChild(child As String)
	sbText.Append(child)
End Sub
