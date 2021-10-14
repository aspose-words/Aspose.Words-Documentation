---
title: Working with Content Control SDT
type: docs
weight: 60
url: /pythonnet/working-with-content-control-sdt/
---

In Microsoft Word, you can create a form by starting with a template and adding content controls, including checkboxes, text boxes, date pickers, and drop-down lists. In Aspose.Words, a Structured Document Tag or content control from any document loaded into Aspose.Words is imported as a **StructuredDocumentTag** node. Structured document tags (SDT or content control) allow embedding customer-defined semantics as well as its behaviour and appearance into a document. **StructuredDocumentTag** can occur in a document in the following places:

- Block-level - Among paragraphs and tables, as a child of a **Body**, **HeaderFooter**, **Comment**, **Footnote** or a **Shape** node.
- Row-level - Among rows in a table, as a child of a **Table** node.
- Cell-level - Among cells in a table row, as a child of a **Row** node.
- Inline-level - Among inline content inside, as a child of a **Paragraph**.
- Nested inside another **StructuredDocumentTag**.

## Inserting Content Controls into a Document

In this version of Aspose.Words, the following types of SDT or content control can be created:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- Picture
- RichText
- PlainText

The following code example demonstrates how to create content control of type checkbox.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

The following code example demonstrates how to create content control of type rich text box.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

The following code example demonstrates how to create content control of the type combo box.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## How to update Content Controls

This section explains how to update the values of SDT or content control programmatically. The following code example demonstrates how to set the current state of the checkbox. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

The following code example demonstrates how to modify content controls of type plain text box, drop-down list and picture. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

## How to Use Control Characters

Microsoft Word documents may contain various characters that have a special meaning. Normally they are used for formatting purposes and are not drawn in the normal mode. You can make them visible if you click the Show/Hide Formatting Marks button located on the Standard toolbar. Sometimes you may need to add or remove characters to/from the text. For instance, when obtaining text programmatically from the document, Aspose.Words preserves most of the control characters, so if you need to work with this text you should probably remove or replace the characters.

The **ControlChar** class is a repository for the constants that represent control characters often encountered in documents. It provides both char and string versions of the same constants. For example, string **ControlChar.LINE_BREAK** and char **ControlChar.LINE_BREAK_CHAR** has the same value. The following code example demonstrates how to use control characters.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}

## Binding Content Control to Custom XML Parts

You can bind content controls with XML data (*custom XML part*) in Word documents. The following code example demonstrates how to bind content control to custom XML parts. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping of Structured Document Tag Range

You can get the mapping of this structured document tag range to XML data in a custom XML part of the current document using the **StructuredDocumentTagRangeStart.xml_mapping** property. However, the **set_mapping** method can be used to map a structured document tag range to XML data. The following code example demonstrates how to set XML mapping. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Clear Contents of a Content Control

You can clear the contents of a content control with displaying a placeholder. **StructuredDocumentTag.clear** method clears contents of this structured document tag and displays a placeholder if it is defined. However, It is not possible to clear the contents of a content control if it has revisions. If a content control has no placeholder, five spaces are inserted like in MS Word (except repeating sections, repeating section items, groups, check-boxes, citations). If a content control is mapped to custom XML, the referenced XML node is cleared. The following code example demonstrates how to clear the content of content control. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Change Content Control Background and Border Colors

The StructuredDocumentTag.Color property allows you to get or set the color of content control. The color affects content control in two situations:

1. MS Word highlights the background of the content control when the mouse moves over the content control. This helps to identify the content control. The color of highlighting is a bit "softer" than the *color*. For example, MS Word highlights the background with the pink color, when *color* is red.
2. When you interact (editing, picking etc) with the content control, the border of content control is colored with the *color*.

The following code example demonstrates how to change the color of content control. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## How to Set Style to Format Text Typed into the Content Control

If you want to set the style of content control, you can use **StructuredDocumentTag.style** or **StructuredDocumentTag.style_name** properties. The following code example demonstrates how to set the style of content control. When you type the text into content control in the output document, the typed text will have the style "Quote".

{{% alert color="primary" %}} 

Note that only Linked and Character styles can be applied to content control. An exception ("Cannot apply this style to the SDT") is thrown when a style that exists but is not Linked or Character style is being applied.

{{% /alert %}} 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Working with Repeating Section Content Control

The repeating section content control allows repeating the content contained within it. Using Aspose.Words, the structured document tag nodes of the repeating section and repeating section item types can be created and for this purpose, **SdtType** enumeration type provides **REPEATING_SECTION_ITEM** property. The following code example demonstrates how to bind a repeating section content control to a table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
