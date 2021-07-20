---
title: Restrict Document Editing
description: "Aspose.Words for C++ allows to restrict editing a document by setting a restriction type. You can also remove protection and make unrestricted editable regions."
type: docs
weight: 30
url: /cpp/restrict-document-editing/
---

Sometimes you may need to limit the ability to edit a document and only allow certain actions with it. This can be useful to prevent other people from editing sensitive and confidential information in your document.

Aspose.Words allows you to restrict editing a document by setting a restriction type. In addition, Aspose.Words also enables you to specify write protection settings for a document.

This article explains how to use Aspose.Words to select a restriction type, how to add or remove protection, and how to make unrestricted editable regions.

## Select Editing Restriction Type

Aspose.Words allows you to control the way you restrict the content using the [ProtectionType](https://apireference.aspose.com/words/cpp/namespace/aspose.words#protectiontype) enumeration parameter. This will enable you to select an exact type of protection such as the following:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

All types are password-secured, and if this password is not entered correctly, a user will not be able to legally change the content of your document. Thus, if your document is returned to you without a requirement to provide the necessary password, this is a sign that something is wrong.

If you did not set a password when choosing the security type, other users can simply ignore the protection of your document.

{{% alert color="primary" %}}

Note that the password being set is just a property in a document that can be removed if the document properties are accessed. Accordingly, such a password is not a guarantee of the document security. The [Unprotect](https://apireference.aspose.com/words/cpp/class/aspose.words.document#unprotect) method shows just that.

{{% /alert %}}

## Add Document Protection

Adding protection to your document is a simple process, as all you need to do is apply one of the protection methods detailed in this section.

Aspose.Words allows you to protect your documents from changes using the [Protect](https://apireference.aspose.com/words/cpp/class/aspose.words.document#protect_protectiontype) method. This method is not a security feature and does not encrypt a document.

{{% alert color="primary" %}}

In Microsoft Word, you can restrict editing in a similar way using both:

* Restrict Editing (File → Info → Protect Document)
* Alternative feature – “Restrict Editing” (Review → Protect → Restrict Editing)

{{% /alert %}}

The following code example shows how to add password protection to your document:

{{< highlight cpp >}}
// Create a new document and protect it with a password.
auto doc = System::MakeObject<Document>();

// Apply Document Protection.
doc->Protect(ProtectionType::NoProtection, u"password");

// Save the document.
doc->Save(ArtifactsDir + u"Document.Protect.docx");
{{< /highlight >}}

The following code example shows how to restrict editing in a document so only editing in form fields is possible:

{{< highlight csharp >}}
// Insert two sections with some text.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Writeln(u"Text added to a document.");

// A document protection only works when document protection is turned and only editing in form fields is allowed.
doc->Protect(ProtectionType::AllowOnlyFormFields, u"password");

// Save the protected document.
doc->Save(ArtifactsDir + u"Test.docx");
{{< /highlight >}}

## Remove Document Protection

Aspose.Words allows you to remove protection from a document with simple and direct document modification. You can either remove the document protection without knowing the actual password or provide the correct password to unlock the document by using the [Unprotect](https://apireference.aspose.com/words/cpp/class/aspose.words.document#unprotect) method. Both removing ways have no difference.

The following code example shows how to remove protection from your document:

{{< highlight cpp >}}
// Create a new document and protect it with a password.
auto doc = System::MakeObject<Document>();

// Add text.
auto builder = System::MakeObject<DocumentBuilder>(protectedDoc);
builder->Writeln(u"Text added to a document.");

// Documents can have protection removed either with no password, or with the correct password.
doc->Unprotect();
doc->Protect(ProtectionType::ReadOnly, u"newPassword");
doc->Unprotect(u"newPassword");

// Save the document.
doc->Save(ArtifactsDir + u"Document.UnProtect.docx");
{{< /highlight >}}

## Specify Unrestricted Editable Regions

You can restrict editing of your document and at the same time allow changes to selected parts of it. So, anyone who opens your document will be able to access these unrestricted parts and make changes to the content.

Aspose.Words allows you to mark the parts that can be changed in your document using the [StartEditableRange](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#starteditablerange) and [EndEditableRange](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#endeditablerange) methods.

The following code example shows how to mark the whole document as read-only and specify editable regions in it:

{{< highlight cpp >}}
// Upload a document and make it as read-only.
auto doc = System::MakeObject<Document>(MyDir + u"Document.docx");
auto builder = System::MakeObject<DocumentBuilder>(doc);
doc->Protect(ProtectionType::ReadOnly, u"MyPassword");
builder->Writeln(u"Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.");

// Start an editable range.
auto edRangeStart = builder->StartEditableRange();

// An EditableRange object is created for the EditableRangeStart that we just made.
auto editableRange = edRange1Start->get_EditableRange();

// Put something inside the editable range.
builder->Writeln(u"Paragraph inside first editable range");

// An editable range is well-formed if it has a start and an end.
auto edRangeEnd = builder->EndEditableRange();

// Save your document.
builder->Writeln(u"This paragraph is outside any editable ranges, and cannot be edited.");
doc->Save(ArtifactsDir + u"EditableRange.docx");
{{< /highlight >}}

You can also choose different document editing restrictions for different sections.

The following code example shows how to add a restriction for the entire document, and then remove the restriction for one of the sections:

{{< highlight cpp >}}
// Insert two sections with some text.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Writeln(u"Section 1. Unprotected.");
builder->InsertBreak(BreakType::SectionBreakContinuous);
builder->Writeln(u"Section 2. Protected.");

// Section protection only works when document protection is turned and only editing in form fields is allowed.
doc->Protect(ProtectionType::AllowOnlyFormFields, u"password");

// By default, all sections are protected, but we can selectively turn protection off.
doc->get_Sections()->idx_get(0)->set_ProtectedForForms(false);
doc->Save(ArtifactsDir + u"Section.Protect.docx");

doc = System::MakeObject<Document>(ArtifactsDir + u"Section.Protect.docx");
ASSERT_FALSE(doc->get_Sections()->idx_get(0)->get_ProtectedForForms());
ASSERT_TRUE(doc->get_Sections()->idx_get(1)->get_ProtectedForForms());
{{< /highlight >}}