---
title: Working with Hyperlinks
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Hyperlinks
linktitle: Working with Hyperlinks
description: "Insert, replace, or modify a hyperlink into the document using Python."
type: docs
weight: 50
url: /python-net/working-with-hyperlinks/
aliases:
- /python/working-with-hyperlinks-and-html/
- /python-net/working-with-hyperlinks-and-html/
---

A hyperlink in Microsoft Word documents is the HYPERLINK field. In Aspose.Words, hyperlinks are implemented through the [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) class.

## Inserting a Hyperlink

Use the [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) method to insert a hyperlink into the document. This method accepts three parameters:

1. Text of the link to be displayed in the document
2. Link destination (URL or a name of a bookmark inside the document)
3. Boolean parameter that should be true if the URL is a name of a bookmark inside a document

The **InsertHyperlink** method always adds apostrophes at the beginning and end of the URL.

{{% alert color="primary" %}}

Note that you need to specify font formatting for the hyperlink display text explicitly using the Font property.

{{% /alert %}}

The following code example shows how to insert a hyperlink into a document using [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Replace or Modify Hyperlinks

Hyperlink in Microsoft Word documents is a field. A field in a Word document is a complex structure consisting of multiple nodes that include field start, field code, field separator, field result and field end. Fields can be nested, contain rich content and span multiple paragraphs or sections in a document. 

To replace or modify hyperlinks, it is need to find the hyperlinks in the document and replace either their text, URLs, or both.

The following code example shows how to find all hyperlinks in Word document and changes their URL and display name:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
