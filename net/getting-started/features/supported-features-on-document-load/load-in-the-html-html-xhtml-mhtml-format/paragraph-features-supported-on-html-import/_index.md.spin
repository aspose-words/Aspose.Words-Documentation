---
title: Paragraph Features Supported on HTML Import
type: docs
weight: 90
url: /net/paragraph-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

Each paragraph in a document is represented in Aspose.Words as a Paragraph node. A paragraph represesents a block of text in a document and have a variety of properties and styles.

Using Aspose.Words you can access and change virtually all properties of a paragraph. Nearly all paragraph attributes are supported. You can also easily insert and remove paragraphs.

Paragraph formatting is contained within the ParagraphFormat class which is linked to the paragraph.

Paragraphs are imported from HTML from &lt;p&gt; and &lt;h1&gt;–&lt;h6&gt; tags.

Most common native HTML tags and CSS formatting are supported during import. Note that Aspose.Words works with Word documents, therefore not all CSS can be imported as some features do not have a useful eqivilant in Word document formats. Such attributes are ignored during import.

Aspose.Words supports most CSS 1 and CCS 2 properties that have an eqivilant use in Word documents.

There is a load option to skip loading any embedded or linked style sheet.

See the following links in the documentation for further information:

- [Working with Paragraphs](https://docs.aspose.com/words/net/working-with-paragraphs/)
- [Paragraph](https://apireference.aspose.com/words/net/aspose.words/paragraph)
- [Paragraph.ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/paragraphformat)
- [LoadOptions.ResourceLoadingCallback](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/resourceloadingcallback)

{{% /alert %}} 

## General Formatting

Paragraph style and formatting can be imported from HTML in the form of tags such as &lt;h1&gt; to &lt;h6&gt; or from &lt;p&gt; tags that have CSS styles. 

&lt;h1&gt; to &lt;h6&gt; tags are imported into the Aspose.Words DOM as the built-in Heading styles: Heading 1 - Heading 6.

Inline CSS (through use of the style attribute) is imported as direct formatting on the paragraph (stored in the ParagraphFormat of the Paragraph node). 

An Embedded or Linked CSS style (through use of the class attribute) is imported as a Style and applied to the Paragraph node in the document. This style formatting can be accessed using the ParagraphFormat.Style property. A linked CSS sheet can also be downloaded automatically from an external address on the internet.

When there is conflicting formatting on inline and embedded/external CSS, as with CSS the formatting from inline styles are taken first, then the embedded formatting and finally the external formatting.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Paragraph Style |Yes |Styles are imported from embedded or external style sheets. If there is no linked style sheet of either of these kinds then the document is imported with no styles (apart from default Normal style). To make sure styles are imported use a style sheet of any kind. There is a load option to control whether embedded or external style sheets are read or skipped during HTML import. There is also an option to supply your own CSS style sheet instead. |<p>- [ParagraphFormat](https://apireference.aspose.com/words/net/aspose.words/ParagraphFormat) </p><p>- [ParagraphFormat.Style](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/style)</p>|
|Alignment |Yes |Imported from the "text-align" paragraph style attribute. |- [ParagraphFormat.Alignment](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/alignment)|
|Right to Left Paragraph |Planned | |- [ParagraphFormat.Bidi](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/bidi)|
|Bullets and Numbers |Yes |Imported from &lt;ol&gt;, &lt;ul&gt;, &lt;li&gt; tags. <br><br>Simulated lists using &lt;p&gt; and &lt;span&gt; look correct but will not be imported as proper lists in the DOM. |<p>- **ParagraphFormat.ListFormat** </p><p>- **ParagraphFormat.ListLabel**</p>|
|Outline Level |Planned | |- [ParagraphFormat.OutlineLevel](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/outlinelevel)|
|Run Properties for the Paragraph Mark |Planned |Can be implemented with Microsoft Office specific techniques. <br><br>During import the formatting from the last span from &lt;p&gt; becomes the font properties for the paragraph. |- **ParagraphFormat.ParagraphBreakFont**|
|Suppress Line Numbers |Planned | |- **ParagraphFormat.SurpressLineNumbers**|
|Suppress Hyphenation |Planned | |- **ParagraphFormat.SurpressAutoHyphens**|

## Indents

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Left Indent |Yes |Imported from margin-left on style attribute. |- [ParagraphFormat.LeftIndent](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/leftindent)|
|Right Indent |Yes |Imported from margin-right on style attribute. |- [ParagraphFormat.RightIndent](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/rightindent)|
|First Line Indent |Yes |Imported from text-indent on style attribute. |- [ParagraphFormat.FirstLineIndent](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/firstlineindent)|
|Hanging Indent |Yes |Imported from a combination of margin-left and text-indent style attribute. |- **ParagraphFormat.FirstLineIndent**|
|Mirror Indents |N/A | | |
|Automatically Adjust Right Indent |N/A | | |

## Spacing

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Space Before |Yes |Imported from "margin-top" style attribute. <br><br>If this attribute is missing from a paragraph during import from HTML then Space Before is set to Auto. |- [ParagraphFormat.SpaceBefore](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spacebefore)|
|Space After |Yes |Imported from "margin-bottom" style attribute. <br><br>If this attribute is missing from a paragraph during import from HTML then Space After is set to Auto. |- [ParagraphFormat.SpaceAfter](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spaceafter)|
|Space Auto |Yes |Paragraphs imported from HTML without margin-top or margin-bottom style attributes are imported as Auto spacing by default. |<p>- [ParagraphFormat.SpaceBeforeAuto](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spacebeforeauto) </p><p>- [ParagraphFormat.SpaceAfterAuto](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/spaceafterauto)</p>|
|Line Spacing |Yes |Imported from "line-height" style attribute. |<p>- [ParagraphFormat.LineSpacing](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/linespacing) </p><p>- [ParagraphFormat.LineSpacingRule](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/linespacingrule)</p>|
|No Space between Conforming Paragraphs |Planned | |- [ParagraphFormat.NoSpaceBetweenParagraphsOfSameStyle](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/nospacebetweenparagraphsofsamestyle)|
|Snap To Grid |Planned | | |

## Keeps and Breaks

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Widow/Orphan Control |Yes |Imported from "widows" CSS attribute. <br><br>A value of 0 from this attribute is imported as Widow/Orphan control as being disabled. A value of 1 or greater is imported as enabled. <br><br>A paragraph without this attrubite is automatically given Widow/Orphan control in the model. |- [ParagraphFormat.WidowControl](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/widowcontrol)|
|Keep With Next |Yes |Imported from style attribute with "page-break-after:avoid". |- [ParagraphFormat.KeepWithNext](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/keepwithnext)|
|Keep Lines Together |Yes |Imported from style attribute with "page-break-inside:avoid". |- [ParagraphFormat.KeepTogether](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/keeptogether)|
|Page Break Before |Yes |Imported from "page-break-before" on style attribute. |- [ParagraphFormat.PageBreakBefore](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/pagebreakbefore)|

## Text Frames

This is the legacy text frames from Word 97, not to be confused with the Autoshape Textbox which is discussed under Drawing Objects.

Text frames are preserved in the model but there is no API or node to modify or access information about frames.

Frames exported to HTML as paragraphs surronded by a border.

These are round-tripped back to a document with similar formatting but not as actual text frames

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Text Frames |Planned | | |

## Tab Stops

All features of tab stops are supported in Aspose.Words except for relative tab stops.

Using Aspose.Words you can find tab stops based off position or index. You can change tab stop features like position, alignment etc or remove tabstops completely.

Tab stops are not natively available in HTML so Aspose.Words exports spacing as a set of non-breaking spaces. These can not be imported back as tab-stops again.

In future improvements, Aspose.Words will convert tab stops as a fixed space which will should allow proper round-trip. In the same way we will also provide support for the Microsoft Office mso-tab-count attribute.

See the following link in the documentation for further information:

- [ParagraphFormat.TabStops](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/tabstops)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Absolute Position |Planned | |- [TabStop.Position](https://apireference.aspose.com/words/net/aspose.words/tabstop/properties/position)|
|Relative Position |Planned |A relative position tab can be inserted in Microsoft Word using the "Insert Alignment Tab" button. This type of tab is relative to either the page margin or the indent of the paragraph. <br><br>This {allows|enables} tab stops to appear in the same relative place even when the position of the paragraph or page is modified. <br><br>Currently Aspose.Words supports these types of tab stops in OOXML and WordML formats only. There is currently no API to retrieve the properties of this tab e.g RelativeTo, Alignment, Leader etc. Further support is planned. <br><br>This feature might be supported during HTML import if a proper analog can be found. |- [AbsolutePositionTab](https://apireference.aspose.com/words/net/aspose.words/AbsolutePositionTab)|
|Alignment: Left, Center, Right, Decimal, Bar |Planned | |- [TabStop.Alignment](https://apireference.aspose.com/words/net/aspose.words/tabstop/properties/alignment)|
|Leader |Planned | |- [TabStop.Leader](https://apireference.aspose.com/words/net/aspose.words/tabstop/properties/leader)|

## Drop Caps

Drop Caps are partially supported and preserved during document conversion. A drop cap is a text frame which is imported as a separate paragraph (from the rest of the paragraph as seen in the source document).

You can modify drop cap properties and position, however the new settings are not applied to the drop cap. You cannot yet create new drop caps (although you can easily simulate them through the use of a textbox). 

This will be improved in a future version of Aspose.Words.

Drop cap is a frame. During import the appearance of a drop cap is round-tripped correctly, however it is not imported as proper drop cap therefore options cannot be modified.

See the following links in the documentation for further information:

- **ParagraphFormat.DropCapPositon**
- [ParagraphFormat.LinesToDrop](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/linestodrop)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Drop Caps |Yes | | |

## Borders

Borders are imported from border-style, border-width etc on style or from indivudal borders using border-xxx-style and border-xxx-width etc style attributes.

A div with embedded or linked CSS containing a border style has all of the paragraphs and spans inside the div imported with full borders. This will be improved in a future version.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Border Sides |Yes | |<p>- [ParagraphFormat.Borders](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/borders) </p><p>- [LineStyle](https://apireference.aspose.com/words/net/aspose.words/LineStyle)</p>|
|Shadow |Planned | |- [Border.Shadow](https://apireference.aspose.com/words/net/aspose.words/border/properties/shadow)|
|3D Frame |Planned | |- [Border.LineStyle](https://apireference.aspose.com/words/net/aspose.words/border/properties/linestyle)|
|Style |Yes | |- **Border.LineStyle**|
|Color |Yes | |- [Border.Color](https://apireference.aspose.com/words/net/aspose.words/border/properties/color)|
|Width |Yes | |- [Border.LineWidth](https://apireference.aspose.com/words/net/aspose.words/border/properties/linewidth)|
|Distance from Text |Yes |Imported from "padding-xxx" settings. |- [Border.DistanceFromText](https://apireference.aspose.com/words/net/aspose.words/border/properties/distancefromtext)|

## Shading

Fill color imported from "background-color" on style attribute.

Currently cell background is imported as paragraph shading. This will be improved in a future version of Aspose.Words.

See the following link in the documentation for further information:

- [ParagraphFormat.Shading](https://apireference.aspose.com/words/net/aspose.words/paragraphformat/properties/shading)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Shading |Yes | | |

## Asian Typography

Asian Typography settings is fully supported during conversion. However there is currently no API to access or modify these settings.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Use Asian Rules for Controlling First and Last Characters |Planned | | |
|Allow Latin Text to Wrap in the Middle of a Word |Planned | | |
|Allow Hanging Punctuation |Planned | | |
|Allow Punctuation at Start of a Line to Compress |Planned | | |
|Automatically Adjust Space between Asian and Latin Text |Planned | | |
|Automatically Adjust Space between Asian Text and Numbers |Planned | | |
|Text Vertical Alignment |Planned | | |
