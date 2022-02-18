---
title: Convert Document to PDF – Aspose.Words for Java
articleTitle: Convert Document to PDF
linktitle: Convert Document to PDF
description: "Aspose.Words for Java allows you to convert a document in any supported format to PDF easily and fast instead of using docx4j."
type: docs
weight: 40
url: /java/convert-document-to-pdf/
---

## Aspose.Words - Convert Document to PDF

To convert a document to PDF simply invoke the Document.save() method and specify a file name with the .pdf extension.

**Java**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "document.doc");
doc.save(dataDir + "Aspose_DocToPDF.pdf",SaveFormat.PDF); //Save the document in PDF format.
doc.save(dataDir + "html/Aspose_DocToHTML.html",SaveFormat.HTML); //Save the document in HTML format.
doc.save(dataDir + "Aspose_DocToTxt.txt",SaveFormat.TEXT); //Save the document in TXT format.
doc.save(dataDir + "Aspose_DocToJPG.jpg",SaveFormat.JPEG); //Save the document in JPEG format.
{{< /highlight >}}

## Docx4j - Convert Document to PDF

The following code example shows how documents can be converted to PDF format using docx4j library.

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
static String dataDir = Utils.getDataDir(Docx4jConvertToPDF.class);
static {
	inputfilepath = dataDir + "document.docx";
	saveFO = true;
}

// For demo/debugging purposes, save the intermediate XSL FO

// Don't do this in production!
static boolean saveFO;
public static void main(String[] args)
		throws Exception {
	try {
		getInputFilePath(args);
	} catch (IllegalArgumentException e) {
	}

	// Font regex (optional)
	// Set regex if you want to restrict to some defined subset of fonts
	// Here we have to do this before calling createContent,
	// since that discovers fonts
	String regex = null;
	
	// Windows:
	// String
	// regex=".*(calibri|camb|cour|arial|symb|times|Times|zapf).*";
	//regex=".*(calibri|camb|cour|arial|times|comic|georgia|impact|LSANS|pala|tahoma|trebuc|verdana|symbol|webdings|wingding).*";
	// Mac
	// String
	// regex=".*(Courier New|Arial|Times New Roman|Comic Sans|Georgia|Impact|Lucida Console|Lucida Sans Unicode|Palatino Linotype|Tahoma|Trebuchet|Verdana|Symbol|Webdings|Wingdings|MS Sans Serif|MS Serif).*";
	PhysicalFonts.setRegex(regex);
	
	// Document loading (required)
	WordprocessingMLPackage wordMLPackage;
	if (inputfilepath==null) {
		// Create a docx
		System.out.println("No imput path passed, creating dummy document");
		 wordMLPackage = WordprocessingMLPackage.createPackage();
		 SampleDocument.createContent(wordMLPackage.getMainDocumentPart());
	} else {
		// Load .docx or Flat OPC .xml
		System.out.println("Loading file from " + inputfilepath);
		wordMLPackage = WordprocessingMLPackage.load(new java.io.File(inputfilepath));
	}
	
	// Refresh the values of DOCPROPERTY fields
	FieldUpdater updater = new FieldUpdater(wordMLPackage);
	updater.update(true);
	
	// Set up font mapper (optional)
	Mapper fontMapper = new IdentityPlusMapper();
	wordMLPackage.setFontMapper(fontMapper);
	
	// .. example of mapping font Times New Roman which doesn't have certain Arabic glyphs
	// eg Glyph "ي" (0x64a, afii57450) not available in font "TimesNewRomanPS-ItalicMT".
	// eg Glyph "ج" (0x62c, afii57420) not available in font "TimesNewRomanPS-ItalicMT".
	// to a font which does
	PhysicalFont font
			= PhysicalFonts.get("Arial Unicode MS");
	
		// make sure this is in your regex (if any)!!!
//		if (font!=null) {
//			fontMapper.put("Times New Roman", font);
//			fontMapper.put("Arial", font);
//		}
//		fontMapper.put("Libian SC Regular", PhysicalFonts.get("SimSun"));
	// FO exporter setup (required)
	// .. the FOSettings object
	FOSettings foSettings = Docx4J.createFOSettings();
	if (saveFO) {
		foSettings.setFoDumpFile(new java.io.File(inputfilepath + ".fo"));
	}
	foSettings.setWmlPackage(wordMLPackage);

	// Document format:
	// The default implementation of the FORenderer that uses Apache Fop will output
	// a PDF document if nothing is passed via
	// foSettings.setApacheFopMime(apacheFopMime)
	// apacheFopMime can be any of the output formats defined in org.apache.fop.apps.MimeConstants eg org.apache.fop.apps.MimeConstants.MIME_FOP_IF or
	// FOSettings.INTERNAL_FO_MIME if you want the fo document as the result.
	//foSettings.setApacheFopMime(FOSettings.INTERNAL_FO_MIME);
	// exporter writes to an OutputStream.
	String outputfilepath;
	outputfilepath = dataDir + "OUT_FontContent.pdf";
	OutputStream os = new java.io.FileOutputStream(outputfilepath);
	
	// Specify whether PDF export uses XSLT or not to create the FO
	// (XSLT takes longer, but is more complete).
	// Don't care what type of exporter you use
	Docx4J.toFO(foSettings, os, Docx4J.FLAG_EXPORT_PREFER_XSL);
	
	// Prefer the exporter, that uses a xsl transformation
	// Docx4J.toFO(foSettings, os, Docx4J.FLAG_EXPORT_PREFER_XSL);
	// Prefer the exporter, that doesn't use a xsl transformation (= uses a visitor)
	// .. faster, but not yet at feature parity
	// Docx4J.toFO(foSettings, os, Docx4J.FLAG_EXPORT_PREFER_NONXSL);
	System.out.println("Saved: " + outputfilepath);
//
		// Clean up, so any ObfuscatedFontPart temp files can be deleted
//		if (wordMLPackage.getMainDocumentPart().getFontTablePart()!=null) {
//			wordMLPackage.getMainDocumentPart().getFontTablePart().deleteEmbeddedFontTempFiles();
//		}
	// This would also do it, via finalize() methods
	updater = null;
	foSettings = null;
	wordMLPackage = null;
}
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/converttopdf)

{{% alert color="primary" %}}

For more details, visit [How to Convert a Document to PDF](/words/java/convert-a-document-to-pdf/#convertingamicrosoftworddocumentusingsavemethod-convertadocumenttopdf).

{{% /alert %}}
