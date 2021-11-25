---
title: Convert a Document to HTML, MHTML or EPUB
description: "Aspose.Words for Python via .NET allows you to convert a document from almost any format to HTML or MHTML, as well as to EPUB format. You can also specify save options for managing the output document."
type: docs
weight: 20
url: /python-net/convert-a-document-to-html-mhtml-or-epub/
aliases: [/python/convert-a-document-to-html-mhtml-or-epub/]
---

Documents in HTML and MHTML flow-layout formats are also very popular and can be used on any web platform. For that reason, converting documents to HTML and MHTML is an important feature of Aspose.Words.

EPUB (short for "Electronic Publication") is an HTML-based format commonly used for electronic book distribution. This format is fully supported in Aspose.Words for exporting electronic books that are compatible with most reading devices.

## Convert a Document

For simple conversion to HTML, MHTML, or EPUB, one of the **save** method overloads is used. You can save the document to a file or stream and explicitly set the output document save format or define it from the file name extension.

The following example shows how to convert DOCX to HTML with specifying a save format:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

To convert a document to MHTML or EPUB, use **SaveFormat.MHTML** or **SaveFormat.EPUB** respectively.

## Convert a Document with Round-trip Information

The HTML format does not support many Microsoft Word features, and if we need to restore a document model as close to the original as possible, we need to save some extra information within the HTML file. Such information is also called "round-trip information". For this purpose, Aspose.Words provides an ability to export round-trip information when saving to HTML, MHTML, or EPUB using the **export_roundtrip_information** property. Saving the round-trip information allows to restore document properties such as tabs, comments, headers, and footers during the loading documents of the listed formats back into a **Document** object.

The default value is *True* for HTML and *False* for MHTML and EPUB:

- When *True*, the round-trip information is exported as - aw - * CSS properties of the corresponding HTML elements
- When *False*, there is no round-trip information to be output into produced files

The following code example shows how to export round-trip information when converting a document from DOCX into HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}} 

## Specify Save Options when Conversion to HTML

Aspose.Words allows to convert a Word document to HTML using default or custom save options. Few examples of custom save options are described below.

### Specify a Folder for Saving Resources

Using Aspose.Words we can specify a physical folder where all resources, such as images, fonts, and external CSS, are saved when a document is converted to HTML. By default, this is an empty string.

Specifying the **resource_folder** property is the simplest way to set the folder where all resources should be written. We can use individual properties, such as **fonts_folder** which saves fonts to the specified folder and **images_folder** which saves images to a specified folder. When a relative path is specified, **fonts_folder** and **images_folder** refer to the folder where the code assembly is located, **resource_folder** and **css_style_sheet_file_name** refer to the output folder where the HTML document is located.

In this example, **resource_folder** specifies the relative path. This path refers to the output folder where HTML document is saved. The value of the **resource_folder_alias** property is used to create URLs for all resources.

The following code example shows how to work with these properties:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Using the **resource_folder_alias** property, we can also specify the name of the folder used to construct URIs of all resources written into an HTML document. This is the simplest way to specify how URIs should be generated for all resource files. The same information can be specified for images and fonts separately via **images_folder_alias** and **fonts_folder_alias** properties, respectively.

However, there is no individual property for CSS. The behavior of the **fonts_folder**, **fonts_folder_alias**, **images_folder**, **images_folder_alias** and **css_style_sheet_file_name** properties are not changed. Note that the **css_style_sheet_file_name** property is used both for specifying folder name and file name.

- **resource_folder** has lower priority than folders specified via **fonts_folder**, **images_folder**, and **css_style_sheet_file_name**. If the folder specified in the **resource_folder** does not exist, it will be created automatically.
- **resource_folder_alias** has a lower priority than **fonts_folder_alias** and **images_folder_alias**. If **resource_folder_alias** is empty, the value of the **resource_folder** property will be used to create resource URIs. If **resource_folder_alias** is set to "." (dot), resource URIs will only contain file names without specifying a path.

### Export Base64 Encoding Fonts Resources

Aspose.Words provides an ability to specify whether font resources should be embedded into HTML in Base64 encodings. To perform this, use the **export_fonts_as_base64** property – this is an extension of the **export_font_resources** property. By default, its value is *False*, and fonts are written into separate files. But if this option is set to *True*, fonts will be embedded into the document's CSS in Base64 encoding. The **export_fonts_as_base64** property only affects HTML format and does not affect EPUB and MHTML.

The following code example shows how to export Base64-encoded fonts to HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Specify Save Options when Conversion to EPUB

Aspose.Words allows to convert a Word document into EPUB format using default or custom save options. You can specify a number of options by passing an instance of **HtmlSaveOptions** to the **save** method.

The following code example shows how to converts a Word document to EPUB with specifying some custom save options:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}} 

