---
title: Text Features Supported on OpenDocument Import
type: docs
weight: 130
url: /net/text-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}} 

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

See the following links in the documentation for further information:

- [Run](https://apireference.aspose.com/words/net/aspose.words/Run)
- [Run.Font](https://apireference.aspose.com/words/net/aspose.words/inline/properties/font)
- [Run.Text](https://apireference.aspose.com/words/net/aspose.words/inline/properties/text)

[Jump to this location in the export section](/words/net/text-features-supported-on-opendocument-export/)

{{% /alert %}} 
##### **Characters**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes | |<p>- [Font.Bidi](https://apireference.aspose.com/words/net/aspose.words/font/properties/bidi.html) </p><p>- [Font.BoldBi](https://apireference.aspose.com/words/net/aspose.words/font/properties/boldbi.html) </p><p>- [Font.LocaleIdBi](https://apireference.aspose.com/words/net/aspose.words/font/properties/localeidbi.html)</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes | |- [ControlChar.NonBreakingSpace](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/NonBreakingSpace)|
|Non Breaking Hyphen |Yes | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Yes |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Yes | |- [ControlChar.Tab](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/tab)|
##### **Breaks**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Break |Yes | |- [ControlChar.LineBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/linebreak)|
|Line Break Clear Type |Yes | | |
|Page Break |Yes | |- [ControlChar.PageBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/pagebreak)|
|Column Break |Yes | |- [ControlChar.ColumnBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/columnbreak)|
##### **General Formatting**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Character Style |Yes | |- [Font.Style](https://apireference.aspose.com/words/net/aspose.words/font/properties/style.html)|
|Color |Yes | |- [Font.Color](https://apireference.aspose.com/words/net/aspose.words/font/properties/color.html)|
|East Asian Typography |N/A | | |
|Highlight Color |Yes | |- [Font.HighlightColor](https://apireference.aspose.com/words/net/aspose.words/font/properties/highlightcolor.html)|
|Language |Yes | |<p>- [Font.LocaleId](https://apireference.aspose.com/words/net/aspose.words/font/properties/localeid.html) </p><p>- **Font.LocaleIdBi**</p>|
|Do not Check Spelling or Grammar |N/A | | |
|Border |N/A | | |
|Shading |Yes | |- [Font.Shading](https://apireference.aspose.com/words/net/aspose.words/font/properties/shading.html)|
##### **Font**
See the following links in the documentation for further information:

- [Font.Bold](https://apireference.aspose.com/words/net/aspose.words/font/properties/bold.html)
- **Font.Italics**
- [Font.Name](https://apireference.aspose.com/words/net/aspose.words/font/properties/name.html)
- [Font.NameFarEast](https://apireference.aspose.com/words/net/aspose.words/font/properties/namefareast.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Font |Yes | | |
##### **Underline**
See the following link in the documentation for further information:

- [Font.Underline](https://apireference.aspose.com/words/net/aspose.words/font/properties/underline.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Underline Type |Yes |The underline property is used to both define if the run is underline and with what type of underline is used. |- **Font.Underline**|
|Underline Color |Yes | |- [Font.UnderlineColor](https://apireference.aspose.com/words/net/aspose.words/font/properties/underlinecolor.html)|
##### **Text Effects**
See the following link in the documentation for further information:

- [Font](https://apireference.aspose.com/words/net/aspose.words/font/properties/html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Animated Effect |Yes | | |
|Double Strikethrough |Yes | |- [Font.DoubleStrikeThrough](https://apireference.aspose.com/words/net/aspose.words/font/properties/doublestrikethrough.html)|
|Strikethrough |Yes | |- [Font.StrikeThrough](https://apireference.aspose.com/words/net/aspose.words/font/properties/strikethrough.html)|
|Subscript/Superscript |Yes | |<p>- [Font.Subscript](https://apireference.aspose.com/words/net/aspose.words/font/properties/subscript.html) </p><p>- [Font.Superscript](https://apireference.aspose.com/words/net/aspose.words/font/properties/superscript.html)</p>|
|Shadow |Yes | |- [Font.Shadow](https://apireference.aspose.com/words/net/aspose.words/font/properties/shadow.html)|
|Outline |Yes | |- [Font.Outline](https://apireference.aspose.com/words/net/aspose.words/font/properties/outline.html)|
|Emboss |Yes | |- [Font.Emboss](https://apireference.aspose.com/words/net/aspose.words/font/properties/emboss.html)|
|Imprint (Engrave) |Yes | |- [Font.Engrave](https://apireference.aspose.com/words/net/aspose.words/font/properties/engrave.html)|
|Small Caps |Yes | |- [Font.SmallCaps](https://apireference.aspose.com/words/net/aspose.words/font/properties/smallcaps.html)|
|All Caps |Yes | |- [Font.AllCaps](https://apireference.aspose.com/words/net/aspose.words/font/properties/allcaps.html)|
|Hidden Text |Yes |ODT also provides an extra type of "hidden" text through the conditonal text feature. This is a kind of like an IF field in a Word document. <br><br>Currently this special feature is unsupported in ODT import and export. |- [Font.Hidden](https://apireference.aspose.com/words/net/aspose.words/font/properties/hidden.html)|
|Special Hidden |N/A | | |
|Web Hidden |N/A | | |
##### **Character Spacing**
Kerning and Snap to Grid are not saved to ODT.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Scale |Yes | |- [Font.Scaling](https://apireference.aspose.com/words/net/aspose.words/font/properties/scaling.html)|
|Expanded/Compressed |Yes | |- [Font.Spacing](https://apireference.aspose.com/words/net/aspose.words/font/properties/spacing.html)|
|Vertical Position |Yes | |- [Font.Position](https://apireference.aspose.com/words/net/aspose.words/font/properties/position.html)|

