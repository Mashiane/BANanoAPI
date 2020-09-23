B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private Style As BANanoObject
End Sub

Public Sub Initialize(bo As BANanoObject) As JSStyle
	Style = bo
	Return Me
End Sub

'set display
Sub setdisplay(value As String) As JSStyle
	Style.SetField("display", value)
	Return Me
End Sub

'get display
Sub getdisplay() As String
	Return Style.GetField("display").result
End Sub


'set right
Sub setright(value As String) As JSStyle
	Style.SetField("right", value)
	Return Me
End Sub

'get right
Sub getright() As String
	Return Style.GetField("right").result
End Sub

'set bottom
Sub setbottom(value As String) As JSStyle
	Style.SetField("bottom", value)
	Return Me
End Sub

'get bottom
Sub getbottom() As String
	Return Style.GetField("bottom").result
End Sub

'set left
Sub setleft(value As String) As JSStyle
	Style.SetField("left", value)
	Return Me
End Sub

'get left
Sub getleft() As String
	Return Style.GetField("left").result
End Sub

'set top
Sub settop(value As String) As JSStyle
	Style.SetField("top", value)
	Return Me
End Sub

'get top
Sub gettop() As String
	Return Style.GetField("top").result
End Sub


'set background
Sub setbackground(value As String) As JSStyle
	Style.SetField("background", value)
	Return Me
End Sub

'get background
Sub getbackground() As String
	Return Style.GetField("background").result
End Sub

'set position
Sub setposition(value As String) As JSStyle
	Style.SetField("position", value)
	Return Me
End Sub

'get position
Sub getposition() As String
	Return Style.GetField("position").result
End Sub

'set other
Sub setOther(key As String, value As String) As JSStyle
	Style.SetField(key, value)
	Return Me
End Sub

'get other
Sub getOther(key As String) As String
	Return Style.GetField(key).result
End Sub

'get padding
Sub getpadding() As String
	Return Style.GetField("padding").result
End Sub

'set padding
Sub setpadding(value As String) As JSStyle
	Style.SetField("padding", value)
	Return Me
End Sub

'get margin
Sub getmargin() As String
	Return Style.GetField("margin").result
End Sub

'set margin
Sub setmargin(value As String) As JSStyle
	Style.SetField("margin", value)
	Return Me
End Sub

'set height
Sub setheight(value As String) As JSStyle
	Style.SetField("height", value)
	Return Me
End Sub

'get height
Sub getheight() As String
	Return Style.GetField("height").result
End Sub

'set width
Sub setwidth(value As String) As JSStyle
	Style.SetField("width", value)
	Return Me
End Sub

'set width
Sub getwidth() As String
	Return Style.GetField("width").result
End Sub

'set background-color
Sub setbackgroundColor(value As String) As JSStyle
	Style.SetField("backgroundColor", value)
	Return Me
End Sub

'get background-color
Sub getbackgroundColor() As String
	Return Style.GetField("backgroundColor").result
End Sub

'color 
Sub setcolor(value As String) As JSStyle
	Style.SetField("color", value)
	Return Me
End Sub

'get color 
Sub getcolor() As String
	Dim rslt As String = Style.GetField("color").Result
	Return rslt
End Sub

'set fontFamily
Sub setfontFamily(ff As String) As JSStyle
	Style.SetField("fontFamily", ff)
	Return Me
End Sub

'get font family
Sub getfontFamily() As String
	Dim rslt As String = Style.GetField("fontFamily").Result
	Return rslt
End Sub

'set fontSize
Sub setfontSize(fs As String) As JSStyle
	Style.SetField("fontSize", fs)
	Return Me
End Sub

'get fontSize
Sub getfontSize() As String
	Return Style.GetField("fontSize").Result
End Sub

'set visibility
Sub setvisibility(value As String) As JSStyle
	Style.SetField("visibility", value)
	Return Me
End Sub

'get visibility
Sub getvisibility() As String
	Return Style.GetField("visibility").Result
End Sub

'set alignContent
Sub setalignContent(value As String) As JSStyle
	Style.SetField("alignContent", value)
	Return Me
End Sub

'get alignContent
Sub getalignContent() As String
	Return Style.GetField("alignContent").Result
End Sub

'set alignItems
Sub setalignItems(value As String) As JSStyle
	Style.SetField("alignItems", value)
	Return Me
End Sub

'get alignItems
Sub getalignItems() As String
	Return Style.GetField("alignItems").Result
End Sub

'set alignSelf
Sub setalignSelf(value As String) As JSStyle
	Style.SetField("alignSelf", value)
	Return Me
End Sub

'get alignSelf
Sub getalignSelf() As String
	Return Style.GetField("alignSelf").Result
End Sub

'set animation
Sub setanimation(value As String) As JSStyle
	Style.SetField("animation", value)
	Return Me
End Sub

'get animation
Sub getanimation() As String
	Return Style.GetField("animation").Result
End Sub

'set animationDelay
Sub setanimationDelay(value As String) As JSStyle
	Style.SetField("animationDelay", value)
	Return Me
End Sub

'get animationDelay
Sub getanimationDelay() As String
	Return Style.GetField("animationDelay").Result
End Sub

'set animationDirection
Sub setanimationDirection(value As String) As JSStyle
	Style.SetField("animationDirection", value)
	Return Me
End Sub

'get animationDirection
Sub getanimationDirection() As String
	Return Style.GetField("animationDirection").Result
End Sub

'set animationDuration
Sub setanimationDuration(value As String) As JSStyle
	Style.SetField("animationDuration", value)
	Return Me
End Sub

'get animationDuration
Sub getanimationDuration() As String
	Return Style.GetField("animationDuration").Result
End Sub

'set animationFillMode
Sub setanimationFillMode(value As String) As JSStyle
	Style.SetField("animationFillMode", value)
	Return Me
End Sub

