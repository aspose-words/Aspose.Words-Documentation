---
title: Public API Changes in Aspose.Words 16.2.0
type: docs
weight: 20
url: /net/public-api-changes-in-aspose-words-16-2-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 16.2.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Fast Extraction of Plain Text from Flow-Format Documents Supported

In order to support such usecases as fast search and indexing of documents, the following static methods were exposed on the Document class:

**C#**

{{< highlight csharp >}}
public class Document
{
 ....
 public static PlaintextDocument ExtractText(string fileName)
 public static PlaintextDocument ExtractText(string fileName, LoadOptions loadOptions)
 public static PlaintextDocument ExtractText(Stream stream)
 public static PlaintextDocument ExtractText(Stream stream, LoadOptions loadOptions)
 ....
}
{{< /highlight >}}

All of the methods exposed above return the plain text representation of the document.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Contains plain-text representation of the document's content as extracted by <see cref="Document.ExtractText(string)"/> and alike.
/// </summary>
public class PlaintextDocument
{
 public string Text {get;}
 public BuiltInDocumentProperties BuiltInDocumentProperties {get;}
 public CustomDocumentProperties CustomDocumentProperties {get;}
}
{{< /highlight >}}

Presently the speed optimizations are done for DOCX and DOC.
RTF and WordML will hopefully be added in March 2016 along with further improvements for all flow-formats.

### Font Substitution Improved

WORDSNET-5907 has been resolved. Font substitution improved to mimic MS Word in case when font info in the document doesn't contains the PANOSE. Previously, in this case, Aspose.Words used to substitute fonts with FontSettings.DefaultFontName. In case when PANOSE is specified in font info, Aspose.Words still uses FontSettings.DefaultFontName.

Warning is issued with text: "Font '<font_name>' has not been found. Using '<substitution_name>' font instead. Reason: closest match according to font info from the document."

### Axis Logarithmic Scale Supported during Rendering DML Chart

WORDSNET-12130 has been resolved. Starting from 16.2.0 version, Aspose.Words supports axis logarithmic scale upon rendering DML chart.

![public-api-changes-in-aspose-words-16-2-0_1](public-api-changes-in-aspose-words-16-2-0_1)

### PageSavingCallback Introduced for all Fixed-Page based Save Formats

WORDSNET-12176 has been resolved. PageSavingCallback {allows|enables} you to control how separate pages are saved when a document is exported to fixed-page based save formats. You are able to control PageFileName for each separate page. Or you can specify the stream where the document page will be saved using PageStream property.

**C#**

{{< highlight csharp >}}
public void TestPageSavingCallbackHtmlFixed()
{
    Document doc = new Document("Test.docx");
    HtmlFixedSaveOptions htmlFixedSaveOptions = new HtmlFixedSaveOptions { PageIndex = 0, PageCount = doc.PageCount };
    htmlFixedSaveOptions.PageSavingCallback = new CustomPageFileNamePageSavingCallback(); 
    doc.Save("out.html", htmlFixedSaveOptions);
}
{{< /highlight >}}

**C#**

{{< highlight csharp >}}
/// <summary>
/// Custom PageFileName is specified.
/// </summary>
private class CustomPageFileNamePageSavingCallback : IPageSavingCallback
{
    public void PageSaving(PageSavingArgs args)
    {
        // Specify name of the output file for the current page.
        args.PageFileName = string.Format(@"C:\Temp\Page_{0}.html", args.PageIndex);
    }
}
{{< /highlight >}}

Or you can specify PageStream:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Custom PageStream is specified.
/// </summary>
private class CustomPageStreamPageSavingCallback : IPageSavingCallback
{
    public void PageSaving(PageSavingArgs args)
    {
        // Specify memory stream for the current page.
        args.PageStream = new MemoryStream();
        args.KeepPageStreamOpen = true;
    }
}
{{< /highlight >}}

PageSavingCallback is available for following classes:

- HtmlFixedSaveOptions
- ImageSaveOptions
- PdfSaveOptions
- PsSaveOptions
- SvgSaveOptions
- SwfSaveOptions
- XamlFixedSaveOptions
- XpsSaveOptions

### Ability to Determine if a Run or a Paragraph has Format Changes Added

WORDSNET-12499 has been resolved and the following property is added into the Inline and Paragraph classes:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Returns true if this object was formatted in Microsoft Word while change tracking was enabled.
/// </summary>
public bool IsFormatRevision { get; }
{{< /highlight >}}

### Feature to Get-Set Alt Text Title Property of Shape Added

WORDSNET-12918 has been resolved. Starting from 16.2.0 version, Aspose.Words starts supporting Alt Text Title.

![public-api-changes-in-aspose-words-16-2-0_2](public-api-changes-in-aspose-words-16-2-0_2.png)


In case of older format conversion MS Word formats following string "Title: titleText - Description: descText", if there is no description "Title: titleText", if there is no title then just "descText". Aspose.Words does the same now. And you can also get/set shape title like this: 

**C#**

{{< highlight csharp >}}
Node[] shapes = doc.GetChildNodes(NodeType.Shape, true).ToArray();
Shape shape0 = (Shape)shapes[0];

// Get shape title.
Console.WriteLine(shape0.Title);

// Set new shape title.
shape0.Title = "New Shape Title";
{{< /highlight >}}
