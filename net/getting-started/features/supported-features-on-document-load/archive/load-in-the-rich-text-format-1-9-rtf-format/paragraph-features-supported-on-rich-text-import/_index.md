---
title: RTF Import - Paragraph Features
second_title: Aspose.Words for .NET
articleTitle: Paragraph Features Supported on Rich Text Import
linktitle: Paragraph Features Supported on Rich Text Import
description: "Import RTF document using paragraph load options in C#."
type: docs
weight: 90
url: /net/paragraph-features-supported-on-rich-text-import/
---

{{% alert color="warning" %}}

This page has been archived and has not been updated for some time. It contains information for reference only.

{{% /alert %}}

{{% alert color="primary" %}}

Each paragraph in a document is represented in Aspose.Words as a Paragraph node. A paragraph represesents a block of text in a document and have a variety of properties and styles.

Using Aspose.Words you can access and change virtually all properties of a paragraph. Nearly all paragraph attributes are supported. You can also easily insert and remove paragraphs.

Paragraph formatting is contained within the ParagraphFormat class which is linked to the paragraph.

See the following links in the documentation for further information:

- [Paragraph](https://reference.aspose.com/words/net/aspose.words/Paragraph)
- [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/properties/paragraphformat)

[Jump to this location in the export section](/words/net/paragraph-features-supported-on-rich-text-export/)

{{% /alert %}}

## General Formatting

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |<p>- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) </p><p>- [ParagraphFormat.Style](https://reference.aspose.com/words/net/aspose.words/paragraphformat/style/)</p>|
|Alignment |Yes |The special "Thai Distributed" alignment is also supported during conversion. There is currently no API to access or modify this alignment. |- [ParagraphFormat.Alignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/alignment/)|
|Right to Left Paragraph |Yes | |- [ParagraphFormat.Bidi](https://reference.aspose.com/words/net/aspose.words/paragraphformat/bidi/)|
|Bullets and Numbers |Yes | |<p>- **ParagraphFormat.ListFormat** </p><p>- **ParagraphFormat.ListLabel**</p>|
|Outline Level |Yes | |- [ParagraphFormat.OutlineLevel](https://reference.aspose.com/words/net/aspose.words/paragraphformat/outlinelevel/)|
|Run Properties for the Paragraph Mark |Yes | |- **ParagraphFormat.ParagraphBreakFont**|
|Suppress Line Numbers |Yes | |- **ParagraphFormat.SurpressLineNumbers**|
|Suppress Hyphenation |Yes | |- **ParagraphFormat.SurpressAutoHyphens**|

## Indents

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Left Indent |Yes | |- [ParagraphFormat.LeftIndent](https://reference.aspose.com/words/net/aspose.words/paragraphformat/leftindent/)|
|Right Indent |Yes | |- [ParagraphFormat.RightIndent](https://reference.aspose.com/words/net/aspose.words/paragraphformat/rightindent/)|
|First Line Indent |Yes | |- [ParagraphFormat.FirstLineIndent](https://reference.aspose.com/words/net/aspose.words/paragraphformat/firstlineindent/)|
|Hanging Indent |Yes | |- **ParagraphFormat.FirstLineIndent**|
|Mirror Indents |Yes | |<p>- **ParagraphFormat.LeftIndent** </p><p>- **ParagraphFormat.RightIndent**</p>|
|Automatically Adjust Right Indent |Yes | | |

## Spacing

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Space Before |Yes | |- [ParagraphFormat.SpaceBefore](https://reference.aspose.com/words/net/aspose.words/paragraphformat/spacebefore/)|
|Space After |Yes | |- [ParagraphFormat.SpaceAfter](https://reference.aspose.com/words/net/aspose.words/paragraphformat/spaceafter/)|
|Space Auto |Yes | |<p>- [ParagraphFormat.SpaceBeforeAuto](https://reference.aspose.com/words/net/aspose.words/paragraphformat/spacebeforeauto/) </p><p>- [ParagraphFormat.SpaceAfterAuto](https://reference.aspose.com/words/net/aspose.words/paragraphformat/spaceafterauto/)</p>|
|Line Spacing |Yes | |<p>- [ParagraphFormat.LineSpacing](https://reference.aspose.com/words/net/aspose.words/paragraphformat/linespacing/) </p><p>- [ParagraphFormat.LineSpacingRule](https://reference.aspose.com/words/net/aspose.words/paragraphformat/linespacing/rule)</p>|
|No Space between Conforming Paragraphs |Yes | |- [ParagraphFormat.NoSpaceBetweenParagraphsOfSameStyle](https://reference.aspose.com/words/net/aspose.words/paragraphformat/nospacebetweenparagraphsofsamestyle/)|
|Snap To Grid |Yes | | |

## Keeps and Breaks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Widow/Orphan Control |Yes | |- [ParagraphFormat.WidowControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/widowcontrol/)|
|Keep With Next |Yes | |- [ParagraphFormat.KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/)|
|Keep Lines Together |Yes | |- [ParagraphFormat.KeepTogether](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keeptogether/)|
|Page Break Before |Yes | |- [ParagraphFormat.PageBreakBefore](https://reference.aspose.com/words/net/aspose.words/paragraphformat/pagebreakbefore/)|

## Text Frames

This is the legacy text frames from Word 97, not to be confused with the Autoshape Textbox which is discussed under Drawing Objects.

Text frames are preserved in the model but there is no API or node to modify or access information about frames.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Frames |Yes | | |

## Tab Stops

All features of tab stops are supported in Aspose.Words except for relative tab stops.

Using Aspose.Words you can find tab stops based off position or index. You can change tab stop features like position, alignment etc or remove tabstops completely.

See the following link in the documentation for further information:

- [ParagraphFormat.TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/properties/tabstops)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Absolute Position |Yes | |- [TabStop.Position](https://reference.aspose.com/words/net/aspose.words/tabstop/position/)|
|Relative Position |Planned |A relative position tab can be inserted in Microsoft Word using the "Insert Alignment Tab" button. This type of tab is relative to either the page margin or the indent of the paragraph. <br><br>This allows tab stops to appear in the same relative place even when the position of the paragraph or page is modified. <br><br>Currently Aspose.Words supports these types of tab stops in OOXML and WordML formats only. There is currently no API to retrieve the properties of this tab e.g RelativeTo, Alignment, Leader etc. Further support is planned. |- [AbsolutePositionTab](https://reference.aspose.com/words/net/aspose.words/absolutepositiontab/)|
|Alignment: Left, Center, Right, Decimal, Bar |Yes | |- [TabStop.Alignment](https://reference.aspose.com/words/net/aspose.words/tabstop/alignment/)|
|Leader |Yes | |- [TabStop.Leader](https://reference.aspose.com/words/net/aspose.words/tabstop/leader/)|

## Drop Caps

Drop Caps are partially supported and preserved during document conversion. A drop cap is a text frame which is imported as a separate paragraph (from the rest of the paragraph as seen in the source document).

You can modify drop cap properties and position, however the new settings are not applied to the drop cap. You cannot yet create new drop caps (although you can easily simulate them through the use of a textbox). 

This will be improved in a future version of Aspose.Words.

See the following links in the documentation for further information:

- **ParagraphFormat.DropCapPositon**
- [ParagraphFormat.LinesToDrop](https://reference.aspose.com/words/net/aspose.words/paragraphformat/properties/linestodrop)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Drop Caps |Yes | | |

## Borders

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Border Sides |Yes | |<p>- [ParagraphFormat.Borders](https://reference.aspose.com/words/net/aspose.words/paragraphformat/borders/) </p><p>- [LineStyle](https://reference.aspose.com/words/net/aspose.words/linestyle/)</p>|
|Shadow |Yes | |- [Border.Shadow](https://reference.aspose.com/words/net/aspose.words/border/shadow/)|
|3D Frame |Yes | |- [Border.LineStyle](https://reference.aspose.com/words/net/aspose.words/border/linestyle/)|
|Style |Yes | |- **Border.LineStyle**|
|Color |Yes | |- [Border.Color](https://reference.aspose.com/words/net/aspose.words/border/color/)|
|Width |Yes | |- [Border.LineWidth](https://reference.aspose.com/words/net/aspose.words/border/linewidth/)|
|Distance from Text |Yes | |- [Border.DistanceFromText](https://reference.aspose.com/words/net/aspose.words/border/distancefromtext/)|

## Shading

See the following link in the documentation for further information:

- [ParagraphFormat.Shading](https://reference.aspose.com/words/net/aspose.words/paragraphformat/properties/shading)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shading |Yes | | |

## Asian Typography

Asian Typography settings is fully supported during conversion. However there is currently no API to access or modify these settings.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Use Asian Rules for Controlling First and Last Characters |Yes | | |
|Allow Latin Text to Wrap in the Middle of a Word |Yes | | |
|Allow Hanging Punctuation |Yes | | |
|Allow Punctuation at Start of a Line to Compress |Yes | | |
|Automatically Adjust Space between Asian and Latin Text |Yes | | |
|Automatically Adjust Space between Asian Text and Numbers |Yes | | |
|Text Vertical Alignment |Yes | | |

