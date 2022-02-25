---
title: Working with Hyperlinks and HTML in Python
articleTitle: Working with Hyperlinks and HTML
linktitle: Working with Hyperlinks and HTML
description: "Insert, replace, or modify a hyperlink into the document using Python."
type: docs
weight: 50
url: /python-net/working-with-hyperlinks-and-html/
aliases: [/python/working-with-hyperlinks-and-html/]
---

## Inserting a Hyperlink

Use **DocumentBuilder.insert_hyperlink** to insert a hyperlink into the document. This method accepts three parameters: text of the link to be displayed in the document, link destination (URL or a name of a bookmark inside the document), and a boolean parameter that should be true if the URL is a name of a bookmark inside the document. **DocumentBuilder.insert_hyperlink** internally calls DocumentBuilder.InsertField.The method always adds apostrophes at the beginning and end of the URL. Note that you need to specify font formatting for the hyperlink display text explicitly using the Font property. Below example inserts a hyperlink into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Replace or Modify Hyperlinks

Hyperlink in Microsoft Word documents is a field. A field in a Word document is a complex structure consisting of multiple nodes that include field start, field code, field separator, field result and field end. Fields can be nested, contain rich content and span multiple paragraphs or sections in a document. 

The **FieldHyperlink** class implements the HYPERLINK field. Below example finds all hyperlinks in a Word document and changes their URL and display name.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}

## Inserting HTML

You can easily insert an HTML string that contains an HTML fragment or whole HTML document into the Word document. Just pass this string to the **DocumentBuilder.insert_html** method. One of the useful implementations of the method is storing an HTML string in a database and inserting it into the document during mail merge to get the formatted content added instead of building it using various methods of the document builder. Below example shows inserts HTML into a document using **DocumentBuilder**.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHtml.py" >}}
