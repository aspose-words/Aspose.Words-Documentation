---
title: Work with Digital Signatures
description: "Aspose.Words for C++ allows you to digitally sign documents and detect, count, verify, and remove existing digital signatures."
type: docs
weight: 160
url: /cpp/working-with-digital-signatures/
---

A digital signature is a technological implementation of electronic signatures to sign documents and authenticate the signer to guarantee that a document has not been modified since it was signed. Each digital signature is unique for each signer because of following the PKI protocol to generate both public and private keys. Signing a document digitally means creating a signature using the signer's private key where a mathematical algorithm is used to encrypt the generated hash.

Aspose.Words allows you to detect, count, or verify existing digital signatures, and also add a new signature to your document to find out any tampering in it. You can also remove all digital signatures from a document. Use the [DigitalSignatureUtil](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.digital_signature_util) class to work with digital signatures.

This article explains how to do all of the above to validate the authenticity and integrity of a digital document.

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online signature](https://products.aspose.app/words/signature).

{{% /alert %}}

## Supported Formats

Aspose.Words allows you to work with digital signatures on DOC, OOXML, and ODT documents and to sign the generated document in PDF or XPS format.

## Limitations of Digital Signatures

The table below describes a few limitations that you may face while working with digital signatures through Aspose.Words, as well as some alternative options.

| Limitation                                                   | Alternative option                                           |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Loss of digital signatures on a document after loading and saving it. Therefore, processing a document to a server may cause the loss of all digital signatures without a notice. | Check if a document has digital signatures and take the appropriate action if any are found. For example, send an alert to the clients informing them that the document they are uploading contains digital signatures that will be lost if it is processed. |
| Aspose.Words supports working with macros in a document. But Aspose.Words does not yet support digital signatures on macros. | Export the document back to any Word format, and use Microsoft Word to add a digital signature to macros. |

## Detect, Count, and Verify Digital Signatures

Aspose.Words allows you to detect digital signature in a document using the the [DetectFileFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.file_format_util#detectfileformat_stream) method and the [HasDigitalSignature](https://apireference.aspose.com/words/cpp/class/aspose.words.file_format_info#get_hasdigitalsignature_const) property. It is worth noting that such a check will only detect the fact of the signature, but not its validity.

A document can be signed more than once, and this can be done by various users. To check the validity of digital signatures, you need to load them from the document using the [LoadSignatures](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.digital_signature_util#loadsignatures_stream) method and use the [IsValid](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.digital_signature_collection#get_isvalid) property. Also Aspose.Words allows you to count a set of all digital signatures within a document using the [Count](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.digital_signature_collection#get_count) property.

All of this provides an efficient and safe way to check a document for signatures before processing it.

The following code example shows how to detect the presence of digital signatures and verify them:

{{< highlight cpp >}}
// Use a FileFormatInfo instance to verify that a document is not digitally signed.
auto info = FileFormatUtil::DetectFileFormat(u"Document.docx");

ASSERT_EQ(FileFormatUtil::LoadFormatToExtension(info->get_LoadFormat()), u".docx")
ASSERT_FALSE(info->get_HasDigitalSignature());

// Sign the document.
auto certificateHolder = CertificateHolder::Create(u"morzal.pfx", u"aw");
auto signOptions = System::MakeObject<SignOptions>();
signOptions->set_SignTime(System::DateTime::get_Now());
DigitalSignatureUtil::Sign("Document.docx", u"File.DetectDigitalSignatures.docx", certificateHolder, signOptions);

// Use a new FileFormatInfo instance to confirm that it is signed.
info = FileFormatUtil::DetectFileFormat(u"File.DetectDigitalSignatures.docx");
ASSERT_TRUE(info->get_HasDigitalSignature());

// The signatures can then be accessed like this.
ASSERT_EQ(DigitalSignatureUtil::LoadSignatures(u"File.DetectDigitalSignatures.docx")->get_Count(), 1);
{{< /highlight >}}

## Create a Digital Signature {#create-a-digital-signature}

To create a digital signature, you will require to load a signing certificate that confirms identity. When you send a digitally signed document, you also send your certificate and public key.

Aspose.Words allows you to create X.509 certificate, a digital certificate that uses the internationally accepted X.509 PKI standard to verify that a public key belongs to the signer included inside the certificate. To do this, use the [Create](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.certificate_holder#create_ubytearray_securestring) method within the [CertificateHolder](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.certificate_holder) class.

The next sections explain how to add a digital signature, signature line, and how to sign a generated PDF document.

### Sign a Document

Aspose.Words allows you to sign a DOC, DOCX, or ODT document digitally using the [Sign](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.digital_signature_util#sign_stream_stream_certificateholder) method and [SignOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.sign_options) properties.

The following code example shows how to sign documents using a certificate holder and sign options:

{{< highlight cpp >}}
// Create X.509 certificate.
auto certificateHolder = CertificateHolder::Create(u"morzal.pfx", u"aw");

// Set up the signing time.
auto signOptions = System::MakeObject<SignOptions>();
signOptions->set_Comments(u"My Comment");
signOptions->set_SignTime(System::DateTime::get_Now());

// Sign your document.
{
        std::ifstream streamIn {"Digitally signed.docx"};
        std::ofstream streamOut {"DigitalSignatureUtil.SignDocument.docx"};
        DigitalSignatureUtil::Sign(streamIn, streamOut, certificateHolder, signOptions);
}

// Load and count digital signatures.
{
        std::ifstream stream {"DigitalSignatureUtil.SignDocument.docx"};
        auto digitalSignatures = DigitalSignatureUtil::LoadSignatures(stream);

        ASSERT_EQ(1, digitalSignatures->get_Count());
    
        auto signature = digitalSignatures->idx_get(0);
    
        ASSERT_TRUE(signature->get_IsValid());
        ASSERT_EQ(DigitalSignatureType::XmlDsig, signature->get_SignatureType());
        ASSERT_EQ(signOptions->get_SignTime(), signature->get_SignTime());
        ASSERT_EQ(signature->get_Comments(), u"My comment");
}
{{< /highlight >}}

### Add a Signature Line

A signature line is a visual representation of a digital signature in a document. Aspose.Words allows you to insert a signature line using the [DocumentBuilder.InsertSignatureLine](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#insertsignatureline_signaturelineoptions) method.  You can also set the parameters for this representation using the [SignatureLineOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.signature_line_options) class.

For example, the picture below shows how valid and invalid signatures can be displayed.

<img src="Valid.png" alt="valid-signature" style="width:300px"/>

<img src="Invalid.png" alt="invalid-signature" style="width:300px"/>

Also, if a document contains a signature line and no digital signature, there is a feature to ask the user to add a signature.

The following code example shows how to sign a document with a personal certificate and a specific signature line:

{{< highlight cpp >}}
// Create a Document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

// Set signature line options.
auto signatureLineOptions = System::MakeObject<SignatureLineOptions>();
signatureLineOptions->set_Signer(u"Entername");
signatureLineOptions->set_SignerTitle(u"QA");
signatureLineOptions->set_Email(u"EnterSome@email.com");
signatureLineOptions->set_ShowDate(true);
signatureLineOptions->set_DefaultInstructions(false);
signatureLineOptions->set_Instructions(u"You need more info about signature line");
signatureLineOptions->set_AllowComments(true);

// Insert signature line.
auto signatureLine = builder->InsertSignatureLine(signatureLineOptions)->get_SignatureLine();
signatureLine->set_ProviderId(System::Guid::Parse(u"CF5A7BB4-8F3C-4756-9DF6-BEF7F13259A2"));

doc->Save(u"DocumentBuilder.SignatureLineProviderId.docx");

// Set signing options. 
auto signOptions = MakeObject<SignOptions>();
signOptions->set_SignatureLineId(signatureLine->get_Id());
signOptions->set_ProviderId(signatureLine->get_ProviderId());
signOptions->set_Comments(u"Document was signed by Entername");
signOptions->set_SignTime(System::DateTime::get_Now());

// Create a certificate.
auto certHolder = CertificateHolder::Create(u"morzal.pfx", u"aw");

// We can sign the signature line programmatically.
DigitalSignatureUtil::Sign(u"DocumentBuilder.SignatureLineProviderId.docx", u"DocumentBuilder.SignatureLineProviderId.Signed.docx", certHolder, signOptions);

// Create the shape of the signature line.
doc = System::MakeObject<Document>(u"DocumentBuilder.SignatureLineProviderId.Signed.docx");
auto shape = System::DynamicCast<Shape>(doc.GetChild(NodeType::Shape, 0, true));
signatureLine = shape->SignatureLine;

ASSERT_EQ(signatureLine->get_Signer(), u"Entername");
ASSERT_EQ(signatureLine->get_SignerTitle(), u"QA");
ASSERT_EQ(signatureLine->get_Email(), u"EnterSome@email.com");
ASSERT_TRUE(signatureLine->get_ShowDate());
ASSERT_FALSE(signatureLine->get_DefaultInstructions());
ASSERT_EQ(signatureLine->get_Instructions(), u"You need more info about signature line");
ASSERT_TRUE(signatureLine->get_AllowComments());
ASSERT_TRUE(signatureLine->get_IsSigned());
ASSERT_TRUE(signatureLine->get_IsValid());

// Loading signatures.
auto signatures = DigitalSignatureUtil::LoadSignatures(u"DocumentBuilder.SignatureLineProviderId.Signed.docx");

ASSERT_EQ(1, signatures->get_Count());
ASSERT_TRUE(signatures->idx_get(0)->get_IsValid());
ASSERT_EQ(signatures->idx_get(0)->get_Comments(), u"Document was signed by Entername");
ASSERT_EQ(System::DateTime::get_Today(), signatures->idx_get(0)->get_SignTime()->get_Date());
ASSERT_EQ(signatures->idx_get(0)->get_IssuerName(), u"CN=Morzal.Me");
ASSERT_EQ(DigitalSignatureType::XmlDsig, signatures->idx_get(0)->get_SignatureType());
{{< /highlight >}}

### Sign a Generated PDF Document {#sign-a-generated-pdf-document}

Aspose.Words allows you to sign and get all details of a PDF document using the [PdfDigitalSignatureDetails](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.pdf_digital_signature_details) properties.

The following code example shows how to sign a generated PDF:

{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Writeln(u"Signed PDF contents.");

// Load the certificate from disk.
// The other constructor overloads can be used to load certificates from various locations.
auto certificateHolder = CertificateHolder::Create(u"morzal.pfx", u"aw");

// Pass the certificate and details to the save options class to sign with.
auto options = System::MakeObject<PdfSaveOptions>();
auto signingTime = DateTime::get_Now();
options->set_DigitalSignatureDetails(System::MakeObject<PdfDigitalSignatureDetails>(certificateHolder, u"Test Signing", u"Aspose Office", signingTime));

// We can use this attribute to set a various hash algorithm.
options->get_DigitalSignatureDetails()->set_HashAlgorithm(PdfDigitalSignatureHashAlgorithm::Sha256);

doc->Save(u"PdfSaveOptions.PdfDigitalSignature.pdf", options);
{{< /highlight >}}

## Remove Digital Signatures

Aspose.Words allows you to remove all digital signatures from a signed document using the [RemoveAllSignatures](https://apireference.aspose.com/words/cpp/class/aspose.words.digital_signatures.digital_signature_util#removeallsignatures_stream_stream) method.

The following code example shows how to load and remove digital signatures from a document:

{{< highlight cpp >}}
// Load digital signatures via filename string to verify that the document is signed.
auto digitalSignatures = DigitalSignatureUtil::LoadSignatures(u"Digitally signed.docx");
ASSERT_EQ(1, digitalSignatures::get_Count());

// Re-save the document to an output filename with all digital signatures removed.
DigitalSignatureUtil::RemoveAllSignatures(u"Digitally signed.docx", u"DigitalSignatureUtil.LoadAndRemove.FromString.docx");

// Remove all signatures from the document using stream parameters.
{
        std::ifstream streamIn {"Digitally signed.docx"};
        std::ofstream streamOut {"DigitalSignatureUtil.LoadAndRemove.FromStream.docx"};
        DigitalSignatureUtil::RemoveAllSignatures(streamIn, streamOut);
}

// We can also load a document's digital signatures via stream, which we will do to verify that all signatures have been removed.
{
        std::ifstream stream {"DigitalSignatureUtil.LoadAndRemove.FromStream.docx"};
        digitalSignatures = DigitalSignatureUtil::LoadSignatures(stream);
        ASSERT_EQ(0, digitalSignatures->get_Count());
}
{{< /highlight >}}

{{% alert color="primary" %}}

Note that you can not remove only one digital signature within your document.

{{% /alert %}}