'get animationFillMode
Sub getanimationFillMode() As String
	Return Style.GetField("animationFillMode").Result
End Sub

'set animationIterationCount
Sub setanimationIterationCount(value As String) As JSStyle
	Style.SetField("animationIterationCount", value)
	Return Me
End Sub

'get animationIterationCount
Sub getanimationIterationCount() As String
	Return Style.GetField("animationIterationCount").Result
End Sub

'set animationName
Sub setanimationName(value As String) As JSStyle
	Style.SetField("animationName", value)
	Return Me
End Sub

'get animationName
Sub getanimationName() As String
	Return Style.GetField("animationName").Result
End Sub

'set animationTimingFunction
Sub setanimationTimingFunction(value As String) As JSStyle
	Style.SetField("animationTimingFunction", value)
	Return Me
End Sub

'get animationTimingFunction
Sub getanimationTimingFunction() As String
	Return Style.GetField("animationTimingFunction").Result
End Sub

'set animationPlayState
Sub setanimationPlayState(value As String) As JSStyle
	Style.SetField("animationPlayState", value)
	Return Me
End Sub

'get animationPlayState
Sub getanimationPlayState() As String
	Return Style.GetField("animationPlayState").Result
End Sub



'set backgroundAttachment
Sub setbackgroundAttachment(value As String) As JSStyle
Style.SetField("backgroundAttachment", value)
Return Me
End Sub

'get backgroundAttachment
Sub getbackgroundAttachment() As String
Return Style.GetField("backgroundAttachment").Result
End Sub



'set backgroundImage
Sub setbackgroundImage(value As String) As JSStyle
Style.SetField("backgroundImage", value)
Return Me
End Sub

'get backgroundImage
Sub getbackgroundImage() As String
Return Style.GetField("backgroundImage").Result
End Sub

'set backgroundPosition
Sub setbackgroundPosition(value As String) As JSStyle
Style.SetField("backgroundPosition", value)
Return Me
End Sub

'get backgroundPosition
Sub getbackgroundPosition() As String
Return Style.GetField("backgroundPosition").Result
End Sub

'set backgroundRepeat
Sub setbackgroundRepeat(value As String) As JSStyle
Style.SetField("backgroundRepeat", value)
Return Me
End Sub

'get backgroundRepeat
Sub getbackgroundRepeat() As String
Return Style.GetField("backgroundRepeat").Result
End Sub

'set backgroundClip
Sub setbackgroundClip(value As String) As JSStyle
Style.SetField("backgroundClip", value)
Return Me
End Sub

'get backgroundClip
Sub getbackgroundClip() As String
Return Style.GetField("backgroundClip").Result
End Sub

'set backgroundOrigin
Sub setbackgroundOrigin(value As String) As JSStyle
Style.SetField("backgroundOrigin", value)
Return Me
End Sub

'get backgroundOrigin
Sub getbackgroundOrigin() As String
Return Style.GetField("backgroundOrigin").Result
End Sub

'set backgroundSize
Sub setbackgroundSize(value As String) As JSStyle
Style.SetField("backgroundSize", value)
Return Me
End Sub

'get backgroundSize
Sub getbackgroundSize() As String
Return Style.GetField("backgroundSize").Result
End Sub

'set backfaceVisibility
Sub setbackfaceVisibility(value As String) As JSStyle
Style.SetField("backfaceVisibility", value)
Return Me
End Sub

'get backfaceVisibility
Sub getbackfaceVisibility() As String
Return Style.GetField("backfaceVisibility").Result
End Sub

'set border
Sub setborder(value As String) As JSStyle
Style.SetField("border", value)
Return Me
End Sub

'get border
Sub getborder() As String
Return Style.GetField("border").Result
End Sub

'set borderBottom
Sub setborderBottom(value As String) As JSStyle
Style.SetField("borderBottom", value)
Return Me
End Sub

'get borderBottom
Sub getborderBottom() As String
Return Style.GetField("borderBottom").Result
End Sub

'set borderBottomColor
Sub setborderBottomColor(value As String) As JSStyle
Style.SetField("borderBottomColor", value)
Return Me
End Sub

'get borderBottomColor
Sub getborderBottomColor() As String
Return Style.GetField("borderBottomColor").Result
End Sub

'set borderBottomLeftRadius
Sub setborderBottomLeftRadius(value As String) As JSStyle
Style.SetField("borderBottomLeftRadius", value)
Return Me
End Sub

'get borderBottomLeftRadius
Sub getborderBottomLeftRadius() As String
Return Style.GetField("borderBottomLeftRadius").Result
End Sub

'set borderBottomRightRadius
Sub setborderBottomRightRadius(value As String) As JSStyle
Style.SetField("borderBottomRightRadius", value)
Return Me
End Sub

'get borderBottomRightRadius
Sub getborderBottomRightRadius() As String
Return Style.GetField("borderBottomRightRadius").Result
End Sub

'set borderBottomStyle
Sub setborderBottomStyle(value As String) As JSStyle
Style.SetField("borderBottomStyle", value)
Return Me
End Sub

'get borderBottomStyle
Sub getborderBottomStyle() As String
Return Style.GetField("borderBottomStyle").Result
End Sub

'set borderBottomWidth
Sub setborderBottomWidth(value As String) As JSStyle
Style.SetField("borderBottomWidth", value)
Return Me
End Sub

'get borderBottomWidth
Sub getborderBottomWidth() As String
Return Style.GetField("borderBottomWidth").Result
End Sub

'set borderCollapse
Sub setborderCollapse(value As String) As JSStyle
Style.SetField("borderCollapse", value)
Return Me
End Sub

'get borderCollapse
Sub getborderCollapse() As String
Return Style.GetField("borderCollapse").Result
End Sub

'set borderColor
Sub setborderColor(value As String) As JSStyle
Style.SetField("borderColor", value)
Return Me
End Sub

