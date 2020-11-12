---
title: Working With OOXML
type: docs
weight: 10
url: /java/working-with-ooxml/
---

{{% alert color="primary" %}} 

The overloaded Document.save method accepts the SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that save format, e.g. PdfSaveOptions class for PDF save format, OoxmlSaveOptions for DOCX, DOCM, DOTX, DOTM or FlatOpc save formats.

{{% /alert %}} 

## Encrypt Document with Password

The [OoXMLSaveOptions ](https://apireference.aspose.com/java/words/com.aspose.words/OoxmlSaveOptions)class provides an opportunity to save any document encrypted with the password. Using this class, the password can be set by using [OoxmlSaveOptions.setPassword()](https://apireference.aspose.com/java/words/com.aspose.words/ooxmlsaveoptions#Password) property while saving the document. In order to save the document without encryption, this property should be set as null or an empty string. The given below code example shows how to set the password and save the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-encryptDocxWithPassword.java" >}}

## Setting the Compliance Level

Aspose.Words.Saving provides OoXMLCompliance enumeration which allows specifying which OOXML specification will be used when saving in the DOCX. This can be used with [OoxmlSaveOptions.setCompliance()](https://apireference.aspose.com/java/words/com.aspose.words/ooxmlsaveoptions#Compliance) property. The given below code example shows how to set the compliance level while saving with OoxmlSaveOptions.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-setOOXMLCompliance.java" >}}

## Update Last Saved Property

The OoXMLSaveOptions class provides an UpdateLastSaved property to gets or sets a value determining whether the [LastSavedTime](https://apireference.aspose.com/java/words/com.aspose.words/BuiltInDocumentProperties#LastSavedTime) property is updated before saving. The given below code example shows how to set this property and save the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Keep Legacy Control Characters

Some formats support legacy control characters. Word does not save these symbols to DOCX format (more accurately in OOXML formats). Aspose.Words allows preserving the representation of legacy control characters while saving to OOXML format.  So far only one legacy character (ShortDateTime) is supported which declared in the "DOC" format. The given below code example shows how to preserve legacy control characters and save the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-keepLegacyControlChars.java" >}}
