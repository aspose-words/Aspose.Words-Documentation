---
title: Document Protection
type: docs
weight: 80
url: /java/document-protection/
---

When a document is protected, the user can make only limited changes, such as adding annotations, making revisions, or completing a form. Even if a document is protected with a password, Aspose.Words does not require the password to open, modify, or unprotect this document. When you use Aspose.Words to protect a document, you have the option of keeping the existing password or specifying a new password.

If you need to make sure the document is really protected from changes, consider digitally signing the document. Aspose.Words supports detecting digital signatures for DOC, OOXML, and ODT documents. Aspose.Words also preserves a digital signature applied to the VBA project (macros) contained in a document. For further details see the [Working with Digital Signatures](/words/java/working-with-digital-signatures/) article.

{{% alert color="primary" %}} 

Documents protected in Microsoft Word can be easily unprotected even by users without a password. When a document is protected, it can be opened in Microsoft Word, saved as RTF or WordprocessingML document and then the protection password can be removed using Notepad or any plain text editor. Then, the user can open the document again in Microsoft Word and save as an unprotected DOC.

{{% /alert %}} 
## **Protecting a Document**
Use the Document.Protect method to protect a document from changes. This method accepts a ProtectionType parameter and optionally a password by providing one as the second parameter Document.Protect. The following code example demonstrates how to protect a document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ProtectADocument.java" >}}
## **Unprotecting a Document**
Calling Document.Unprotect unprotects the document even if it has a protection password. The following code example demonstrates how to unprotect any document. Note that the password is not required.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnprotectADocument.java" >}}
## **Getting the Protection Type**
You can retrieve the type of document protection by getting the value of the Document.ProtectionType property. The following code example demonstrates how to get a protection type currently set in the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-GetTheProtectionType.java" >}}
