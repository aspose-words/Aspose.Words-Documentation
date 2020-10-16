---
title: Working With OOXML
type: docs
weight: 10
url: /cpp/working-with-ooxml/
---

{{% alert color="primary" %}} 

The overloaded Document->Save method accepts the SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that save format, e.g. PdfSaveOptions class for PDF save format, OoxmlSaveOptions for DOCX, DOCM, DOTX, DOTM or FlatOpc save formats.

{{% /alert %}} 

## Encrypt Document with Password

The OoXMLSaveOptions class provides an opportunity to save any document encrypted with the password. Using this class, you can set the password by using OoxmlSaveOptions.Password property while saving the document. The following code example demonstrates how to set the password and save the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithOoxml-EncryptDocxWithPassword.cpp" >}}

## Setting the Compliance Level

Aspose.Words.Saving provides OoXMLCompliance enumeration which allows specifying which OOXML specification will be used when saving in the DOCX. This can be used with OoxmlSaveOptions.Compliance property. The following code example demonstrates how to set the compliance level while saving with OoxmlSaveOptions.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithOoxml-SetOOXMLCompliance.cpp" >}}

## Update Last Saved Property

The OoXMLSaveOptions class provides a UpdateLastSaved property to gets or sets a value determining whether the LastSavedTime property is updated before saving. The following code example demonstrates how to set this property and save the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Keep Legacy Control Characters

Some formats support legacy control characters. Word does not save these symbols to DOCX format (more accurately in OOXML formats). Aspose.Words allows preserving the representation of legacy control characters while saving to OOXML format.  So far only one legacy character (ShortDateTime) is supported which declared in the "DOC" format. The following code example demonstrates how to preserve legacy control characters and save the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithOoxml-KeepLegacyControlChars.cpp" >}}

## Set Compression Level

Aspose.Words for C++ provides [SetCompressionLevel ](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.ooxml_save_options#af85cba7194a8a8804f2a4f5df9469b1b)property to define the compression level while saving a document using [CompressionLevel ](https://apireference.aspose.com/words/cpp/namespace/aspose.words.saving/#a8bca862ce175c808774a57560b8cffcb)enumeration. The following code example demonstrates how to set a compression level to save the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-WorkingWithOoxml-SetCompressionLevel.cpp" >}}
