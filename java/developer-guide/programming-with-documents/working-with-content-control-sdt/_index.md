---
title: Working with Content Control SDT in Java
second_title: Aspose.Words for Java
articleTitle: Working with Content Control SDT
linktitle: Working with Content Control SDT
type: docs
description: "Advanced document content management, how to create and manipulate content controls (Structured Document Tags) using Java."
weight: 390
url: /java/working-with-content-control-sdt/
---

In Microsoft Word, you can create a form by starting with a template and adding content controls, including checkboxes, text boxes, date pickers, and drop-down lists. In Aspose.Words, a Structured Document Tag or content control from any document loaded into Aspose.Words is imported as a StructuredDocumentTag node. Structured document tags (SDT or content control) allow embedding customer-defined semantics as well as its behaviour and appearance into a document.

StructuredDocumentTag can occur in a document in the following places:

- Block-level - Among paragraphs and tables, as a child of a Body, HeaderFooter, Comment, Footnote or a Shape node.
- Row-level - Among rows in a table, as a child of a Table node.
- Cell-level - Among cells in a table row, as a child of a Row node.
- Inline-level - Among inline content inside, as a child of a Paragraph.
- Nested inside another StructuredDocumentTag.

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

The following code example shows how to create content control of type checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

The following code example shows how to create content control of type rich text box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

The following code example shows how to create content control of type combo box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## How to Update Content Controls

This section explains how to update the values of SDT or content control programmatically.

The following code example shows how to set the current state of the checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

The following code example shows how to modify content controls of type plain text box, drop-down list and picture:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

You can download the sample file of these examples from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Binding Content Control to Custom XML Parts

You can bind content controls with XML data (*custom XML part*) in Word documents. 

The following code example shows how to bind content control to custom XML parts:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Clear Contents of a Content Control

You can clear the contents of a content control with displaying a placeholder. **StructuredDocumentTag.clear()** method clears contents of this structured document tag and displays a placeholder if it is defined. However, It is not possible to clear the contents of a content control if it has revisions. If a content control has no placeholder, five spaces are inserted like in MS Word (except repeating sections, repeating section items, groups, check-boxes, citations). If a content control is mapped to custom XML, the referenced XML node is cleared.

The following code example shows how to clear the content of content control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Change Content Control Background and Border Colors

The StructuredDocumentTag.Color property allows you to get or set the color of content control. The color affects content control in two situations:

1. MS Word highlights the background of the content control when the mouse moves over the content control. This helps to identify the content control. The color of highlighting is a bit "softer" than the *Color*. For example, MS Word highlights the background with the pink color, when *Color* is Red.
2. When you interact (editing, picking etc) with the content control, the border of content control is colored with the *Color*.

The following code example shows how to change the color of content control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## How to Set Style to Format Text Typed into the Content Control

If you want to set the style of content control, you can use StructuredDocumentTag.Style or StructuredDocumentTag.StyleName properties. When you type the text into content control in the output document, the typed text will have the style "Quote".

{{% alert color="primary" %}}

Note that only Linked and Character styles can be applied to content control. An InvalidOperationException ("Cannot apply this style to the SDT") is thrown when a style that exists but is not Linked or Character style is being applied.

{{% /alert %}}

The following code example shows how to set the style of content control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Working with Repeating Section Content Control

The repeating section content control allows repeating the content contained within it. Using Aspose.Words, the structured document tag nodes of the repeating section and repeating section item types can be created and for this purpose, [SdtType enumeration type](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) provides REPEATING_SECTION_ITEM member.

The following code example shows how to bind a repeating section content control to a table:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

