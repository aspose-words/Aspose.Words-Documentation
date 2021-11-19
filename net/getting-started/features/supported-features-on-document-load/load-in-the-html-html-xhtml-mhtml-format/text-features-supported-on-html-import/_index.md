---
title: Text Features Supported on HTML Import
description: "Aspose.Words for .NET allows you to work with text features supported on HTML-based format import."
type: docs
weight: 130
url: /net/text-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

Text content is imported from any text area found in the HTML document. The formatting of text elements are imported from &lt;span&gt; elements.

Aspose.Words supports reading the text content even if the input HTML is not properly formed.

See the following links in the documentation for further information:

- [Run](https://apireference.aspose.com/words/net/aspose.words/run)
- [Run.Font](https://apireference.aspose.com/words/net/aspose.words/inline/properties/font)
- [Run.Text](https://apireference.aspose.com/words/net/aspose.words/run/properties/text)

{{% /alert %}} 

## Characters

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes |Imported from dir attribute on span. |<p>- [Font.Bidi](https://apireference.aspose.com/words/net/aspose.words/font/properties/bidi) </p><p>- [Font.BoldBi](https://apireference.aspose.com/words/net/aspose.words/font/properties/boldbi) </p><p>- [Font.LocaleIdBi](https://apireference.aspose.com/words/net/aspose.words/font/properties/localeidbi)</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes |Imported from " " entity code. |- [ControlChar.NonBreakingSpace](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/nonbreakingspace)|
|Non Breaking Hyphen |Planned | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Planned |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Planned |There is no equivalent of a tab in HTML documents. Tabs are currently exported as a series of non-breaking spaces. <br><br>These are imported back as a series of non-breaking spaces but there is a work around to replace these with proper tabs. <br><br>It is planne to import the special Microsoft Word mso attribute to properly import tab sequences. |- [ControlChar.Tab](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/tab)|

## Breaks

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Line Break |Yes |Imported from &lt;br&gt; element. |- [ControlChar.LineBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/linebreak)|
|Line Break Clear Type |Yes | | |
|Page Break |Yes |Imported from &lt;br style="page-break-before:always; clear:both"&gt; |- [ControlChar.PageBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/pagebreak)|
|Column Break |Yes |Imported using the Microsoft Office attribute on break: style="mso-column-break-before:always" |- [ControlChar.ColumnBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/columnbreak)|

## General Formatting

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Character Style |Yes |Character style is imported from either inline CSS (style) or embedded or linked CSS style sheet (class) on span elements. <br><br>Inline CSS (from style attribute) is imported as direct formatting on the text (stored in the Font of the Run node). An Embedded or Linked CSS style (through the class attribute) is imported as a Style and applied to the Run node in the document. This formatting can be accessed using the Run.Font.Style property. A linked CSS sheet can also be downloaded from an external address on the internet. <br><br>When there is conflicting formatting on inline and embedded/external CSS, as with CSS the formatting from inline styles are taken first, then the embedded formatting and finally the external formatting. <br><br>Styles are imported from embedded or external style sheets. If there is no linked style sheet of either of these kinds then the document is imported with no styles (apart from default Normal style). To make sure styles are imported use a CSS style sheet of any kind. There is a load option to control whether embedded or external style sheets are read or skipped during HTML import. There is also an option to supply your own CSS style sheet instead. |<p>- [Font.Style](https://apireference.aspose.com/words/net/aspose.words/font/properties/style) </p><p>- **LoadOptions.ResourceLoadingCallback**</p>|
|Color |Yes |Imported from color on style attribute. |- [Font.Color](https://apireference.aspose.com/words/net/aspose.words/font/properties/color)|
|East Asian Typography |Planned | | |
|Highlight Color |Planned |Highlight is imported as a solid pattern. <br><br>Can be made to round-trip with some research. |- [Font.HighlightColor](https://apireference.aspose.com/words/net/aspose.words/font/properties/highlightcolor)|
|Language |Yes |Imported from lang attribute on &lt;span&gt;. <br><br>If this attribute is missing then the default language for the document is used. |<p>- [Font.LocaleId](https://apireference.aspose.com/words/net/aspose.words/font/properties/localeid) </p><p>- **Font.LocaleIdBi**</p>|
|Do not Check Spelling or Grammar |Planned | |- [Font.NoProofing](https://apireference.aspose.com/words/net/aspose.words/font/properties/noproofing)|
|Border |Yes |Imported from border-style, border-width, border-color on &lt;span&gt;. |- [Font.Border](https://apireference.aspose.com/words/net/aspose.words/font/properties/border)|
|Shading |Yes |Imported from background-color on &lt;span&gt;. <br><br>Imported into the model as solid pattern on Run. |- [Font.Shading](https://apireference.aspose.com/words/net/aspose.words/font/properties/shading)|

## Font

Bold and italics imported from font-weight:bold and font-style:italics on style.

This formatting can also be imported from simple tags e.g &lt;b&gt;&lt;/b&gt;, &lt;i&gt;&lt;/i&gt;.

All other font formatting is imported from standard CCS attributes on the "style" attribute.

&lt;pre&gt; tag is imported as text formatted with "Courier New" font.

There is an option to control how size is exported. Font can be exported as points or as em units. This allows fonts to be resized automatically by browsers by increasing or decreasing font size.

See the following links in the documentation for further information:

- [Font.Bold](https://apireference.aspose.com/words/net/aspose.words/font/properties/bold)
- **Font.Italics**
- [Font.Name](https://apireference.aspose.com/words/net/aspose.words/font/properties/name)
- [Font.NameFarEast](https://apireference.aspose.com/words/net/aspose.words/font/properties/namefareast)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Font |Yes | | |

## Underline

Imported from style attribute "text-decoration:underline" or from &lt;u&gt;&lt;/u&gt; tags.

Import of underline color is currently not supported.

See the following link in the documentation for further information:

- [Font.Underline](https://apireference.aspose.com/words/net/aspose.words/font/properties/underline)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Underline Type |N/A | | |
|Underline Color |Planned |Can be imported from a bottom border with different color from text. |- [Font.UnderlineColor](https://apireference.aspose.com/words/net/aspose.words/font/properties/underlinecolor)|

## Text Effects

See the following link in the documentation for further information:

- [Font](https://apireference.aspose.com/words/net/aspose.words/font)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Animated Effect |N/A | | |
|Double Strikethrough |N/A | | |
|Strikethrough |Yes |Imported from text-decoration:line-through on &lt;span&gt; style. |- [Font.StrikeThrough](https://apireference.aspose.com/words/net/aspose.words/font/properties/strikethrough)|
|Subscript/Superscript |Yes |Imported from vertical-align:sub and vertical-align:super on &lt;span&gt; style. |<p>- [Font.Subscript](https://apireference.aspose.com/words/net/aspose.words/font/properties/subscript) </p><p>- [Font.Superscript](https://apireference.aspose.com/words/net/aspose.words/font/properties/superscript)</p>|
|Shadow |N/A | | |
|Outline |N/A | | |
|Emboss |N/A | | |
|Imprint (Engrave) |N/A | | |
|Small Caps |Yes |Imported from style="font-variant:small-caps". |- [Font.SmallCaps](https://apireference.aspose.com/words/net/aspose.words/font/properties/smallcaps)|
|All Caps |Yes |Imported from style="text-transform:uppercase". |- [Font.AllCaps](https://apireference.aspose.com/words/net/aspose.words/font/properties/allcaps)|
|Hidden Text |Yes |Imported from style="display:none". |- [Font.Hidden](https://apireference.aspose.com/words/net/aspose.words/font/properties/hidden)|
|Special Hidden |Planned | | |
|Web Hidden |Planned | | |

## Character Spacing

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Scale |N/A | | |
|Expanded/Compressed |Yes |Imported from <br><br>style="letter-spacing:XXXpt". |- [Font.Spacing](https://apireference.aspose.com/words/net/aspose.words/font/properties/spacing)|
|Vertical Position |Yes |Imported from "vertical-align:XXXpt". |- [Font.Position](https://apireference.aspose.com/words/net/aspose.words/font/properties/position)|

