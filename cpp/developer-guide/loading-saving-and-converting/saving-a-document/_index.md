---
title: Saving a Document
type: docs
weight: 20
url: /cpp/saving-a-document/
---

{{% alert color="primary" %}} 

Use the Document.Save method for saving a document. There are overloads that allow saving a document to a file or stream. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats see the SaveFormat enumeration.

{{% /alert %}} 
## **Saving to a File**
Simply use the Document.Save method with a file name. Aspose.Words will infer the same format from the file extension that you specify. The code sample below shows how to load and save a document. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}
## **Saving to a Stream**
You pass a stream object to the Document->Save method. When you save to a stream, you must specify the save format explicitly. The code sample below shows how to load a document and save to a stream. You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}
## **Save HTML tags Input and Select as Content Control**
Aspose.Words provides support to import HTML tags &lt;input&gt; and &lt;select&gt; as form field or content control (SDT) into its DOM and export them in output Word document. You can use HtmlLoadOptions.set_PreferredControlType property to specify the preferred control type.

Following code example shows how to export HTML tags &lt;input&gt; and &lt;select&gt; as content control in output DOCX.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-LoadAndSaveHtmlFormFieldAsContentControlInDOCX-LoadAndSaveHtmlFormFieldasContentControlinDOCX.cpp" >}}
## **Specifying Html Save Options**
### **Add Prefix to CSS Class Name**
If you want to add a prefix to exported CSS class names when the document is exported to HTML, you can use HtmlSaveOptions.CssClassNamePrefix property. This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. The below code example shows how to add the prefix to CSS class name. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetCssClassNamePrefix.cpp" >}}
### **Prevent Embedding Fonts while saving Document into HtmlFixed**
By default, Aspose.Words embeds the fonts into HtmlFixed file format. You can set the value of HtmlFixedSaveOptions.UseTargetMachineFonts property as *true* to prevent fonts from embedding into HtmlFixed document. When the value of this property is *true*, the fonts from the target machine will be used to display the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveOptionsHtmlFixed-UseFontFromTargetMachine.cpp" >}}
### **Write all CSS Declarations of HtmlFixed Document into Single File**
By default, Aspose.Words saves "@font-face" rules of HtmlFixed documents into a separate file "fontFaces.css" while other CSS declarations are written to "styles.css". You can change this behavior by setting the value of HtmlFixedSaveOptions.SaveFontFaceCssSeparately property to *false*. This saves all CSS rules and declarations into the same file "styles.css". The below code example shows how to save all CSS rules and declarations into one file.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveOptionsHtmlFixed-WriteAllCSSrulesinSingleFile.cpp" >}}
### **Specify Metafile format When Exporting Document to HTML**
By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML. Other options are to convert meta-files to SVG images or to export them as is without conversion. You can use HtmlSaveOptions.MetafileFormat property to specify the meta-file format when exporting the document to HTML, MHTML, or EPUB. The below code example shows how to use this property. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SaveHtmlWithMetafileFormat.cpp" >}}

If you want to import SVG images into a document and save these images back to SVG format in output HTML, you can use HtmlMetafileFormat::Svg value. The below code example shows how to export SVG image in output HTML.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-ImportExportSVGinHTML.cpp" >}}
### **Add Reference Resources in MHTML Documents using the "Content-Id" URL Scheme**
By default, resources in MHTML documents are referenced by file name (for example, "image.png"), which are matched against "Content-Location" headers of MIME parts. You can use HtmlSaveOptions.ExportCidUrlsForMhtmlResources property to specify whether to use CID (Content-ID) URLs to reference resources (images, fonts, CSS) included in MHTML documents. The below code example shows how to add reference resources in MHTML document using the "Content-Id" URL scheme.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetExportCidUrlsForMhtmlResources.cpp" >}}


### **Resolve and Substitute Fonts According to FontSettings**
By default, Aspose.Words uses font family names from the source document and write to HTML. No resolution or substitution of font-family names is performed. If you want to resolve and substitute font family names, you can use HtmlSaveOptions.ResolveFontNames property. In this case, Aspose.Words uses FontSettings to resolve each font family name specified in a source document into the name of an available font family, performing font substitution as required. The below code example shows how to resolve and substitute font family names when the document is converted to HTML. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetResolveFontNames.cpp" >}}
## **Specifying Save Options**
There are Document->Save method overloads that accept a SaveOptions object. This should be an object of a class derived from the SaveOptions class. Each save format has a corresponding class that holds save options for that same format. For example, there is PdfSaveOptions for the SaveFormat.Pdf save format. The code sample below shows how to set save options before saving a document to HTML. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Loading-and-Saving/TestFile%20RenderShape.docx).

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}


### **Open and Save Encrypted OpenDocument**
The OdtSaveOptions class can be used to specify additional options when saving a document into the ODT or OTT format. You can initialize a new instance of this class that can be used to save a document in the ODT format encrypted with a password. You can also use OdtSaveOptions.Password property to get or set a password to encrypt the document. The code sample below shows how to load and save OpenDocument encrypted with a password.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}


## **Save Document to PCL**
Aspose.Words provides support to save the document to PCL (*Printer Command Language*). Aspose.Words can save documents to PCL 6 (*PCL 6 Enhanced or PCL XL*) format. PclSaveOptions class can be used to specify additional options when saving a document into the PCL format.

The following code example shows how to save the document to PCL using save options. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
