---
title: Public API Changes in Aspose.Words 14.6.0
type: docs
weight: 60
url: /net/public-api-changes-in-aspose-words-14-6-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.6.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **AddFontSubstitutes, GetFontSubstitutes and SetFontSubstitutes Methods Added to FontSettings**

Previously font substitution mechanism (fonts to be used if some font is missing in system) was hard coded inside Aspose.Words code base and there was no way in public API to manually customize it. Now, following three new public static methods are added in FontSettings class:

**AddFontSubstitutes**

{{< highlight csharp >}}
/// <summary>
/// Adds substitute (alternative) font names for given original font name
/// </summary>
/// <param name="originalFontName">Original font name</param>
/// <param name="substituteFontNames">List of alternative font names to be used if original font is not presented in system.</param>
public static void AddFontSubstitutes(string originalFontName, params string[] substituteFontNames);
{{< /highlight >}}

**GetFontSubstitutes**

{{< highlight csharp >}}
/// <summary>
/// Returns array containing alternative font names to be used if original font is not presented in system.
/// </summary>
/// <param name="originalFontName">Original font name</param>
/// <returns></returns>
public static string[] GetFontSubstitutes(string originalFontName)
{{< /highlight >}}

**SetFontSubstitutes**

{{< highlight csharp >}}
/// <summary>
/// Override substitute (alternative) font names for given original font name
/// </summary>
/// <param name="originalFontName">Original font name</param>
/// <param name="substituteFontNames">List of alternative font names to be used if original font is not presented in system.</param>
public static void SetFontSubstitutes(string originalFontName, params string[] substituteFontNames)
{{< /highlight >}}

Now customers can customize substitute fonts if needed (with default Aspose substitutes remaining)

**Usage**

{{< highlight csharp >}}
FontSettings.AddFontSubstitutes("Microsoft YaHei", "MSungGB18030C-Medium");
Document doc = new Document(MyDir + "input.docx");
doc.Save("out.pdf");
{{< /highlight >}}

### **CustomPropertiesExport Property Added to PdfSaveOptions**

Previously, there was an option (ExportCustomPropertiesAsMetadata) to control how document's custom properties were exported to Pdf document. Now, this property is obsolete, instead the following new property is added:

**CustomPropertiesExport Property**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining the way <see cref="Document.CustomDocumentProperties"/> are exported to PDF file.
/// Default value is <see cref="PdfCustomPropertiesExport.None"/>.
/// </summary>
public PdfCustomPropertiesExport CustomPropertiesExport {get;set;}
{{< /highlight >}}

It provides new functionality - export custom properties of document to Pdf as entries in /Info dictionary.

**Usage**

{{< highlight csharp >}}
doc.CustomDocumentProperties.Add("prop1", true);
doc.CustomDocumentProperties.Add("prop2", 10);
PdfSaveOptions options = new PdfSaveOptions();

// Export custom properties as entries in /Info dictionary.
options.CustomPropertiesExport=PdfCustomPropertiesExport.Standard;
doc.Save("MyDocument.pdf", options);
{{< /highlight >}}

Export custom properties as metadata is still available, now using this property.

**Usage**

{{< highlight csharp >}}
doc.CustomDocumentProperties.Add("prop1", true);
doc.CustomDocumentProperties.Add("prop2", 10);
PdfSaveOptions options = new PdfSaveOptions();

// Export custom properties as Xmp-metadata.
options.CustomPropertiesExport=PdfCustomPropertiesExport.Metadata;
doc.Save("MyDocument.pdf", options);
{{< /highlight >}}

### **Footnote and Endnote References now can be Rendered as Hyperlinks into Output PDF**

Footnote/endnote references PDF rendering is now controlled by **PdfSaveOptions.CreateNoteHyperlinks** property. If it is set to true then footnote/endnote references in main text story are rendered into active hyperlinks. When clicked, the hyperlink will lead to the corresponding footnote/endnote. The default value is false.

**Usage**

{{< highlight csharp >}}
PdfSaveOptions options = new PdfSaveOptions();

// Generate hyperlinks for footnote/endnote references
options.CreateNoteHyperlinks = true;
doc.Save(MyDir +"MyDocument.pdf", options);
{{< /highlight >}}

### **Insertion of HTML Fragments With Formatting Specified in DocumentBuilder Supported**

The InsertHtml method of the DocumentBuilder class now allows users to choose what formatting will be used as a base for inserted HTML fragments. A new overloaded version of InsertHtml has been added, whose argument useBuilderFormatting controls this behavior.

When useBuilderFormatting is false, which is default, formatting specified in DocumentBuilder is ignored, and formatting of inserted text is based on default HTML formatting. In this case, inserted text looks as in browsers.

When useBuilderFormatting is true, formatting of inserted text is based on formatting specified in DocumentBuilder. Note that useBuilderFormatting chooses only base formatting of inserted text, and do not affect formatting directly specified in the HTML fragment.

The following example illustrates the difference between the two modes:

**Usage**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.ParagraphFormat.LeftIndent = 72;
builder.Font.Name = "Arial";
builder.Font.Size = 24;
bool useBuilderFormatting = ...
builder.InsertHtml("<p style='color:red'><b>Text</b></p>", useBuilderFormatting);
{{< /highlight >}}

In this example, if useBuilderFormatting is false, the inserted paragraph will have no left indent and will use the 'Times New Roman' 12pt font, which is the default HTML font and indent. If useBuilderFormatting is true, the inserted paragraph will be indented by 1 inch (72 points) and will use the 'Arial' 24pt font, as specified in DocumentBuilder. However, in both cases the inserted text will be bold and red, as specified in the HTML fragment.

### **Automatically Tracking Programmatically Made Revision Changes on Document Supported**

Following public methods were added to start/stop automatic revision tracking. 

**Usage**

{{< highlight csharp >}}
Document.StartTrackRevisions(string author, DateTime dateTime);
Document.StartTrackRevisions(string author);
Document.StopTrackRevisions();
{{< /highlight >}}

Note that these methods has no correlation with Document.TrackRevisions property so setting this property has no effect to Aspose.Words. Customer should explicitly call StartTrackRevision method to start automatically revision tracking in Aspose.Words.

Currently formatting changes are not tracked.

There are few limitation in current implementation. Revision tracking is suspended (node changes are not tracked) during the following methods:

1. Field updating - Document.UpdateFields() method
1. Field insertion - DocumentBuilder.InsertField() method
1. Text replace - Range.Replace() method
1. Mail merge - MailMerge.Execute() method.

**UC**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("hello");
                    // this is not tracked
doc.StartTrackRevisions("amorozov");
builder.Writeln("message from amorozov");
    // this is marked as inserted by amorozov
doc.StartTrackRevisions("ddarkin");
builder.Writeln("comment from Denis");
       // this is marked as inserted by ddarkin
doc.StartTrackRevisions("rk", DateTime.Now);
doc.RemoveAllChildren();
                     // both paragraphs inserted above are marked as deleted
doc.StopTrackRevisions();
builder.Writeln("let's start it all over");
  // this is not marked because tracking has been stopped.
{{< /highlight >}}

### **Run.Font.Name Returns NameFarEast in Case of Chinese Text**

Previously, we always returned NameAscii attribute value for public Run.Font.Name property getter. Now, the behavior is slightly changed. If source run has FarEast character category then Run.Font.Name returns NameFarEast attribute value like Microsoft Word does.