'get borderColor
Sub getborderColor() As String
Return Style.GetField("borderColor").Result
End Sub

'set borderImage
Sub setborderImage(value As String) As JSStyle
Style.SetField("borderImage", value)
Return Me
End Sub

'get borderImage
Sub getborderImage() As String
Return Style.GetField("borderImage").Result
End Sub

'set borderImageOutset
Sub setborderImageOutset(value As String) As JSStyle
Style.SetField("borderImageOutset", value)
Return Me
End Sub

'get borderImageOutset
Sub getborderImageOutset() As String
Return Style.GetField("borderImageOutset").Result
End Sub

'set borderImageRepeat
Sub setborderImageRepeat(value As String) As JSStyle
Style.SetField("borderImageRepeat", value)
Return Me
End Sub

'get borderImageRepeat
Sub getborderImageRepeat() As String
Return Style.GetField("borderImageRepeat").Result
End Sub

'set borderImageSlice
Sub setborderImageSlice(value As String) As JSStyle
Style.SetField("borderImageSlice", value)
Return Me
End Sub

'get borderImageSlice
Sub getborderImageSlice() As String
Return Style.GetField("borderImageSlice").Result
End Sub

'set borderImageSource
Sub setborderImageSource(value As String) As JSStyle
Style.SetField("borderImageSource", value)
Return Me
End Sub

'get borderImageSource
Sub getborderImageSource() As String
Return Style.GetField("borderImageSource").Result
End Sub

'set borderImageWidth
Sub setborderImageWidth(value As String) As JSStyle
Style.SetField("borderImageWidth", value)
Return Me
End Sub

'get borderImageWidth
Sub getborderImageWidth() As String
Return Style.GetField("borderImageWidth").Result
End Sub

'set borderLeft
Sub setborderLeft(value As String) As JSStyle
Style.SetField("borderLeft", value)
Return Me
End Sub

'get borderLeft
Sub getborderLeft() As String
Return Style.GetField("borderLeft").Result
End Sub

'set borderLeftColor
Sub setborderLeftColor(value As String) As JSStyle
Style.SetField("borderLeftColor", value)
Return Me
End Sub

'get borderLeftColor
Sub getborderLeftColor() As String
Return Style.GetField("borderLeftColor").Result
End Sub

'set borderLeftStyle
Sub setborderLeftStyle(value As String) As JSStyle
Style.SetField("borderLeftStyle", value)
Return Me
End Sub

'get borderLeftStyle
Sub getborderLeftStyle() As String
Return Style.GetField("borderLeftStyle").Result
End Sub

'set borderLeftWidth
Sub setborderLeftWidth(value As String) As JSStyle
Style.SetField("borderLeftWidth", value)
Return Me
End Sub

'get borderLeftWidth
Sub getborderLeftWidth() As String
Return Style.GetField("borderLeftWidth").Result
End Sub

'set borderRadius
Sub setborderRadius(value As String) As JSStyle
Style.SetField("borderRadius", value)
Return Me
End Sub

'get borderRadius
Sub getborderRadius() As String
Return Style.GetField("borderRadius").Result
End Sub

'set borderRight
Sub setborderRight(value As String) As JSStyle
Style.SetField("borderRight", value)
Return Me
End Sub

'get borderRight
Sub getborderRight() As String
Return Style.GetField("borderRight").Result
End Sub

'set borderRightColor
Sub setborderRightColor(value As String) As JSStyle
Style.SetField("borderRightColor", value)
Return Me
End Sub

'get borderRightColor
Sub getborderRightColor() As String
Return Style.GetField("borderRightColor").Result
End Sub

'set borderRightStyle
Sub setborderRightStyle(value As String) As JSStyle
Style.SetField("borderRightStyle", value)
Return Me
End Sub

'get borderRightStyle
Sub getborderRightStyle() As String
Return Style.GetField("borderRightStyle").Result
End Sub

'set borderRightWidth
Sub setborderRightWidth(value As String) As JSStyle
Style.SetField("borderRightWidth", value)
Return Me
End Sub

'get borderRightWidth
Sub getborderRightWidth() As String
Return Style.GetField("borderRightWidth").Result
End Sub

'set borderSpacing
Sub setborderSpacing(value As String) As JSStyle
Style.SetField("borderSpacing", value)
Return Me
End Sub

'get borderSpacing
Sub getborderSpacing() As String
Return Style.GetField("borderSpacing").Result
End Sub

'set borderStyle
Sub setborderStyle(value As String) As JSStyle
Style.SetField("borderStyle", value)
Return Me
End Sub

'get borderStyle
Sub getborderStyle() As String
Return Style.GetField("borderStyle").Result
End Sub

'set borderTop
Sub setborderTop(value As String) As JSStyle
Style.SetField("borderTop", value)
Return Me
End Sub

'get borderTop
Sub getborderTop() As String
Return Style.GetField("borderTop").Result
End Sub

'set borderTopColor
Sub setborderTopColor(value As String) As JSStyle
Style.SetField("borderTopColor", value)
Return Me
End Sub

'get borderTopColor
Sub getborderTopColor() As String
Return Style.GetField("borderTopColor").Result
End Sub

'set borderTopLeftRadius
Sub setborderTopLeftRadius(value As String) As JSStyle
Style.SetField("borderTopLeftRadius", value)
Return Me
End Sub

'get borderTopLeftRadius
Sub getborderTopLeftRadius() As String
Return Style.GetField("borderTopLeftRadius").Result
End Sub

'set borderTopRightRadius
Sub setborderTopRightRadius(value As String) As JSStyle
Style.SetField("borderTopRightRadius", value)
Return Me
End Sub

'get borderTopRightRadius
Sub getborderTopRightRadius() As String
Return Style.GetField("borderTopRightRadius").Result
End Sub

'set borderTopStyle
Sub setborderTopStyle(value As String) As JSStyle
Style.SetField("borderTopStyle", value)
Return Me
End Sub

