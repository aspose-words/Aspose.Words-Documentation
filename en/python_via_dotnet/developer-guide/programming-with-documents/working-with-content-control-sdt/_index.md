---
title: Working with Content Control SDT
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Content Control SDT
linktitle: Working with Content Control SDT
description: "Using python you can embed customer-defined semantics as well as its behaviour and appearance into a document."
type: docs
weight: 390
url: /python-net/working-with-content-control-sdt/
aliases: [/python/working-with-content-control-sdt/]
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, you can create a form by starting with a template and adding content controls, including checkboxes, text boxes, date pickers, and drop-down lists. In Aspose.Words, a Structured Document Tag or content control from any document loaded into Aspose.Words is imported as a [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) node. Structured document tags (SDT or content control) allow embedding customer-defined semantics as well as its behaviour and appearance into a document. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) can occur in a document in the following places:

- Block-level - Among paragraphs and tables, as a child of a [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) or a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) node
- Row-level - Among rows in a table, as a child of a [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) node
- Cell-level - Among cells in a table row, as a child of a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) node
- Inline-level - Among inline content inside, as a child of a [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Nested inside another [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Inserting Content Controls into a Document

In this version of Aspose.Words, the following types of SDT or content control can be created:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

The following code example demonstrates how to create content control of type checkbox.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

The following code example demonstrates how to create content control of type rich text box.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

The following code example demonstrates how to create content control of the type combo box.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## How to update Content Controls

This section explains how to update the values of SDT or content control programmatically. 

The following code example shows how to set the current state of the checkbox:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

The following code example shows how to modify content controls of type plain text box, drop-down list and picture:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

You can download the sample file of these examples from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Binding Content Control to Custom XML Parts

You can bind content controls with XML data (*custom XML part*) in Word documents.

The following code example shows how to bind content control to custom XML parts:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping of Structured Document Tag Range

You can get the mapping of this structured document tag range to XML data in a custom XML part of the current document using the [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) property. However, the [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) method can be used to map a structured document tag range to XML data.

The following code example shows how to set XML mapping:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Clear Contents of a Content Control

You can clear the contents of a content control with displaying a placeholder. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) method clears contents of this structured document tag and displays a placeholder if it is defined. However, It is not possible to clear the contents of a content control if it has revisions. If a content control has no placeholder, five spaces are inserted like in MS Word (except repeating sections, repeating section items, groups, check-boxes, citations). If a content control is mapped to custom XML, the referenced XML node is cleared.

The following code example shows how to clear the content of content control:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Change Content Control Background and Border Colors

The [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) property allows you to get or set the color of content control. The color affects content control in two situations:

1. MS Word highlights the background of the content control when the mouse moves over the content control. This helps to identify the content control. The color of highlighting is a bit "softer" than the *color*. For example, MS Word highlights the background with the pink color, when *color* is red.
2. When you interact (editing, picking etc) with the content control, the border of content control is colored with the *color*.

The following code example shows how to change the color of content control:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## How to Set Style to Format Text Typed into the Content Control

If you want to set the style of content control, you can use [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) or [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) properties. When you type the text into content control in the output document, the typed text will have the style "Quote".

{{% alert color="primary" %}}

Note that only Linked and Character styles can be applied to content control. An exception ("Cannot apply this style to the SDT") is thrown when a style that exists but is not Linked or Character style is being applied.

{{% /alert %}}

The following code example shows how to set the style of content control:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Working with Repeating Section Content Control

The repeating section content control allows repeating the content contained within it. Using Aspose.Words, the structured document tag nodes of the repeating section and repeating section item types can be created and for this purpose, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) enumeration type provides [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) property.

The following code example shows how to bind a repeating section content control to a table:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
