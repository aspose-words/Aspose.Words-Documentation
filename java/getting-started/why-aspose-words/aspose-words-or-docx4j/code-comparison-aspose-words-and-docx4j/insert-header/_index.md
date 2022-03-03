---
title: Insert Header
second_title: Aspose.Words for Java
articleTitle: Insert Header
linktitle: Insert Header
description: "Insert a header into a document easily and fast instead of using docx4j."
type: docs
weight: 20
url: /java/insert-header/
---

## Aspose.Words - Insert Header

The following sample code demonstrates how to create footer using DocumentBuilder.

**Java**

{{< highlight csharp >}}
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

// Specify header title for the first page.
builder.write("Aspose.Words Header/Footer Creation Primer - Title Page.");
{{< /highlight >}}

## docx4j - Insert Header

The following sample code demonstrates how to create headers/footers using docx4j.

**Java**

{{< highlight csharp >}}
private static ObjectFactory objectFactory = new ObjectFactory();

// The path to the documents directory.
static String dataDir = Utils.getDataDir(Docx4jHeaderCreate.class);
public static void main(String[] args) throws Exception {
	WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage
			.createPackage();

	// Delete the Styles part, since it clutters up our output
	MainDocumentPart mdp = wordMLPackage.getMainDocumentPart();
	Relationship styleRel = mdp.getStyleDefinitionsPart().getSourceRelationships().get(0);
	mdp.getRelationshipsPart().removeRelationship(styleRel);
	
	// OK, the guts of this sample:
	// The 2 things you need:
	// 1. the Header part
	Relationship relationship = createHeaderPart(wordMLPackage);
	
	// 2. an entry in SectPr
	createHeaderReference(wordMLPackage, relationship);
	
	// Display the result as Flat OPC XML
	FlatOpcXmlCreator worker = new FlatOpcXmlCreator(wordMLPackage);
	worker.marshal(System.out);
	
	// Now save it
	wordMLPackage.save(new java.io.File(dataDir + "OUT_Header.docx") );
}
public static Relationship createHeaderPart(
		WordprocessingMLPackage wordprocessingMLPackage)
		throws Exception {
	HeaderPart headerPart = new HeaderPart();
	Relationship rel =  wordprocessingMLPackage.getMainDocumentPart()
			.addTargetPart(headerPart);

	// After addTargetPart, so image can be added properly
	headerPart.setJaxbElement(getHdr(wordprocessingMLPackage, headerPart));
	return rel;
}
public static void createHeaderReference(
		WordprocessingMLPackage wordprocessingMLPackage,
		Relationship relationship )
		throws InvalidFormatException {
	List<SectionWrapper> sections = wordprocessingMLPackage.getDocumentModel().getSections();
	SectPr sectPr = sections.get(sections.size() - 1).getSectPr();

	// There is always a section wrapper, but it might not contain a sectPr
	if (sectPr==null ) {
		sectPr = objectFactory.createSectPr();
		wordprocessingMLPackage.getMainDocumentPart().addObject(sectPr);
		sections.get(sections.size() - 1).setSectPr(sectPr);
	}
	HeaderReference headerReference = objectFactory.createHeaderReference();
	headerReference.setId(relationship.getId());
	headerReference.setType(HdrFtrRef.DEFAULT);
	sectPr.getEGHdrFtrReferences().add(headerReference);// add header or
	// footer references
}
public static Hdr getHdr(WordprocessingMLPackage wordprocessingMLPackage,
		Part sourcePart) throws Exception {
	Hdr hdr = objectFactory.createHdr();
	File file = new File(dataDir + "java_logo.png" );
	java.io.InputStream is = new java.io.FileInputStream(file );
	hdr.getContent().add(
			newImage(wordprocessingMLPackage,
					sourcePart,
					BufferUtil.getBytesFromInputStream(is),
					"filename", "alttext", 1, 2
					)
	);
	return hdr;
}
public static org.docx4j.wml.P newImage( WordprocessingMLPackage wordMLPackage,
		Part sourcePart,
		byte[] bytes,
		String filenameHint, String altText,
		int id1, int id2) throws Exception {
    BinaryPartAbstractImage imagePart = BinaryPartAbstractImage.createImagePart(wordMLPackage,
    		sourcePart, bytes);
    Inline inline = imagePart.createImageInline( filenameHint, altText,
			id1, id2, false);

    // Now add the inline in w:p/w:r/w:drawing
    org.docx4j.wml.ObjectFactory factory = Context.getWmlObjectFactory();
    org.docx4j.wml.P  p = factory.createP();
    org.docx4j.wml.R  run = factory.createR();
    p.getContent().add(run);
    org.docx4j.wml.Drawing drawing = factory.createDrawing();
    run.getContent().add(drawing);
    drawing.getAnchorOrInline().add(inline);
    return p;
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/headerfooter/addheader)

{{% alert color="primary" %}}

For more details, visit [How to Create Headers Footers using DocumentBuilder](/words/java/working-with-headers-and-footers/#workingwithheadersandfooters-createheadersfootersusingdocumentbuilder).

{{% /alert %}}
