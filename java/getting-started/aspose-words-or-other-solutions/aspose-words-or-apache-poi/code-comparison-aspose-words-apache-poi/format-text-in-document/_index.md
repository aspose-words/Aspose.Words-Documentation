---
title: Format Text in Document
type: docs
weight: 30
url: /java/format-text-in-document/
---

## Aspose.Words - Format Text in Document

Current font formatting is represented by a **Font** object returned by the **DocumentBuilder.Font** property. The **Font** class contains a wide variety of the font properties possible in Microsoft Word.

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeFormattedText.class);
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Set paragraph formatting properties
ParagraphFormat paragraphFormat = builder.getParagraphFormat();
paragraphFormat.setAlignment(ParagraphAlignment.CENTER);
paragraphFormat.setLeftIndent(50);
paragraphFormat.setRightIndent(50);
paragraphFormat.setSpaceAfter(25);

// Output text
builder.writeln("I'm a very nice formatted paragraph. I'm intended to demonstrate how the left and right indents affect word wrapping.");

// Set font formatting properties
Font font = builder.getFont();
font.setBold(true);
font.setColor(Color.BLUE);
font.setItalic(true);
font.setName("Arial");
font.setSize(24);
font.setSpacing(5);
font.setUnderline(Underline.DOUBLE);

// Output formatted text
builder.writeln("I'm a very nice formatted string.");
doc.save(dataDir + "Aspose_FormattedText.doc");
{{< /highlight >}}

## Apache POI HWPF XWPF - Format Text in Document

XWPFRun can be used to format text using Apache POI

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheFormattedText.class);

// Create a new document from scratch
XWPFDocument doc = new XWPFDocument();

// create paragraph
XWPFParagraph para = doc.createParagraph();

// create a run to contain the content
XWPFRun rh = para.createRun();

// Format as desired
rh.setFontSize(15);
rh.setFontFamily("Verdana");
rh.setText("This is the formatted Text");
rh.setColor("fff000");
para.setAlignment(ParagraphAlignment.RIGHT);

// write the file
FileOutputStream out = new FileOutputStream(dataDir + "Apache_FormattedText.docx");
doc.write(out);
out.close();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/document)

{{% alert color="primary" %}} 

For more details, visit [Specifying Formatting](/words/java/working-with-styles/).

{{% /alert %}}
