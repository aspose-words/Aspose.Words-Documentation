---
title: Working with Hyperlinks and HTML in C#
articleTitle: Working with Hyperlinks and HTML
linktitle: Working with Hyperlinks and HTML
description: "How to insert hyperlink or HTML document into your document using Aspose.Word for .NET in C#."
type: docs
weight: 50
url: /net/working-with-hyperlinks-and-html/
---

## Inserting a Hyperlink

Use DocumentBuilder.InsertHyperlink to insert a hyperlink into the document. This method accepts three parameters: text of the link to be displayed in the document, link destination (URL or a name of a bookmark inside the document), and a boolean parameter that should be true if the URL is a name of a bookmark inside the document.DocumentBuilder.InsertHyperlink internally calls DocumentBuilder.InsertField.The method always adds apostrophes at the beginning and end of the URL. Note that you need to specify font formatting for the hyperlink display text explicitly using the Font property. Below example inserts a hyperlink into a document using DocumentBuilder.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Replace or Modify Hyperlinks

Hyperlink in Microsoft Word documents is a field. A field in a Word document is a complex structure consisting of multiple nodes that include field start, field code, field separator, field result and field end. Fields can be nested, contain rich content and span multiple paragraphs or sections in a document. 

The FieldHyperlink class implements the HYPERLINK field. Below example finds all hyperlinks in a Word document and changes their URL and display name.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}

## Inserting HTML

You can easily insert an HTML string that contains an HTML fragment or whole HTML document into the Word document. Just pass this string to the DocumentBuilder.InsertHtml method. One of the useful implementations of the method is storing an HTML string in a database and inserting it into the document during mail merge to get the formatted content added instead of building it using various methods of the document builder. Below example shows inserts HTML into a document using DocumentBuilder.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cs" >}}
