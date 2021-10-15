---
title: Encrypt a Document
description: "Aspose.Words for Java enables you to encrypt your document using appropriate encryption algorithms for specific document formats."
type: docs
weight: 20
url: /java/encrypt-a-document/
---

Encryption is the process that translates readable text to meaningless sequences of bytes so it can only be read by the person who has the decryption key or the secret code. This process plays an important role in securing your content. It helps to encode the content, verify the origin of a document, prove that the content has not been modified after it was sent, and ensure that the data from the document is safe.

This article explains how Aspose.Words allows you to encrypt a document and how to check if a document has encryption or not.

## Encrypt with Password

To encrypt a document, use the **Password** property to provide a password that functions as an encryption key. This will modify the content of your document and make it unreadable. The encrypted document will require to have this password entered before it can be opened.

{{% alert color="primary" %}}

You can find the appropriate **Password** property for the required format. Each document save format has a corresponding class containing save options for this format. For example, the [Password](https://apireference.aspose.com/words/java/com.aspose.words/docsaveoptions#Password) property in the [DocSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/DocSaveOptions) class for DOC, or the [Password](https://apireference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions#Password) property in the [OoxmlSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/OoxmlSaveOptions) class for DOCX, DOCM, DOTX, DOTM, and FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Note that only certain document formats support encryption. For example, RTF does not support encryption.

{{% /alert %}}

The table below lists the formats and encryption algorithms supported by Aspose.Words:

| Format                                                       | Supported Encryption while Loading                          | Supported Encryption while Saving            |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT                                                     | XOR encryption40-bit RC4 EncryptionCryptoAPI RC4 Encryption | RC4 Encryption (40-bit)                      |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standard EncryptionECMA-376 Agile Encryption       | ECMA-376 Standard Encryption (AES128 + SHA1) |
| ODT, OTT                                                     | ODF Encryption (Blowfish/AES)                               | ODF Encryption (AES256 + SHA256)             |
| PDF                                                          | -                                                           | RC4 Encryption (40/128 bit)                  |

The following code example demonstrates how to encrypt a document with a password:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

// DocSaveOptions only applies to Doc and Dot save formats.
DocSaveOptions options = new DocSaveOptions(SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "DocSaveOptions.SaveAsDoc.doc", options);
{{< /highlight >}}

## Check If a Document Is Encrypted

In some cases, you may have an unreadable document and want to be sure that the document is encrypted and not corrupted or compressed.

To detect if a document is encrypted and if a password is required, you can use the [IsEncrypted](https://apireference.aspose.com/words/java/com.aspose.words/fileformatinfo#IsEncrypted) property of the [FileFormatInfo](https://apireference.aspose.com/words/java/com.aspose.words/FileFormatInfo) class. This property will also allow you to perform some action before loading a document, for example, informing a user to provide a password.

The following code example demonstrates how to detect the document encryption:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
OdtSaveOptions saveOptions = new OdtSaveOptions(SaveFormat.ODT);
saveOptions.setPassword("MyPassword");

doc.save(getArtifactsDir() + "File.DetectDocumentEncryption.odt", saveOptions);

// Create a FileFormatInfo object for this document.
FileFormatInfo info = FileFormatUtil.detectFileFormat(getArtifactsDir() + "File.DetectDocumentEncryption.odt");

// Verify the encryption status of our document.
Assert.assertTrue(info.isEncrypted());
{{< /highlight >}}

## Open a Document With or Without a Password

When we have made sure that a document is encrypted, we can try to open this document without a password, which should lead to an exception.

The following code example demonstrates how to try opening an encrypted document without a password:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

After we have seen that an encrypted document cannot be opened without a password, we can try to open it by entering the password.

The following code example demonstrates how to try opening an encrypted document with a password:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a LoadOptions object.
doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.assertEquals("Hello world!", doc.getText().trim());
{{< /highlight >}}
