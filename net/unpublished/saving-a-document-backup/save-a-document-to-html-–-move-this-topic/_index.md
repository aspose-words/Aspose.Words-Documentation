---
title: Save a Document to HTML – move this topic?
type: docs
weight: 30
url: /net/save-a-document-to-html-–-move-this-topic/
---

[MG: This article can be moved to the "[Save in the HTML (.HTML, .XHTML, .MHTML) Format](/words/net/save-in-the-html-28-html-2c-xhtml-2c-mhtml-29-format-html/)" section. Or we can leave this article in the current section.]
## **Specifying Html Save Options**
### **Add Prefix to CSS Class Name**
If you want to add prefix to exported CSS class names when document is exported to HTML, you can use HtmlSaveOptions.CssClassNamePrefix property. This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. Below code example shows how to add the prefix to CSS class name. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetCssClassNamePrefix.cs" >}}
### **Prevent Embedding Fonts while saving Document into HtmlFixed**
By default, Aspose.Words embeds the fonts into HtmlFixed file format. You can set the value of HtmlFixedSaveOptions.UseTargetMachineFonts property as *true* to prevent fonts from embedding into HtmlFixed document. When the value of this property is *true*, the fonts from target machine will be used to display the document.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveOptionsHtmlFixed-UseFontFromTargetMachine.cs" >}}
### **Write all CSS Declarations of HtmlFixed Document into Single File**
By default, Aspose.Words saves "@font-face" rules of HtmlFixed documents into a separate file "fontFaces.css" while other CSS declarations are written to "styles.css". You can change this behavior by setting the value of HtmlFixedSaveOptions.SaveFontFaceCssSeparately property to *false*. This saves all CSS rules and declarations into the same file "styles.css". Below code example shows how to save all CSS rules and declarations into one file.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveOptionsHtmlFixed-WriteAllCSSrulesinSingleFile.cs" >}}
### **Specify Metafile format When Exporting Document to HTML**
By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML. Other options are to convert meta-files to SVG images or to export them as is without conversion. You can use HtmlSaveOptions.MetafileFormat property to specify meta-file format when exporting document to HTML, MHTML, or EPUB. Below code example shows how to use this property. 

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SaveHtmlWithMetafileFormat.cs" >}}

If you want to import SVG images into document and save these images back to SVG format in output HTML, you can use HtmlMetafileFormat.Svg value. Below code example shows how to export SVG image in output HTML.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-ImportExportSVGinHTML.cs" >}}
### **Add Reference Resources in MHTML Documents using the "Content-Id" URL Scheme**
By default, resources in MHTML documents are referenced by file name (for example, "image.png"), which are matched against "Content-Location" headers of MIME parts. You can use HtmlSaveOptions.ExportCidUrlsForMhtmlResources property to specify whether to use CID (Content-ID) URLs to reference resources (images, fonts, CSS) included in MHTML documents. Below code example shows how to add reference resources in MHTML document using the "Content-Id" URL scheme.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetExportCidUrlsForMhtmlResources.cs" >}}
### **Resolve and Substitute Fonts According to FontSettings**
By default, Aspose.Words uses font family names from source document and writes to HTML. No resolution or substitution of font family names is performed. If you want to resolve and substitute font family names, you can use HtmlSaveOptions.ResolveFontNames property. In this case, Aspose.Words uses FontSettings to resolve each font family name specified in a source document into the name of an available font family, performing font substitution as required. Below code example shows how to resolve and substitute font family names when document is converted to HTML.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SaveDocWithHtmlSaveOptions-SetResolveFontNames.cs" >}}
## **Save HTML tags Input and Select as Content Control**
Aspose.Words provides support to import HTML tags <input> and <select> as form field or content control (SDT) into its DOM and export them in output Word document. You can use HtmlLoadOptions.PreferredControlType property to specify the preferred control type.

Following code example shows how to export HTML tags <input> and <select> as content control in output DOCX.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveHtmlFormFieldasContentControlinDOCX-LoadAndSaveHtmlFormFieldasContentControlinDOCX.cs" >}}
