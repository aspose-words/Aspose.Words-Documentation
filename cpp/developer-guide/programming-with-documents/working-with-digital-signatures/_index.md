---
title: Working with Digital Signatures
type: docs
weight: 320
url: /cpp/working-with-digital-signatures/
---

## Introduction

A digital signature is used to authenticate a document to establish that the sender of the document is who they say they are and the content of the document has not been tampered with.

Aspose.Words supports documents with digital signatures and provides access to them allowing you to detect and validate digital signatures on a document and sign a generated PDF document with a supplied certificate. At the present time digital signatures are supported on DOC, OOXML, and ODT documents. The signing of generated documents is supported in PDF format.

### Digital Signatures are not Preserved on Open and Save

An important point to note is that a document loaded and then saved using Aspose.Words will lose any digital signatures signed on the document. This is by design as a digital signature ensures that the content has not been modified and furthermore authenticates the identity of who signed the document. These principles would be invalidated if the original signatures were carried over to the resulting document.

Due to this, if you process documents uploaded to a server this could potentially mean you may corrupt a document uploaded to your server in this way without knowing. Therefore it is best to check for digital signatures on a document and take the appropriate action if any are found, for example an alert can be sent to the client informing them that the document they are passing contains digital signatures which will be lost if it is processed. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-DetectDocumentSignatures-DetectDocumentSignatures.cpp" >}}

The code above uses the [FileFormatUtil.DetectFileFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.file_format_util/#a40672aef78025e28055af0d6dafd1eef) method to detect if a document contains digital signatures without loading the document first. This provides an efficient and safe way to check a document for signatures before processing them. When executed, the method returns a [FileFormatInfo](https://apireference.aspose.com/words/cpp/class/aspose.words.file_format_info) object which provides the property [FileFormatInfo.HasDigitalSignature](https://apireference.aspose.com/words/cpp/class/aspose.words.file_format_info/#abb1a4f2b76f47560ca8da3cca1c769e0). This property returns true if the document contains one or more digital signatures. It’s important to note that this method does not validate the signatures, it only determines if signatures are present. Validating digital signatures is covered in the next section.

{{% alert color="primary" %}} 

You can also check if a document has digital signatures after loading by checking the Count property of the [Document.DigitalSignatures collection](https://apireference.aspose.com/words/cpp/class/aspose.words.document/#a4f334813c4a56cc2b203507aeff7cf0b).

{{% /alert %}} 

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/Document.Signed.docx).


### Digital Signatures on Macros (VBA Projects)

Digital signatures on macros cannot be accessed or signed because Aspose.Words does not directly deal with macros in a document. However digital signatures on macros are preserved when exporting the document back to any word format. These signatures can be preserved on VBA code because the binary content of the macros is not changed even if the document itself is modified.

## Create Digitally Signed PDF Documents

A generated PDF document can be signed during saving. Currently only PDF documents can be signed in the same way. Other formats are to be supported in future versions. The code sample below shows how to sign a generated PDF document using Aspose.Words.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-DigitallySignedPdfUsingCertificateHolder-DigitallySignedPdfUsingCertificateHolder.cpp" >}}


#### Access and Verify Digital Signatures

The most important property to check with digital signatures is the validity of each signature in the document. All signatures in the document can be validated at once by calling the [DigitalSignatureCollection.IsValid](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signature_collection/#abac52a9b54b140ab7ee3404f13a85eaf) Property property. This will return true if all signatures in the document are valid or if the document has no signatures and false if at least one digital signature is not valid.

Each signature can also be individually validated by calling DigitalSignature.IsValid. A signature can return not valid for several reasons, for instance the document has been changed since signing or the certificate has expired. Additionally extra details of the signature can also be accessed. The code sample below shows how to validate each signature in a document and display basic information about the signature. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-AccessAndVerifySignature-AccessAndVerifySignature.cpp" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/Test%20File%20\(doc\).doc).

{{% /alert %}} 


## Signing Word Documents

DigitalSignatureUtil class provides methods for signing documents. DigitalSignatureUtil.Sign method signs source document using a given CertificateHolder with a digital signature and writes a signed document to the destination stream. 

The following code example shows how to sign a simple document. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SigningSignatureLine-SimpleDocumentSigning.cpp" >}}

The following code example shows how to sign the encrypted documents. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SigningSignatureLine-SigningEncryptedDocument.cpp" >}}

### Signing Word document with Signature Line

You can sign a source document using a given CertificateHolder and SignOptions with a digital signature and writes a signed document to the destination file. Using SignOptions class you can specify options for document signing. The following code example shows how to create a new signature line and sign document. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SigningSignatureLine-CreatingAndSigningNewSignatureLine.cpp" >}}

The following code example shows how to modify an existing signature line and sign document. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SigningSignatureLine-SigningExistingSignatureLine.cpp" >}}

### Signing Word Document using Signature Provider Identifier

The code example given below shows how to sign a Word document using a signature provider identifier. The cryptographic service provider (CSP) is an independent software module that actually performs cryptography algorithms for authentication, encoding, and encryption. MS Office reserves the value of {00000000-0000-0000-0000-000000000000} for its default signature provider.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SigningSignatureLine-SetSignatureProviderID.cpp" >}}

### Create New Signature Line Sign Word Document using Provider Identifier

The following code example shows how to create a signature line and sign a Word document using a signature provider identifier.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SigningSignatureLine-CreateNewSignatureLineAndSetProviderID.cpp" >}}
