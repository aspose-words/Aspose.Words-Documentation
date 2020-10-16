---
title: Insert Table of Content
type: docs
weight: 60
url: /net/insert-table-of-content/
---

The **DocumentBuilder.InsertTableOfContents method** is called to insert a TOC field into the document at the current position of the DocumentBuilder.

A table of contents in a Word document can be built in a number of ways and formatted using a variety of options. The field switches that you pass to the method control the way the table is built and displayed in your document.

The default switches that are used in a TOC inserted in Microsoft Word are **“\o “1-3 \h \z \u”**. Descriptions of these switches as well as a list of supported switches can be found later in the article. You can either use that guide obtain the correct switches or if you already have a document containing the similar TOC that you want you can show field codes (*ALT+F9*) and copy the switches directly from the field.

## Example

*Shows how to insert a Table of Contents field into a document.*

**C#**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert a table of contents at the beginning of the document.
builder.InsertTableOfContents("\\o \"1-3\" \\h \\z \\u");

// The newly inserted table of contents will be initially empty.

// It needs to be populated by updating the fields in the document.
doc.UpdateFields();
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)

## Download Running Code

- [Codeplex](http://asposeopenxml.codeplex.com/SourceControl/latest#Aspose.Words Features missing in OpenXML/Insert Table of Content/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/OpenXMLMissingFeatures/Insert%20Table%20of%20Content)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b/view/SourceCode#content)
