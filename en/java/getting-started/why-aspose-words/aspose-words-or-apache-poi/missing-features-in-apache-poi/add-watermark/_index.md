---
title: Add Watermark in Java
second_title: Aspose.Words for Java
articleTitle: Add Watermark
linktitle: Add Watermark
description: "Add a watermark into a document. Apache POI does not provide an opportunity to add a watermark."
type: docs
weight: 20
url: /java/add-watermark/
---

{{% alert color="primary" %}}

**Try online**

You can add a watermark online by using the [Watermark Maker](https://products.aspose.app/words/watermark) tool.

{{% /alert %}}

{{% alert color="primary" %}}

See more details in the [Working with Watermark](/words/java/working-with-watermark/) article.

{{% /alert %}}

Sometimes you need to insert a watermark into a Word document, for instance, if you would like to print a draft document or mark it as confidential.

In Microsoft Word, you can quickly insert a watermark using the Insert Watermark option. Not many people using this command realize that such “watermark” is just a shape with text inserted into a header or footer and positioned in the centre of the page.

While in Aspose.Words there is no single “Insert Watermark” command like in Microsoft Word, it is very easy to insert any shape or image into a header or footer and thus create a watermark of any imaginable type.

The following code example shows how to work with watermarks using Aspose.Words:

{{< highlight java >}}
private static void insertWatermarkText(Document doc, String watermarkText) throws Exception
{
    // Create a watermark shape. This will be a `WordArt` shape.
    // You are free to try other shape types as watermarks.
    Shape watermark = new Shape(doc, ShapeType.TEXT_PLAIN_TEXT);

    // Set up the text of the watermark.
    watermark.getTextPath().setText(watermarkText);
    watermark.getTextPath().setFontFamily("Arial");
    watermark.setWidth(500);
    watermark.setHeight(100);
    
    // Text will be directed from the bottom-left to the top-right corner.
    watermark.setRotation(-40);
    
    // Remove the following two lines if you need a solid black text.
    watermark.getFill().setColor(Color.GRAY);
 // Try LightGray to get more Word-style watermark
    watermark.setStrokeColor(Color.GRAY);
 // Try LightGray to get more Word-style watermark
    // Place the watermark in the page center.
    watermark.setRelativeHorizontalPosition(RelativeHorizontalPosition.PAGE);
    watermark.setRelativeVerticalPosition(RelativeVerticalPosition.PAGE);
    watermark.setWrapType(WrapType.NONE);
    watermark.setVerticalAlignment(VerticalAlignment.CENTER);
    watermark.setHorizontalAlignment(HorizontalAlignment.CENTER);

    // Create a new paragraph and append the watermark to this paragraph.
    Paragraph watermarkPara = new Paragraph(doc);
    watermarkPara.appendChild(watermark);
    
    // Insert the watermark into all headers of each document section.
    for (Section sect : doc.getSections())
    {
        // There could be up to three different headers in each section, since we want
        // the watermark to appear on all pages, insert into all headers.
        insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HEADER_PRIMARY);

//            insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HEADER_FIRST);

//            insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HEADER_EVEN);
    }
}
private static void insertWatermarkIntoHeader(Paragraph watermarkPara, Section sect, int headerType) throws Exception
{
    HeaderFooter header = sect.getHeadersFooters().getByHeaderFooterType(headerType);
    if (header == null)
    {
        // There is no header of the specified type in the current section, create it.
        header = new HeaderFooter(sect.getDocument(), headerType);
        sect.getHeadersFooters().add(header);
    }

    // Insert a clone of the watermark into the header.
    header.appendChild(watermarkPara.deepClone(true));
}
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/addwatermark/AsposeWatermarks.java) for code example
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0) for running code
