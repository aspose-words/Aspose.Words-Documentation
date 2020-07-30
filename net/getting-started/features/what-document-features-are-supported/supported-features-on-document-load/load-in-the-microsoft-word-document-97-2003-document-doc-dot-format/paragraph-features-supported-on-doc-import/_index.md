---
title: Paragraph Features Supported on DOC Import
type: docs
weight: 90
url: /net/paragraph-features-supported-on-doc-import/
---

{{% alert color="primary" %}} 

Each paragraph in a document is represented in Aspose.Words as a Paragraph node. A paragraph represesents a block of text in a document and have a variety of properties and styles.

Using Aspose.Words you can access and change virtually all properties of a paragraph. Nearly all paragraph attributes are supported. You can also easily insert and remove paragraphs.

Paragraph formatting is contained within the ParagraphFormat class which is linked to the paragraph.

See the following links in the documentation for further information:

- [Inserting Document Elements](/pages/createpage.action?spaceKey=wordsnet&title=Inserting+Document+Elements&linkCreation=true&fromPageId=2595908)
- [Paragraph](/pages/createpage.action?spaceKey=wordsnet&title=Paragraph+Class&linkCreation=true&fromPageId=2595908)
- [Paragraph.ParagraphFormat](/pages/createpage.action?spaceKey=wordsnet&title=ParagraphFormat+Class&linkCreation=true&fromPageId=2595908)

[Jump to this location in the export section](/pages/createpage.action?spaceKey=wordsnet&title=Doc+Export&linkCreation=true&fromPageId=2595908)

{{% /alert %}} 
##### **General Formatting**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style |Yes | |<p>- [ParagraphFormat](/pages/createpage.action?spaceKey=wordsnet&title=ParagraphFormat+Class&linkCreation=true&fromPageId=2595908) </p><p>- [ParagraphFormat.Style](/pages/createpage.action?spaceKey=wordsnet&title=Style+Class&linkCreation=true&fromPageId=2595908)</p>|
|Alignment |Yes |The special "Thai Distributed" alignment is also supported during conversion. There is currently no API to access or modify this alignment. |- [ParagraphFormat.Alignment](/pages/createpage.action?spaceKey=wordsnet&title=Alignment+Property&linkCreation=true&fromPageId=2595908)|
|Right to Left Paragraph |Yes | |- [ParagraphFormat.Bidi](/pages/createpage.action?spaceKey=wordsnet&title=Bidi+Property&linkCreation=true&fromPageId=2595908)|
|Bullets and Numbers |Yes | |<p>- **ParagraphFormat.ListFormat** </p><p>- **ParagraphFormat.ListLabel**</p>|
|Outline Level |Yes | |- [ParagraphFormat.OutlineLevel](/pages/createpage.action?spaceKey=wordsnet&title=OutlineLevel+Class&linkCreation=true&fromPageId=2595908)|
|Run Properties for the Paragraph Mark |Yes | |- **ParagraphFormat.ParagraphBreakFont**|
|Suppress Line Numbers |Yes | |- **ParagraphFormat.SurpressLineNumbers**|
|Suppress Hyphenation |Yes | |- **ParagraphFormat.SurpressAutoHyphens**|
##### **Indents**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Left Indent |Yes | |- [ParagraphFormat.LeftIndent](/pages/createpage.action?spaceKey=wordsnet&title=LeftIndent+Property&linkCreation=true&fromPageId=2595908)|
|Right Indent |Yes | |- [ParagraphFormat.RightIndent](/pages/createpage.action?spaceKey=wordsnet&title=RightIndent+Property&linkCreation=true&fromPageId=2595908)|
|First Line Indent |Yes | |- [ParagraphFormat.FirstLineIndent](/pages/createpage.action?spaceKey=wordsnet&title=FirstLineIndent+Property&linkCreation=true&fromPageId=2595908)|
|Hanging Indent |Yes | |- **ParagraphFormat.FirstLineIndent**|
|Mirror Indents |Yes | |<p>- **ParagraphFormat.LeftIndent** </p><p>- **ParagraphFormat.RightIndent**</p>|
|Automatically Adjust Right Indent |Yes | | |
##### **Spacing**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Space Before |Yes | |- [ParagraphFormat.SpaceBefore](/pages/createpage.action?spaceKey=wordsnet&title=SpaceBefore+Property&linkCreation=true&fromPageId=2595908)|
|Space After |Yes | |- [ParagraphFormat.SpaceAfter](/pages/createpage.action?spaceKey=wordsnet&title=SpaceAfter+Property&linkCreation=true&fromPageId=2595908)|
|Space Auto |Yes | |<p>- [ParagraphFormat.SpaceBeforeAuto](/pages/createpage.action?spaceKey=wordsnet&title=SpaceBeforeAuto+Property&linkCreation=true&fromPageId=2595908) </p><p>- [ParagraphFormat.SpaceAfterAuto](/pages/createpage.action?spaceKey=wordsnet&title=SpaceAfterAuto+Property&linkCreation=true&fromPageId=2595908)</p>|
|Line Spacing |Yes | |<p>- [ParagraphFormat.LineSpacing](/pages/createpage.action?spaceKey=wordsnet&title=LineSpacing+Property&linkCreation=true&fromPageId=2595908) </p><p>- [ParagraphFormat.LineSpacingRule](/pages/createpage.action?spaceKey=wordsnet&title=LineSpacingRule+Class&linkCreation=true&fromPageId=2595908)</p>|
|No Space between Conforming Paragraphs |Yes | |- [ParagraphFormat.NoSpaceBetweenParagraphsOfSameStyle](/pages/createpage.action?spaceKey=wordsnet&title=NoSpaceBetweenParagraphsOfSameStyle+Property&linkCreation=true&fromPageId=2595908)|
|Snap To Grid |Yes | | |
##### **Keeps and Breaks**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Widow/Orphan Control |Yes | |- [ParagraphFormat.WidowControl](/pages/createpage.action?spaceKey=wordsnet&title=WidowControl+Property&linkCreation=true&fromPageId=2595908)|
|Keep With Next |Yes | |- [ParagraphFormat.KeepWithNext](/pages/createpage.action?spaceKey=wordsnet&title=KeepWithNext+Property&linkCreation=true&fromPageId=2595908)|
|Keep Lines Together |Yes | |- [ParagraphFormat.KeepTogether](/pages/createpage.action?spaceKey=wordsnet&title=KeepTogether+Property&linkCreation=true&fromPageId=2595908)|
|Page Break Before |Yes | |- [ParagraphFormat.PageBreakBefore](/pages/createpage.action?spaceKey=wordsnet&title=PageBreakBefore+Property&linkCreation=true&fromPageId=2595908)|
##### **Text Frames**
This is the legacy text frames from Word 97, not to be confused with the Autoshape Textbox which is discussed under Drawing Objects.

