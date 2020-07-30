---
title: Text Features Supported on DOCX Import
type: docs
weight: 130
url: /net/text-features-supported-on-docx-import/
---

{{% alert color="primary" %}} 

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

See the following links in the documentation for further information:

- [Run](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.run.html)
- [Run.Font](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.inline.font.html)
- [Run.Text](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.run.text.html)

[Jump to this location in the export section](/pages/createpage.action?spaceKey=wordsnet&title=Ooxml+Export&linkCreation=true&fromPageId=2596000)

{{% /alert %}} 
##### **Characters**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes | |<p>- [Font.Bidi](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.bidi.html) </p><p>- [Font.BoldBi](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.boldbi.html) </p><p>- [Font.LocaleIdBi](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.localeidbi.html)</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes | |- [ControlChar.NonBreakingSpace](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.controlchar.html)|
|Non Breaking Hyphen |Yes | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Yes |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Yes | |- [ControlChar.Tab](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.controlchar.html)|
##### **Breaks**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Break |Yes | |- [ControlChar.LineBreak](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.controlchar.html)|
|Line Break Clear Type |Yes | | |
|Page Break |Yes | |- [ControlChar.PageBreak](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.controlchar.html)|
|Column Break |Yes | |- [ControlChar.ColumnBreak](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.controlchar.html)|
##### **General Formatting**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Character Style |Yes | |- [Font.Style](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.style.html)|
|Color |Yes | |- [Font.Color](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.color.html)|
|East Asian Typography |Yes | | |
|Highlight Color |Yes | |- [Font.HighlightColor](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.highlightcolor.html)|
|Language |Yes | |<p>- [Font.LocaleId](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.localeid.html) </p><p>- **Font.LocaleIdBi**</p>|
|Do not Check Spelling or Grammar |Yes | |- [Font.NoProofing](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.noproofing.html)|
|Border |Yes | |- [Font.Border](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.border.html)|
|Shading |Yes | |- [Font.Shading](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.shading.html)|
##### **Font**
See the following links in the documentation for further information:

- [Font.Bold](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.bold.html)
- **Font.Italics**
- [Font.Name](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.name.html)
- [Font.NameFarEast](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.namefareast.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Font |Yes | | |
##### **Underline**
See the following link in the documentation for further information:

- [Font.Underline](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.underline.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Underline Type |Yes |The underline property is used to both define if the run is underline and with what type of underline is used. |- **Font.Underline**|
|Underline Color |Yes | |- [Font.UnderlineColor](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.underlinecolor.html)|
##### **Text Effects**
See the following link in the documentation for further information:

- [Font](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Animated Effect |Yes | | |
|Double Strikethrough |Yes | |- [Font.DoubleStrikeThrough](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.doublestrikethrough.html)|
|Strikethrough |Yes | |- [Font.StrikeThrough](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.strikethrough.html)|
|Subscript/Superscript |Yes | |<p>- [Font.Subscript](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.subscript.html) </p><p>- [Font.Superscript](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.superscript.html)</p>|
|Shadow |Yes | |- [Font.Shadow](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.shadow.html)|
|Outline |Yes | |- [Font.Outline](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.outline.html)|
|Emboss |Yes | |- [Font.Emboss](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.emboss.html)|
|Imprint (Engrave) |Yes | |- [Font.Engrave](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.engrave.html)|
|Small Caps |Yes | |- [Font.SmallCaps](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.smallcaps.html)|
|All Caps |Yes | |- [Font.AllCaps](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.allcaps.html)|
|Hidden Text |Yes | |- [Font.Hidden](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.hidden.html)|
|Special Hidden |Yes | | |
|Web Hidden |Yes | | |
##### **Character Spacing**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Scale |Yes | |- [Font.Scaling](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.scaling.html)|
|Expanded/Compressed |Yes | |- [Font.Spacing](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.spacing.html)|
|Vertical Position |Yes | |- [Font.Position](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.font.position.html)|

