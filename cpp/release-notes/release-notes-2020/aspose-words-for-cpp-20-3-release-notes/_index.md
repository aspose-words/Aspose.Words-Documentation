---
title: Aspose.Words for CPP 20.3 Release Notes
type: docs
weight: 40
url: /cpp/aspose-words-for-cpp-20-3-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 20.3](https://www.nuget.org/packages/Aspose.Words.CPP/20.3)

{{% /alert %}} 
## **Major Features**
This is a regular monthly release, we continue to add features from Aspose.Words for .Net.
## **Limitations and API Differences**
Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support some cryptography features - it cannot verify and sign documents.
- The current release does not support downloading remote resources from the Internet.
- The current release does not support the Metered license.
- The current release does not support a multipage TIFF format.
- The current release does not support LINQ and Reporting features.
- The current release has limited support for database features - C++ does not have a common API for DB like .Net System.Data.
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :-: | :-: | :-: |
|WORDSNET-19568|Provide the ability to set different attributes of Shape inside IFieldMergingCallback.ImageFieldMerging|New Feature|
|WORDSNET-19912|FindReplaceOptions new properties|New Feature|
|WORDSNET-20012|Implement color change for side faces|New Feature|
|WORDSNET-3297|Consider adding an ability to get a column of table by bookmark|New Feature|
|WORDSNET-19935|Implement correct contour rendering for volume shapes|New Feature|
|WORDSNET-19469|Axis, data and legend labels in the chart are missing/wrong/in different colors in PDF converted from DOCX|Enhancement|
|WORDSNET-19815|Do not convert ODT chart to shape|Enhancement|
|WORDSNET-19998|Implement correct contour rendering for nonconvex shapes|Enhancement|
|WORDSCPP-925|Memory leak in Aspose.Words for C++|Bug|
|WORDSCPP-934|Aspose.Words.CPP Memory Leak|Bug|
|WORDSCPP-939|Dynamically Loading Words DLL Crashes the App with Access violation Exception|Bug|
|WORDSNET-15635|Arrow shape shifts towards left in rendered document|Bug|
|WORDSNET-19233|Extra blank page when saving MHTML into JPG/PNG/PDF|Bug|
|WORDSNET-18325|DOCX to PDF conversion issue with Arabic text rendering|Bug|
|WORDSNET-18389|Some Arabic characters look different in PDF rendition|Bug|
|WORDSNET-17392|Document.PageCount returns incorrect value|Bug|
|WORDSNET-18583|DOCX to PDF conversion issue with hanging indent of text|Bug|
|WORDSNET-19670|Analyze if .NET Standard can cover Xamarin platforms|Bug|
|WORDSNET-19559|Indenting of bullet point in converted TIFF file|Bug|
|WORDSNET-19960|System.StackOverflowException is thrown while loading DOC|Bug|
|WORDSNET-14306|DOCX to PDF conversion issue with image rendering|Bug|
|WORDSNET-14729|Word to PDF conversion has issues with images|Bug|
|WORDSNET-20039|System.InvalidCastException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-17340|Issue in PDF conversion with images and text field|Bug|
|WORDSNET-19717|Formatting of double quote is lost after calling Document.UpdateFields|Bug|
|WORDSNET-18540|DOCX to PDF conversion issue with text position|Bug|
|WORDSNET-19589|PDF rendition is not accurate and few pages are missed|Bug|
|WORDSNET-19970|Generated html cuts off picture and overlaps footer content|Bug|
|WORDSNET-19971|Word save to PDF numbering problem in List|Bug|
|WORDSNET-19967|System.InvalidCastException is thrown while saving document to PDF after comparing DOCXs|Bug|
|WORDSNET-19957|Floating point numbers aren't saved in CustomDocumentProperties for RTF files|Bug|
|WORDSNET-19726|Text Columns are changed after using DocumentBuilder.InsertDocument|Bug|
|WORDSNET-19818|Footnotes issue while converting to PDF|Bug|
|WORDSNET-19842|Field "SaveDate" is initially not set|Bug|
|WORDSNET-19905|Setting any Value for Font.NoProofing Turns Off Proofing in RTF Document|Bug|
|WORDSNET-19987|Tables are missing while XML to DOCX document conversion|Bug|
|WORDSNET-19204|NumberFormat.FormatCode does not work for Currency symbols|Bug|
|WORDSNET-19988|Garbled characters when loading RTF and saving as DOCX|Bug|
|WORDSNET-19989|Incorrect rendering of the legend item of the series with border|Bug|
|WORDSNET-19991|Page margins are changed after inserting document into template using InsertDocument|Bug|
|WORDSNET-19997|ODT document layout is changed|Bug|
|WORDSNET-19909|DOCX>HTML>DOCX conversion issue with indentation and spacing|Bug|
|WORDSNET-19276|Extra text appears besides table in PDF|Bug|
|WORDSNET-19999|Remove obsolete property DigitalSignature.Certificate and CertificateHolder.Create|Bug|
|WORDSNET-18883|Rendering order for floating TextFrame|Bug|
|WORDSNET-20018|AutoOpen Macro does not work after calling VBAProject.Clone using C#|Bug|
|WORDSNET-18872|Document language is changed from Hebrew to Arabic after DOCX>HTML>DOCX|Bug|
|WORDSNET-19776|PRINTDATE does not render correctly in output PDF|Bug|
|WORDSNET-18884|Word to PDF or SVG conversion - repeated table headers not being displayed|Bug|
|WORDSNET-19918|NullReference exception if call UpdateFields before Save|Bug|
|WORDSNET-19919|Exception while converting HTML to Words|Bug|
|WORDSNET-19786|Hyperlink is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-19927|Inserting Table into document: font size is missing in inserted table|Bug|
|WORDSNET-19930|Vertical character has been changed to horizontal character in PDF|Bug|
|WORDSNET-19928|Japanese text - incorrect line wrapping in PDF|Bug|
|WORDSNET-19937|Aspose.Words Detects PDF Files as TEXT|Bug|
|WORDSNET-19417|While converting to PDF the code throws NullPointerException on saving document|Bug|
|WORDSNET-19836|Fails insert list during saving to existing .md document|Bug|
|WORDSNET-19954|Page background and text color is changed after RTF to TIFF conversion|Bug|
|WORDSNET-19147|NodeRendererBase.Save does not render OfficeMath correctly|Bug|
|WORDSNET-19150|OfficeMath rendering is incorrect|Bug|
|WORDSNET-19148|Problem with OfficeMath rendering|Bug|
|WORDSNET-19451|Image is lost after conversion from DOCX to PDF at Azure|Bug|
|WORDSNET-16662|GroupShape truncates in rendered PDF|Bug|
|WORDSNET-13800|Diagram gets messed up during open/save to PDF|Bug|
|WORDSNET-14754|Japanese 'onbiki' symbol rendered incorrectly after conversion from .RTF|Bug|
|WORDSNET-16999|A Drawing renders partially in generated PDF|Bug|
|WORDSNET-17339|Issue in PDF conversion with images and text field|Bug|
|WORDSNET-8588|Symbols are rotated when DOCX is converted to PDF|Bug|
|WORDSNET-8665|Table position is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-19690|Assertion in debug code when saving to PDF|Bug|
|WORDSNET-19934|Incorrect page count value for .ODT format|Bug|
|WORDSNET-15353|Image position is changed in output PDF|Bug|
|WORDSNET-19986|Application hangs when opening HTM file|Bug|
## **Public API and Backward Incompatible Changes**
This section lists public API changes that were introduced in Aspose.Words 20.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.
### **Added a new public property SaveOptions.UpdateLastPrintedProperty**
Related issue: **WORDSNET-19776**

Added a new public property SaveOptions.UpdateLastPrintedProperty:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether the BuiltInDocumentProperties.LastPrinted property is updated before saving.
/// </summary>
public bool UpdateLastPrintedProperty
{{< /highlight >}}

It's true by default for FixedPageSaveOptions.
##### **Use Case:**
**.NET**

{{< highlight csharp >}}
Document doc = new Document(docPath);
SaveOptions saveOptions = new PdfSaveOptions();
saveOptions.UpdateLastPrintedProperty = false;
doc.Save(pdfPath, saveOptions);
{{< /highlight >}}


### **Added the ImageFieldMergingArgs.Shape property**
Reference: **WORDSNET-19568**

A customer requested controlling various image properties when merging an image merge field, in particular, **WrapType**. Currently, it is only possible to set image width or height using the **ImageFieldMergingArgs.ImageWidth** and **ImageFieldMergingArgs.ImageHeight** properties, respectively.

We've opted for a more generic approach and decided to provide full control over the image (or any other shape) being inserted. We've introduced the **ImageFieldMergingArgs.Shape** property:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies the shape that the mail merge engine must insert into the document.
/// </summary>
/// <remarks>
/// <p>When this property is specified, the mail merge engine ignores all other properties like <see cref="ImageFileName"/> or <see cref="ImageStream"/>
/// and simply inserts the shape into the document.</p>
/// <p>Use this property to fully control the process of merging an image merge field.
/// For example, you can specify <see cref="ShapeBase.WrapType"/> or any other shape property to fine tune the resulting node. However, please note that
/// you are responsible for providing the content of the shape.</p>
/// </remarks>
public Shape Shape { get; set; }
{{< /highlight >}}

As the summary states, this property overrides others like **ImageFileName** or **ImageStream**, i.e. the user just specifies a shape they want to insert with all necessary properties set:

**.NET**

{{< highlight csharp >}}
private class TestShapeSetFieldMergingCallback : IFieldMergingCallback
{
    void IFieldMergingCallback.FieldMerging(FieldMergingArgs args)
    {
        //  Implementation is not required.
    }
    void IFieldMergingCallback.ImageFieldMerging(ImageFieldMergingArgs args)
    {
        Shape shape = new Shape(args.Document);
        shape.Width = 1000;
        shape.Height = 2000;
        shape.WrapType = WrapType.Square;
        string imageFileName = "image.png";
        shape.ImageData.SetImage(imageFileName);
        args.Shape = shape;
    }
}
{{< /highlight >}}


### **FindReplaceOptions class is extended with new properties**
Related issue: WORDSNET-19912.

The following public properties were added to FindReplaceOptions class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either to ignore text inside delete revisions.
/// The default value is <c>false</c>.
/// </summary>
public bool IgnoreDeleted
{{< /highlight >}}

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either to ignore text inside insert revisions.
/// The default value is <c>false</c>.
/// </summary>
public bool IgnoreInserted
{{< /highlight >}}

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either to ignore text inside fields.
/// The default value is <c>false</c>.
/// </summary>
public bool IgnoreFields
{{< /highlight >}}


##### **Use Case 1. Explains how to ignore text inside delete revisions:**
**.NET**

{{< highlight csharp >}}

// Create new document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert non-revised text.
builder.Writeln("Deleted");
builder.Write("Text");

// Remove first paragraph with tracking revisions.
doc.StartTrackRevisions("author", DateTime.Now);
doc.FirstSection.Body.FirstParagraph.Remove();
doc.StopTrackRevisions();
Regex regex = new Regex("e");
FindReplaceOptions options = new FindReplaceOptions();

// Replace 'e' in document ignoring deleted text.
options.IgnoreDeleted = true;
doc.Range.Replace(regex, "*", options);
Console.WriteLine(doc.GetText());
 // The output is: Deleted\rT*xt\f

// Replace 'e' in document NOT ignoring deleted text.
options.IgnoreDeleted = false;
doc.Range.Replace(regex, "*", options);
Console.WriteLine(doc.GetText());
 // The output is: D*l*t*d\rT*xt\f
{{< /highlight >}}


##### **Use Case 2. Explains how to ignore text inside insert revisions:**
**.NET**

{{< highlight csharp >}}

// Create new document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert text with tracking revisions.
doc.StartTrackRevisions("author", DateTime.Now);
builder.Writeln("Inserted");
doc.StopTrackRevisions();

// Insert non-revised text.
builder.Write("Text");
Regex regex = new Regex("e");
FindReplaceOptions options = new FindReplaceOptions();

// Replace 'e' in document ignoring inserted text.
options.IgnoreInserted = true;
doc.Range.Replace(regex, "*", options);
Console.WriteLine(doc.GetText());
 // The output is: Inserted\rT*xt\f

// Replace 'e' in document NOT ignoring inserted text.
options.IgnoreInserted = false;
doc.Range.Replace(regex, "*", options);
Console.WriteLine(doc.GetText());
 // The output is: Ins*rt*d\rT*xt\f
{{< /highlight >}}


##### **Use Case 3. Explains how to ignore text inside fields:**
**.NET**

{{< highlight csharp >}}

// Create document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert field with text inside.
builder.InsertField("INCLUDETEXT", "Text in field");
Regex regex = new Regex("e");
FindReplaceOptions options = new FindReplaceOptions();

// Replace 'e' in document ignoring text inside field.
options.IgnoreFields = true;
doc.Range.Replace(regex, "*", options);
Console.WriteLine(doc.GetText());
 // The output is: \u0013INCLUDETEXT\u0014Text in field\u0015\f

// Replace 'e' in document NOT ignoring text inside field.
options.IgnoreFields = false;
doc.Range.Replace(regex, "*", options);
Console.WriteLine(doc.GetText());
 // The output is: \u0013INCLUDETEXT\u0014T*xt in fi*ld\u0015\f
{{< /highlight >}}
