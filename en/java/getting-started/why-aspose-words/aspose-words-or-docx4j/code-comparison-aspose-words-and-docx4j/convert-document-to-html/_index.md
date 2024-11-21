---
title: Convert Document to HTML
second_title: Aspose.Words for Java
articleTitle: Convert Document to HTML
linktitle: Convert Document to HTML
description: "Convert a document in any supported format to HTML easily and fast instead of using docx4j in Java."
type: docs
weight: 30
url: /java/convert-document-to-html/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Convert Document to HTML

To convert a document to other formats using Aspose.Words, simply invoke the save()}}method of {{Document class and specify a file name with the desired and supported extension.
Aspose.Words allows exporting or converting word documents to PDF, XPS, XamlFixed, XamlFlow, XamlFlowPack, EPUB, HTML, HtmlFixed, OpenXPS, PostScript, TXT and popular image/multimedia file formats including TIFF, JPG, PNG, BMP, SVG, SVG and SWF.

**Java**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "document.doc");
doc.save(dataDir + "html/Aspose_DocToHTML.html",SaveFormat.HTML); //Save the document in HTML format.
doc.save(dataDir + "Aspose_DocToPDF.pdf",SaveFormat.PDF); //Save the document in PDF format.
doc.save(dataDir + "Aspose_DocToTxt.txt",SaveFormat.TEXT); //Save the document in TXT format.
doc.save(dataDir + "Aspose_DocToJPG.jpg",SaveFormat.JPEG); //Save the document in JPEG format.
{{< /highlight >}}

## docx4j - Convert Document to HTML

This sample uses XSLT (and Xalan) to produce HTML output. (There is also HtmlExporterNonXSLT for environments where that is not desirable e.g. Android). If the source docx contained a WMF, that will get converted to inline SVG. In order to see the SVG in your browser, you'll need to rename the file to .xml or serve it with MIME type application/xhtml+xml

**Java**

{{< highlight csharp >}}

// Document loading (required)
WordprocessingMLPackage wordMLPackage;
if (inputfilepath==null) {
	// Create a docx
	System.out.println("No input path passed, creating dummy document");
	 wordMLPackage = WordprocessingMLPackage.createPackage();
	SampleDocument.createContent(wordMLPackage.getMainDocumentPart());
} else {
	System.out.println("Loading file from " + inputfilepath);
	wordMLPackage = Docx4J.load(new java.io.File(inputfilepath));
}

// HTML exporter setup (required)

// .. the `HTMLSettings` object
HTMLSettings htmlSettings = Docx4J.createHTMLSettings();
htmlSettings.setImageDirPath(inputfilepath + "_files");
htmlSettings.setImageTargetUri(inputfilepath.substring(inputfilepath.lastIndexOf("/")+1)
		+ "_files");
htmlSettings.setWmlPackage(wordMLPackage);
/* CSS reset, see https://itumbcom.blogspot.com.au/2013/06/css-reset-how-complex-it-should-be.html
 *
 * motivated by vertical space in tables in Firefox and Google Chrome.
    If you have unwanted vertical space, in Chrome this may be coming from -webkit-margin-before and -webkit-margin-after
    (in Firefox, margin-top is set to 1em in html.css)
    Setting margin: 0 on p is enough to fix it.
    See further https://www.css-101.org/articles/base-styles-sheet-for-webkit-based-browsers/
*/
String userCSS = "html, body, div, span, h1, h2, h3, h4, h5, h6, p, a, img,  ol, ul, li, table, caption, tbody, tfoot, thead, tr, th, td " +
		"{ margin: 0; padding: 0; border: 0;}" +
		"body {line-height: 1;} ";
htmlSettings.setUserCSS(userCSS);

// output to an OutputStream.
OutputStream os;
os = new FileOutputStream(inputfilepath + ".html");

// If you want XHTML output
Docx4jProperties.setProperty("docx4j.Convert.Out.HTML.OutputMethodXML", true);
//Don't care what type of exporter you use
//		Docx4J.toHTML(htmlSettings, os, Docx4J.FLAG_NONE);
//Prefer the exporter, that uses a xsl transformation
Docx4J.toHTML(htmlSettings, os, Docx4J.FLAG_EXPORT_PREFER_XSL);
//Prefer the exporter, that doesn't use a xsl transformation (= uses a visitor)
//		Docx4J.toHTML(htmlSettings, os, Docx4J.FLAG_EXPORT_PREFER_NONXSL);
System.out.println("Saved: " + inputfilepath + ".html ");
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/converttoformats)

{{% alert color="primary" %}}

For more details, visit [Convert a Document to HTML with roundtrip information](/words/java/serialize-and-work-with-a-document-in-a-database/#convertingadocumentusingadvancefeatures-convertadocumenttohtmlwithroundtripinformation).

{{% /alert %}}
