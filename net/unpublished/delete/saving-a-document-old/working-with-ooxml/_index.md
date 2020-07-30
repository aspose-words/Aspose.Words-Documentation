---
title: Working With OOXML
type: docs
weight: 10
url: /net/working-with-ooxml/
---

{{% alert color="primary" %}} 

The overloaded Document.Save method accepts the SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that save format, e.g. PdfSaveOptions class for PDF save format, OoxmlSaveOptions for DOCX, DOCM, DOTX, DOTM or FlatOpc save formats.

{{% /alert %}} 
## **Encrypt Document with Password**
The OoXMLSaveOptions class provides an opportunity to save any document encrypted with the password. Using this class, you can set the password by using OoxmlSaveOptions.Password property while saving the document. Below code example shows how to set the password and save the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-EncryptDocxWithPassword.cs" >}}
## **Setting the Compliance Level**
Aspose.Words.Saving provides OoXMLCompliance enumeration which allows to specify which OOXML specification will be used when saving in the DOCX. This can be used with OoxmlSaveOptions.Compliance property. Below code example shows how to set the compliance level while saving with OoxmlSaveOptions.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-SetOOXMLCompliance.cs" >}}
## **Update Last Saved Property**
The OoXMLSaveOptions class provides an UpdateLastSaved property to gets or sets a value determining whether the [LastSavedTime](https://apireference.aspose.com/net/words/aspose.words.properties/builtindocumentproperties/properties/lastsavedtime) property is updated before saving. Below code example shows how to set this property and save the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}
## **Keep Legacy Control Characters**
Some formats support legacy control characters. Word does not save these symbols to DOCX format (more accurately in OOXML formats). Aspose.Words allows to preserve the representation of legacy control characters while saving to OOXML format.  So far only one legacy character (ShortDateTime) is supported which declared in the "DOC" format. Below code example shows how to preserve legacy control characters and save the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-KeepLegacyControlChars.cs" >}}
