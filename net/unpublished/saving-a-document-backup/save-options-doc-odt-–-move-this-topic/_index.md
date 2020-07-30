---
title: Save Options (DOC, ODT) – move this topic?
type: docs
weight: 20
url: /net/save-options-doc-odt-–-move-this-topic/
---

[MG: This article can be moved to the "[Save in the Microsoft Word Document 97-2003 Document (.DOC, .DOT) Format](/words/net/save-in-the-microsoft-word-document-97-2003-document-28-doc-2c-dot-29-format-html/)", "[Save in the OpenDocument Text (.ODT, .OTT) Format](/words/net/save-in-the-opendocument-text-28-odt-2c-ott-29-format-html/)" section. Or we can leave this article in the current section.]
## **DOC**
### **Compress Metafiles**
In MS Word, all the metafiles are compressed by default regardless of their size. However, Aspose.Words only compresses large metafiles, and smaller ones are not compressed because of better performance. Aspose.Words provides the AlwaysCompressMetafiles property to make it easier for users if they want to compress all the metafiles, large or small. Its default value is true, which means that all metafiles shall be compressed regardless of its size. The value false means that small metafiles shall not be compressed for performance reasons.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-AlwaysCompressMetafiles.cs" >}}
## **ODT**
### **Specify Unit of Measure to OpenDocument**
Open Office uses centimeters when specifying length, width and other measurable formatting and content properties in documents whereas Microsoft Office uses inches. To work with options for saving a document to Odt or Ott format, the [OdtSaveOptions](https://apireference.aspose.com/net/words/aspose.words.saving/odtsaveoptions) class is used. You can use the [MeasureUnit](https://apireference.aspose.com/net/words/aspose.words.saving/odtsaveoptions/properties/measureunit) property to specify the unit of measure applied to document content.

The following code example shows how to use this property:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-SetMeasureUnitForODT.cs" >}}
