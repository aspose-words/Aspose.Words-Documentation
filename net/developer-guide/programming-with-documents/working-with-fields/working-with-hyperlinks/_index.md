---
title: Working with Hyperlinks in C#
second_title: Aspose.Words for .NET
articleTitle: Add or Modify Hyperlinks
linktitle: Add or Modify Hyperlinks
description: "How to add a hyperlink into your document in C# using Aspose.Words for .NET."
type: docs
weight: 50
url: /net/working-with-hyperlinks/
---

A hyperlink in Microsoft Word documents is the `HYPERLINK` field. In Aspose.Words, hyperlinks are implemented through the [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) class.

## Insert a Hyperlink

Use the [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) method to insert a hyperlink into the document. This method accepts three parameters:

1. Text of the link to be displayed in the document
2. Link destination (URL or a name of a bookmark inside the document)
3. Boolean parameter that should be true if the URL is a name of a bookmark inside a document

The **InsertHyperlink** method always adds apostrophes at the beginning and end of the URL. 

{{% alert color="primary" %}}

Note that you need to specify font formatting for the hyperlink display text explicitly using the Font property.

{{% /alert %}}

The following code example shows how to insert a hyperlink into a document using [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Replace or Modify Hyperlinks

Hyperlink in Microsoft Word documents is a field. A field in a Word document, as we said earlier, is a complex structure consisting of multiple nodes that include field start, field code, field separator, field result and field end. Fields can be nested, contain rich content and span multiple paragraphs or sections in a document.

To replace or modify hyperlinks, it is need to find the hyperlinks in the document and replace either their text, URLs, or both.

The following code example shows how to find all hyperlinks in Word document and changes their URL and display name:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
