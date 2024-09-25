---
title: Insert Hyperlink to Document
second_title: Aspose.Words for Java
articleTitle: Insert Hyperlink to Document
linktitle: Insert Hyperlink to Document
description: "Insert a hyperlink to a document easily and fast instead of using docx4j."
type: docs
weight: 60
url: /java/insert-hyperlink-to-document/
---

## Aspose.Words - Insert Hyperlink to Document

Aspose.Words uses DocumentBuilder.insertHyperlink() to insert hyperlinks to document.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Please make sure to visit ");

// Insert the link.
builder.insertHyperlink("Aspose Website", "https://www.aspose.com", false);
doc.save(dataDir + "AsposeAddHyperlinks.doc");
{{< /highlight >}}

## Docx4j - Insert Hyperlink to Document

The following code example shows how hyperlinks can be inserted to document using docx4j library.

**Java**

{{< highlight csharp >}}
public static void main(String[] args) throws Exception
{
	WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();
	MainDocumentPart mdp = wordMLPackage.getMainDocumentPart();

	// Create hyperlink
	Hyperlink link = createHyperlink(mdp, "https://slashdot.org");
	// Add it to a paragraph
	org.docx4j.wml.P paragraph = Context.getWmlObjectFactory().createP();
	paragraph.getContent().add( link );
	mdp.addObject(paragraph);
	
	// Now save it
	wordMLPackage.save(new java.io.File(dataDir + "OUT_HyperlinkTest.docx") );
	
	// Uncomment to display the result as Flat OPC XML
//		FlatOpcXmlCreator worker = new FlatOpcXmlCreator(wordMLPackage);
//		worker.marshal(System.out);
}
public static Hyperlink createHyperlink(MainDocumentPart mdp, String url) {
	try {
		// We need to add a relationship to word/_rels/document.xml.rels
		// but since its external, we don't use the
		// usual wordMLPackage.getMainDocumentPart().addTargetPart
		// mechanism
		org.docx4j.relationships.ObjectFactory factory =
			new org.docx4j.relationships.ObjectFactory();
		org.docx4j.relationships.Relationship rel = factory.createRelationship();
		rel.setType( Namespaces.HYPERLINK  );
		rel.setTarget(url);
		rel.setTargetMode("External");
		mdp.getRelationshipsPart().addRelationship(rel);

		// addRelationship sets the rel's @Id
		String hpl = "<w:hyperlink r:id=\"" + rel.getId() + "\" xmlns:w=\"https://schemas.openxmlformats.org/wordprocessingml/2006/main\" " +
		"xmlns:r=\"https://schemas.openxmlformats.org/officeDocument/2006/relationships\" >" +
		"<w:r>" +
		"<w:rPr>" +
		"<w:rStyle w:val=\"Hyperlink\" />" +
  // TODO: enable this style in the document!
		"</w:rPr>" +
		"<w:t>Link</w:t>" +
		"</w:r>" +
		"</w:hyperlink>";
//			return (Hyperlink)XmlUtils.unmarshalString(hpl, Context.jc, P.Hyperlink.class);
		return (Hyperlink)XmlUtils.unmarshalString(hpl);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/inserthyperlinks)

{{% alert color="primary" %}}

For more details, visit [How to Replace or Modify Hyperlinks](/words/java/replace-fields/).

{{% /alert %}}
