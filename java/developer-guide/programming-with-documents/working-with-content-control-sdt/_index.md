---
title: Working with Content Control SDT
type: docs
weight: 190
url: /java/working-with-content-control-sdt/
---

## Introduction

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

The following code example demonstrates how to create content control of type checkbox.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-1.java" >}}

The following code example demonstrates how to create content control of type rich text box.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-1.java" >}}

The following code example demonstrates how to create content control of type combo box.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-1.java" >}}

## How to update Content Controls

This section explains how to update the values of SDT or content control programmatically. The following code example demonstrates how to set the current state of the checkbox. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/SetCurrentStateOfCheckBox/CheckBoxTypeContentControl.docx).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-1.java" >}}

The following code example demonstrates how to modify content controls of type plain text box, drop-down list and picture. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/ModifyContentControls/CheckBoxTypeContentControl.docx).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-1.java" >}}

## How to Use Control Characters

Microsoft Word documents may contain various characters that have a special meaning. Normally they are used for formatting purposes and are not drawn in the normal mode. You can make them visible if you click the Show/Hide Formatting Marks button located on the Standard toolbar. Sometimes you may need to add or remove characters to/from the text. For instance, when obtaining text programmatically from the document, Aspose.Words preserves most of the control characters, so if you need to work with this text you should probably remove or replace the characters.

The [ControlChar](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) class is a repository for the constants that represent control characters often encountered in documents. It provides both char and string versions of the same constants. For example, string [ControlChar.LineBreak](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) and char [ControlChar.LineBreakChar](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) has the same value.

{{% alert color="primary" %}} 

Use this class whenever you want to deal with control characters.

{{% /alert %}} 

The following code example demonstrates how to use control characters.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-1.java" >}}

## Binding Content Control to Custom XML Parts

You can bind content controls with XML data (*custom XML part*) in Word documents. The following code example demonstrates how to bind content control to custom XML parts. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-structureddocumenttag-BindSDTtoCustomXmlPart.java" >}}

## Clear Contents of a Content Control

You can clear the contents of a content control with displaying a placeholder. StructuredDocumentTag.clear() method clears contents of this structured document tag and displays a placeholder if it is defined. However, It is not possible to clear the contents of a content control if it has revisions. If a content control has no placeholder, five spaces are inserted like in MS Word (except repeating sections, repeating section items, groups, check-boxes, citations). If a content control is mapped to custom XML, the referenced XML node is cleared. The following code example demonstrates how to clear the content of content control.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Change Content Control Background and Border Colors

The StructuredDocumentTag.Color property allows you to get or set the color of content control. The color affects content control in two situations:

\1) MS Word highlights the background of the content control when the mouse moves over the content control. This helps to identify the content control. The color of highlighting is a bit "softer" than the *Color*. For example, MS Word highlights background with the pink color, when *Color* is Red.
\2) When you interact (editing, picking etc) with the content control, the border of content control is colored with the *Color*.

The following code example demonstrates how to change the color of content control. 

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## How to Set Style to Format Text Typed into the Content Control

If you want to set the style of content control, you can use StructuredDocumentTag.Style or StructuredDocumentTag.StyleName properties. The following code example demonstrates how to set the style of content control. When you type the text into content control in the output document, the typed text will have style "Quote".

Note that only Linked and Character styles can be applied to content control. An InvalidOperationException ("Cannot apply this style to the SDT") is thrown when a style that exists but is not Linked or Character style is being applied.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlStyle.java" >}}

## Working with Repeating Section Content Control

The repeating section content control allows repeating the content contained within it. Using Aspose.Words, the structured document tag nodes of the repeating section and repeating section item types can be created and for this purpose, [SdtType enumeration type](https://apireference.aspose.com/java/words/com.aspose.words/SdtType) provides REPEATING_SECTION_ITEM member. The following code example demonstrates how to bind a repeating section content control to a table.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

