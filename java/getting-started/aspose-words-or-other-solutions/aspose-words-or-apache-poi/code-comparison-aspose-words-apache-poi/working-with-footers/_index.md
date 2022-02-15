---
title: Working with Footers – Aspose.Words for Java
articleTitle: Working with Footers
linktitle: Working with Footers
description: "Aspose.Words for Java allows you to remove footers from a document easily and fast instead of using Apache POI."
type: docs
weight: 30
url: /java/working-with-footers/
---

## Aspose.Words - Working with Footers

The following sample code demonstrates how to create footer using DocumentBuilder.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeFooters.class);

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
builder.moveToHeaderFooter(HeaderFooterType.FOOTER_FIRST);
builder.getParagraphFormat().setAlignment(ParagraphAlignment.CENTER);

// Set font properties for header text.
builder.getFont().setName("Arial");
builder.getFont().setBold(true);
builder.getFont().setSize(14);

// Specify header title for the first page.
builder.write("(C) 2001 Aspose Pty Ltd. All rights reserved.");

// Save the resulting document.
doc.save(dataDir + "AsposeFooter.doc");
{{< /highlight >}}

## Apache POI HWPF XWPF - Working with Footers

HeaderStories can be used to access the footer of the document.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheFooters.class);

POIFSFileSystem fs = null;

fs = new POIFSFileSystem(new FileInputStream(dataDir + "AsposeFooter.doc"));
HWPFDocument doc = new HWPFDocument(fs);

int pageNumber = 1;

HeaderStories headerStore = new HeaderStories(doc);
String header = headerStore.getFooter(pageNumber);

System.out.println("Footer Is: " + header);
{{< /highlight >}}

## Download Running Code

Download Extract Images from Document form any of the below mentioned social coding sites:
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/headerfooter)

{{% alert color="primary" %}} 

For more details, visit [Working with Headers and Footers](/words/java/working-with-headers-and-footers/).

{{% /alert %}}
