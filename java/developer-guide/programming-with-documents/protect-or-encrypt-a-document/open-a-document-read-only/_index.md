---
title: Open a Document Read-Only
description: "Aspose.Words for Java allows you to make your document read-only so that the content can be copied or read, but not modified."
type: docs
weight: 10
url: /java/open-a-document-read-only/
aliases: [/java/document-protection/]
---

Sometimes, you may have a document that needs a review, but you do not want reviewers to randomly modify your content. Aspose.Words allows you to make the permission of your document read-only so that the content can be copied or read, but not modified. This will prevent content from being removed or added to your document.

{{% alert color="primary" %}}

Applying the read-only option to your document does not prevent someone from creating a new copy of it and saving it with another name.

{{% /alert %}}

This article explains how to make a document read-only.

## Make a Document Read-Only

Aspose.Words has the public class [WriteProtection](https://apireference.aspose.com/words/java/com.aspose.words/WriteProtection) that specifies write protection settings for a document. You do not create instances of this class directly.

Write protection shows whether the author has recommended opening a document as read-only and/or requiring a password to modify the document.

Aspose.Words allows you to make a document read-only to restrict editing by using the [ReadOnlyRecommended](https://apireference.aspose.com/words/java/com.aspose.words/writeprotection#ReadOnlyRecommended) property and the [SetPassword](https://apireference.aspose.com/words/java/com.aspose.words/writeprotection#setPassword(java.lang.String)) method.

{{% alert color="primary" %}}

In Microsoft Word, you can create a Read-Only document in a similar way using both:

* “Always Open Read-Only” (File → Info → Protect Document)
* "Password to modify" (Save As → Tools → General Options → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Users can also restrict document editing by selecting [ProtectionType](https://apireference.aspose.com/words/java/com.aspose.words/ProtectionType) as **ReadOnly**, but this is another feature that provides more advanced protection capabilities. There is such a function in Microsoft Word, respectively, it is implemented in Aspose.Words.

**ProtectionType** will be described in detail in one of the following articles – “Restrict Document Editing”.

{{% /alert %}}

The **ReadOnlyRecommended** property is password-secured, so if you do not set a password before applying the **ReadOnlyRecommended** property, then other users can simply open the document as if it were unprotected. You access the document protection settings and set a write protection password via the **SetPassword** method.

{{% alert color="primary" %}}

Note that the password being set is just a property in a document that can be removed if the document properties are accessed. Accordingly, such a password is not a guarantee of the document security.

{{% /alert %}}

If you need to check if a document has a write protection password that restricts it from editing, you can use the [IsWriteProtected](https://apireference.aspose.com/words/java/com.aspose.words/writeprotection#IsWriteProtected) property.

The following code example shows how to make a document read-only:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Add text.
builder.Write("Open document as read-only");

// Enter a password that's up to 15 characters long.
doc.WriteProtection.SetPassword("MyPassword");

// Make the document as read-only.
doc.WriteProtection.ReadOnlyRecommended = true;

// Apply write protection as read-only.
doc.Protect(ProtectionType.ReadOnly); 
doc.Save(ArtifactsDir + "Properties.ReadOnlyRecommended.docx");
{{< /highlight >}}

## Remove Read-Only Restriction

If you do not want a user to open your document as read-only, you can simply set the **ReadOnlyRecommened** property to *false* or select **ProtectionType** as **NoProtection**.

The following code example shows how to remove read-only access for a document:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Enter a password that's up to 15 characters long.
doc.WriteProtection.SetPassword("MyPassword");

// Remove the read-only option.
doc.WriteProtection.ReadOnlyRecommended = false;

// Apply write protection without any protection.
doc.Protect(ProtectionType.NoProtection); 
doc.Save(ArtifactsDir + "Properties.RemoveReadOnly.docx");
{{< /highlight >}}