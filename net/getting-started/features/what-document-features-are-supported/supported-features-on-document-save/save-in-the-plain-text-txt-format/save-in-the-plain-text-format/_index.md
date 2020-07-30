---
title: Save in the Plain Text Format
type: docs
weight: 10
url: /net/save-in-the-plain-text-format/
---

{{% alert color="primary" %}} 

Aspose.Words allows you to export any loaded document to plain text format. It is evident that plain text format does not support most of the complex features found in a Microsoft Word, Open Office or HTML document. Therefore, these features are lost upon conversion to .TXT format. What is converted is an accurate plain text representation of the document.

There are also save options available to control how the text file is generated. The [TxtSaveOptions](https://apireference.aspose.com/net/words/aspose.words.saving/txtsaveoptions) class provides members such as the [**TxtSaveOptions.*ExportHeadersFootersMode***](https://apireference.aspose.com/net/words/aspose.words.saving/txtsaveoptions/properties/exportheadersfootersmode)** **to specify if headers or footers from the document are exported to the text file, as well as the [TxtSaveOptions.Encoding](https://apireference.aspose.com/net/words/aspose.words.saving/txtsaveoptions/properties/encoding) property to control the encoding used to write the text.

The [TxtSaveOptions.ParagraphBreak](https://apireference.aspose.com/net/words/aspose.words.saving/txtsaveoptions/properties/paragraphbreak) property is used to define a custom character to use for a paragraph break in the output text. You can also use [TxtSaveOptions.PreserveTableLayout](https://apireference.aspose.com/net/words/aspose.words.saving/txtsaveoptions/properties/preservetablelayout) property to add white space around tables to attempt to preserve table layout as seen in the source word document.

The same process goes on behind the scenes when a document or individual node is converted to text using the **Node.ToString** method. Internally the document is being saved to a stream in memory and the text from the stream is returned. The **Node.ToString** method also has an overload that accepts a **SaveOptions** object. This allows you to specify the same **TxtSaveOptions** options as with the **Document.Save** method.

{{% /alert %}}
