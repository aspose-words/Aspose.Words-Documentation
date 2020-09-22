---
title: Working with SaveOptions
type: docs
weight: 20
url: /cpp/working-with-saveoptions/
---

{{% alert color="primary" %}} 

The overloaded Document.Save method accepts the SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that save format, e.g. PdfSaveOptions class for PDF save format, OoxmlSaveOptions for DOCX, DOCM, DOTX, DOTM or FlatOpc save formats.

{{% /alert %}} 

## **Specifying Save Options**

There are Document->Save method overloads that accept a SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that same format. For example, there is PdfSaveOptions for the SaveFormat.Pdf save format. The code sample below shows how to set save options before saving a document to HTML. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/TestFile%20RenderShape.docx).

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

## **Specify Unit of Measure to OpenDocument**

Open Office uses centimetres when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches. You can use OdtSaveOptions.MeasureUnit property to specify the unit of measure to apply to document content. The following code example shows how to use this property. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-SetMeasureUnitForODT.cpp" >}}

## **Encrypt Document With Password**

The DocSaveOptions class is used to specify additional options when saving a document into the **Doc** or **Dot** format. Using this class, you can set the password to an encrypted document and ignore RoutingSlip data while saving the document. The code example given below shows how to set the password to encrypt the document using RC4 encryption method.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

## **Compress Metafiles**

In MS Word, all the metafiles are compressed by default regardless of their size. However, Aspose.Words compress large metafiles only and smaller ones are not compressed just because of better performance. Aspose.Words provides a property **AlwaysCompressMetafiles,** to facilitate the users if they want to compress all the metafiles either large or small. Its default value is true which means that all metafiles shall be compressed regardless of its size and false means that small metafiles shall not be compressed for performance reason.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithDoc-AlwaysCompressMetafiles.cpp" >}}
