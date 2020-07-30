---
title: Specify OOXML Save Options v2 – move this topic?
type: docs
weight: 10
url: /net/specify-ooxml-save-options-v2-–-move-this-topic/
---

[MG: This article can be moved [here](/words/net/save-in-the-open-office-xml-docx-dotx-docm-dotm-format/). Or we can leave this article in the current section.]

The [OoxmlSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions) class contains save options for DOCX, DOCM, DOTX, DOTM, or FlatOpc formats. Aspose.Words provides an ability to manage a document while saving it into the listed formats.

This article describes some properties of this class.
## **Specify Compression Level**
Aspose.Words provides an ability to set a compression level when saving a document. You can set the necessary value for the [CompressionLevel](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/properties/compressionlevel) property. For example, the [SuperFast](https://apireference.aspose.com/words/net/aspose.words.saving/compressionlevel) compression level is used in the same way as in Microsoft Word. And the [Normal](https://apireference.aspose.com/words/net/aspose.words.saving/compressionlevel) compression level used in Aspose.Words by default.

The following code example shows how to set the **SuperFast** compression level:

**.NET**

{{< highlight csharp >}}

 Document doc = new Document("in.docx");



// Specifies the compression level used to save a document.

OoxmlSaveOptions so = new OoxmlSaveOptions(SaveFormat.Docx);

so.CompressionLevel = CompressionLevel.SuperFast;

doc.Save("out.docx", so);

{{< /highlight >}}
## **Setting Compliance Level**
Aspose.Words provides an ability to use the [OoxmlCompliance](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlcompliance) enumeration that allows to specify which OOXML specification will be used when saving in the DOCX. This can be used with [Compliance](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/properties/compliance) property.

The following code example shows how to set the compliance level:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-SetOOXMLCompliance.cs" >}}
## **Keep Original Representation of Legacy Control Characters**
Some formats support legacy control characters. Microsoft Word does not save these symbols to DOCX format (more precisely, OOXML formats). Aspose.Words allows you to preserve the representation of legacy control characters while saving into OOXML format. For this purpose, use the [KeepLegacyControlChars](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/properties/keeplegacycontrolchars) property. So far only one legacy character ShortDateTime is supported which declared in the "DOC" format.

The following code example shows how to preserve legacy control characters and save the document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-KeepLegacyControlChars.cs" >}}
