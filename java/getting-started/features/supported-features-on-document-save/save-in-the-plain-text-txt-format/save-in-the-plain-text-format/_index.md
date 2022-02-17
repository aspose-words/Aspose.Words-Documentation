---
title: Save in the Plain Text Format – Aspose.Words for Java
articleTitle: Save in the Plain Text Format
linktitle: Save in the Plain Text Format
description: "Aspose.Words for Java allows you to work with different features supported when saving to Plain Text – TXT format."
type: docs
weight: 10
url: /java/save-in-the-plain-text-format/
---

{{% alert color="primary" %}}

Aspose.Words allows you to export any loaded document to plain text format. It is evident that plain text format does not support most of the complex features found in a Microsoft Word, Open Office or HTML document. Therefore, these features are lost upon conversion to .TXT format. What is converted is an accurate plain text representation of the document.

There are also save options available to control how the text file is generated. The [**TxtSaveOptions** ](https://apireference.aspose.com/words/java/com.aspose.words/txtsaveoptions)class provides members such as the **TxtSaveOptions.[setExportHeadersFootersMode](https://apireference.aspose.com/words/java/com.aspose.words/txtsaveoptions#ExportHeadersFootersMode)()** to specify if headers or footers from the document are exported to the text file, whereas default value is [TxtExportHeadersFootersMode.PRIMARY_ONLY](https://apireference.aspose.com/words/java/com.aspose.words/TxtExportHeadersFootersMode#PRIMARY_ONLY "field in class com.aspose.words.TxtExportHeadersFootersMode"). The value of the property is [TxtExportHeadersFootersMode](https://apireference.aspose.com/words/java/com.aspose.words/TxtExportHeadersFootersMode "Utility class in com.aspose.words") integer constant. The TxtSaveOptions also provides the **TxtSaveOptions.[setEncoding()](https://apireference.aspose.com/words/java/com.aspose.words/txtsaveoptions#Encoding)** property to control the encoding used to write the text. Default value is 'UTF-8' Charset.

The **TxtSaveOptions.[setParagraphBreak](https://apireference.aspose.com/words/java/com.aspose.words/txtsaveoptions#ParagraphBreak)()** property is used to define a custom string to use for a paragraph break in the output text. You can also use **TxtSaveOptions.[setPreserveTableLayout](https://apireference.aspose.com/words/java/com.aspose.words/txtsaveoptions#PreserveTableLayout)()** property to add white space around tables to attempt to preserve table layout as seen in the source word document.

The same process goes on behind the scenes when a document or individual node is converted to text using the **Node.ToString** method. Internally the document is being saved to a stream in memory and the text from the stream is returned. The **Node.ToString** method also has an overload that accepts a **SaveOptions** object. This allows you to specify the same **TxtSaveOptions** options as with the **Document.Save** method.

{{% /alert %}}