'get borderTopStyle
Sub getborderTopStyle() As String
Return Style.GetField("borderTopStyle").Result
End Sub

'set borderTopWidth
Sub setborderTopWidth(value As String) As JSStyle
Style.SetField("borderTopWidth", value)
Return Me
End Sub

'get borderTopWidth
Sub getborderTopWidth() As String
Return Style.GetField("borderTopWidth").Result
End Sub

'set borderWidth
Sub setborderWidth(value As String) As JSStyle
Style.SetField("borderWidth", value)
Return Me
End Sub

'get borderWidth
Sub getborderWidth() As String
Return Style.GetField("borderWidth").Result
End Sub

'set boxDecorationBreak
Sub setboxDecorationBreak(value As String) As JSStyle
Style.SetField("boxDecorationBreak", value)
Return Me
End Sub

'get boxDecorationBreak
Sub getboxDecorationBreak() As String
Return Style.GetField("boxDecorationBreak").Result
End Sub

'set boxShadow
Sub setboxShadow(value As String) As JSStyle
Style.SetField("boxShadow", value)
Return Me
End Sub

'get boxShadow
Sub getboxShadow() As String
Return Style.GetField("boxShadow").Result
End Sub

'set boxSizing
Sub setboxSizing(value As String) As JSStyle
Style.SetField("boxSizing", value)
Return Me
End Sub

'get boxSizing
Sub getboxSizing() As String
Return Style.GetField("boxSizing").Result
End Sub

'set captionSide
Sub setcaptionSide(value As String) As JSStyle
Style.SetField("captionSide", value)
Return Me
End Sub

'get captionSide
Sub getcaptionSide() As String
Return Style.GetField("captionSide").Result
End Sub

'set clear
Sub setclear(value As String) As JSStyle
Style.SetField("clear", value)
Return Me
End Sub

'get clear
Sub getclear() As String
Return Style.GetField("clear").Result
End Sub

'set clip
Sub setclip(value As String) As JSStyle
Style.SetField("clip", value)
Return Me
End Sub

'get clip
Sub getclip() As String
Return Style.GetField("clip").Result
End Sub


'set columnCount
Sub setcolumnCount(value As String) As JSStyle
Style.SetField("columnCount", value)
Return Me
End Sub

'get columnCount
Sub getcolumnCount() As String
Return Style.GetField("columnCount").Result
End Sub

'set columnFill
Sub setcolumnFill(value As String) As JSStyle
Style.SetField("columnFill", value)
Return Me
End Sub

'get columnFill
Sub getcolumnFill() As String
Return Style.GetField("columnFill").Result
End Sub

'set columnGap
Sub setcolumnGap(value As String) As JSStyle
Style.SetField("columnGap", value)
Return Me
End Sub

'get columnGap
Sub getcolumnGap() As String
Return Style.GetField("columnGap").Result
End Sub

'set columnRule
Sub setcolumnRule(value As String) As JSStyle
Style.SetField("columnRule", value)
Return Me
End Sub

'get columnRule
Sub getcolumnRule() As String
Return Style.GetField("columnRule").Result
End Sub

'set columnRuleColor
Sub setcolumnRuleColor(value As String) As JSStyle
Style.SetField("columnRuleColor", value)
Return Me
End Sub

'get columnRuleColor
Sub getcolumnRuleColor() As String
Return Style.GetField("columnRuleColor").Result
End Sub

'set columnRuleStyle
Sub setcolumnRuleStyle(value As String) As JSStyle
Style.SetField("columnRuleStyle", value)
Return Me
End Sub

'get columnRuleStyle
Sub getcolumnRuleStyle() As String
Return Style.GetField("columnRuleStyle").Result
End Sub

'set columnRuleWidth
Sub setcolumnRuleWidth(value As String) As JSStyle
Style.SetField("columnRuleWidth", value)
Return Me
End Sub

'get columnRuleWidth
Sub getcolumnRuleWidth() As String
Return Style.GetField("columnRuleWidth").Result
End Sub

'set columns
Sub setcolumns(value As String) As JSStyle
Style.SetField("columns", value)
Return Me
End Sub

'get columns
Sub getcolumns() As String
Return Style.GetField("columns").Result
End Sub

'set columnSpan
Sub setcolumnSpan(value As String) As JSStyle
Style.SetField("columnSpan", value)
Return Me
End Sub

'get columnSpan
Sub getcolumnSpan() As String
Return Style.GetField("columnSpan").Result
End Sub

'set columnWidth
Sub setcolumnWidth(value As String) As JSStyle
Style.SetField("columnWidth", value)
Return Me
End Sub

'get columnWidth
Sub getcolumnWidth() As String
Return Style.GetField("columnWidth").Result
End Sub

'set content
Sub setcontent(value As String) As JSStyle
Style.SetField("content", value)
Return Me
End Sub

'get content
Sub getcontent() As String
Return Style.GetField("content").Result
End Sub

'set counterIncrement
Sub setcounterIncrement(value As String) As JSStyle
Style.SetField("counterIncrement", value)
Return Me
End Sub

'get counterIncrement
Sub getcounterIncrement() As String
Return Style.GetField("counterIncrement").Result
End Sub

'set counterReset
Sub setcounterReset(value As String) As JSStyle
Style.SetField("counterReset", value)
Return Me
End Sub

'get counterReset
Sub getcounterReset() As String
Return Style.GetField("counterReset").Result
End Sub

'set cursor
Sub setcursor(value As String) As JSStyle
Style.SetField("cursor", value)
Return Me
End Sub

'get cursor
Sub getcursor() As String
Return Style.GetField("cursor").Result
End Sub

'set direction
Sub setdirection(value As String) As JSStyle
Style.SetField("direction", value)
Return Me
End Sub

'get direction
Sub getdirection() As String
Return Style.GetField("direction").Result
End Sub


