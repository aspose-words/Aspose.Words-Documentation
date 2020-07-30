---
title: Document Protection v2
type: docs
weight: 80
url: /net/document-protection-v2/
---

When a document is protected, the user can make only limited changes, such as adding annotations, making revisions, or completing a form. Even if a document is protected with a password, Aspose.Words does not require the password to open, modify or unprotect this document. When you use Aspose.Words to protect a document, you have an option of keeping the existing password or specifying a new password.

If you need to make sure the document is really protected from changes, consider digitally signing the document. Aspose.Words supports detecting digital signatures for DOC, OOXML and ODT documents. Aspose.Words also preserves a digital signature applied to the VBA project (macros) contained in a document. For further details see the [Working with Digital Signatures](/words/net/working-with-digital-signatures/) article.

{{% alert color="primary" %}} 

Documents protected in Microsoft Word can be easily unprotected even by users without a password. When a document is protected, it can be opened in Microsoft Word, saved as RTF or WordprocessingML document and then the protection password can be removed using Notepad or any plain text editor. Then, the user can open the document again in Microsoft Word and save as an unprotected DOC.

{{% /alert %}} 
## **Protecting a Document**
Use the Document.Protect method to protect a document from changes. This method accepts a ProtectionType parameter and optionally a password by providing one as the second parameter Document.Protect. The following code example demonstrates how to protect a document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ProtectDocument-ProtectDocument.cs" >}}
## **Unprotecting a Document**
Calling Document.Unprotect unprotects the document even if it has a protection password. The following code example demonstrates how to unprotect any document. Note that the password is not required.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ProtectDocument-UnProtectDocument.cs" >}}
## **Getting the Protection Type**
You can retrieve the type of document protection by getting the value of the Document.ProtectionType property. The following code example demonstrates how to get a protection type currently set in the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ProtectDocument-GetProtectionType.cs" >}}
