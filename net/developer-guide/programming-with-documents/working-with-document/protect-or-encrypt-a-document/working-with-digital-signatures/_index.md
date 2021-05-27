---
title: Working with Digital Signatures
type: docs
weight: 20
url: /net/working-with-digital-signatures/
---

A digital signature is used to authenticate a document to establish that the sender of the document is who they say they are and the content of the document has not been tampered with.

Aspose.Words supports documents with digital signatures and provides access to them allowing you to detect and validate digital signatures on a document and sign a generated PDF document with a supplied certificate. At the present time digital signatures are supported on DOC, OOXML and ODT documents. Signing of generated documents is supported in PDF format.

Accessing digital signatures of a document is available in Aspose.Words only when running versions of the .NET Framework 2.0 and above. It is not currently supported in previous versions as it relies on specific classes not found in the previous versions. Support for previous versions of the .NET framework will be available in the future.

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online signature](https://products.aspose.app/words/signature).

{{% /alert %}}

## Digital Signatures are not Preserved on Open and Save

An important point to note is that a document loaded and then saved using Aspose.Words will lose any digital signatures signed on the document. This is by design as a digital signature ensures that the content has not been modified and furthermore authenticates the identify of who signed the document. These principles would be invalidated if the original signatures were carried over to the resulting document.

Due to this, if you process documents uploaded to a server this could potentially mean you may corrupt a document uploaded to your server in this way without knowing. Therefore it is best to check for digital signatures on a document and take the appropriate action if any are found, for example an alert can be sent to the client informing them that the document they are passing contains digital signatures which will be lost if it is processed. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-DetectDocumentSignatures-DetectDocumentSignatures.cs" >}}

The code above uses the [FileFormatUtil.DetectFileFormat](https://apireference.aspose.com/words/net/aspose.words/fileformatutil/methods/detectfileformat/index) method to detect if a document contains digital signatures without loading the document first. This provides an efficient and safe way to check a document for signatures before processing them. When executed, the method returns a [FileFormatInfo](https://apireference.aspose.com/words/net/aspose.words/fileformatinfo) object which provides the property [FileFormatInfo.HasDigitalSignature](https://apireference.aspose.com/words/net/aspose.words/fileformatinfo/properties/hasdigitalsignature). This property returns true if the document contains one or more digital signatures. It’s important to note that this method does not validate the signatures, it only determines if signatures are present. Validating digital signatures is covered in the next section.

{{% alert color="primary" %}} 

You can also check if a document has digital signatures after loading by checking the Count property of the [Document.DigitalSignatures collection](https://apireference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection).

{{% /alert %}} 

## Digital Signatures on Macros (VBA Projects)

Digital signatures on macros cannot be accessed or signed. This is because Aspose.Words does not directly deal with macros in a document. However digital signatures on macros are preserved when exporting the document back to any word format. These signatures can be preserved on VBA code because the binary content of the macros are not changed even if the document itself is modified.

## Create Digitally Signed PDF Documents

A generated PDF document can be signed during saving. Currently only PDF documents can be signed in the same way. Other formats are to be supported in future versions. To sign an output PDF document firstly the **X509Certificates** namespace needs to be imported as shown below. This gives access to the necessary classes required for the next steps.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-DigitallySignedPdf-X509Certificates.cs" >}}

A certificate needs to be loaded from a source i.e. from disk or from a certificate store and passed to a new instance of the X509Certificate2 class. This object is wrapped into an instance of the PdfDigitalSignatureDetails class along with other details used in the signature. This is passed to the PdfSaveOptions class which will use this to sign the output document when rendering to PDF. The code sample below shows how to sign a generated PDF document using Aspose.Words.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-DigitallySignedPdf-DigitallySignedPdf.cs" >}}

The .NET framework provides numerous ways in which to load a certificate. These details are out of the scope of this article, however further information on this can be found on the MSDN page [here](http://msdn.microsoft.com/en-us/library/system.security.cryptography.x509certificates.x509certificate2.aspx).

### Access and Verify Digital Signatures

A document can have multiple digital signatures. These signatures can all be accessed through the Document.DigitalSignatures collection. Each object returned is a DigitalSignature which represents a single digital signature belonging to the document. This provides members that allow you to check the validity of the signature, and important properties such as the name and date of the signature and the X509Signature2 object of the signature.

The most important property to check with digital signatures is the validity of each signature in the document. All signatures in the document can be validated at once by calling the [DigitalSignatureCollection.IsValid](https://apireference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/properties/isvalid) Property property. This will return true if all signatures in the document are valid or if the document has no signatures and false if at least one digital signature is not valid.

Each signature can also be individually validated by calling DigitalSignature.IsValid. A signature can return not valid for several reasons, for instance the document has been changed since signing or the certificate has expired. Additionally extra details of the signature can also be accessed. The code sample below shows how to validate each signature in a document and display basic information about the signature. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-AccessAndVerifySignature-AccessAndVerifySignature.cs" >}}

## Signing Word Documents

DigitalSignatureUtil class provides methods for signing document. DigitalSignatureUtil.Sign method signs source document using given CertificateHolder with digital signature and writes signed document to destination stream. 

Below example shows how to sign simple document. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Signature-SigningSignatureLine-SimpleDocumentSigning.cs" >}}

Below example shows how to sign encrypted document. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Signature-SigningSignatureLine-SigningEncryptedDocument.cs" >}}

### Signing Word document with Signature Line

You can sign source document using given CertificateHolder and SignOptions with digital signature and writes signed document to destination file. Using SignOptions class you can specify options for document signing. Below example shows how to create new signature line and sign document. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Signature-SigningSignatureLine-CreatingAndSigningNewSignatureLine.cs" >}}

Below example shows how to modify existing signature line and sign document. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Signature-SigningSignatureLine-SigningExistingSignatureLine.cs" >}}

### Signing Word Document using Signature Provider Identifier

Below example shows how to sign Word document using signature provider identifier. The cryptographic service provider (CSP) is an independent software module that actually performs cryptography algorithms for authentication, encoding, and encryption. MS Office reserves the value of {00000000-0000-0000-0000-000000000000} for its default signature provider.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Signature-SigningSignatureLine-SetSignatureProviderID.cs" >}}

### Create New Signature Line Sign Word Document using Provider Identifier

Below example shows how to create signature line and sign Word document using signature provider identifier.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Signature-SigningSignatureLine-CreateNewSignatureLineAndSetProviderID.cs" >}}
