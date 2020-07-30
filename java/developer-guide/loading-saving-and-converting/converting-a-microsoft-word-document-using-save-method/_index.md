---
title: Converting a Microsoft Word document using save Method
type: docs
weight: 40
url: /java/converting-a-microsoft-word-document-using-save-method/
---

## **Convert a Document to PDF**
### **Document to PDF**
To convert a document to PDF simply invoke the Document.Save method and specify a file name with the “.PDF” extension. The code sample below converts a whole document from DOC to PDF using default options. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/Doc2PDF/Template.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-Doc2PDF-Doc2PDF.java" >}}
### **Convert using PdfCompliance**
Aspose.Words provides [PdfCompliace ](https://apireference.aspose.com/net/words/aspose.words.saving/pdfcompliance)enumeration to support conversion of various PDF standards like as PDF 1.7, PDF 1.5 etc. The following code example demonstrates how to convert a document to PDF 1.7 using PDFSaveOption with compliance to PDF17.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ConversionToPDF17.java" >}}
## **Convert a Document to EPUB**
An EPUB document (short for electronic publication) is HTML-based format commonly used for electronic book distribution. This format is fully supported in Aspose.Words for exporting electronic books compatible with the majority of devices used for reading. This article shows how to convert simple MS Word document to EPUB with a few lines of code. It also demonstrates what a sample document looks like after being converted to EPUB using Aspose.Words.
### **Default Save Options**
The code sample below converts a document to EPUB using default save options. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToEPUBUysingDefaultSaveOptions/Document.EpubConversion.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.java" >}}
### **Specifying Save Options**
You can specify the number of options by passing an instance of [HtmlSaveOptions](http://www.aspose.com/api/java/words/com.aspose.words/classes/HtmlSaveOptions) to the [Document.save](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/save\(java.io.OutputStream,int\)/) method. The code snippet below shows a few of them in action. The code sample below converts a document to EPUB with saving options specified. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToEPUB/Document.EpubConversion.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToEPUBUysingDefaultSaveOptions-ConvertDocumentToEPUBUsingSaveOptions.java" >}}
#### **A Sample Conversion**
In the next few paragraphs, we’ll review the results of a sample document converted to EPUB format. The screenshots below show the key features. Since EPUB is a publishing format for electronic books, it’s apparent that the most import features will involve text. At a glance, we can see the text and all key features in the EPUB output look identical to the source document.

|**The picture below shows the key text formatting features after conversion to EPUB.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/QbWSb4F.png)|


|**A wide range of paragraph formatting settings used in the following example performs equal to the source document.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/Xwl6pXo.png)|


|**The following picture shows how great tables are rendered despite their complexity.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/PI7Xx39.png)|


|**Even complex lists from the source document are exported well to EPUB.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/JaXavsF.png)|


|**Images are essential for most publications and can be aligned differently on the screen.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/zdZtpFK.png)|


|**This picture shows a table of contents generated from source document exported as inline text with working hyperlinks. The same headings which make up the TOC in the source document are exported to the navigation pane in the EPUB for easy navigation.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/DWWtA8j.png)|
#### **EPUB File Validation**
The EPUB documents produced by Aspose.Words pass validation which means that EPUB standards are adhered to and there are no errors with the EPUB. Even though passing validation doesn’t guarantee that every device or EPUB viewer will display your document in exactly the same way, it does, however, give the highest chance that your document will be viewed as close as possible as originally intended.

|**The picture below shows a report on the document we just converted on [one of the validation services](http://validator.idpf.org/).**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/XqeZwKy.png)|
#### **Meta-data in EPUB Files**
Meta-data is additional information such as Author Name, Title, Comments, etc. added to a file that’s not visible in the content of the file itself. Word document formats have special properties dedicated to such metadata and this can be exported to EPUB files as well. Metadata fields are often required by distributors and e-book stores as keywords for their search engines and providing information about books for customers.

|**The picture below shows the metadata after the conversion.**|
| :- |
|![todo:image_alt_text](http://i.imgur.com/etlTenE.png)|
## **Export Fonts to HTML in Base64 Encoding**
Using Aspose.Words we can check whether font resources should be embedded to HTML in base 64 encodings. By default, the value is false and fonts are written to separate files. If this option is set to true, fonts will be embedded into the document's CSS in Base64 encoding. The property affects only HTML format and doesn't affect EPUB and MHTML. This is an extension to HtmlSaveOptions.ExportFontResources option and ExportFontsAsBase64 will work only if this property set to true. Below example shows how to export fonts to HTML in Base64 encoding.



{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ExportFontsAsBase64-ExportFontsAsBase64.java" >}}
## **Working with HtmlSaveOptions Properties**
Using Aspose.Words we can specify a physical folder where all resources like images, fonts, and external CSS are saved when a document is exported to HTML. Default is an empty string. ResourceFolder is the simplest way to specify a folder where all resources should be written. We can use individual properties like FontsFolder which save the fonts to specified folder and ImagesFolder which saves the images to a specified folder. 

Using ResourceFolderAlias property we can also specify the name of the folder used to construct URIs of all resources written into an HTML document it’s the simplest way to specify how URIs for all resource files should be constructed. The same information can be specified for images and fonts separately via ImagesFolderAlias and FontsFolderAliasproperties, respectively. However, there is no individual property for CSS. Behavior of properties FontsFolder, FontsFolderAlias, ImagesFolder, ImagesFolderAlias and CssStyleSheetFileName are not changed. Note that CssStyleSheetFileName properties are used both for specifying folder name and file name. 

when a relative path is specified, FontsFolder and ImagesFolder are relative to the folder where code assembly is located, ResourceFolder and CssStyleSheetFileName are relative to output folder where HTML document is located. In the example below ResourceFolder specifies a relative path this path is relative to the output folder, where HTML document is saved, <http://example.com/resources> alias is used to construct URLs of all resources.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.java" >}}

{{% alert color="primary" %}} 

- ResourceFolder has a lower priority than folders specified via FontsFolder, ImagesFolder, and CssStyleSheetFileName. If the folder specified by ResourceFolder doesn't exist, it will be created automatically.
- ResourceFolderAlias has a lower priority than FontsFolderAlias and ImagesFolderAlias. If ResourceFolderAlias is empty, the ResourceFolder property value will be used to construct resource URIs. If ResourceFolderAlias is set to '.' (dot), resource URIs will contain file names only, without any path.

{{% /alert %}} 


## **Convert a Document to MHTML and Email**
Aspose.Words can save any document in MHTML (Web Archive) format. This makes it very easy to use Aspose.Words and [Aspose.Email](http://www.aspose.com/java/email-component.aspx) together to generate email messages with rich content. For example, you can load a predefined DOC, OOXML or RTF document into Aspose.Words, fill it with data, save as MHTML and then convert to any mail format supported by Aspose.Email. Following example shows how to save any document from Aspose.Words as MHTML and create an Outlook MSG file from it using Aspose.Email.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertADocumentToMHTMLAndEmail-.java" >}}
