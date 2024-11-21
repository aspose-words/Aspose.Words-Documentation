---
title: Open a Document Read-Only in Java
second_title: Aspose.Words for Java
articleTitle: Open a Document Read-Only
linktitle: Open a Document Read-Only
description: "Make your document read-only so that the content can be copied or read, but not modified using Java."
type: docs
weight: 10
url: /java/open-a-document-read-only/
aliases: [/java/document-protection/]
timestamp: 2024-01-27-14-07-04
---

Sometimes, you may have a document that needs a review, but you do not want reviewers to randomly modify your content. Aspose.Words allows you to make the permission of your document read-only so that the content can be copied or read, but not modified. This will prevent content from being removed or added to your document.

{{% alert color="primary" %}}

Applying the read-only option to your document does not prevent someone from creating a new copy of it and saving it with another name.

{{% /alert %}}

This article explains how to make a document read-only.

## Make a Document Read-Only

Aspose.Words has the public class [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) that specifies write protection settings for a document. You do not create instances of this class directly.

Write protection shows whether the author has recommended opening a document as read-only and/or requiring a password to modify the document.

Aspose.Words allows you to make a document read-only to restrict editing by using the [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) property and the [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) method.

{{% alert color="primary" %}}

In Microsoft Word, you can create a Read-Only document in a similar way using both:

* “Always Open Read-Only” (File → Info → Protect Document)
* "Password to modify" (Save As → Tools → General Options → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Users can also restrict document editing by selecting [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) as **ReadOnly**, but this is another feature that provides more advanced protection capabilities. There is such a function in Microsoft Word, respectively, it is implemented in Aspose.Words.

**ProtectionType** will be described in detail in one of the following articles – “Restrict Document Editing”.

{{% /alert %}}

The **ReadOnlyRecommended** property is password-secured, so if you do not set a password before applying the **ReadOnlyRecommended** property, then other users can simply open the document as if it were unprotected. You access the document protection settings and set a write protection password via the **SetPassword** method.

{{% alert color="primary" %}}

Note that the password being set is just a property in a document that can be removed if the document properties are accessed. Accordingly, such a password is not a guarantee of the document security.

{{% /alert %}}

If you need to check if a document has a write protection password that restricts it from editing, you can use the [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) property.

The following code example shows how to make a document read-only:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Remove Read-Only Restriction

If you do not want a user to open your document as read-only, you can simply set the **ReadOnlyRecommened** property to *false* or select **ProtectionType** as **NoProtection**.

The following code example shows how to remove read-only access for a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
