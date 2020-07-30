---
title: Converting a Document using Advance Features
type: docs
weight: 50
url: /java/converting-a-document-using-advance-features/
---

## **Convert an Image to PDF**
This article shows how to create a PDF document from an image using Aspose.Words. While converting images to PDF is not a main feature of Aspose.Words, this example shows how easy it is to do with Aspose.Words. To make this code work you need to add references to Aspose.Words and System.Drawing to your project.
The code below allows converting single frame images, such as JPEG, PNG, BMP, EMF or WMF, as well as multi-frame TIF images and GIF to PDF.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ImageToPdf-convertImageToPdf.java" >}}
### **ConvertImageToPdf Method**
{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ImageToPdf-convertImageToPdf.java" >}}
## **Convert a Document to Byte Array**
This topic shows how to serialize a Document object to obtain a byte array representing the Document and then how to unserialize the byte array to obtain a Document object again. This technique is often required when storing a document in a database or for preparing a Document for transmission across the web.

The simplest method used to serialize a Document object is to first save it to a MemoryStream using the Document.Save method overload of the Document class. The ToArray method is then called on the stream which returns an array of bytes representing the document in byte form.The save format chosen is important as to ensure the highest fidelity is retained upon saving and reloading into the Document object. For this reasons an OOXML format is suggested. The steps above are then reversed to load the bytes back into a Document object. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToByte/Test%20File%20\(doc\).doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}
## **Convert a Document to HTML with Roundtrip Information**
Aspose.Words can exports roundtrip information when saving to HTML, MHTML or EPUB. HtmlSaveOptions.ExportRoundtripInformation property specifies whether to write the roundtrip information when saving to HTML, MHTML or EPUB. Default value is **true** for HTML and **false** for MHTML and EPUB. Saving of the roundtrip information allows to restore document properties such as tab stops, comments, headers and footers during the HTML documents loading back into a Document object.

When **true**, the roundtrip information is exported as - aw -* CSS properties of the corresponding HTML elements.

When **false**, causes no roundtrip information to be output into produced files. 
The code sample below shows how to export roundtrip information while converting Doc->Html->Doc. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\).doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.java" >}}
