---
title: Convert Document to Other Formats
description: "Aspose.Words for Java allows you to convert a document from one format to another and fast instead of using Apache POI."
type: docs
weight: 30
url: /java/convert-document-to-other-formats/
---

## Microsoft Word - Conversion to Other Formats

Documents can be converted to other formats using Save As option in the File menu.

## Aspose.Words - Conversion to Other Formats

To convert a document to other formats using Aspose.Words, simply invoke the save() method of Document class and specify a file name with the desired and supported extension.

Aspose.Words allows exporting or converting word documents to PDF, XPS, XamlFixed, XamlFlow, XamlFlowPack, EPUB, HTML, HtmlFixed, OpenXPS, PostScript, TXT and popular image/multimedia file formats including TIFF, JPG, PNG, BMP, SVG, SVG and SWF.

The following code example demonstrates how to convert a whole document from DOC to other formats using default options.
**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeConvertToFormats.class);

// Load the document from disk.
Document doc = new Document(dataDir + "document.doc");

doc.save(dataDir + "Aspose_DocToHTML.html",SaveFormat.HTML); //Save the document in HTML format.
doc.save(dataDir + "Aspose_DocToPDF.pdf",SaveFormat.PDF); //Save the document in PDF format.
doc.save(dataDir + "Aspose_DocToTxt.txt",SaveFormat.TEXT); //Save the document in TXT format.
doc.save(dataDir + "Aspose_DocToJPG.jpg",SaveFormat.JPEG); //Save the document in JPEG format.
{{< /highlight >}}

## Apache POI WP - Conversion to Other Formats

The WordToHtmlConverter is used to convert a DOC to HTML format using Apache POI.
Apache POI also allows to covert in FO and text format.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheConvertToFormats.class);

HWPFDocumentCore wordDocument = WordToHtmlUtils.loadDoc(new FileInputStream(dataDir + "document.doc"));

WordToHtmlConverter wordToHtmlConverter = new WordToHtmlConverter(
        DocumentBuilderFactory.newInstance().newDocumentBuilder()
                .newDocument());
wordToHtmlConverter.processDocument(wordDocument);
Document htmlDocument = wordToHtmlConverter.getDocument();
ByteArrayOutputStream out = new ByteArrayOutputStream();
DOMSource domSource = new DOMSource(htmlDocument);
StreamResult streamResult = new StreamResult(out);

TransformerFactory tf = TransformerFactory.newInstance();
Transformer serializer = tf.newTransformer();
serializer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
serializer.setOutputProperty(OutputKeys.INDENT, "yes");
serializer.setOutputProperty(OutputKeys.METHOD, "html");
serializer.transform(domSource, streamResult);
out.close();

FileOutputStream outputStream = new FileOutputStream(dataDir + "Apache_DocToHTML.html");
outputStream.write(out.toByteArray());
outputStream.close();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/converter)

{{% alert color="primary" %}} 

For more details, visit [How to Convert a Document to PDF](/words/java/converting-a-microsoft-word-document-using-save-method/#convert-a-document-to-pdf).

{{% /alert %}}