'set emptyCells
Sub setemptyCells(value As String) As JSStyle
Style.SetField("emptyCells", value)
Return Me
End Sub

'get emptyCells
Sub getemptyCells() As String
Return Style.GetField("emptyCells").Result
End Sub

'set filter
Sub setfilter(value As String) As JSStyle
Style.SetField("filter", value)
Return Me
End Sub

'get filter
Sub getfilter() As String
Return Style.GetField("filter").Result
End Sub

'set flex
Sub setflex(value As String) As JSStyle
Style.SetField("flex", value)
Return Me
End Sub

'get flex
Sub getflex() As String
Return Style.GetField("flex").Result
End Sub

'set flexBasis
Sub setflexBasis(value As String) As JSStyle
Style.SetField("flexBasis", value)
Return Me
End Sub

'get flexBasis
Sub getflexBasis() As String
Return Style.GetField("flexBasis").Result
End Sub

'set flexDirection
Sub setflexDirection(value As String) As JSStyle
Style.SetField("flexDirection", value)
Return Me
End Sub

'get flexDirection
Sub getflexDirection() As String
Return Style.GetField("flexDirection").Result
End Sub

'set flexFlow
Sub setflexFlow(value As String) As JSStyle
Style.SetField("flexFlow", value)
Return Me
End Sub

'get flexFlow
Sub getflexFlow() As String
Return Style.GetField("flexFlow").Result
End Sub

'set flexGrow
Sub setflexGrow(value As String) As JSStyle
Style.SetField("flexGrow", value)
Return Me
End Sub

'get flexGrow
Sub getflexGrow() As String
Return Style.GetField("flexGrow").Result
End Sub

'set flexShrink
Sub setflexShrink(value As String) As JSStyle
Style.SetField("flexShrink", value)
Return Me
End Sub

'get flexShrink
Sub getflexShrink() As String
Return Style.GetField("flexShrink").Result
End Sub

'set flexWrap
Sub setflexWrap(value As String) As JSStyle
Style.SetField("flexWrap", value)
Return Me
End Sub

'get flexWrap
Sub getflexWrap() As String
Return Style.GetField("flexWrap").Result
End Sub

'set cssFloat
Sub setcssFloat(value As String) As JSStyle
Style.SetField("cssFloat", value)
Return Me
End Sub

'get cssFloat
Sub getcssFloat() As String
Return Style.GetField("cssFloat").Result
End Sub

'set font
Sub setfont(value As String) As JSStyle
Style.SetField("font", value)
Return Me
End Sub

'get font
Sub getfont() As String
Return Style.GetField("font").Result
End Sub

'set fontStyle
Sub setfontStyle(value As String) As JSStyle
Style.SetField("fontStyle", value)
Return Me
End Sub

'get fontStyle
Sub getfontStyle() As String
Return Style.GetField("fontStyle").Result
End Sub

'set fontVariant
Sub setfontVariant(value As String) As JSStyle
Style.SetField("fontVariant", value)
Return Me
End Sub

'get fontVariant
Sub getfontVariant() As String
Return Style.GetField("fontVariant").Result
End Sub

'set fontWeight
Sub setfontWeight(value As String) As JSStyle
Style.SetField("fontWeight", value)
Return Me
End Sub

'get fontWeight
Sub getfontWeight() As String
Return Style.GetField("fontWeight").Result
End Sub

'set fontSizeAdjust
Sub setfontSizeAdjust(value As String) As JSStyle
Style.SetField("fontSizeAdjust", value)
Return Me
End Sub

'get fontSizeAdjust
Sub getfontSizeAdjust() As String
Return Style.GetField("fontSizeAdjust").Result
End Sub

'set fontStretch
Sub setfontStretch(value As String) As JSStyle
Style.SetField("fontStretch", value)
Return Me
End Sub

'get fontStretch
Sub getfontStretch() As String
Return Style.GetField("fontStretch").Result
End Sub

'set hangingPunctuation
Sub sethangingPunctuation(value As String) As JSStyle
Style.SetField("hangingPunctuation", value)
Return Me
End Sub

'get hangingPunctuation
Sub gethangingPunctuation() As String
Return Style.GetField("hangingPunctuation").Result
End Sub


'set hyphens
Sub sethyphens(value As String) As JSStyle
Style.SetField("hyphens", value)
Return Me
End Sub

'get hyphens
Sub gethyphens() As String
Return Style.GetField("hyphens").Result
End Sub

'set icon
Sub seticon(value As String) As JSStyle
Style.SetField("icon", value)
Return Me
End Sub

'get icon
Sub geticon() As String
Return Style.GetField("icon").Result
End Sub

'set imageOrientation
Sub setimageOrientation(value As String) As JSStyle
Style.SetField("imageOrientation", value)
Return Me
End Sub

'get imageOrientation
Sub getimageOrientation() As String
Return Style.GetField("imageOrientation").Result
End Sub

'set isolation
Sub setisolation(value As String) As JSStyle
Style.SetField("isolation", value)
Return Me
End Sub

'get isolation
Sub getisolation() As String
Return Style.GetField("isolation").Result
End Sub

'set justifyContent
Sub setjustifyContent(value As String) As JSStyle
Style.SetField("justifyContent", value)
Return Me
End Sub

'get justifyContent
Sub getjustifyContent() As String
Return Style.GetField("justifyContent").Result
End Sub


'set letterSpacing
Sub setletterSpacing(value As String) As JSStyle
Style.SetField("letterSpacing", value)
Return Me
End Sub

'get letterSpacing
Sub getletterSpacing() As String
Return Style.GetField("letterSpacing").Result
End Sub

'set lineHeight
Sub setlineHeight(value As String) As JSStyle
Style.SetField("lineHeight", value)
Return Me
End Sub

'get lineHeight
Sub getlineHeight() As String
Return Style.GetField("lineHeight").Result
End Sub

