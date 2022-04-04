---
title: OpenDocument Import - Paragraph Features
second_title: Aspose.Words for Java
articleTitle: Paragraph Features Supported on OpenDocument Import
linktitle: Paragraph Features Supported on OpenDocument Import
description: "Import ODT document using paragraph load options in Java."
type: docs
weight: 80
url: /java/paragraph-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}}

Each paragraph in a document is represented in Aspose.Words as a Paragraph node. A paragraph represents a block of text in a document and have a variety of properties and styles.

Using Aspose.Words you can access and change virtually all properties of a paragraph. Nearly all paragraph attributes are supported. You can also easily insert and remove paragraphs.

Paragraph formatting is contained within the ParagraphFormat class which is linked to the paragraph.

See the following links in the documentation for further information:

- Inserting Document Elements
- **Paragraph**
- **Paragraph.ParagraphFormat**

{{% /alert %}}

## General Formatting

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |<p>- **ParagraphFormat** </p><p>- **ParagraphFormat.Style**</p>|
|Alignment |Yes | |- **ParagraphFormat.Alignment**|
|Right to Left Paragraph |Yes | |- **ParagraphFormat.Bidi**|
|Bullets and Numbers |Yes | |<p>- **ParagraphFormat.ListFormat** </p><p>- **ParagraphFormat.ListLabel**</p>|
|Outline Level |Yes | |- **ParagraphFormat.OutlineLevel**|
|Run Properties for the Paragraph Mark |Yes | |- **ParagraphFormat.ParagraphBreakFont**|
|Suppress Line Numbers |Yes | |- **ParagraphFormat.SurpressLineNumbers**|
|Suppress Hyphenation |Yes | |- **ParagraphFormat.SurpressAutoHyphens**|

## Indents

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Left Indent |Yes | |- **ParagraphFormat.LeftIndent**|
|Right Indent |Yes | |- **ParagraphFormat.RightIndent**|
|First Line Indent |Yes | |- **ParagraphFormat.FirstLineIndent**|
|Hanging Indent |Yes | |- **ParagraphFormat.FirstLineIndent**|
|Mirror Indents |N/A | | |
|Automatically Adjust Right Indent |N/A | | |

## Spacing

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Space Before |Yes | |- **ParagraphFormat.SpaceBefore**|
|Space After |Yes | |- **ParagraphFormat.SpaceAfter**|
|Space Auto |Yes | |<p>- **ParagraphFormat.SpaceBeforeAuto** </p><p>- **ParagraphFormat.SpaceAfterAuto**</p>|
|Line Spacing |Yes | |<p>- **ParagraphFormat.LineSpacing** </p><p>- **ParagraphFormat.LineSpacingRule**</p>|
|No Space between Conforming Paragraphs |N/A | | |
|Snap To Grid |Yes | | |

## Keeps and Breaks

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Widow/Orphan Control |Yes | |- **ParagraphFormat.WidowControl**|
|Keep With Next |Yes | |- **ParagraphFormat.KeepWithNext**|
|Keep Lines Together |Yes | |- **ParagraphFormat.KeepTogether**|
|Page Break Before |Yes | |- **ParagraphFormat.PageBreakBefore**|

## Text Frames

This is the legacy text frames from Word 97, not to be confused with the Autoshape Textbox which is discussed under Drawing Objects.

Text frames are preserved in the model but there is no API or node to modify or access information about frames.

Text from text frames is saved to ODT as normal text paragraphs.

During round trip these will be imported back as normal paragraphs and not text frames.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Frames |Planned | | |

## Tab Stops

All features of tab stops are supported in Aspose.Words except for relative tab stops.

Using Aspose.Words you can find tab stops based off position or index. You can change tab stop features like position, alignment etc or remove tabstops completely.

See the following link in the documentation for further information:

- **ParagraphFormat.TabStops**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Absolute Position |Yes | |- **TabStop.Position**|
|Relative Position |N/A | | |
|Alignment: Left, Center, Right, Decimal, Bar |Yes | |- **TabStop.Alignment**|
|Leader |Yes | |- **TabStop.Leader**|

## Drop Caps

Drop Caps are partially supported and preserved during document conversion. A drop cap is a text frame which is imported as a separate paragraph (from the rest of the paragraph as seen in the source document).

You can modify drop cap properties and position, however the new settings are not applied to the drop cap. You cannot yet create new drop caps (although you can easily simulate them through the use of a textbox). 

This will be improved in a future version of Aspose.Words.

See the following links in the documentation for further information:

- **ParagraphFormat.DropCapPositon**
- **ParagraphFormat.LinesToDrop**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Drop Caps |Yes | | |

## Borders

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Border Sides |Yes | |<p>- **ParagraphFormat.Borders** </p><p>- **LineStyle**</p>|
|Shadow |N/A | | |
|3D Frame |Yes | |- **Border.LineStyle**|
|Style |Yes | |- **Border.LineStyle**|
|Color |Yes | |- **Border.Color**|
|Width |Yes | |- **Border.LineWidth**|
|Distance from Text |Yes | |- **Border.DistanceFromText**|

## Shading

See the following link in the documentation for further information:

- **ParagraphFormat.Shading**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shading |Yes | | |

## Asian Typography

Asian Typography settings is fully supported during conversion. However, there is currently no API to access or modify these settings.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Use Asian Rules for Controlling First and Last Characters |N/A | | |
|Allow Latin Text to Wrap in the Middle of a Word |N/A | | |
|Allow Hanging Punctuation |Yes | | |
|Allow Punctuation at Start of a Line to Compress |N/A | | |
|Automatically Adjust Space between Asian and Latin Text |Yes | | |
|Automatically Adjust Space between Asian Text and Numbers |N/A | | |
|Text Vertical Alignment |N/A | | |

