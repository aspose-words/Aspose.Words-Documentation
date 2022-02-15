---
title: Restrict Document Editing – Aspose.Words for .NET
articleTitle: Restrict Document Editing
linktitle: Restrict Document Editing
description: "Aspose.Words for .NET allows to restrict editing a document by setting a restriction type. You can also remove protection and make unrestricted editable regions."
type: docs
weight: 30
url: /net/restrict-document-editing/
---

Sometimes you may need to limit the ability to edit a document and only allow certain actions with it. This can be useful to prevent other people from editing sensitive and confidential information in your document.

Aspose.Words allows you to restrict editing a document by setting a restriction type. In addition, Aspose.Words also enables you to specify write protection settings for a document.

This article explains how to use Aspose.Words to select a restriction type, how to add or remove protection, and how to make unrestricted editable regions.

## Select Editing Restriction Type

Aspose.Words allows you to control the way you restrict the content using the [ProtectionType](https://apireference.aspose.com/words/net/aspose.words/protectiontype) enumeration parameter. This will enable you to select an exact type of protection such as the following:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

All types are password-secured, and if this password is not entered correctly, a user will not be able to legally change the content of your document. Thus, if your document is returned to you without a requirement to provide the necessary password, this is a sign that something is wrong.

If you did not set a password when choosing the security type, other users can simply ignore the protection of your document.

{{% alert color="primary" %}}

Note that the password being set is just a property in a document that can be removed if the document properties are accessed. Accordingly, such a password is not a guarantee of the document security. The [Unprotect](https://apireference.aspose.com/words/net/aspose.words/document/methods/unprotect/index) method shows just that.

{{% /alert %}}

## Add Document Protection

Adding protection to your document is a simple process, as all you need to do is apply one of the protection methods detailed in this section.

Aspose.Words allows you to protect your documents from changes using the [Protect](https://apireference.aspose.com/words/net/aspose.words/document/methods/protect/index) method. This method is not a security feature and does not encrypt a document.

{{% alert color="primary" %}}

In Microsoft Word, you can restrict editing in a similar way using both:

* Restrict Editing (File → Info → Protect Document)
* Alternative feature – “Restrict Editing” (Review → Protect → Restrict Editing)

{{% /alert %}}

The following code example shows how to add password protection to your document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

The following code example shows how to restrict editing in a document so only editing in form fields is possible:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Remove Document Protection

Aspose.Words allows you to remove protection from a document with simple and direct document modification. You can either remove the document protection without knowing the actual password or provide the correct password to unlock the document by using the [Unprotect](https://apireference.aspose.com/words/net/aspose.words/document/methods/unprotect/index) method. Both removing ways have no difference.

The following code example shows how to remove protection from your document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Specify Unrestricted Editable Regions

You can restrict editing of your document and at the same time allow changes to selected parts of it. So, anyone who opens your document will be able to access these unrestricted parts and make changes to the content.

Aspose.Words allows you to mark the parts that can be changed in your document using the [StartEditableRange](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/starteditablerange) and [EndEditableRange](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/endeditablerange/index) methods.

The following code example shows how to mark the whole document as read-only and specify editable regions in it:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

You can also choose different document editing restrictions for different sections.

The following code example shows how to add a restriction for the entire document, and then remove the restriction for one of the sections:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
