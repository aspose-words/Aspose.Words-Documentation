---
title: Working with Headers – Aspose.Words for Java
articleTitle: Working with Headers
linktitle: Working with Headers
description: "Aspose.Words for Java allows you to remove headers from a document easily and fast instead of using Apache POI."
type: docs
weight: 40
url: /java/working-with-headers/
---

## Aspose.Words - Working with Headers

The following sample code demonstrates how to create headers/footers using DocumentBuilder.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeHeaders.class);

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Section currentSection = builder.getCurrentSection();
PageSetup pageSetup = currentSection.getPageSetup();

// Specify if we want headers/footers of the first page to be different from other pages.
// You can also use PageSetup.OddAndEvenPagesHeaderFooter property to specify
// different headers/footers for odd and even pages.
pageSetup.setDifferentFirstPageHeaderFooter(true);

// --- Create header for the first page. ---
pageSetup.setHeaderDistance(20);
builder.moveToHeaderFooter(HeaderFooterType.HEADER_FIRST);
builder.getParagraphFormat().setAlignment(ParagraphAlignment.CENTER);

// Set font properties for header text.
builder.getFont().setName("Arial");
builder.getFont().setBold(true);
builder.getFont().setSize(14);
// Specify header title for the first page.
builder.write("Aspose.Words Header/Footer Creation Primer - Title Page.");

// Save the resulting document.
doc.save(dataDir + "AsposeHeader.doc");
{{< /highlight >}}

## Apache POI HWPF XWPF - Working with Headers

HeaderStories can be used to access Headers of the document.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheHeaders.class);

POIFSFileSystem fs = null;

fs = new POIFSFileSystem(new FileInputStream(dataDir + "AsposeHeader.doc"));
HWPFDocument doc = new HWPFDocument(fs);

int pageNumber = 1;

HeaderStories headerStore = new HeaderStories(doc);
String header = headerStore.getHeader(pageNumber);

System.out.println("Header Is: " + header);
{{< /highlight >}}

## Download Running Code

Download Extract Images from Document form any of the below mentioned social coding sites:
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/headerfooter)

{{% alert color="primary" %}}

For more details, visit [Working with Headers and Footers](/words/java/working-with-headers-and-footers/).

{{% /alert %}}
