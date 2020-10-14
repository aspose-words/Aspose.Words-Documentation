---
title: Aspose.Words for Android 17.2.0 Release Notes
type: docs
weight: 110
url: /java/aspose-words-for-android-17-2-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Android 17.2.0](https://downloads.aspose.com/words/androidjava/new-releases/aspose.words-for-android-17.2.0/)

{{% /alert %}}

## Major Features

There are 22 improvements and fixes in this regular monthly release. The most notable are:

- Aspose Words for Android is delivered as a single JAR file
- The size of the file is reduced
- Easy Gradle integration
- Full support of digital signatures
- Performance improvements
- Support of Metered License

Aspose.Words for Android also includes the current Aspose.Words for Java features. See the full list of changes [Aspose.Words for Java 17.2.0 Release Notes]() 

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSANDROID-225|Pict images cannot be rendered|Bug|
|WORDSANDROID-224|Text disappears in Android 4th and 5th|Bug|
|WORDSANDROID-223|TestDataTableReader.testReadDataSet: ColumnOrdinal has different values|Bug|
|WORDSANDROID-226|ItalicBold text disappears|Bug|
|WORDSANDROID-221|Provider com.bea.xml.stream.MXParserFactory not found|Bug|
|WORDSANDROID-183|Unable to convert a DrawingML to PDF|Bug|
|WORDSANDROID-190|Thai text is rendering as boxes in output Pdf|Bug|
|WORDSANDROID-192|Docx to Pdf conversion issue with table rendering|Bug|
|WORDSANDROID-191|Chinese/English text font rendering issue in Pdf|Bug|
|WORDSANDROID-206|TestDigitalSignature.testSignDocxInplace NullPointerException: Attempt to invoke interface method|Bug|
|WORDSANDROID-103|Digital Signatures: assertions fail|Bug|
|WORDSANDROID-199|testDigitalSignaturesDoc: Verification fails|Bug|
|WORDSANDROID-208|Reporting module fails with VerifyError|Bug|
|WORDSANDROID-182|Provide configuration to integrate in Gradle based build system|Task|
|WORDSANDROID-142|Some documents were canonicalized by XOM differently|Bug|
|WORDSANDROID-188|Text missing from converted PDF on Nexus 7 & 9|Bug|
|WORDSANDROID-131|TestRtfTokenizer: AssertionFailedError|Bug|
|WORDSANDROID-184|java.nio.bufferunderflowexception occurs during rendering to PDF|Bug|
|WORDSANDROID-189|java.nio.BufferUnderflowException is thrown while using Aspose.Words.Layout API|Bug|
|WORDSANDROID-207|IllegalStateException: Certificate must contain private key.|Bug|
|WORDSANDROID-194|Rebuild Aspose.Words for Android and ship it in one piece (remove .apk)|New Feature|
|WORDSANDROID-177|Bullet disappeared|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.2.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### WORDSNET-14589 and WORDSNET-14590 - Added public properties HtmlSaveOptions.ResourceFolder and HtmlSaveOptions.ResourceFolderAlias

{{% alert color="primary" %}} 

Check the detailed article on [Working with HtmlSaveOptions Properties](https://docs.aspose.com/display/wordsandroid/Converting+a+Microsoft+Word+document+using+save+Method#ConvertingaMicrosoftWorddocumentusingsaveMethod-WorkingwithHtmlSaveOptionsProperties)

{{% /alert %}} 

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

Behavior of properties FontsFolder, FontsFolderAlias, ImagesFolder, ImagesFolderAlias and CssStyleSheetFileName are not changed. Note that CssStyleSheetFileName properties is used both for specifying folder name and file name. Order of priority in which Aspose.Words decides into what folder to write external CSS style sheet:

1. Folder specified in CssStyleSheetFileName property.
2. Folder specified in ResourceFolder property.
3. Output folder where HTML document is saved.

Order of priority in which Aspose.Words decides what name external CSS style sheet has:
1. File name specified in CssStyleSheetFileName property.
2. Output HTML file name with ".css" extension.

Order of priority in which Aspose.Words decides into what folder to write fonts:
1. Folder specified in FontsFolder property.
2. Folder specified in ResourceFolder property.
3. Folder where code assembly is located.

Order of priority in which Aspose.Words decides into what folder to write images:
1. Folder specified in ImagesFolder property.
2. Folder specified in ResourceFolder property.
3. Folder where code assembly is located.

Note that when relative path is specified, FontsFolder and ImagesFolder are relative to folder where code assembly is located, ResourceFolder and CssStyleSheetFileName are relative to output folder where HTML document is located.

Here are some use cases. In examples below input test document has name Test.docx, output HTML document has name Test.html. Input document has one image Test.001.png and one font Test.calibril.ttf. By default external CSS style sheet has name Test.css.

1. Simplest scenario. Use it if you want to save all external resources in one folder.

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

2.

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

3.

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

4.

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

In this scenario "<http://example.com/resources>" alias is used to construct URIs of all resources.

5.

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

In this scenario "<http://example.com/resources>" alias is used to construct URIs of all resources.

6.

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

7.

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

8.

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

9.

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

### WORDSNET-14762 - Added Public Property HtmlSaveOptions.ExportFontsAsBase64.

Check the detailed article on [Export Fonts to HTML in Base64 Encoding](https://docs.aspose.com/display/wordsandroid/Converting+a+Microsoft+Word+document+using+save+Method#ConvertingaMicrosoftWorddocumentusingsaveMethod-ExportFontstoHTMLinBase64Encoding)

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

{{% alert color="primary" %}} 

Since the code base of Aspose.Words for Android matches the code of relevant .NET and Java version, most of the changes, enhancements and fixes included in the Aspose.Words for .NET 16.10.0, Aspose.Words for .NET 16.11.0, Aspose.Words for .NET 16.12.0, Aspose.Words for .NET 17.1.0, Aspose.Words for .NET 17.2.0, Aspose.Words for Java 16.10.0, Aspose.Words for Java 16.11.0, Aspose.Words for Java 16.12.0, Aspose.Words for Java 17.1.0 and Aspose.Words for Java 17.2.0 are also included in this Aspose.Words for Android 17.2.0.

{{% /alert %}}
