---
title: Create New Document
type: docs
weight: 50
url: /java/create-new-document/
---

## **Aspose.Words - Create New Document**
Call the Document constructor without parameters to create a new blank document.

If you want to generate a document programmatically, the most reasonable step after creation is to use **DocumentBuilder** to add document contents.

**Java**

{{< highlight java >}}

 Document doc = new Document();

// DocumentBuilder provides members to easily add content to a document.

DocumentBuilder builder = new DocumentBuilder(doc);

// Write a new paragraph in the document with some text as "Sample Content..."

builder.writeln("Aspose Sample Content for Word file.");

// Save the document in DOCX format. The format to save as is inferred from the extension of the file name.

// Aspose.Words supports saving any document in many more formats.

doc.save("Aspose_NewDoc.docx",SaveFormat.DOCX);

{{< /highlight >}}
## **docx4j - Create New Document**
Creates a WordprocessingML document from scratch and show several different ways of adding basic content.

**Java**

{{< highlight java >}}

 WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();

MainDocumentPart mdp = wordMLPackage.getMainDocumentPart();

// Example 1: add text in Title style

mdp.addStyledParagraphOfText("Title", "Example 1");

// Example 2: add normal paragraph (no explicit style)

mdp.addParagraphOfText("Example 2");

// Example 3a: bold text

// To get bold text, you must set the run's rPr@w:b,

// so you can't use the addParagraphOfText convenience method

org.docx4j.wml.ObjectFactory factory = Context.getWmlObjectFactory();

org.docx4j.wml.P  p = factory.createP();

org.docx4j.wml.Text  t = factory.createText();

t.setValue("Example 3a (bold)");

org.docx4j.wml.R  run = factory.createR();

run.getContent().add(t);

p.getContent().add(run);


org.docx4j.wml.RPr rpr = factory.createRPr();

org.docx4j.wml.BooleanDefaultTrue b = new org.docx4j.wml.BooleanDefaultTrue();

b.setVal(true);

rpr.setB(b);

run.setRPr(rpr);

// Optionally, set pPr/rPr@w:b

org.docx4j.wml.PPr ppr = factory.createPPr();

p.setPPr( ppr );

org.docx4j.wml.ParaRPr paraRpr = factory.createParaRPr();

ppr.setRPr(paraRpr);

rpr.setB(b);

mdp.getJaxbElement().getBody().getContent().add(p);

// or just:

// mdp.getContent().add(p);

// but:

// mdp.addObject(p);

// is a better alternative if you are using a new style, since it

// will ensure that the style is activated

// Example 3b: bold text

// Well, actually you can use addParagraphOfText:

P p3b = mdp.addParagraphOfText("Example 3b (bold)");

R r3b = (R)p3b.getContent().get(0);

// .. now set rPr (I'll just reuse the above object)

r3b.setRPr(rpr);


// Example 4: Here is an easier way:

String str = "<w:p xmlns:w=\"http://schemas.openxmlformats.org/wordprocessingml/2006/main\" ><w:r><w:rPr><w:b /></w:rPr><w:t>Example 4</w:t></w:r></w:p>";

mdp.addObject(

			org.docx4j.XmlUtils.unmarshalString(str) );


// Example 5: Let's add a table

int writableWidthTwips = wordMLPackage.getDocumentModel().getSections().get(0).getPageDimensions().getWritableWidthTwips();

int cols = 3;

int cellWidthTwips = new Double(

							Math.floor( (writableWidthTwips/cols ))

								).intValue();

Tbl tbl = TblFactory.createTable(3, 3, cellWidthTwips);

mdp.addObject(tbl);


// Pretty print the main document part

System.out.println(

		XmlUtils.marshaltoString(mdp.getJaxbElement(), true, true) );

// Optionally save it

if (save) {

	String filename = "OUT_CreateWordprocessingMLDocument.docx";

	wordMLPackage.save(new java.io.File(filename) );

	System.out.println("Saved " + filename);

}

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/featurescomparison/documents/createnewdoc/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/createnewdoc)

{{% alert color="primary" %}} 

For more details, visit [Creating a New Document](/words/java/creating-or-loading-a-document/).

{{% /alert %}}
