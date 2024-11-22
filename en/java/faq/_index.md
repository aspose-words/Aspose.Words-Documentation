---
title: FAQ
second_title: Aspose.Words for Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words for Java answers the most frequently asked questions. Learn this page to quickly solve your problem on general questions or specific topics."
weight: 75
url: /java/faq/
timestamp: 2024-01-31-14-23-37
---

This page contains answers to the most frequently asked questions. Please learn the current page – perhaps this will allow you to solve your problem quickly.

If you have not found the answer to your question, you can ask on the support forum. For information on how to properly report your question or problem, see the [Technical Support](/words/java/technical-support/) page.

{{% alert color="primary" %}}

Frequently asked questions are grouped by topic for your convenience.

{{% /alert %}}

## General

**Q: What is Aspose.Words?**

Aspose.Words for Java is a class library that allows your applications to perform a wide variety of document processing tasks. With Aspose.Words for Java, you can generate, modify, convert, render, and print documents without third-party applications.

Details can be found in our documentation.

------

**Q: What does it mean "Aspose.Words does not require third-party applications"?**

Aspose.Words for Java does not need to install any third-party applications or additional software packages to work. Just download and install Aspose.Words as described in the [Installation](/words/java/installation/) article and get started.

------

**Q: What platforms does Aspose.Words support?**

Aspose.Words for Java covers most of the popular development environments and deployment platforms. Its API can be used to develop applications for a wide range of operating systems such as Windows, Linux, and Mac OS, and various platforms.

For details, see the [Product Overview](/words/java/product-overview/) page and the [Platforms and Interoperability](/words/java/platforms-and-interoperability/) section.

------

**Q: What document formats does Aspose.Words support?**

Aspose.Words for Java supports most of the popular document formats such as DOC, DOCX, HTML, Markdown, PDF, XML, and others.

You can see the complete list of supported formats on the [Supported Document Formats](/words/java/supported-document-formats/) page.

------

**Q: How can I try Aspose.Words free?**

You can do this in two ways – using the Trial version or a 30-day Temporary License. The Trial version is the same as the purchased one, it provides full product functionality but adds an evaluative watermark at the top of the document when loading and saving and limits the maximum document size to a few hundred paragraphs. A Temporary License allows you to test Aspose.Words without Trial restrictions for 30 days.

See the [Licensing and Subscription](/words/java/licensing/) page for more information.

{{% alert color="primary" %}}