'set listStyle
Sub setlistStyle(value As String) As JSStyle
Style.SetField("listStyle", value)
Return Me
End Sub

'get listStyle
Sub getlistStyle() As String
Return Style.GetField("listStyle").Result
End Sub

'set listStyleImage
Sub setlistStyleImage(value As String) As JSStyle
Style.SetField("listStyleImage", value)
Return Me
End Sub

'get listStyleImage
Sub getlistStyleImage() As String
Return Style.GetField("listStyleImage").Result
End Sub

'set listStylePosition
Sub setlistStylePosition(value As String) As JSStyle
Style.SetField("listStylePosition", value)
Return Me
End Sub

'get listStylePosition
Sub getlistStylePosition() As String
Return Style.GetField("listStylePosition").Result
End Sub

'set listStyleType
Sub setlistStyleType(value As String) As JSStyle
Style.SetField("listStyleType", value)
Return Me
End Sub

'get listStyleType
Sub getlistStyleType() As String
Return Style.GetField("listStyleType").Result
End Sub

'set marginBottom
Sub setmarginBottom(value As String) As JSStyle
Style.SetField("marginBottom", value)
Return Me
End Sub

'get marginBottom
Sub getmarginBottom() As String
Return Style.GetField("marginBottom").Result
End Sub

'set marginLeft
Sub setmarginLeft(value As String) As JSStyle
Style.SetField("marginLeft", value)
Return Me
End Sub

'get marginLeft
Sub getmarginLeft() As String
Return Style.GetField("marginLeft").Result
End Sub

'set marginRight
Sub setmarginRight(value As String) As JSStyle
Style.SetField("marginRight", value)
Return Me
End Sub

'get marginRight
Sub getmarginRight() As String
Return Style.GetField("marginRight").Result
End Sub

'set marginTop
Sub setmarginTop(value As String) As JSStyle
Style.SetField("marginTop", value)
Return Me
End Sub

'get marginTop
Sub getmarginTop() As String
Return Style.GetField("marginTop").Result
End Sub

'set maxHeight
Sub setmaxHeight(value As String) As JSStyle
Style.SetField("maxHeight", value)
Return Me
End Sub

'get maxHeight
Sub getmaxHeight() As String
Return Style.GetField("maxHeight").Result
End Sub

'set maxWidth
Sub setmaxWidth(value As String) As JSStyle
Style.SetField("maxWidth", value)
Return Me
End Sub

'get maxWidth
Sub getmaxWidth() As String
Return Style.GetField("maxWidth").Result
End Sub

'set minHeight
Sub setminHeight(value As String) As JSStyle
Style.SetField("minHeight", value)
Return Me
End Sub

'get minHeight
Sub getminHeight() As String
Return Style.GetField("minHeight").Result
End Sub

'set minWidth
Sub setminWidth(value As String) As JSStyle
Style.SetField("minWidth", value)
Return Me
End Sub

'get minWidth
Sub getminWidth() As String
Return Style.GetField("minWidth").Result
End Sub

'set navDown
Sub setnavDown(value As String) As JSStyle
Style.SetField("navDown", value)
Return Me
End Sub

'get navDown
Sub getnavDown() As String
Return Style.GetField("navDown").Result
End Sub

'set navIndex
Sub setnavIndex(value As String) As JSStyle
Style.SetField("navIndex", value)
Return Me
End Sub

'get navIndex
Sub getnavIndex() As String
Return Style.GetField("navIndex").Result
End Sub

'set navLeft
Sub setnavLeft(value As String) As JSStyle
Style.SetField("navLeft", value)
Return Me
End Sub

'get navLeft
Sub getnavLeft() As String
Return Style.GetField("navLeft").Result
End Sub

'set navRight
Sub setnavRight(value As String) As JSStyle
Style.SetField("navRight", value)
Return Me
End Sub

'get navRight
Sub getnavRight() As String
Return Style.GetField("navRight").Result
End Sub

'set navUp
Sub setnavUp(value As String) As JSStyle
Style.SetField("navUp", value)
Return Me
End Sub

'get navUp
Sub getnavUp() As String
Return Style.GetField("navUp").Result
End Sub

'set objectFit
Sub setobjectFit(value As String) As JSStyle
Style.SetField("objectFit", value)
Return Me
End Sub

'get objectFit
Sub getobjectFit() As String
Return Style.GetField("objectFit").Result
End Sub

'set objectPosition
Sub setobjectPosition(value As String) As JSStyle
Style.SetField("objectPosition", value)
Return Me
End Sub

'get objectPosition
Sub getobjectPosition() As String
Return Style.GetField("objectPosition").Result
End Sub

'set opacity
Sub setopacity(value As String) As JSStyle
Style.SetField("opacity", value)
Return Me
End Sub

'get opacity
Sub getopacity() As String
Return Style.GetField("opacity").Result
End Sub

'set order
Sub setorder(value As String) As JSStyle
Style.SetField("order", value)
Return Me
End Sub

'get order
Sub getorder() As String
Return Style.GetField("order").Result
End Sub

'set orphans
Sub setorphans(value As String) As JSStyle
Style.SetField("orphans", value)
Return Me
End Sub

'get orphans
Sub getorphans() As String
Return Style.GetField("orphans").Result
End Sub

'set outline
Sub setoutline(value As String) As JSStyle
Style.SetField("outline", value)
Return Me
End Sub

'get outline
Sub getoutline() As String
Return Style.GetField("outline").Result
End Sub

'set outlineColor
Sub setoutlineColor(value As String) As JSStyle
Style.SetField("outlineColor", value)
Return Me
End Sub

'get outlineColor
Sub getoutlineColor() As String
Return Style.GetField("outlineColor").Result
End Sub

'set outlineOffset
Sub setoutlineOffset(value As String) As JSStyle
Style.SetField("outlineOffset", value)
Return Me
End Sub

