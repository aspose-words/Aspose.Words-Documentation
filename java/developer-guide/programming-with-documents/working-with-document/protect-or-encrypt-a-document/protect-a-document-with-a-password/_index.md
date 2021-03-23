---
title: Protect a Document with a Password
description: "Aspose.Words for Java allows you to add password protection to your document. This way you can control what other users can do with the document."
type: docs
weight: 20
url: /java/document-protection/
---

Sometimes, you may need a document protection option to keep documents safe when sharing them. For example, this can be useful in some scenarios as sending documents to third-party vendors, using cloud-based products to exchange documents, or as part of a copyright protection strategy.

Aspose.Words allows you to add password protection to your document. It’s important to understand that protection features are password-secured, but at the same time this password can be easily removed and therefore it does not encrypt the document.

This article explains the password protection option to control what other users are able to do with a document.

{{% alert color="primary" %}}

Note that the document protection functionality is available online via our [Free online documents unlocker](https://products.aspose.app/words/unlock).

{{% /alert %}}

## How to Add Document Protection

Aspose.Words allows you to protect your documents from changes using the [Protect](https://apireference.aspose.com/words/java/com.aspose.words/document#protect(int)) method or the [SetPassword](https://apireference.aspose.com/words/java/com.aspose.words/writeprotection#setPassword(java.lang.String)) method. Both of them are not security features and do not encrypt the document. You need to use the [Password](https://apireference.aspose.com/words/java/com.aspose.words/docsaveoptions#Password) property to encrypt the content of your document and protect it with a password.

If you need to detect if a document is encrypted and if a password is required, you can use the [IsEncrypted](https://apireference.aspose.com/words/java/com.aspose.words/fileformatinfo#IsEncrypted) property. This will allow you to perform some action before loading a document, for example, inform the user to provide a password.

The following code example shows how to add password protection to your document without any encryption:

{{< highlight csharp >}}
// Create a new document and protect it with a password.
Document doc = new Document();

// Apply Document Protection.
doc.Protect(ProtectionType.NoProtection, "password");

// Save the document.
doc.Save(ArtifactsDir + "Document.Protect.docx");
{{< /highlight >}}

The following code example shows how to encrypt a document with a required password:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

// DocSaveOptions only applies to Doc and Dot save formats.
DocSaveOptions options = new DocSaveOptions(SaveFormat.Doc);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";

// If the document contains a routing slip, we can preserve it while saving by setting this flag to true.
options.SaveRoutingSlip = true;
doc.Save(ArtifactsDir + "DocSaveOptions.SaveAsDoc.doc", options);
{{< /highlight >}}

{{% alert color="primary" %}}

Note that you can encrypt an OOXML document with the [Password](https://apireference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions#Password) property.

{{% /alert %}}

## How to Remove Document Protection

Aspose.Words allows you to remove protection from a document. You can either remove the document protection without knowing the actual password or specify the correct password to unlock the document by using the [Unprotect](https://apireference.aspose.com/words/java/com.aspose.words/document#unprotect()) method.

{{% alert color="primary" %}}

Note that if you have a document that is protected with a specific password by another third-party, you can remove this protection using the **Unprotect** method.

{{% /alert %}}

The following code example shows how to remove protection from your document:

{{< highlight csharp >}}
// Create a new document and protect it with a password.
Document doc = new Document();

// Add text.
DocumentBuilder builder = new DocumentBuilder(protectedDoc);
builder.Writeln("Text added to a document.");

// Documents can have protection removed either with no password, or with the correct password.
doc.Unprotect();
doc.Protect(ProtectionType.ReadOnly, "newPassword");
doc.Unprotect("newPassword");

// Save the document.
doc.Save(ArtifactsDir + "Document.UnProtect.docx"); 
{{< /highlight >}}