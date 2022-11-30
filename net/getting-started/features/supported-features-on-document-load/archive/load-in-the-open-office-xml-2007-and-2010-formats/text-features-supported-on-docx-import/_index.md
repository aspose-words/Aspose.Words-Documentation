---
title: DOCX Import - Text Features
second_title: Aspose.Words for .NET
articleTitle: Text Features Supported on DOCX Import
linktitle: Text Features Supported on DOCX Import
description: "Import OOXML document using text load options in C#."
type: docs
weight: 130
url: /net/text-features-supported-on-docx-import/
---

{{% alert color="warning" %}}

This page has been archived and has not been updated for some time. It contains information for reference only.

{{% /alert %}}

{{% alert color="primary" %}}

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

See the following links in the documentation for further information:

- [Run](https://reference.aspose.com/words/net/aspose.words/node/properties/index)
- [Run.Font](https://reference.aspose.com/words/net/aspose.words/inline/properties/font)
- [Run.Text](https://reference.aspose.com/words/net/aspose.words/run/properties/text)

[Jump to this location in the export section](/words/net/save-in-the-flatopc-ooxml-document-xml-format/)

{{% /alert %}}

## Characters

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes | |<p>- [Font.Bidi](https://reference.aspose.com/words/net/aspose.words/font/properties/bidi) </p><p>- [Font.BoldBi](https://reference.aspose.com/words/net/aspose.words/font/properties/boldbi) </p><p>- [Font.LocaleIdBi](https://reference.aspose.com/words/net/aspose.words/font/properties/localeidbi)</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes | |- [ControlChar.NonBreakingSpace](https://reference.aspose.com/words/net/aspose.words/controlchar/fields/nonbreakingspace)|
|Non Breaking Hyphen |Yes | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Yes |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Yes | |- [ControlChar.Tab](https://reference.aspose.com/words/net/aspose.words/controlchar/fields/tab)|

## Breaks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Break |Yes | |- [ControlChar.LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/fields/linebreak)|
|Line Break Clear Type |Yes | | |
|Page Break |Yes | |- [ControlChar.PageBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/fields/pagebreak)|
|Column Break |Yes | |- [ControlChar.ColumnBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/fields/columnbreak)|

## General Formatting

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Character Style |Yes | |- [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/properties/style)|
|Color |Yes | |- [Font.Color](https://reference.aspose.com/words/net/aspose.words/font/properties/color)|
|East Asian Typography |Yes | | |
|Highlight Color |Yes | |- [Font.HighlightColor](https://reference.aspose.com/words/net/aspose.words/font/properties/highlightcolor)|
|Language |Yes | |<p>- [Font.LocaleId](https://reference.aspose.com/words/net/aspose.words/font/properties/localeid) </p><p>- **Font.LocaleIdBi**</p>|
|Do not Check Spelling or Grammar |Yes | |- [Font.NoProofing](https://reference.aspose.com/words/net/aspose.words/font/properties/noproofing)|
|Border |Yes | |- [Font.Border](https://reference.aspose.com/words/net/aspose.words/font/properties/border)|
|Shading |Yes | |- [Font.Shading](https://reference.aspose.com/words/net/aspose.words/font/properties/shading)|

## Font

See the following links in the documentation for further information:

- [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/properties/bold)
- **Font.Italics**
- [Font.Name](https://reference.aspose.com/words/net/aspose.words/font/properties/name)
- [Font.NameFarEast](https://reference.aspose.com/words/net/aspose.words/font/properties/namefareast)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Font |Yes | | |

## Underline

See the following link in the documentation for further information:

- [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/properties/underline)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Underline Type |Yes |The underline property is used to both define if the run is underline and with what type of underline is used. |- **Font.Underline**|
|Underline Color |Yes | |- [Font.UnderlineColor](https://reference.aspose.com/words/net/aspose.words/font/properties/underlinecolor)|

## Text Effects

See the following link in the documentation for further information:

- [Font](https://reference.aspose.com/words/net/aspose.words/font/properties/index)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Animated Effect |Yes | | |
|Double Strikethrough |Yes | |- [Font.DoubleStrikeThrough](https://reference.aspose.com/words/net/aspose.words/font/properties/doublestrikethrough)|
|Strikethrough |Yes | |- [Font.StrikeThrough](https://reference.aspose.com/words/net/aspose.words/font/properties/strikethrough)|
|Subscript/Superscript |Yes | |<p>- [Font.Subscript](https://reference.aspose.com/words/net/aspose.words/font/properties/subscript) </p><p>- [Font.Superscript](https://reference.aspose.com/words/net/aspose.words/font/properties/superscript)</p>|
|Shadow |Yes | |- [Font.Shadow](https://reference.aspose.com/words/net/aspose.words/font/properties/shadow)|
|Outline |Yes | |- [Font.Outline](https://reference.aspose.com/words/net/aspose.words/font/properties/outline)|
|Emboss |Yes | |- [Font.Emboss](https://reference.aspose.com/words/net/aspose.words/font/properties/emboss)|
|Imprint (Engrave) |Yes | |- [Font.Engrave](https://reference.aspose.com/words/net/aspose.words/font/properties/engrave)|
|Small Caps |Yes | |- [Font.SmallCaps](https://reference.aspose.com/words/net/aspose.words/font/properties/smallcaps)|
|All Caps |Yes | |- [Font.AllCaps](https://reference.aspose.com/words/net/aspose.words/font/properties/allcaps)|
|Hidden Text |Yes | |- [Font.Hidden](https://reference.aspose.com/words/net/aspose.words/font/properties/hidden)|
|Special Hidden |Yes | | |
|Web Hidden |Yes | | |

## Character Spacing

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Scale |Yes | |- [Font.Scaling](https://reference.aspose.com/words/net/aspose.words/font/properties/scaling)|
|Expanded/Compressed |Yes | |- [Font.Spacing](https://reference.aspose.com/words/net/aspose.words/font/properties/spacing)|
|Vertical Position |Yes | |- [Font.Position](https://reference.aspose.com/words/net/aspose.words/font/properties/position)|