'get outlineOffset
Sub getoutlineOffset() As String
Return Style.GetField("outlineOffset").Result
End Sub

'set outlineStyle
Sub setoutlineStyle(value As String) As JSStyle
Style.SetField("outlineStyle", value)
Return Me
End Sub

'get outlineStyle
Sub getoutlineStyle() As String
Return Style.GetField("outlineStyle").Result
End Sub

'set outlineWidth
Sub setoutlineWidth(value As String) As JSStyle
Style.SetField("outlineWidth", value)
Return Me
End Sub

'get outlineWidth
Sub getoutlineWidth() As String
Return Style.GetField("outlineWidth").Result
End Sub

'set overflow
Sub setoverflow(value As String) As JSStyle
Style.SetField("overflow", value)
Return Me
End Sub

'get overflow
Sub getoverflow() As String
Return Style.GetField("overflow").Result
End Sub

'set overflowX
Sub setoverflowX(value As String) As JSStyle
Style.SetField("overflowX", value)
Return Me
End Sub

'get overflowX
Sub getoverflowX() As String
Return Style.GetField("overflowX").Result
End Sub

'set overflowY
Sub setoverflowY(value As String) As JSStyle
Style.SetField("overflowY", value)
Return Me
End Sub

'get overflowY
Sub getoverflowY() As String
Return Style.GetField("overflowY").Result
End Sub


'set paddingBottom
Sub setpaddingBottom(value As String) As JSStyle
Style.SetField("paddingBottom", value)
Return Me
End Sub

'get paddingBottom
Sub getpaddingBottom() As String
Return Style.GetField("paddingBottom").Result
End Sub

'set paddingLeft
Sub setpaddingLeft(value As String) As JSStyle
Style.SetField("paddingLeft", value)
Return Me
End Sub

'get paddingLeft
Sub getpaddingLeft() As String
Return Style.GetField("paddingLeft").Result
End Sub

'set paddingRight
Sub setpaddingRight(value As String) As JSStyle
Style.SetField("paddingRight", value)
Return Me
End Sub

'get paddingRight
Sub getpaddingRight() As String
Return Style.GetField("paddingRight").Result
End Sub

'set paddingTop
Sub setpaddingTop(value As String) As JSStyle
Style.SetField("paddingTop", value)
Return Me
End Sub

'get paddingTop
Sub getpaddingTop() As String
Return Style.GetField("paddingTop").Result
End Sub

'set pageBreakAfter
Sub setpageBreakAfter(value As String) As JSStyle
Style.SetField("pageBreakAfter", value)
Return Me
End Sub

'get pageBreakAfter
Sub getpageBreakAfter() As String
Return Style.GetField("pageBreakAfter").Result
End Sub

'set pageBreakBefore
Sub setpageBreakBefore(value As String) As JSStyle
Style.SetField("pageBreakBefore", value)
Return Me
End Sub

'get pageBreakBefore
Sub getpageBreakBefore() As String
Return Style.GetField("pageBreakBefore").Result
End Sub

'set pageBreakInside
Sub setpageBreakInside(value As String) As JSStyle
Style.SetField("pageBreakInside", value)
Return Me
End Sub

'get pageBreakInside
Sub getpageBreakInside() As String
Return Style.GetField("pageBreakInside").Result
End Sub

'set perspective
Sub setperspective(value As String) As JSStyle
Style.SetField("perspective", value)
Return Me
End Sub

'get perspective
Sub getperspective() As String
Return Style.GetField("perspective").Result
End Sub

'set perspectiveOrigin
Sub setperspectiveOrigin(value As String) As JSStyle
Style.SetField("perspectiveOrigin", value)
Return Me
End Sub

'get perspectiveOrigin
Sub getperspectiveOrigin() As String
Return Style.GetField("perspectiveOrigin").Result
End Sub


'set quotes
Sub setquotes(value As String) As JSStyle
Style.SetField("quotes", value)
Return Me
End Sub

'get quotes
Sub getquotes() As String
Return Style.GetField("quotes").Result
End Sub

'set resize
Sub setresize(value As String) As JSStyle
Style.SetField("resize", value)
Return Me
End Sub

'get resize
Sub getresize() As String
Return Style.GetField("resize").Result
End Sub


'set tableLayout
Sub settableLayout(value As String) As JSStyle
Style.SetField("tableLayout", value)
Return Me
End Sub

'get tableLayout
Sub gettableLayout() As String
Return Style.GetField("tableLayout").Result
End Sub

'set tabSize
Sub settabSize(value As String) As JSStyle
Style.SetField("tabSize", value)
Return Me
End Sub

'get tabSize
Sub gettabSize() As String
Return Style.GetField("tabSize").Result
End Sub

'set textAlign
Sub settextAlign(value As String) As JSStyle
Style.SetField("textAlign", value)
Return Me
End Sub

'get textAlign
Sub gettextAlign() As String
Return Style.GetField("textAlign").Result
End Sub

'set textAlignLast
Sub settextAlignLast(value As String) As JSStyle
Style.SetField("textAlignLast", value)
Return Me
End Sub

'get textAlignLast
Sub gettextAlignLast() As String
Return Style.GetField("textAlignLast").Result
End Sub

'set textDecoration
Sub settextDecoration(value As String) As JSStyle
Style.SetField("textDecoration", value)
Return Me
End Sub

'get textDecoration
Sub gettextDecoration() As String
Return Style.GetField("textDecoration").Result
End Sub

'set textDecorationColor
Sub settextDecorationColor(value As String) As JSStyle
Style.SetField("textDecorationColor", value)
Return Me
End Sub

'get textDecorationColor
Sub gettextDecorationColor() As String
Return Style.GetField("textDecorationColor").Result
End Sub

'set textDecorationLine
Sub settextDecorationLine(value As String) As JSStyle
Style.SetField("textDecorationLine", value)
Return Me
End Sub

