---
title: Convert a Document to HTML, MHTML or EPUB in C++
articleTitle: Convert a Document to HTML, MHTML or EPUB
linktitle: Convert a Document to HTML, MHTML or EPUB
description: "Convert a document from almost any format to HTML or MHTML, as well as to EPUB format using C++. You can also specify save options for managing the output document."
type: docs
weight: 20
url: /cpp/convert-a-document-to-html-mhtml-or-epub/
---

Documents in HTML and MHTML flow-layout formats are also very popular and can be used on any web platform. For that reason, converting documents to HTML and MHTML is an important feature of Aspose.Words.

EPUB (short for "Electronic Publication") is an HTML-based format commonly used for electronic book distribution. This format is fully supported in Aspose.Words for exporting electronic books that are compatible with most reading devices.

## Convert a Document

For simple conversion to HTML, MHTML, or EPUB, one of the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.document#save_stream_saveformat) method overloads is used. You can save the document to a file or stream and explicitly set the output document save format or define it from the file name extension.

The following example shows how to convert DOCX to HTML with specifying a save format:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

To convert a document to MHTML or EPUB, use SaveFormat.Mhtml or SaveFormat.Epub respectively.

## Convert a Document with Round-trip Information

The HTML format does not support many Microsoft Word features, and if we need to restore a document model as close to the original as possible, we need to save some extra information within the HTML file. Such information is also called "round-trip information". For this purpose, Aspose.Words provides an ability to export round-trip information when saving to HTML, MHTML, or EPUB using the [ExportRoundtripInformation](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_exportroundtripinformation_const) property. Saving the round-trip information allows restoring document properties such as tabs, comments, headers, and footers during the loading documents of the listed formats back into a **Document** object.

The default value is **true** for HTML and **false** for MHTML and EPUB:

- When **true**, the round-trip information is exported as - aw - * CSS properties of the corresponding HTML elements
- When **false**, there is no round-trip information to be output into produced files

The following code example shows how to export round-trip information when converting a document from DOCX into HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).doc).

{{% /alert %}}

## Specify Save Options when Conversion to HTML

Aspose.Words allows converting a Word document to HTML using default or custom save options. Few examples of custom save options are described below.

### Specify a Folder for Saving Resources

Using Aspose.Words we can specify a physical folder where all resources, such as images, fonts, and external CSS, are saved when a document is converted to HTML. By default, this is an empty string.

Specifying the [ResourceFolder](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_resourcefolder_const) property is the simplest way to set the folder where all resources should be written. We can use individual properties, such as [FontsFolder](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_fontsfolder_const) which saves fonts to the specified folder and [ImagesFolder](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_imagesfolder_const) which saves images to a specified folder. When a relative path is specified, **FontsFolder** and **ImagesFolder** refer to the folder where the code assembly is located, **ResourceFolder** and [CssStyleSheetFileName](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_cssstylesheetfilename_const) refer to the output folder where the HTML document is located.

In this example, **ResourceFolder** specifies the relative path. This path refers to the output folder where the HTML document is saved. The value of the **ResourceFolderAlias** property is used to create URLs for all resources.

The following code example shows how to work with these properties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Using the [ResourceFolderAlias](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_resourcefolderalias_const) property, we can also specify the name of the folder used to construct URIs of all resources written into an HTML document. This is the simplest way to specify how URIs should be generated for all resource files. The same information can be specified for images and fonts separately via [ImagesFolderAlias](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_imagesfolderalias_const) and [FontsFolderAlias](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_fontsfolderalias_const) properties, respectively.

However, there is no individual property for CSS. The behavior of the **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** and **CssStyleSheetFileName** properties are not changed. Note that the **CssStyleSheetFileName** property is used both for specifying folder name and file name.

- **ResourceFolder** has lower priority than folders specified via **FontsFolder**, **ImagesFolder**, and **CssStyleSheetFileName**. If the folder specified in the **ResourceFolder** does not exist, it will be created automatically.
- **ResourceFolderAlias** has a lower priority than **FontsFolderAlias** and **ImagesFolderAlias**. If **ResourceFolderAlias** is empty, the value of the **ResourceFolder** property will be used to create resource URIs. If **ResourceFolderAlias** is set to "." (dot), resource URIs will only contain file names without specifying a path.

### Export Base64 Encoding Fonts Resources

Aspose.Words provides an ability to specify whether font resources should be embedded into HTML in Base64 encodings. To perform this, use the [ExportFontsAsBase64](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_exportfontsasbase64_const) property – this is an extension of the [ExportFontResources](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options#get_exportfontresources_const) property. By default, its value is **false**, and fonts are written into separate files. But if this option is set to **true**, fonts will be embedded into the document's CSS in Base64 encoding. The **ExportFontsAsBase64** property only affects HTML format and does not affect EPUB and MHTML.

The following code example shows how to export Base64-encoded fonts to HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Specify Save Options when Conversion to EPUB

Aspose.Words allows converting a Word document into EPUB format using default or custom save options. You can specify a number of options by passing an instance of [HtmlSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.html_save_options) to the Save method.

The following code example shows how to converts a Word document to EPUB with specifying some custom save options:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