You can also try some of the most popular Aspose.Words features through the [Aspose.Words free online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: How can I buy Aspose.Words?**

To buy an Aspose.Words license, you need to go to the [Purchase](https://purchase.aspose.com/buy) page, select the "Aspose.Words" product and the type of license that suits you. Then add the license to your cart and follow the Shopping Cart instructions.

After purchasing, apply for the license as described in the [Purchased License](/words/java/licensing/#purchased-license) section.

Details on how to install Aspose.Words can be read on the [Installation](/words/java/installation/) page.

------

**Q: How can I get support?**

Use the free technical support forum. For details on how to properly report a problem and what needs to be done before contacting the forum, see the [Technical Support](/words/java/technical-support/) page.

## Rendering a Document

{{% alert color="primary" %}}

You can find more detailed information about rendering in the [Rendering](/words/java/rendering/) documentation section.

{{% /alert %}}

**Q: Why are the layout and fonts in the output document different from the original?**

The font may not be available, or the font format is supported by Microsoft Word but not supported by Aspose.Words. Aspose.Words will perform [font substitution](/words/java/manipulate-and-substitute-truetype-fonts/).

To check if the font is missing:

- In Aspose.Words use the Font substitution warnings (for details, see the “How to Recognize That the Font Was Replaced” section of the [Manipulate and Substitute TrueType Fonts](/words/java/manipulate-and-substitute-truetype-fonts/) article).
- In Microsoft Word open the “Font Substitution” dialog box (File → Options → Advanced → Font Substitution).

------

**Q: Why does not the font fallback work on non-Windows platforms and Unicode characters are replaced with the .notdef glyph?**

We can often see the `.notdef` glyph instead of some Unicode character. This is usually a box or a question glyph.

This is because Microsoft Office fallback settings are selected by default, and Microsoft Office fonts are not available. Users have to install Microsoft Office fonts or alter fallback settings.

------

**Q: Why might complex script text, such as Thai or Hebrew, be displayed inaccurately for some reason, such as the wrong position for diacritics or inaccurate ligatures?**

Some complex script fonts require the Advanced Typography features to be processed in order to display them correctly. Advanced Typography is disabled in Aspose.Words by default. Users have to enable Advanced Typography with [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Do I need license files for the fonts I use?**

Yes, you do. Therefore, when copying fonts, keep in mind that most fonts are copyrighted. Locate font licenses beforehand and verify that they can be freely transferred to another machine.

## Nested Mail Merge

{{% alert color="primary" %}}

You can find more detailed information about Mail Merge in the [Mail Merge and Reporting](/words/java/mail-merge-and-reporting/) documentation section.

{{% /alert %}}

**Q: Why are there no merged fields in the generated output?**

The original name of the merge field stays the same without being replaced by the required data from the data source, then:

- Check the data is being loaded properly into tables: set the [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correctly with all required primary keys and relationships.
- Check that the merge fields are named properly. Use the [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) method to get all merge fields names and ensure that the name of merge fields in your template matches the one in your data source.

------

**Q: Why does the output of nested merging not display data from the child table for the first entry in the parent table but display all items for the last entry in the parent table, even ones that are not actually linked to it?**

This is because the merge regions in the template are not correctly formed, which can make all nested Mail Merge regions to stop displaying anything at all. The [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) opening tag and the [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) closing tag must match and be in the same row or cell. For example, if you start nesting merge regions in a cell of a table, you must end the merge region in the same row as the first cell.

------

**Q: Why does each entry from the parent table display every item in the child table, even ones that are not actually linked to it?**

This is because the relationship between the parent and child tables are not set up or they are incorrectly set up. It is necessary to:

- Ensure data integrity within your **DataSet** and use the **DataRelation** object to represent the parent-child relationship between related data tables.
- Check the section “How to Set Up Data Relations in Nested Mail Merge with Regions” in the article [Nested Mail Merge with Regions](/words/java/nested-mail-merge-with-regions/).

------

**Q: Why is an exception: “System.ArgumentException: This constraint cannot be enabled as not all values have corresponding parent values” while executing nested mail merge?**

This happens because not every parent record has a child record so your data source does not match the following criteria: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Disable foreign key constraints when you create a **DataRelation**.

## Append or Insert a Document

{{% alert color="primary" %}}

You can find more detailed information about programming with documents in the [Programming with Documents](/words/java/programming-with-documents/) documentation section.

{{% /alert %}}

**Q: Why does not content appended to a document appear on the same page?**

The append result appears on a separate page because of a difference in [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) settings for the sections where the documents are appended together. Make identical **PageSetup** settings for the sections where the documents are appended together.

## Convert a Document

{{% alert color="primary" %}}

You can find more detailed information about converting a document in the [Convert a Document](/words/java/convert-a-document/) documentation section.

{{% /alert %}}

**Q: How to convert DOCX to PDF?**

It is very easy as well, just load a document to the model and save it to any supported format.

The following code example shows the process of converting a DOCX file to PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipulate with a Document

{{% alert color="primary" %}}

You can find more detailed information about programming with documents in the [Programming with Documents](/words/java/programming-with-documents/) documentation section.

{{% /alert %}}

**Q: How to split a document page by page?**

Aspose.Words enables you to split a multi-page document page by page.

The following code example shows how to divide a document and save each page as a separate document:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: How to open an encrypted** **document?**

You can try to open an encrypted document without a password, which should lead to an exception.

The following code example shows how to open an encrypted document with a password:

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

------

**Q: How to print a document?**

For a detailed answer, learn the article [Printing a Document Programmatically or Using Dialogs](/words/java/print-a-document-programmatically-or-using-dialogs/).