'get textDecorationLine
Sub gettextDecorationLine() As String
Return Style.GetField("textDecorationLine").Result
End Sub

'set textDecorationStyle
Sub settextDecorationStyle(value As String) As JSStyle
Style.SetField("textDecorationStyle", value)
Return Me
End Sub

'get textDecorationStyle
Sub gettextDecorationStyle() As String
Return Style.GetField("textDecorationStyle").Result
End Sub

'set textIndent
Sub settextIndent(value As String) As JSStyle
Style.SetField("textIndent", value)
Return Me
End Sub

'get textIndent
Sub gettextIndent() As String
Return Style.GetField("textIndent").Result
End Sub

'set textJustify
Sub settextJustify(value As String) As JSStyle
Style.SetField("textJustify", value)
Return Me
End Sub

'get textJustify
Sub gettextJustify() As String
Return Style.GetField("textJustify").Result
End Sub

'set textOverflow
Sub settextOverflow(value As String) As JSStyle
Style.SetField("textOverflow", value)
Return Me
End Sub

'get textOverflow
Sub gettextOverflow() As String
Return Style.GetField("textOverflow").Result
End Sub

'set textShadow
Sub settextShadow(value As String) As JSStyle
Style.SetField("textShadow", value)
Return Me
End Sub

'get textShadow
Sub gettextShadow() As String
Return Style.GetField("textShadow").Result
End Sub

'set textTransform
Sub settextTransform(value As String) As JSStyle
Style.SetField("textTransform", value)
Return Me
End Sub

'get textTransform
Sub gettextTransform() As String
Return Style.GetField("textTransform").Result
End Sub

'set transform
Sub settransform(value As String) As JSStyle
Style.SetField("transform", value)
Return Me
End Sub

'get transform
Sub gettransform() As String
Return Style.GetField("transform").Result
End Sub

'set transformOrigin
Sub settransformOrigin(value As String) As JSStyle
Style.SetField("transformOrigin", value)
Return Me
End Sub

'get transformOrigin
Sub gettransformOrigin() As String
Return Style.GetField("transformOrigin").Result
End Sub

'set transformStyle
Sub settransformStyle(value As String) As JSStyle
Style.SetField("transformStyle", value)
Return Me
End Sub

'get transformStyle
Sub gettransformStyle() As String
Return Style.GetField("transformStyle").Result
End Sub

'set transition
Sub settransition(value As String) As JSStyle
Style.SetField("transition", value)
Return Me
End Sub

'get transition
Sub gettransition() As String
Return Style.GetField("transition").Result
End Sub

'set transitionProperty
Sub settransitionProperty(value As String) As JSStyle
Style.SetField("transitionProperty", value)
Return Me
End Sub

'get transitionProperty
Sub gettransitionProperty() As String
Return Style.GetField("transitionProperty").Result
End Sub

'set transitionDuration
Sub settransitionDuration(value As String) As JSStyle
Style.SetField("transitionDuration", value)
Return Me
End Sub

'get transitionDuration
Sub gettransitionDuration() As String
Return Style.GetField("transitionDuration").Result
End Sub

'set transitionTimingFunction
Sub settransitionTimingFunction(value As String) As JSStyle
Style.SetField("transitionTimingFunction", value)
Return Me
End Sub

'get transitionTimingFunction
Sub gettransitionTimingFunction() As String
Return Style.GetField("transitionTimingFunction").Result
End Sub

'set transitionDelay
Sub settransitionDelay(value As String) As JSStyle
Style.SetField("transitionDelay", value)
Return Me
End Sub

'get transitionDelay
Sub gettransitionDelay() As String
Return Style.GetField("transitionDelay").Result
End Sub

'set unicodeBidi
Sub setunicodeBidi(value As String) As JSStyle
Style.SetField("unicodeBidi", value)
Return Me
End Sub

'get unicodeBidi
Sub getunicodeBidi() As String
Return Style.GetField("unicodeBidi").Result
End Sub

'set userSelect
Sub setuserSelect(value As String) As JSStyle
Style.SetField("userSelect", value)
Return Me
End Sub

'get userSelect
Sub getuserSelect() As String
Return Style.GetField("userSelect").Result
End Sub

'set verticalAlign
Sub setverticalAlign(value As String) As JSStyle
Style.SetField("verticalAlign", value)
Return Me
End Sub

'get verticalAlign
Sub getverticalAlign() As String
Return Style.GetField("verticalAlign").Result
End Sub


'set whiteSpace
Sub setwhiteSpace(value As String) As JSStyle
Style.SetField("whiteSpace", value)
Return Me
End Sub

'get whiteSpace
Sub getwhiteSpace() As String
Return Style.GetField("whiteSpace").Result
End Sub


'set wordBreak
Sub setwordBreak(value As String) As JSStyle
Style.SetField("wordBreak", value)
Return Me
End Sub

'get wordBreak
Sub getwordBreak() As String
Return Style.GetField("wordBreak").Result
End Sub

'set wordSpacing
Sub setwordSpacing(value As String) As JSStyle
Style.SetField("wordSpacing", value)
Return Me
End Sub

'get wordSpacing
Sub getwordSpacing() As String
Return Style.GetField("wordSpacing").Result
End Sub

'set wordWrap
Sub setwordWrap(value As String) As JSStyle
Style.SetField("wordWrap", value)
Return Me
End Sub

'get wordWrap
Sub getwordWrap() As String
Return Style.GetField("wordWrap").Result
End Sub

'set widows
Sub setwidows(value As String) As JSStyle
Style.SetField("widows", value)
Return Me
End Sub

'get widows
Sub getwidows() As String
Return Style.GetField("widows").Result
End Sub

'set zIndex
Sub setzIndex(value As String) As JSStyle
Style.SetField("zIndex", value)
Return Me
End Sub

'get zIndex
Sub getzIndex() As String
Return Style.GetField("zIndex").Result
End Sub

