---
title: Text Features Supported on DOC Import – Aspose.Words for .NET
articleTitle: Text Features Supported on DOC Import
linktitle: Text Features Supported on DOC Import
description: "Aspose.Words for .NET allows you to work with text features supported on DOC – Word 97-2003 format import."
type: docs
weight: 130
url: /net/text-features-supported-on-doc-import/
---

{{% alert color="primary" %}}

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

See the following links in the documentation for further information:

- [Run](https://apireference.aspose.com/words/net/aspose.words/Run)
- [Run.Font](https://apireference.aspose.com/words/net/aspose.words/inline/properties/font)
- [Run.Text](https://apireference.aspose.com/words/net/aspose.words/inline)

[Jump to this location in the export section](/words/net/text-features-supported-on-doc-export/)

{{% /alert %}}

## Characters

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes | |<p>- [Font.Bidi](https://apireference.aspose.com/words/net/aspose.words/font/properties/bidi) </p><p>- [Font.BoldBi](https://apireference.aspose.com/words/net/aspose.words/font/properties/boldbi) </p><p>- [Font.LocaleIdBi](https://apireference.aspose.com/words/net/aspose.words/font/properties/localeidbi)</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes | |- [ControlChar.NonBreakingSpace](https://apireference.aspose.com/words/net/aspose.words/ControlChar)|
|Non Breaking Hyphen |Yes | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Yes |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Yes | |- [ControlChar.Tab](https://apireference.aspose.com/words/net/aspose.words/ControlChar)|

### Breaks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Break |Yes | |- [ControlChar.LineBreak](https://apireference.aspose.com/words/net/aspose.words/ControlChar)|
|Line Break Clear Type |Yes | | |
|Page Break |Yes | |- [ControlChar.PageBreak](https://apireference.aspose.com/words/net/aspose.words/ControlChar)|
|Column Break |Yes | |- [ControlChar.ColumnBreak](https://apireference.aspose.com/words/net/aspose.words/ControlChar)|

#### General Formatting

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Character Style |Yes | |- [Font.Style](https://apireference.aspose.com/words/net/aspose.words/font)|
|Color |Yes | |- [Font.Color](https://apireference.aspose.com/words/net/aspose.words/font)|
|East Asian Typography |Yes | | |
|Highlight Color |Yes | |- [Font.HighlightColor](https://apireference.aspose.com/words/net/aspose.words/font)|
|Language |Yes | |<p>- [Font.LocaleId](https://apireference.aspose.com/words/net/aspose.words/font) </p><p>- **Font.LocaleIdBi**</p>|
|Do not Check Spelling or Grammar |Yes | |- [Font.NoProofing](https://apireference.aspose.com/words/net/aspose.words/font)|
|Border |Yes | |- [Font.Border](https://apireference.aspose.com/words/net/aspose.words/font)|
|Shading |Yes | |- [Font.Shading](https://apireference.aspose.com/words/net/aspose.words/font)|

##### Font

See the following links in the documentation for further information:

- [Font.Bold](https://apireference.aspose.com/words/net/aspose.words/font)
- **Font.Italics**
- [Font.Name](https://apireference.aspose.com/words/net/aspose.words/font)
- [Font.NameFarEast](https://apireference.aspose.com/words/net/aspose.words/font)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Font |Yes | | |

##### Underline

See the following link in the documentation for further information:

- [Font.Underline](https://apireference.aspose.com/words/net/aspose.words/font)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Underline Type |Yes |The underline property is used to both define if the run is underline and with what type of underline is used. |- **Font.Underline**|
|Underline Color |Yes | |- [Font.UnderlineColor](https://apireference.aspose.com/words/net/aspose.words/font/properties/UnderlineColor)|

##### Text Effects

See the following link in the documentation for further information:

- [Font](https://apireference.aspose.com/words/net/aspose.words/font)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Animated Effect |Yes | | |
|Double Strikethrough |Yes | |- [Font.DoubleStrikeThrough](https://apireference.aspose.com/words/net/aspose.words/font/properties/DoubleStrikeThrough)|
|Strikethrough |Yes | |- [Font.StrikeThrough](https://apireference.aspose.com/words/net/aspose.words/font/properties/StrikeThrough)|
|Subscript/Superscript |Yes | |<p>- [Font.Subscript](https://apireference.aspose.com/words/net/aspose.words/font/properties/Subscript) </p><p>- [Font.Superscript](https://apireference.aspose.com/words/net/aspose.words/font/properties/Superscript)</p>|
|Shadow |Yes | |- [Font.Shadow](https://apireference.aspose.com/words/net/aspose.words/font/properties/Shadow)|
|Outline |Yes | |- [Font.Outline](https://apireference.aspose.com/words/net/aspose.words/font/properties/Outline)|
|Emboss |Yes | |- [Font.Emboss](https://apireference.aspose.com/words/net/aspose.words/font/properties/Emboss)|
|Imprint (Engrave) |Yes | |- [Font.Engrave](https://apireference.aspose.com/words/net/aspose.words/font/properties/Engrave)|
|Small Caps |Yes | |- [Font.SmallCaps](https://apireference.aspose.com/words/net/aspose.words/font/properties/SmallCaps)|
|All Caps |Yes | |- [Font.AllCaps](https://apireference.aspose.com/words/net/aspose.words/font/properties/AllCaps)|
|Hidden Text |Yes | |- [Font.Hidden](https://apireference.aspose.com/words/net/aspose.words/font/properties/Hidden)|
|Special Hidden |Yes | | |
|Web Hidden |Yes | | |

##### Character Spacing

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Scale |Yes | |- [Font.Scaling](https://apireference.aspose.com/words/net/aspose.words/font/properties/Scaling)|
|Expanded/Compressed |Yes | |- [Font.Spacing](https://apireference.aspose.com/words/net/aspose.words/font/properties/Spacing)|
|Vertical Position |Yes | |- [Font.Position](https://apireference.aspose.com/words/net/aspose.words/font/properties/Position)|

