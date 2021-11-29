---
title: Working with Digital Signatures
description: "Aspose.Words for Python allows you to digitally sign documents and detect, count, verify, and remove existing digital signatures."
type: docs
weight: 40
url: /python-net/working-with-digital-signatures/
aliases: [/python/working-with-digital-signatures/]
---

A digital signature is used to authenticate a document to establish that the sender of the document is who they say they are and the content of the document has not been tampered with.

Aspose.Words supports documents with digital signatures and provides access to them allowing you to detect and validate digital signatures on a document and sign a generated PDF document with a supplied certificate. At the present time digital signatures are supported on DOC, OOXML and ODT documents. Signing of generated documents is supported in PDF format.

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online signature](https://products.aspose.app/words/signature).

{{% /alert %}}

## Digital Signatures are not Preserved on Open and Save

An important point to note is that a document loaded and then saved using Aspose.Words will lose any digital signatures signed on the document. This is by design as a digital signature ensures that the content has not been modified and furthermore authenticates the identify of who signed the document. These principles would be invalidated if the original signatures were carried over to the resulting document.

Due to this, if you process documents uploaded to a server this could potentially mean you may corrupt a document uploaded to your server in this way without knowing. Therefore it is best to check for digital signatures on a document and take the appropriate action if any are found, for example an alert can be sent to the client informing them that the document they are passing contains digital signatures which will be lost if it is processed. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

The code above uses the **FileFormatUtil.detect_file_format** method to detect if a document contains digital signatures without loading the document first. This provides an efficient and safe way to check a document for signatures before processing them. When executed, the method returns a **FileFormatInfo** object which provides the property **FileFormatInfo.has_digital_signature**. This property returns true if the document contains one or more digital signatures. It’s important to note that this method does not validate the signatures, it only determines if signatures are present. Validating digital signatures is covered in the next section.

{{% alert color="primary" %}} 

You can also check if a document has digital signatures after loading by checking the Count property of the **Document.digital_signatures** collection.

{{% /alert %}} 

## Digital Signatures on Macros (VBA Projects)

Digital signatures on macros cannot be accessed or signed. This is because Aspose.Words does not directly deal with macros in a document. However digital signatures on macros are preserved when exporting the document back to any word format. These signatures can be preserved on VBA code because the binary content of the macros are not changed even if the document itself is modified.

### Access and Verify Digital Signatures

A document can have multiple digital signatures. These signatures can all be accessed through the **Document.digital_signatures** collection. Each object returned is a **DigitalSignature** which represents a single digital signature belonging to the document. This provides members that allow you to check the validity of the signature.

The most important property to check with digital signatures is the validity of each signature in the document. All signatures in the document can be validated at once by calling the **DigitalSignatureCollection.is_valid** property. This will return true if all signatures in the document are valid or if the document has no signatures and false if at least one digital signature is not valid.

Each signature can also be individually validated by calling **DigitalSignature.is_valid**. A signature can return not valid for several reasons, for instance the document has been changed since signing or the certificate has expired. Additionally extra details of the signature can also be accessed. The code sample below shows how to validate each signature in a document and display basic information about the signature. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Signing Word Documents

**DigitalSignatureUtil** class provides methods for signing document. **DigitalSignatureUtil.sign** method signs source document using given **CertificateHolder** with digital signature and writes signed document to destination stream. 

Below example shows how to sign simple document. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Below example shows how to sign encrypted document. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Signing Word document with Signature Line

You can sign source document using given **CertificateHolder** and **SignOptions** with digital signature and writes signed document to destination file. Using **SignOptions** class you can specify options for document signing. Below example shows how to create new signature line and sign document. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Below example shows how to modify existing signature line and sign document. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Signing Word Document using Signature Provider Identifier

Below example shows how to sign Word document using signature provider identifier. The cryptographic service provider (CSP) is an independent software module that actually performs cryptography algorithms for authentication, encoding, and encryption. MS Office reserves the value of {00000000-0000-0000-0000-000000000000} for its default signature provider.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Create New Signature Line Sign Word Document using Provider Identifier

Below example shows how to create signature line and sign Word document using signature provider identifier.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}
