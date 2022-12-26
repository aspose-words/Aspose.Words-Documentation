---
title: Work with Digital Signatures in C#
second_title: Aspose.Words for .NET
articleTitle: Work with Digital Signatures
linktitle: Work with Digital Signatures
description: "Digitally sign documents and detect, count, verify, and remove existing digital signatures using C#."
type: docs
weight: 40
url: /net/working-with-digital-signatures/
---

A digital signature is a technological implementation of electronic signatures to sign documents and authenticate the signer to guarantee that a document has not been modified since it was signed. Each digital signature is unique for each signer because of following the PKI protocol to generate both public and private keys. Signing a document digitally means creating a signature using the signer's private key where a mathematical algorithm is used to encrypt the generated hash.

Aspose.Words allows you to detect, count, or verify existing digital signatures, and also add a new signature to your document to find out any tampering in it. You can also remove all digital signatures from a document. Use the [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) class to work with digital signatures.

This article explains how to do all of the above to validate the authenticity and integrity of a digital document.

{{% alert color="primary" %}}

Note that you can access digital signatures of your document only when running the .NET Framework 2.0 version and above.

{{% /alert %}}

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online signature](https://products.aspose.app/words/signature).

{{% /alert %}}

## Supported Formats

Aspose.Words allows you to work with digital signatures on DOC, OOXML, and ODT documents and to sign the generated document in PDF or XPS format.

## Limitations of Digital Signatures

The table below describes a few limitations that you may face while working with digital signatures through Aspose.Words, as well as some alternative options.

| Limitation                                                   | Alternative Option                                           |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Loss of digital signatures on a document after loading and saving it. Therefore, processing a document to a server may cause the loss of all digital signatures without a notice. | Check if a document has digital signatures and take the appropriate action if any are found. For example, send an alert to the clients informing them that the document they are uploading contains digital signatures that will be lost if it is processed. |
| Aspose.Words supports working with macros in a document. But Aspose.Words does not yet support digital signatures on macros. | Export the document back to any Word format, and use Microsoft Word to add a digital signature to macros. |

## Detect, Count, and Verify Digital Signatures

Aspose.Words allows you to detect digital signature in a document using the the [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) method and the [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) property. It is worth noting that such a check will only detect the fact of the signature, but not its validity.

A document can be signed more than once, and this can be done by different users. To check the validity of digital signatures, you need to load them from the document using the [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) method and use the [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) property. Also Aspose.Words allows you to count a set of all digital signatures within a document using the [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) property.

All of this provides an efficient and safe way to check a document for signatures before processing it.

The following code example shows how to detect the presence of digital signatures and verify them:

{{< highlight csharp >}}
// Use a FileFormatInfo instance to verify that a document is not digitally signed.
FileFormatInfo info = FileFormatUtil.DetectFileFormat(MyDir + "Document.docx");

Assert.AreEqual(".docx", FileFormatUtil.LoadFormatToExtension(info.LoadFormat));
Assert.False(info.HasDigitalSignature);

// Sign the document.
CertificateHolder certificateHolder = CertificateHolder.Create(MyDir + "morzal.pfx", "aw", null);
DigitalSignatureUtil.Sign(MyDir + "Document.docx", ArtifactsDir + "File.DetectDigitalSignatures.docx",
certificateHolder, new SignOptions() { SignTime = DateTime.Now });

// Use a new FileFormatInfo instance to confirm that it is signed.
info = FileFormatUtil.DetectFileFormat(ArtifactsDir + "File.DetectDigitalSignatures.docx");
Assert.True(info.HasDigitalSignature);

// The signatures can then be accessed like this.
Assert.AreEqual(1, DigitalSignatureUtil.LoadSignatures(ArtifactsDir + "File.DetectDigitalSignatures.docx").Count);
{{< /highlight >}}

## Create a Digital Signature {#create-a-digital-signature}

To create a digital signature, you will require to load a signing certificate that confirms identity. When you send a digitally signed document, you also send your certificate and public key.

Aspose.Words allows you to create X.509 certificate, a digital certificate that uses the internationally accepted X.509 PKI standard to verify that a public key belongs to the signer included inside the certificate. To do this, use the [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) method within the [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) class.

The next sections explain how to add a digital signature, signature line, and how to sign a generated PDF document.

### Sign a Document

Aspose.Words allows you to sign a DOC, DOCX, or ODT document digitally using the [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) method and [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) properties.

The following code example shows how to sign documents using a certificate holder and sign options:

{{< highlight csharp >}}
// Create X.509 certificate.
CertificateHolder certificateHolder = CertificateHolder.Create(MyDir + "morzal.pfx", "aw");

// Set up the signing time.
SignOptions signOptions = new SignOptions { Comments = "My comment", SignTime = DateTime.Now };

// Sign your document.
using (Stream streamIn = new FileStream(MyDir + "Digitally signed.docx", FileMode.Open))
{
	using (Stream streamOut = new FileStream(ArtifactsDir + "DigitalSignatureUtil.SignDocument.docx", FileMode.OpenOrCreate))
	{
		DigitalSignatureUtil.Sign(streamIn, streamOut, certificateHolder, signOptions);
	}
}

// Load and count digital signatures.
using (Stream stream = new FileStream(ArtifactsDir + "DigitalSignatureUtil.SignDocument.docx", FileMode.Open))
{
	DigitalSignatureCollection digitalSignatures = DigitalSignatureUtil.LoadSignatures(stream);
	Assert.AreEqual(1, digitalSignatures.Count);

	DigitalSignature signature = digitalSignatures[0];
	
	Assert.True(signature.IsValid);
	Assert.AreEqual(DigitalSignatureType.XmlDsig, signature.SignatureType);
	Assert.AreEqual(signOptions.SignTime.ToString(), signature.SignTime.ToString());
	Assert.AreEqual("My comment", signature.Comments);
}
{{< /highlight >}}

### Add a Signature Line

A signature line is a visual representation of a digital signature in a document. Aspose.Words allows you to insert a signature line using the [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) method.  You can also set the parameters for this representation using the [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) class.

For example, the picture below shows how valid and invalid signatures can be displayed.

<img src="valid.png" alt="drawing" style="width:300px"/>

<img src="invalid.png" alt="drawing" style="width:300px"/>

Also, if a document contains a signature line and no digital signature, there is a feature to ask the user to add a signature.

The following code example shows how to sign a document with a personal certificate and a specific signature line:

{{< highlight csharp >}}
// Create a Document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Set signature line options.
SignatureLineOptions signatureLineOptions = new SignatureLineOptions
{
	Signer = "Entername",
	SignerTitle = "QA",
	Email = “EnterSomeEmail",
	ShowDate = true,
	DefaultInstructions = false,
	Instructions = "You need more info about signature line",
	AllowComments = true
};

// Insert signature line.
SignatureLine signatureLine = builder.InsertSignatureLine(signatureLineOptions).SignatureLine;
signatureLine.ProviderId = Guid.Parse("CF5A7BB4-8F3C-4756-9DF6-BEF7F13259A2");

doc.Save(ArtifactsDir + "DocumentBuilder.SignatureLineProviderId.docx");

// Set signing options. 
SignOptions signOptions = new SignOptions
{
	SignatureLineId = signatureLine.Id,
	ProviderId = signatureLine.ProviderId,
	Comments = "Document was signed by vderyushev",
	SignTime = DateTime.Now
};

// Create a certificate.
CertificateHolder certHolder = CertificateHolder.Create(MyDir + "morzal.pfx", "aw");

// We can sign the signature line programmatically.
DigitalSignatureUtil.Sign(ArtifactsDir + "DocumentBuilder.SignatureLineProviderId.docx", ArtifactsDir + "DocumentBuilder.SignatureLineProviderId.Signed.docx", certHolder, signOptions);

// Create the shape of the signature line.
doc = new Document(ArtifactsDir + "DocumentBuilder.SignatureLineProviderId.Signed.docx");
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
signatureLine = shape.SignatureLine;

Assert.AreEqual("vderyushev", signatureLine.Signer);
Assert.AreEqual("QA", signatureLine.SignerTitle);
Assert.AreEqual("vderyushev@aspose.com", signatureLine.Email);
Assert.True(signatureLine.ShowDate);
Assert.False(signatureLine.DefaultInstructions);
Assert.AreEqual("You need more info about signature line", signatureLine.Instructions);
Assert.True(signatureLine.AllowComments);
Assert.True(signatureLine.IsSigned);
Assert.True(signatureLine.IsValid);

// Loading signatures.
DigitalSignatureCollection signatures = DigitalSignatureUtil.LoadSignatures(ArtifactsDir + "DocumentBuilder.SignatureLineProviderId.Signed.docx");

Assert.AreEqual(1, signatures.Count);
Assert.True(signatures[0].IsValid);
Assert.AreEqual("Document was signed by vderyushev", signatures[0].Comments);
Assert.AreEqual(DateTime.Today, signatures[0].SignTime.Date);
Assert.AreEqual("CN=Morzal.Me", signatures[0].IssuerName);
Assert.AreEqual(DigitalSignatureType.XmlDsig, signatures[0].SignatureType);
{{< /highlight >}}

### Sign a Generated PDF Document {#sign-a-generated-pdf-document}

Aspose.Words allows you to sign and get all details of a PDF document using the [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) properties.

The following code example shows how to sign a generated PDF:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("Signed PDF contents.");

// Load the certificate from disk.
// The other constructor overloads can be used to load certificates from different locations.
CertificateHolder certificateHolder = CertificateHolder.Create(MyDir + "morzal.pfx", "aw");

// Pass the certificate and details to the save options class to sign with.
PdfSaveOptions options = new PdfSaveOptions();
DateTime signingTime = DateTime.Now;
options.DigitalSignatureDetails = new PdfDigitalSignatureDetails(certificateHolder, "Test Signing", "Aspose Office", signingTime);

// We can use this attribute to set a different hash algorithm.
options.DigitalSignatureDetails.HashAlgorithm = PdfDigitalSignatureHashAlgorithm.Sha256;

Assert.AreEqual("Test Signing", options.DigitalSignatureDetails.Reason);
Assert.AreEqual("Aspose Office", options.DigitalSignatureDetails.Location);
Assert.AreEqual(signingTime.ToUniversalTime(), options.DigitalSignatureDetails.SignatureDate);

doc.Save(ArtifactsDir + "PdfSaveOptions.PdfDigitalSignature.pdf", options);
{{< /highlight >}}

## Remove Digital Signatures

Aspose.Words allows you to remove all digital signatures from a signed document using the [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) method.

The following code example shows how to load and remove digital signatures from a document:

{{< highlight csharp >}}
// Load digital signatures via filename string to verify that the document is signed.
DigitalSignatureCollection digitalSignatures = DigitalSignatureUtil.LoadSignatures(MyDir + "Digitally signed.docx");
Assert.AreEqual(1, digitalSignatures.Count);

// Re-save the document to an output filename with all digital signatures removed.
DigitalSignatureUtil.RemoveAllSignatures(MyDir + "Digitally signed.docx", ArtifactsDir + "DigitalSignatureUtil.LoadAndRemove.FromString.docx");

// Remove all signatures from the document using stream parameters.
using (Stream streamIn = new FileStream(MyDir + "Digitally signed.docx", FileMode.Open))
{
	using (Stream streamOut = new FileStream(ArtifactsDir + "DigitalSignatureUtil.LoadAndRemove.FromStream.docx", FileMode.Create))
	{
		DigitalSignatureUtil.RemoveAllSignatures(streamIn, streamOut);
	} 
}

// We can also load a document's digital signatures via stream, which we will do to verify that all signatures have been removed.
using (Stream stream = new FileStream(ArtifactsDir + "DigitalSignatureUtil.LoadAndRemove.FromStream.docx", FileMode.Open))
{
	digitalSignatures = DigitalSignatureUtil.LoadSignatures(stream);
	Assert.AreEqual(0, digitalSignatures.Count);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Note that you can not remove only one digital signature within your document.

{{% /alert %}}
