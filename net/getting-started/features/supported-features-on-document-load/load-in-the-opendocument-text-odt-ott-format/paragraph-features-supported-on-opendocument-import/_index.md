---
title: Paragraph Features Supported on OpenDocument Import – Aspose.Words for .NET
articleTitle: Paragraph Features Supported on OpenDocument Import
linktitle: Paragraph Features Supported on OpenDocument Import
description: "Work with paragraph features supported on OpenDocument Text import."
type: docs
weight: 90
url: /net/paragraph-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}}

Each paragraph in a document is represented in Aspose.Words as a Paragraph node. A paragraph represesents a block of text in a document and have a variety of properties and styles.

Using Aspose.Words you can access and change virtually all properties of a paragraph. Nearly all paragraph attributes are supported. You can also easily insert and remove paragraphs.

Paragraph formatting is contained within the ParagraphFormat class which is linked to the paragraph.

See the following links in the documentation for further information:

- [Paragraph](https://apireference.aspose.com/words/net/aspose.words/paragraph)
- [Paragraph.ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/paragraphformat)

[Jump to this location in the export section](/words/net/paragraph-features-supported-on-opendocument-export/)

{{% /alert %}}

## General Formatting

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |<p>- [ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/paragraphformat) </p><p>- [ParagraphFormat.Style](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/style)</p>|
|Alignment |Yes | |- [ParagraphFormat.Alignment](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/alignment)|
|Right to Left Paragraph |Yes | |- [ParagraphFormat.Bidi](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/bidi)|
|Bullets and Numbers |Yes | |<p>- **ParagraphFormat.ListFormat** </p><p>- **ParagraphFormat.ListLabel**</p>|
|Outline Level |Yes | |- [ParagraphFormat.OutlineLevel](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/outlinelevel)|
|Run Properties for the Paragraph Mark |Yes | |- **ParagraphFormat.ParagraphBreakFont**|
|Suppress Line Numbers |Yes | |- **ParagraphFormat.SurpressLineNumbers**|
|Suppress Hyphenation |Yes | |- **ParagraphFormat.SurpressAutoHyphens**|

## Indents

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Left Indent |Yes | |- [ParagraphFormat.LeftIndent](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/leftindent)|
|Right Indent |Yes | |- [ParagraphFormat.RightIndent](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/rightindent)|
|First Line Indent |Yes | |- [ParagraphFormat.FirstLineIndent](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/firstlineindent)|
|Hanging Indent |Yes | |- **ParagraphFormat.FirstLineIndent**|
|Mirror Indents |N/A | | |
|Automatically Adjust Right Indent |N/A | | |

## Spacing

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Space Before |Yes | |- [ParagraphFormat.SpaceBefore](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spacebefore)|
|Space After |Yes | |- [ParagraphFormat.SpaceAfter](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spaceafter)|
|Space Auto |Yes | |<p>- [ParagraphFormat.SpaceBeforeAuto](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spacebeforeauto) </p><p>- [ParagraphFormat.SpaceAfterAuto](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spaceafterauto)</p>|
|Line Spacing |Yes | |<p>- [ParagraphFormat.LineSpacing](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/linespacing) </p><p>- [ParagraphFormat.LineSpacingRule](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/linespacingrule)</p>|
|No Space between Conforming Paragraphs |N/A | | |
|Snap To Grid |Yes | | |

## Keeps and Breaks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Widow/Orphan Control |Yes | |- [ParagraphFormat.WidowControl](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/widowcontrol)|
|Keep With Next |Yes | |- [ParagraphFormat.KeepWithNext](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/keepwithnext)|
|Keep Lines Together |Yes | |- [ParagraphFormat.KeepTogether](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/keeptogether)|
|Page Break Before |Yes | |- [ParagraphFormat.PageBreakBefore](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/pagebreakbefore)|

## Text Frames

This is the legacy text frames from Word 97, not to be confused with the Autoshape Textbox which is discussed under Drawing Objects.

Text frames are preserved in the model but there is no API or node to modify or access information about frames.

Text from text frames is saved to ODT as normal text paragraphs.

During round trip these will be imported back as normal paragraps and not text frames.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Frames |Planned | | |

## Tab Stops

All features of tab stops are supported in Aspose.Words except for relative tab stops.

Using Aspose.Words you can find tab stops based off position or index. You can change tab stop features like position, alignment etc or remove tabstops completely.

See the following link in the documentation for further information:

- [ParagraphFormat.TabStops](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/tabstops)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Absolute Position |Yes | |- [TabStop.Position](https://apireference.aspose.com/words/net/aspose.words/tabstop/properties/position)|
|Relative Position |N/A | | |
|Alignment: Left, Center, Right, Decimal, Bar |Yes | |- [TabStop.Alignment](https://apireference.aspose.com/words/net/aspose.words/tabstop/properties/alignment)|
|Leader |Yes | |- [TabStop.Leader](https://apireference.aspose.com/words/net/aspose.words/tabstop/properties/leader)|

## Drop Caps

Drop Caps are partially supported and preserved during document conversion. A drop cap is a text frame which is imported as a separate paragraph (from the rest of the paragraph as seen in the source document).

You can modify drop cap properties and position, however the new settings are not applied to the drop cap. You cannot yet create new drop caps (although you can easily simulate them through the use of a textbox). 

This will be improved in a future version of Aspose.Words.

See the following links in the documentation for further information:

- **ParagraphFormat.DropCapPositon**
- [ParagraphFormat.LinesToDrop](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/linestodrop)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Drop Caps |Yes | | |

## Borders

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Border Sides |Yes | |<p>- [ParagraphFormat.Borders](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/borders) </p><p>- [LineStyle](https://apireference.aspose.com/words/net/aspose.words/linestyle)</p>|
|Shadow |N/A | | |
|3D Frame |Yes | |- [Border.LineStyle](https://apireference.aspose.com/words/net/aspose.words/border/properties/linestyle)|
|Style |Yes | |- **Border.LineStyle**|
|Color |Yes | |- [Border.Color](https://apireference.aspose.com/words/net/aspose.words/border/properties/color)|
|Width |Yes | |- [Border.LineWidth](https://apireference.aspose.com/words/net/aspose.words/border/properties/linewidth)|
|Distance from Text |Yes | |- [Border.DistanceFromText](https://apireference.aspose.com/words/net/aspose.words/border/properties/distancefromtext)|

## Shading

See the following link in the documentation for further information:

- [ParagraphFormat.Shading](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/shading)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shading |Yes | | |

## Asian Typography

Asian Typography settings is fully supported during conversion. However there is currently no API to access or modify these settings.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Use Asian Rules for Controlling First and Last Characters |N/A | | |
|Allow Latin Text to Wrap in the Middle of a Word |N/A | | |
|Allow Hanging Punctuation |Yes | | |
|Allow Punctuation at Start of a Line to Compress |N/A | | |
|Automatically Adjust Space between Asian and Latin Text |Yes | | |
|Automatically Adjust Space between Asian Text and Numbers |N/A | | |
|Text Vertical Alignment |N/A | | |

