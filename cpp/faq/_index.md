---
title: FAQ
type: docs
description: "Aspose.Words for C++ answers the most frequently asked questions. Learn this page to quickly solve your problem on general questions or specific topics."
weight: 75
url: /cpp/faq/
---

This page contains answers to the most frequently asked questions. Please learn the current page – perhaps this will allow you to solve your problem quickly.

If you have not found the answer to your question, you can ask on the support forum. For information on how to properly report your question or problem, see the ["Technical Support"](https://docs.aspose.com/words/cpp/technical-support/) page.

{{% alert color="primary" %}}

Frequently asked questions are grouped by topic for your convenience.

{{% /alert %}}

## General

**Q: What is Aspose.Words?**

Aspose.Words for C++ is a class library that enables your applications to perform a wide variety of document processing tasks. With Aspose.Words for C++, you can generate, modify, convert, render, and print documents without third-party applications.

Details can be found in our documentation.

------

**Q: What does it mean "Aspose.Words does not require third-party applications"?**

Aspose.Words for C++ does not need to install any third-party applications or additional software packages to work. Just download and install Aspose.Words as described in the [”Installation”](https://docs.aspose.com/words/cpp/installation/) article and get started.

------

**Q: What platforms does Aspose.Words support?**

Aspose.Words for C++ covers most of the popular development environments and deployment platforms. Its API can be used to develop applications for a wide range of operating systems such as Windows, Linux, and Mac OS, and various platforms.

For details, see the ["Product Overview"](https://docs.aspose.com/words/cpp/product-overview/) page.

------

**Q: What document formats does Aspose.Words support?**

Aspose.Words for C++ supports most of the popular document formats such as DOC, DOCX, HTML, Markdown, PDF, XML, and others.

You can see the complete list of supported formats on the ["Supported Document Formats"](https://docs.aspose.com/words/cpp/supported-document-formats/) page.

------

**Q: How can I try Aspose.Words free?**

You can do this in two ways – using the Trial version or a 30-day Temporary License. The Trial version is the same as the purchased one, it provides full product functionality but adds an evaluative watermark at the top of the document when loading and saving and limits the maximum document size to a few hundred paragraphs. A Temporary License allows you to test Aspose.Words without Trial restrictions for 30 days.

See the ["Licensing and Subscription"](https://docs.aspose.com/words/cpp/licensing/) page for more information.

{{% alert color="primary" %}}

You can also try some of the most popular Aspose.Words features through the [Aspose.Words free online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: How can I buy Aspose.Words?**

To buy an Aspose.Words license, you need to go to the [Purchase](https://purchase.aspose.com/buy) page, select the "Aspose.Words" product and the type of license that suits you. Then add the license to your cart and follow the Shopping Cart instructions.

After purchasing, apply for the license as described in the ["Purchased License"](https://docs.aspose.com/words/cpp/licensing/#purchased-license) section.

Details on how to install Aspose.Words can be read on the ["Installation"](https://docs.aspose.com/words/cpp/installation/) page.

------

**Q: How can I get support?**

Use the free technical support forum. For details on how to properly report a problem and what needs to be done before contacting the forum, see the ["Technical Support"](https://docs.aspose.com/words/cpp/technical-support/) page.

## Rendering a Document

{{% alert color="primary" %}}

You can find more detailed information about rendering in the [“Rendering”](https://docs.aspose.com/words/cpp/rendering/) documentation section.

{{% /alert %}}

**Q: Why are the layout and fonts in the output document different from the original?**

The font may not be available, or the font format is supported by Microsoft Word but not supported by Aspose.Words. Aspose.Words will perform [font substitution](https://docs.aspose.com/words/cpp/manipulate-and-substitute-truetype-fonts/).

To check if the font is missing:

- In Aspose.Words use the Font substitution warnings (for details, see the “How to Recognize That the Font Was Replaced” section of the [“Manipulate and Substitute TrueType Fonts”](https://docs.aspose.com/words/cpp/manipulate-and-substitute-truetype-fonts/) article).
- In Microsoft Word open the “Font Substitution” dialog box (File → Options → Advanced → Font Substitution).

------

**Q: Why does not the font fallback work on non-Windows platforms and Unicode characters are replaced with the .notdef glyph?**

We can often see the `.notdef` glyph instead of some Unicode character. This is usually a box or a question glyph.

This is because Microsoft Office fallback settings are selected by default, and Microsoft Office fonts are not available. Users have to install Microsoft Office fonts or alter fallback settings.

------

**Q: Why might complex script text, such as Thai or Hebrew, be displayed inaccurately for some reason, such as the wrong position for diacritics or inaccurate ligatures?**

Some complex script fonts require the Advanced Typography features to be processed in order to display them correctly. Advanced Typography is disabled in Aspose.Words by default. Users have to enable Advanced Typography with [TextShaperFactory](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options/#get_textshaperfactory_const).

------

**Q: Do I need license files for the fonts I use?**

Yes, you do. Therefore, when copying fonts, keep in mind that most fonts are copyrighted. Locate font licences beforehand and verify that they can be freely transferred to another machine.

## Append or Insert a Document

{{% alert color="primary" %}}

You can find more detailed information about programming with documents in the [“Programming with Documents”](https://docs.aspose.com/words/cpp/programming-with-documents/) documentation section.

{{% /alert %}}

**Q: Why does not content appended to a document appear on the same page?**

The append result appears on a separate page because of a difference in [PageSetup](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup) settings for the sections where the documents are appended together. Make identical **PageSetup** settings for the sections where the documents are appended together.

## Convert a Document

{{% alert color="primary" %}}

You can find more detailed information about converting a document in the [“Convert a Document”](https://docs.aspose.com/words/cpp/convert-a-document/) documentation section.

{{% /alert %}}

**Q: How to convert DOCX to PDF?**

It is very easy as well, just load a document to the model and save it to any supported format.

The following code example demonstrates the process of converting a DOCX file to PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipulate with a Document

{{% alert color="primary" %}}

You can find more detailed information about programming with documents in the [“Programming with Documents”](https://docs.aspose.com/words/cpp/programming-with-documents/) documentation section.

{{% /alert %}}

**Q: How to split a document page by page?**

Aspose.Words enables you to split a multi-page document page by page.

The following code example demonstrates how to divide a document and save each page as a separate document:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**Q: How to open an encrypted** **document?**

You can try to open an encrypted document without a password, which should lead to an exception.

The following code example shows how to open an encrypted document with a password:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a LoadOptions object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
