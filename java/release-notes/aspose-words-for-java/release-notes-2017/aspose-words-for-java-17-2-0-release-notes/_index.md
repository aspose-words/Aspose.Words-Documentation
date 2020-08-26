---
title: Aspose.Words for Java 17.2.0 Release Notes
type: docs
weight: 110
url: /java/aspose-words-for-java-17-2-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 17.2.0](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/17.2.0/)

{{% /alert %}} 
## **Major Features**
There are 51 improvements and fixes in this regular monthly release. The most notable are:

- Support of Metered License
- Export fonts to HTML in Base64 encoding
- Added HtmlSaveOptions.ResourceFolder and HtmlSaveOptions.ResourceFolderAlias public properties
- Exposed access to Height/Width of Text Frames
- Improved control over BiDi text direction elements
- Non-bidi fields that contain hided bidi whitespaces are properly resolved
## **Full List of Issues Covering all Changes in this Release**


|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAVA-1469|Document.UpdateFields updates the INDEX field incorrectly.|Bug|
|WORDSJAVA-1476|List numbering resets when rendering Aspose.Words generated DOCX to PDF with Adlib|Bug|
|WORDSJAVA-1481|Dash symbol is rendered as unknown while saving SVG to PNG.|Enhancement|
|WORDSJAVA-1475|System.OverflowException while open html document|Exception|
|WORDSJAVA-1472|Metered License|Feature|
|WORDSNET-12975|Math equation's alignment is changed in output Pdf|Bug|
|WORDSNET-13516|Document.Compare returns incorrect revisions|Bug|
|WORDSNET-13568|Left indentation of list items is incorrect in generated ODT|Bug|
|WORDSNET-13719|pic:pic element is not written during RTF to DOCX conversion|Bug|
|WORDSNET-13993|Cell's background-colors is not correct in output Html/Docx/Pdf|Bug|
|WORDSNET-14008|Footnote line renders higher in PDF|Bug|
|WORDSNET-14076|/hidden cell break/ When Converted To PDF, text in output file is not on same page like in original Word document.|Bug|
|WORDSNET-14393|Page break is lost after re-saving WordML document|Bug|
|WORDSNET-14464|Attributes related to FitText are improperly read into the model of the .DOC document.|Bug|
|WORDSNET-14481|Docx to Pdf conversion issue with TOC item rendering|Bug|
|WORDSNET-14537|Single Solid-line in word document converts double border for the images in HTML|Bug|
|WORDSNET-14553|Docx to HtmlFixed conversion issue with table's borders|Bug|
|WORDSNET-14595|StyleCollection.addCopy - Breaking the Multi Level List numbering for Heading styles|Bug|
|WORDSNET-14606|A text overlaps on top left logo image in PDF|Bug|
|WORDSNET-14654|Extra TOC entry is rendered in output Pdf|Bug|
|WORDSNET-14670|Bookmark missing after open and resave document using Aspose.Words|Bug|
|WORDSNET-14674|Header contents are lost after conversion from Docx to Pdf|Bug|
|WORDSNET-14676|Docx to Pdf conversion issue with hyperlinks|Bug|
|WORDSNET-14678|When DOCX is saved as PDF by using a FileStream or MemoryStream, then the output document is missing some elements.|Bug|
|WORDSNET-14684|Position of SmartArt elements are changed in output Pdf|Bug|
|WORDSNET-14685|Docx to Pdf conversion issue with hyperlinks|Bug|
|WORDSNET-14686|Document.Compare increases the Table's cells|Bug|
|WORDSNET-14689|List numberings changes from alphabets to numbers during rendering|Bug|
|WORDSNET-14698|UpdateFields truncates text in bookmark cross-reference|Bug|
|WORDSNET-14703|A formula errors to "divide by zero" when calling UpdateFields|Bug|
|WORDSNET-14717|Charts become invisible in output HtmlFixed|Bug|
|WORDSNET-14728|Word to PDF conversion create "double encodes" hyperlinks|Bug|
|WORDSNET-14732|Some text content is repeated in rendered document|Bug|
|WORDSNET-14749|Rtf to Doc conversion issue with page numbers of TOC field.|Bug|
|WORDSNET-14752|When open document, a Aspose.Words.FileCorruptedException occurs.|Bug|
|WORDSNET-14761|HTML document has no <link> to external CSS file when callback is used|Bug|
|WORDSNET-14768|Horizontal Axis of chart does not render correctly in output PNG|Bug|
|WORDSNET-14792|Document.Compare does not work for CheckBox (FormField)|Bug|
|WORDSNET-11771|Support the dir and the bdo elements|Enhancement|
|WORDSNET-14579|Date Field with mixed bidi/non-bidi formatting.|Enhancement|
|WORDSNET-14589|Add CssFolder property to HtmlSaveOptions|Enhancement|
|WORDSNET-14590|Discrepancy between HtmlSaveOptions and HtmlFixedSaveOptions regarding ImagesFolder and FontsFolder properties.|[Enhancement](/words/java/converting-a-microsoft-word-document-using-save-method/#convertingamicrosoftworddocumentusingsavemethod-workingwithhtmlsaveoptionsproperties)|
|WORDSNET-14713|More horizontal spacing between paragraphs of the same style when exporting to HTML|Enhancement|
|WORDSNET-14741|Review when Word ignores strokes with weight less that 1 pt|Enhancement|
|WORDSNET-14636|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-14642|Document.Save method throws System.InvalidOperationException whend document is re-saved|Exception|
|WORDSNET-14702|FileCorruptedException caused by charts|Exception|
|WORDSNET-14746|NullReferenceException while mailmerge|Exception|
|WORDSNET-14762|Export fonts to HTML in Base64 encoding|[Feature](/words/java/converting-a-microsoft-word-document-using-save-method/#convertingamicrosoftworddocumentusingsavemethod-exportfontstohtmlinbase64encoding)|
|WORDSNET-5645|Expose (Height/Width) access to Text Frames|Feature|
|WORDSNET-6833|OutOfMemoryException occurs during rendering DOCX to PDF|Performance|
`  `Public API and Backward Incompatible Changes



This section lists public API changes that were introduced in Aspose.Words 17.2.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.


### **WORDSNET-14589 and WORDSNET-14590 - Added Public Properties HtmlSaveOptions.ResourceFolder and HtmlSaveOptions.ResourceFolderAlias**
New public properties ResourceFolder and ResourceFolderAlias are added into the HtmlSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Specifies a physical folder where all resources like images, fonts, and external CSS are saved when a document
/// is exported to HTML. Default is an empty string.
/// </summary>
/// <remarks>
/// <p><see cref="ResourceFolder"/> is the simplest way to specify a folder where all resources should be written.
/// Another way is to use individual properties <see cref="FontsFolder"/>, <see cref="ImagesFolder"/>,
/// and <see cref="CssStyleSheetFileName"/>.</p>
///
/// <p><see cref="ResourceFolder"/> has a lower priority than folders specified via <see cref="FontsFolder"/>,
/// <see cref="ImagesFolder"/>, and <see cref="CssStyleSheetFileName"/>. For example, if both <see cref="ResourceFolder"/>
/// and <see cref="FontsFolder"/> are specified, fonts will be saved to <see cref="FontsFolder"/>, while images and CSS
/// will be saved to <see cref="ResourceFolder"/>.</p>
///
/// <p>If the folder specified by <see cref="ResourceFolder"/> doesn't exist, it will be created automatically.</p>
///
/// <seealso cref="FontsFolder"/>
/// <seealso cref="ImagesFolder"/>
/// <seealso cref="CssStyleSheetFileName"/>
/// </remarks>
public String ResourceFolder
{
    get { return mResourceFolder; }
    set
    {
        ArgumentUtil.CheckNotNull(value, "ResourceFolder");
        mResourceFolder = value;
    }
}
/// <summary>
/// Specifies the name of the folder used to construct URIs of all resources written into an HTML document.
/// Default is an empty string.
/// </summary>
/// <remarks>
/// <p><see cref="ResourceFolderAlias"/> is the simplest way to specify how URIs for all resource files should be
/// constructed. Same information can be specified for images and fonts separately via <see cref="ImagesFolderAlias"/>
/// and <see cref="FontsFolderAlias"/> properties, respectively. However, there is no individual property for CSS.</p>
///
/// <p><see cref="ResourceFolderAlias"/> has lower priority than <see cref="FontsFolderAlias"/>
/// and <see cref="ImagesFolderAlias"/>. For example, if both <see cref="ResourceFolderAlias"/>
/// and <see cref="FontsFolderAlias"/> are specified, fonts' URIs will be constructed using <see cref="FontsFolderAlias"/>,
/// while URIs of images and CSS will be constructed using <see cref="ResourceFolderAlias"/>.</p>
///
/// <p>If <see cref="ResourceFolderAlias"/> is empty, the <see cref="ResourceFolder"/> property value will be used
/// to construct resource URIs.</p>
///
/// <p>If <see cref="ResourceFolderAlias"/> is set to '.' (dot), resource URIs will contain file names only, without
/// any path.</p>
///
/// <seealso cref="ResourceFolder"/>
/// <seealso cref="FontsFolderAlias"/>
/// <seealso cref="ImagesFolderAlias"/>
/// </remarks>
public String ResourceFolderAlias
{
    get { return mResourceFolderAlias; }
    set
    {
        ArgumentUtil.CheckNotNull(value, "ResourceFolderAlias");
        mResourceFolderAlias = value;
    }
}
{{< /highlight >}}

Behavior of properties FontsFolder, FontsFolderAlias, ImagesFolder, ImagesFolderAlias and CssStyleSheetFileName are not changed.

Note that CssStyleSheetFileName properties is used both for specifying folder name and file name.

Order of priority in which Aspose.Words decides into what folder to write external CSS style sheet:
\1. Folder specified in CssStyleSheetFileName property.
\2. Folder specified in ResourceFolder property.
\3. Output folder where HTML document is saved.

Order of priority in which Aspose.Words decides what name external CSS style sheet has:
\1. File name specified in CssStyleSheetFileName property.
\2. Output HTML file name with ".css" extension.

Order of priority in which Aspose.Words decides into what folder to write fonts:
\1. Folder specified in FontsFolder property.
\2. Folder specified in ResourceFolder property.
\3. Folder where code assembly is located.

Order of priority in which Aspose.Words decides into what folder to write images:
\1. Folder specified in ImagesFolder property.
\2. Folder specified in ResourceFolder property.
\3. Folder where code assembly is located.

Note that when relative path is specified, FontsFolder and ImagesFolder are relative to folder where code assembly is located, ResourceFolder and CssStyleSheetFileName are relative to output folder where HTML document is located.

Here are some use cases. In examples below input test document has name Test.docx, output HTML document has name Test.html. Input document has one image Test.001.png and one font Test.calibril.ttf. By default external CSS style sheet has name Test.css.

\1. Simplest scenario. Use it if you want to save all external resources in one folder.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setExportFontResources(true);
saveOptions.setResourceFolder("C:\Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Resources\Test.001.png
C:\Resources\Test.calibril.ttf
C:\Resources\Test.css
{{< /highlight >}}

\2.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setResourceFolder("C:\Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Resources\Test.001.png
{{< /highlight >}}

Fonts and CSS style sheet are not written as external resources.

\3.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setExportFontResources(true);
saveOptions.setResourceFolder("Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Resources\Test.001.png
C:\Resources\Test.calibril.ttf
C:\Resources\Test.css
{{< /highlight >}}

When ResourceFolder specifies relative path this path is relative to output folder, where HTML document is saved.

\4.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setExportFontResources(true);
saveOptions.setResourceFolder("C:\Resources");
saveOptions.setResourceFolderAlias("http://example.com/resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Resources\Test.001.png
C:\Resources\Test.calibril.ttf
C:\Resources\Test.css
{{< /highlight >}}

In this scenario "http://example.com/resources" alias is used to construct URIs of all resources.

\5.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setExportFontResources(true);
saveOptions.setResourceFolderAlias("http://example.com/resources");
doc.aave("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Test.001.png
C:\Test.calibril.ttf
C:\Test.css
{{< /highlight >}}

In this scenario "http://example.com/resources" alias is used to construct URIs of all resources.

\6.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External;
saveOptions.setCssStyleSheetFileName("C:\Css\");
saveOptions.setExportFontResources(true);
saveOptions.setResourceFolder("C:\Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Css\Test.css
C:\Resources\Test.001.png
C:\Resources\Test.calibril.ttf
{{< /highlight >}}

\7.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setExportFontResources(true);
saveOptions.setFontsFolder("C:\Fonts");
saveOptions.setResourceFolder("C:\Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Fonts\Test.calibril.ttf
C:\Resources\Test.001.png
C:\Resources\Test.css
{{< /highlight >}}

\8.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setExportFontResources(true);
saveOptions.setImagesFolder("C:\Images");
saveOptions.setResourceFolder("C:\Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Images\Test.001.png
C:\Resouces\Test.calibril.ttf
C:\Resources\Test.css
{{< /highlight >}}

\9.

{{< highlight csharp >}}
Document doc = new Document("C:\Test.docx");
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setCssStyleSheetType(CssStyleSheetType.External);
saveOptions.setCssStyleSheetFileName("MyStyleSheet.css");
saveOptions.setExportFontResources(true);
saveOptions.setResourceFolder("C:\Resources");
doc.save("C:\Test.html", saveOptions);
{{< /highlight >}}

**Output**

{{< highlight csharp >}}
C:\Test.html
C:\Resouces\Test.001.png
C:\Resouces\Test.calibril.ttf
C:\Resouces\MyStyleSheet.css
{{< /highlight >}}
### **WORDSNET-14762 - Added Public Property HtmlSaveOptions.ExportFontsAsBase64.**
New public property ExportFontsAsBase64 is added into the HtmlSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether fonts resources should be embedded to HTML in Base64 encoding.
/// Default is <c>false</c>.
/// </summary>
/// <remarks>
/// <p>By default, fonts are written to separate files. If this option is set to <c>true</c>, fonts will be embedded
/// into the document's CSS in Base64 encoding.</p>
/// </remarks>
public boolean ExportFontsAsBase64 {
    get { return mExportFontsAsBase64; }
    set { mExportFontsAsBase64 = value; }
}
{{< /highlight >}}

The property affects only HTML format and doesn't affect EPUB and MHTML. This is an extension to HtmlSaveOptions.ExportFontResources option and ExportFontsAsBase64 will work only if this property set to true.

**UC**

{{< highlight csharp >}}
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.setExportFontResources(true);
saveOptions.ExportFontsAsBase64(true);
doc.save(fileName, saveOptions);
{{< /highlight >}}
