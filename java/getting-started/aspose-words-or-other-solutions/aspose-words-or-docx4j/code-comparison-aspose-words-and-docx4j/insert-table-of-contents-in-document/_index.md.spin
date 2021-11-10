---
title: Insert Table of Contents in Document
type: docs
weight: 80
url: /java/insert-table-of-contents-in-document/
---

## Aspose.Words - Insert Table of Contents in Document

Demonstrates how to insert a Table of contents (TOC) into a document using heading styles as entries.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert a table of contents at the beginning of the document.
builder.insertTableOfContents("\\o \"1-3\" \\h \\z \\u");

// The newly inserted table of contents will be initially empty.

// It needs to be populated by updating the fields in the document.
doc.updateFields();
doc.save(dataDir + "AsposeTableOfContents.doc");

// ==================================

// Table Of Contents with Headings

// ==================================
Document doc1 = new Document();

// Create a document builder to insert content with into document.
builder = new DocumentBuilder(doc1);

// Insert a table of contents at the beginning of the document.
builder.insertTableOfContents("\\o \"1-3\" \\h \\z \\u");

// Start the actual document content on the second page.
builder.insertBreak(BreakType.PAGE_BREAK);

// Build a document with complex structure by applying different heading styles thus creating TOC entries.
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_1);
builder.writeln("Heading 1");
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_2);
builder.writeln("Heading 1.1");
builder.writeln("Heading 1.2");
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_1);
builder.writeln("Heading 2");
builder.writeln("Heading 3");
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_2);
builder.writeln("Heading 3.1");
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_3);
builder.writeln("Heading 3.1.1");
builder.writeln("Heading 3.1.2");
builder.writeln("Heading 3.1.3");
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_2);
builder.writeln("Heading 3.2");
builder.writeln("Heading 3.3");

// Call the method below to update the TOC.
doc1.updateFields();
doc1.save(dataDir + "AsposeTOCHeadings.doc");
{{< /highlight >}}

## Docx4j - Insert Table of Contents in Document

Below example {shows|demonstrates} how Table of Contents can be inserted in documents using docx4j library.

**Java**

{{< highlight csharp >}}
public static void main(String[] args) throws Exception {
	WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();
	MainDocumentPart documentPart = wordMLPackage.getMainDocumentPart();
	org.docx4j.wml.Document wmlDocumentEl = (org.docx4j.wml.Document)documentPart.getJaxbElement();
	Body body =  wmlDocumentEl.getBody();
	ObjectFactory factory = Context.getWmlObjectFactory();
	/* Create the following:
	 *
		<w:p>
		  <w:r>
			<w:fldChar w:dirty="true" w:fldCharType="begin"/>
			<w:instrText xml:space="preserve">TOC \o &quot;1-3&quot; \h \z \ u \h</w:instrText>
		  </w:r>
		  <w:r/>
		  <w:r>
			<w:fldChar w:fldCharType="end"/>
		  </w:r>
		</w:p>         */
	P paragraphForTOC = factory.createP();
	R r = factory.createR();
	FldChar fldchar = factory.createFldChar();
	fldchar.setFldCharType(STFldCharType.BEGIN);
	fldchar.setDirty(true);
	r.getContent().add(getWrappedFldChar(fldchar));
	paragraphForTOC.getContent().add(r);
	R r1 = factory.createR();
	Text txt = new Text();
	txt.setSpace("preserve");
	txt.setValue("TOC \\o \"1-3\" \\h \\z \\u \\h");
	r.getContent().add(factory.createRInstrText(txt) );
	paragraphForTOC.getContent().add(r1);
	FldChar fldcharend = factory.createFldChar();
	fldcharend.setFldCharType(STFldCharType.END);
	R r2 = factory.createR();
	r2.getContent().add(getWrappedFldChar(fldcharend));
	paragraphForTOC.getContent().add(r2);
	body.getContent().add(paragraphForTOC);
	documentPart.addStyledParagraphOfText("Heading1", "Hello 1");
	documentPart.addStyledParagraphOfText("Heading2", "Hello 2");
	documentPart.addStyledParagraphOfText("Heading3", "Hello 3");
	documentPart.addStyledParagraphOfText("Heading1", "Hello 1");
	wordMLPackage.save(new java.io.File(dataDir + "OUT_TableOfContentsAdd.docx") );
}
public static JAXBElement getWrappedFldChar(FldChar fldchar) {
	return new JAXBElement( new QName(Namespaces.NS_WORD12, "fldChar"),
			FldChar.class, fldchar);
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/inserttableofcontents)

{{% alert color="primary" %}} 

For more details, visit [How-to Insert and Work with the Table of Contents Field](/words/java/how-to-insert-and-work-with-the-table-of-contents-field/).

{{% /alert %}}