Text frames are preserved in the model but there is no API or node to modify or access information about frames.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Frames |Yes | | |
##### **Tab Stops**
All features of tab stops are supported in Aspose.Words except for relative tab stops.

Using Aspose.Words you can find tab stops based off position or index. You can change tab stop features like position, alignment etc or remove tabstops completely.

See the following link in the documentation for further information:

- [ParagraphFormat.TabStops](/pages/createpage.action?spaceKey=wordsnet&title=TabStops+Property&linkCreation=true&fromPageId=2595908)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Absolute Position |Yes | |- [TabStop.Position](/pages/createpage.action?spaceKey=wordsnet&title=Position+Property&linkCreation=true&fromPageId=2595908)|
|Relative Position |Planned |A relative position tab can be inserted in Microsoft Word using the "Insert Alignment Tab" button. This type of tab is relative to either the page margin or the indent of the paragraph. <br><br>This allows tab stops to appear in the same relative place even when the position of the paragraph or page is modified. <br><br>Currently Aspose.Words supports these types of tab stops in OOXML and WordML formats only. There is currently no API to retrieve the properties of this tab e.g RelativeTo, Alignment, Leader etc. Further support is planned. |- [AbsolutePositionTab](/pages/createpage.action?spaceKey=wordsnet&title=AbsolutePositionTab+Class&linkCreation=true&fromPageId=2595908)|
|Alignment: Left, Center, Right, Decimal, Bar |Yes | |- [TabStop.Alignment](/pages/createpage.action?spaceKey=wordsnet&title=Alignment+Property&linkCreation=true&fromPageId=2595908)|
|Leader |Yes | |- [TabStop.Leader](/pages/createpage.action?spaceKey=wordsnet&title=Leader+Property&linkCreation=true&fromPageId=2595908)|
##### **Drop Caps**
Drop Caps are partially supported and preserved during document conversion. A drop cap is a text frame which is imported as a separate paragraph (from the rest of the paragraph as seen in the source document).

You can modify drop cap properties and position, however the new settings are not applied to the drop cap. You cannot yet create new drop caps (although you can easily simulate them through the use of a textbox). 

This will be improved in a future version of Aspose.Words.

See the following links in the documentation for further information:

- **ParagraphFormat.DropCapPositon**
- [ParagraphFormat.LinesToDrop](/pages/createpage.action?spaceKey=wordsnet&title=LinesToDrop+Property&linkCreation=true&fromPageId=2595908)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Drop Caps |Yes | | |
##### **Borders**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Border Sides |Yes | |<p>- [ParagraphFormat.Borders](/pages/createpage.action?spaceKey=wordsnet&title=Borders+Property&linkCreation=true&fromPageId=2595908) </p><p>- [LineStyle](/pages/createpage.action?spaceKey=wordsnet&title=LineStyle+Class&linkCreation=true&fromPageId=2595908)</p>|
|Shadow |Yes | |- [Border.Shadow](/pages/createpage.action?spaceKey=wordsnet&title=Shadow+Property&linkCreation=true&fromPageId=2595908)|
|3D Frame |Yes | |- [Border.LineStyle](/pages/createpage.action?spaceKey=wordsnet&title=LineStyle+Class&linkCreation=true&fromPageId=2595908)|
|Style |Yes | |- **Border.LineStyle**|
|Color |Yes | |- [Border.Color](/pages/createpage.action?spaceKey=wordsnet&title=Color+Property&linkCreation=true&fromPageId=2595908)|
|Width |Yes | |- [Border.LineWidth](/pages/createpage.action?spaceKey=wordsnet&title=LineWidth+Property&linkCreation=true&fromPageId=2595908)|
|Distance from Text |Yes | |- [Border.DistanceFromText](/pages/createpage.action?spaceKey=wordsnet&title=DistanceFromText+Property&linkCreation=true&fromPageId=2595908)|
##### **Shading**
See the following link in the documentation for further information:

- [ParagraphFormat.Shading](/pages/createpage.action?spaceKey=wordsnet&title=Shading+Class&linkCreation=true&fromPageId=2595908)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shading |Yes | | |
##### **Asian Typography**
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

