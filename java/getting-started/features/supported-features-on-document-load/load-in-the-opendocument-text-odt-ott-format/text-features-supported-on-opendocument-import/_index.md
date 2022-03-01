---
title: Text Features Supported on OpenDocument Import – Aspose.Words for Java
articleTitle: Text Features Supported on OpenDocument Import
linktitle: Text Features Supported on OpenDocument Import
description: "Import ODT document using text load options in Java."
type: docs
weight: 120
url: /java/text-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}}

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

See the following links in the documentation for further information:

- **Run**
- **Run.Font**
- **Run.Text**

{{% /alert %}}

## Characters

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes | |<p>- **Font.Bidi** </p><p>- **Font.BoldBi** </p><p>- **Font.LocaleIdBi**</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes | |- **ControlChar.NonBreakingSpace**|
|Non Breaking Hyphen |Yes | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Yes |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Yes | |- **ControlChar.Tab**|

## Breaks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Break |Yes | |- **ControlChar.LineBreak**|
|Line Break Clear Type |Yes | | |
|Page Break |Yes | |- **ControlChar.PageBreak**|
|Column Break |Yes | |- **ControlChar.ColumnBreak**|

## General Formatting

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Character Style |Yes | |- **Font.Style**|
|Color |Yes | |- **Font.Color**|
|East Asian Typography |N/A | | |
|Highlight Color |Yes | |- **Font.HighlightColor**|
|Language |Yes | |<p>- **Font.LocaleId** </p><p>- **Font.LocaleIdBi**</p>|
|Do Not Check Spelling or Grammar |N/A | | |
|Border |N/A | | |
|Shading |Yes | |- **Font.Shading**|

## Font

See the following links in the documentation for further information:

- **Font.Bold**
- **Font.Italics**
- **Font.Name**
- **Font.NameFarEast**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Font |Yes | | |

## Underline

See the following link in the documentation for further information:

- **Font.Underline**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Underline Type |Yes |The underline property is used to both define if the run is underline and with what type of underline is used. |- **Font.Underline**|
|Underline Color |Yes | |- **Font.UnderlineColor**|

## Text Effects

See the following link in the documentation for further information:

- **Font**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Animated Effect |Yes | | |
|Double Strikethrough |Yes | |- **Font.DoubleStrikeThrough**|
|Strikethrough |Yes | |- **Font.StrikeThrough**|
|Subscript/Superscript |Yes | |<p>- **Font.Subscript** </p><p>- **Font.Superscript**</p>|
|Shadow |Yes | |- **Font.Shadow**|
|Outline |Yes | |- **Font.Outline**|
|Emboss |Yes | |- **Font.Emboss**|
|Imprint (Engrave) |Yes | |- **Font.Engrave**|
|Small Caps |Yes | |- **Font.SmallCaps**|
|All Caps |Yes | |- **Font.AllCaps**|
|Hidden Text |Yes |ODT also provides an extra type of "hidden" text through the conditional text feature. This is a kind of like an IF field in a Word document. <br><br>Currently this special feature is unsupported in ODT import and export. |- **Font.Hidden**|
|Special Hidden |N/A | | |
|Web Hidden |N/A | | |

## Character Spacing

Kerning and Snap to Grid are not saved to ODT.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Scale |Yes | |- **Font.Scaling**|
|Expanded/Compressed |Yes | |- **Font.Spacing**|
|Vertical Position |Yes | |- **Font.Position**|

