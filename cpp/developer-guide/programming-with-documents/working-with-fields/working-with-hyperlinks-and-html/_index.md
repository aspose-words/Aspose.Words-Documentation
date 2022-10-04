---
title: Working with Hyperlinks in C++
second_title: Aspose.Words for C++
articleTitle: Working with Hyperlinks
linktitle: Working with Hyperlinks
description: "How to insert a hyperlink into your document using Aspose.Words for C++."
type: docs
aliases:
    - /cpp/how-to-replace-or-modify-hyperlinks-and-replace-fields-with-static-text/
    - /cpp/working-with-hyperlinks-and-html/
weight: 180
url: /cpp/working-with-hyperlinks/
---

A hyperlink in Microsoft Word documents is the HYPERLINK field. In Aspose.Words, hyperlinks are implemented through the [FieldHyperlink](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_hyperlink) class.

## Inserting a Hyperlink

Use the [InsertHyperlink](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#inserthyperlink_string_string_bool) method to insert a hyperlink into the document. This method accepts three parameters: 

1. Text of the link to be displayed in the document
2. Link destination (URL or a name of a bookmark inside the document)
3. Boolean parameter that should be true if the URL is a name of a bookmark inside the document

The **InsertHyperlink** method always adds apostrophes at the beginning and end of the URL.

{{% alert color="primary" %}}

Note that you need to specify font formatting for the hyperlink display text explicitly using the Font property.

{{% /alert %}}

The following code example shows how to insert a hyperlink into a document using [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Replace or Modify Hyperlinks

Hyperlink in Microsoft Word documents is a field. A field in a Word document is a complex structure consisting of multiple nodes that include field start, field code, field separator, field result and field end. Fields can be nested, contain rich content and span multiple paragraphs or sections in a document. 

The FieldHyperlink class implements the HYPERLINK field.

The following code example shows how to find all hyperlinks in Word document and changes their URL and display name:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
