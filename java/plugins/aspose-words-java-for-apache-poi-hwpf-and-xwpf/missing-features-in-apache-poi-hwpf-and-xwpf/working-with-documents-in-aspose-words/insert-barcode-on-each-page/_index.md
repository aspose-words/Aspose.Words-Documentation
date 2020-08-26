---
title: Insert Barcode on Each Page
type: docs
weight: 50
url: /java/insert-barcode-on-each-page/
---

## **Aspose.Words - Insert Barcode on Each Page**
There is no direct way to add barcodes on all pages of a document but you can use **DocumentBuilder.moveToSection**, **DocumentBuilder.moveToHeaderFooter** and **DocumentBuilder.insertImage** methods to move to any section or headers/footers and insert the barcode images

**Java**

{{< highlight csharp >}}

 // Create a blank document.

Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

// The number of pages the document should have.

int numPages = 4;

// The document starts with one section, insert the barcode into this

// existing section.

insertBarcodeIntoFooter(builder, doc.getFirstSection(), 1, HeaderFooterType.FOOTER_PRIMARY);

int i = 1;

while (i < numPages)

{

    // Clone the first section and add it into the end of the document.

    Section cloneSection = (Section) doc.getFirstSection().deepClone(false);

    cloneSection.getPageSetup().setSectionStart(SectionStart.NEW_PAGE);

    doc.appendChild(cloneSection);

    // Insert the barcode and other information into the footer of the section.

    insertBarcodeIntoFooter(builder, cloneSection, i, HeaderFooterType.FOOTER_PRIMARY);

    i += 1;

}

// Save the document as a PDF to disk. You can also save this directly to a stream.

doc.save(dataDir + "AsposeBarcodeOnEachPage.docx");

//-----------------------------------------------------------------------------

private static void insertBarcodeIntoFooter(DocumentBuilder builder, Section section,

	    int pageId, int footerType) throws Exception

{

	// Move to the footer type in the specific section.

	builder.moveToSection(section.getDocument().indexOf(section));

	builder.moveToHeaderFooter(footerType);

	// Insert the barcode, then move to the next line and insert the ID

	// along with the page number.

	// Use pageId if you need to insert a different barcode on each page. 0

	// = First page, 1 = Second page etc.

	builder.insertImage(ImageIO.read(new File(dataDir + "barcode.png")));

	builder.writeln();

	builder.write("1234567890");

	builder.insertField("PAGE");

	// Create a right aligned tab at the right margin.

	double tabPos = section.getPageSetup().getPageWidth()

		- section.getPageSetup().getRightMargin() - section.getPageSetup().getLeftMargin();

	builder.getCurrentParagraph().getParagraphFormat().getTabStops()

		.add(new TabStop(tabPos, TabAlignment.RIGHT, TabLeader.NONE));

	// Move to the right hand side of the page and insert the page and page

	// total.

	builder.write(ControlChar.TAB);

	builder.insertField("PAGE");

	builder.write(" of ");

	builder.insertField("NUMPAGES");

}

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithbarcode/insertbarcodeoneachpage/AsposeInsertBarcodeOnEachPage.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithbarcode/insertbarcodeoneachpage/AsposeInsertBarcodeOnEachPage.java)

{{% alert color="primary" %}} 

For more details, visit [How to Insert Barcode on each Page of a Document](/words/java/working-with-images/#workingwithimages-howtoinsertbarcodeoneachpageofadocument).

{{% /alert %}}
