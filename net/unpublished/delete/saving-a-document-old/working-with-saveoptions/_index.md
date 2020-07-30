---
title: Working with SaveOptions
type: docs
weight: 20
url: /net/working-with-saveoptions/
---

{{% alert color="primary" %}} 

The overloaded Document.Save method accepts the SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that save format, e.g. PdfSaveOptions class for PDF save format, OoxmlSaveOptions for DOCX, DOCM, DOTX, DOTM or FlatOpc save formats.

{{% /alert %}} 
## **Encrypt Document With Password**
The DocSaveOptions class is used to specify additional options when saving a document into the **Doc** or **Dot** format. Using this class, you can set the password to an encrypted document and ignore RoutingSlip data while saving the document. The code example given below shows how to set the password to encrypt the document using RC4 encryption method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}
## **Compress Metafiles**
In MS Word, all the metafiles are compressed by default regardless of their size. However, Aspose.Words compress large metafiles only and smaller ones are not compressed just because of better performance. Aspose.Words provides a property [**AlwaysCompressMetafiles**](https://apireference.aspose.com/net/words/aspose.words.saving/docsaveoptions/properties/alwayscompressmetafiles)**,** to facilitate the users if they want to compress all the metafiles either large or small. Its default value is true which means that all metafiles shall be compressed regardless of its size and false means that small metafiles shall not be compressed for performance reason.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-AlwaysCompressMetafiles.cs" >}}
