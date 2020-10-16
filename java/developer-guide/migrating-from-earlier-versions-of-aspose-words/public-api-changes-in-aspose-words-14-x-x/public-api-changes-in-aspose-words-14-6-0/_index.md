---
title: Public API Changes in Aspose.Words 14.6.0
type: docs
weight: 60
url: /java/public-api-changes-in-aspose-words-14-6-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.6.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## AddFontSubstitutes, GetFontSubstitutes and SetFontSubstitutes Methods Added to FontSettings

Previously font substitution mechanism (fonts to be used if some font is missing in system) was hard coded inside Aspose.Words code base and there was no way in public API to manually customize it. Now, following three new public static methods are added in FontSettings class:

**addFontSubstitutes**

{{< highlight csharp >}}
/** 
 Adds substitute (alternative) font names for given original font name
 @param originalFontName Original font name
 @param substituteFontNames List of alternative font names to be used if original font is not presented in system.
*/
public static void addFontSubstitutes(String originalFontName, params String[] substituteFontNames);
{{< /highlight >}}

**getFontSubstitutes**

{{< highlight csharp >}}
/** 
 Returns array containing alternative font names to be used if original font is not presented in system.
 @param originalFontName Original font name
 @return 
*/
public static String[] getFontSubstitutes(String originalFontName)
{{< /highlight >}}

**setFontSubstitutes**

{{< highlight csharp >}}
/** 
 Override substitute (alternative) font names for given original font name
 @param originalFontName Original font name
 @param substituteFontNames List of alternative font names to be used if original font is not presented in system.
*/
public static void setFontSubstitutes(String originalFontName, params String[] substituteFontNames)
{{< /highlight >}}

Now customers can customize substitute fonts if needed (with default Aspose substitutes remaining)

**Usage**

{{< highlight csharp >}}
FontSettings.addFontSubstitutes("Microsoft YaHei", "MSungGB18030C-Medium");
Document doc = new Document(getMyDir() + "input.docx");
doc.save(getMyDir() + "out.pdf");
{{< /highlight >}}

## CustomPropertiesExport Property Added to PdfSaveOptions

Previously, there was an option (ExportCustomPropertiesAsMetadata) to control how document's custom properties were exported to Pdf document. Now, this property is obsolete, instead the following new property is added:

**CustomPropertiesExport Property**

{{< highlight csharp >}}
/** 
 Gets or sets a value determining the way <see cref="Document.CustomDocumentProperties"/> are exported to PDF file.
 Default value is <see cref="PdfCustomPropertiesExport.None"/>.
*/
public final PdfCustomPropertiesExport getCustomPropertiesExport();
public final void setCustomPropertiesExport(PdfCustomPropertiesExport value)
{{< /highlight >}}

It provides new functionality - export custom properties of document to Pdf as entries in /Info dictionary.

**Usage**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
doc.getCustomDocumentProperties().add("prop1", true);
doc.getCustomDocumentProperties().add("prop2", 10);
PdfSaveOptions options = new PdfSaveOptions();

// Export custom properties as entries in /Info dictionary.
options.setCustomPropertiesExport(PdfCustomPropertiesExport.STANDARD);
doc.save(getMyDir() + "MyDocument.pdf", options);
{{< /highlight >}}

Export custom properties as metadata is still available, now using this property.

**Usage**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
doc.getCustomDocumentProperties().add("prop1", true);
doc.getCustomDocumentProperties().add("prop2", 10);
PdfSaveOptions options = new PdfSaveOptions();

// Export custom properties as Xmp-metadata.
options.setCustomPropertiesExport(PdfCustomPropertiesExport.METADATA);
doc.save(getMyDir() + "MyDocument.pdf", options);
{{< /highlight >}}

## Footnote and Endnote References now can be Rendered as Hyperlinks into Output PDF

Footnote/endnote references PDF rendering is now controlled by **PdfSaveOptions.CreateNoteHyperlinks** property. If it is set to true then footnote/endnote references in main text story are rendered into active hyperlinks. When clicked, the hyperlink will lead to the corresponding footnote/endnote. The default value is false.

**Usage**

{{< highlight csharp >}}
PdfSaveOptions options = new PdfSaveOptions();

// Generate hyperlinks for footnote/endnote references
options.setCreateNoteHyperlinks(true);
doc.save(getMyDir() + "MyDocument.pdf", options);
{{< /highlight >}}

## Insertion of HTML Fragments With Formatting Specified in DocumentBuilder Supported

The InsertHtml method of the DocumentBuilder class now allows users to choose what formatting will be used as a base for inserted HTML fragments. A new overloaded version of InsertHtml has been added, whose argument useBuilderFormatting controls this behavior.

When useBuilderFormatting is false, which is default, formatting specified in DocumentBuilder is ignored, and formatting of inserted text is based on default HTML formatting. In this case, inserted text looks as in browsers.

When useBuilderFormatting is true, formatting of inserted text is based on formatting specified in DocumentBuilder. Note that useBuilderFormatting chooses only base formatting of inserted text, and do not affect formatting directly specified in the HTML fragment.

The following example illustrates the difference between the two modes:

**Usage**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.getParagraphFormat().setLeftIndent(72);
builder.getFont().setName("Arial");
builder.getFont().setSize(24);
boolean useBuilderFormatting = ...;
builder.insertHtml("<p style='color:red'><b>Text</b></p>", useBuilderFormatting);
{{< /highlight >}}

In this example, if useBuilderFormatting is false, the inserted paragraph will have no left indent and will use the 'Times New Roman' 12pt font, which is the default HTML font and indent. If useBuilderFormatting is true, the inserted paragraph will be indented by 1 inch (72 points) and will use the 'Arial' 24pt font, as specified in DocumentBuilder. However, in both cases the inserted text will be bold and red, as specified in the HTML fragment.

## Automatically Tracking Programmatically Made Revision Changes on Document Supported.

Following public methods were added to start/stop automatic revision tracking. 

**Usage**

{{< highlight csharp >}}
Document.startTrackRevisions(String author, Date date);
Document.startTrackRevisions(String author);
Document.stopTrackRevisions();
{{< /highlight >}}

Note that these methods has no correlation with Document.TrackRevisions property so setting this property has no effect to Aspose.Words. Customer should explicitly call StartTrackRevision method to start automatically revision tracking in Aspose.Words.

Currently formatting changes are not tracked.

There are few limitation in current implementation. Revision tracking is suspended (node changes are not tracked) during the following methods:

1. Field updating - Document.updateFields() method
1. Field insertion - DocumentBuilder.insertField() method
1. Text replace - Range.replace() method
1. Mail merge - MailMerge.execute() method.

**UC**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.writeln("hello");
                    // this is not tracked
doc.startTrackRevisions("amorozov");
builder.writeln("message from amorozov");
    // this is marked as inserted by amorozov
doc.startTrackRevisions("ddarkin");
builder.writeln("comment from Denis");
       // this is marked as inserted by ddarkin
doc.startTrackRevisions("rk", new Date());
doc.removeAllChildren();
                     // both paragraphs inserted above are marked as deleted
doc.stopTrackRevisions();
builder.writeln("let's start it all over");
  // this is not marked because tracking has been stopped.
{{< /highlight >}}

## Run.Font.Name Returns NameFarEast in Case of Chinese Text

Previously, we always returned NameAscii attribute value for public Run.Font.Name property getter. Now, the behavior is slightly changed. If source run has FarEast character category then Run.Font.Name returns NameFarEast attribute value like Microsoft Word does.
