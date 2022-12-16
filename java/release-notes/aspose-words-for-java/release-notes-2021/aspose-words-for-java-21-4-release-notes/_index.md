---
title: 21.4 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 21.4 Release Notes
linktitle: Aspose.Words for Java 21.4 Release Notes
description: "Aspose.Words for Java 21.4 Release Notes – the latest updates and fixes."
type: docs
weight: 9
url: /java/aspose-words-for-java-21-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 21.4](https://releases.aspose.com/words/java/21.4/).

{{% /alert %}}

## Major Features

There are 102 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to remove unused BuiltIn Styles.
- The Fill class was extended with a functionality for processing solid fills.
- Public API of Structured Document Tag range was extended.
- Document.getRange().replace() bulk bug fixing and improvement.
- JavaDoc documentation update and bug fixes.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-21246 | Provide more properties/methods in   StructuredDocumentTagRangeStart Class | New Feature |
| WORDSNET-21991 | Support advanced typography in SkiaSharp image renderer | New Feature |
| WORDSNET-5643 | Consider providing a way to save user specified page ranges when saving   to flow formats | Enhancement |
| WORDSNET-20580 | Improve list item padding simulation in Html list writer | Enhancement |
| WORDSNET-21597 | Add "IsDecorative" flag for DML shapes | Enhancement |
| WORDSNET-3449 | Improve support of large files | Enhancement |
| WORDSJAVA-2259 | Saving docx to pdf with Arabic font issue | Bug |
| WORDSJAVA-2314 | TableSubstitutionRule.save should take outputStream | Bug |
| WORDSJAVA-2455 | Document.getRange().replace() with FindReplaceOptions set to useSubstitutions(true) doesn't replace text. | Bug |
| WORDSJAVA-2505 | Document.getRange().replace() with useSubstitutions FindReplaceOptions failed with NullPointerException | Bug |
| WORDSJAVA-2528 | insertOleObject failed when using InputStream parameter | Bug |
| WORDSJAVA-2541 | NetInputStream throws Exception if skip number is bigger than stream   length | Bug |
| WORDSJAVA-2546 | Document.getRange().replace() returns one extra symbol when regular   expressions with substitutions are used. | Bug |
| WORDSNET-21966 | DOCX to PDF conversion: System.ArgumentOutOfRangeException: 'Index was   out of range. | Bug |
| WORDSNET-21801 | URL is changed after Word to PDF conversion | Bug |
| WORDSNET-20987 | Unexpected format change revision appears for a Table after Compare | Bug |
| WORDSNET-20190 | Chart series are lost after DOCX to PDF conversion | Bug |
| WORDSNET-20191 | Chart X-axis and Axis Title render incorrectly in output PDF | Bug |
| WORDSNET-22024 | System.InvalidOperationException: NC sync failed occurs upon comparing   DOCX files | Bug |
| WORDSNET-22016 | Provide example to process BARCODE fields | Bug |
| WORDSNET-21400 | Aspose.Words enters a infinite loop when converting file from DOCX to PDF | Bug |
| WORDSNET-21636 | Content formatting changed after delete XmlMapping | Bug |
| WORDSNET-21977 | Unused styles are not cleaned from DOCX | Bug |
| WORDSNET-21979 | Does not update SDT content in document.xml parts after calling   UpdatePageLayout() | Bug |
| WORDSNET-21981 | FileCorruptedException is thrown while importing DOC | Bug |
| WORDSNET-21983 | Uneoected FileCorruptedException is thrown while importing document | Bug |
| WORDSNET-20758 | Table does not export correctly in output PDF | Bug |
| WORDSNET-21986 | Track changes - Ghost formatted table | Bug |
| WORDSNET-21959 | DOCX to HTML: Incorrect SVG image rendering | Bug |
| WORDSNET-21997 | w:instrText is added in document header after re-saving DOCX | Bug |
| WORDSNET-21999 | System.ArgumentOutOfRangeException is thrown while saving DOCX to PDF | Bug |
| WORDSNET-21998 | w:instrText is added in comments.xml after re-saving DOCX | Bug |
| WORDSNET-16679 | Metafile is rendered improperly | Bug |
| WORDSNET-16689 | Spacing between asian and latin numbers is rendered improperly | Bug |
| WORDSNET-4539 | Setting FormField text to empty does not display default text in MS Word | Bug |
| WORDSNET-16698 | When MetafileRenderingMode.Bitmap is used, quality of image is not good | Bug |
| WORDSNET-20597 | Incorrect automatic font color inside VML shape | Bug |
| WORDSNET-21663 | Vertical Chinese Text Collapses into a Single Line in HTML Fixed | Bug |
| WORDSNET-16509 | Not able to save as PDF | Bug |
| WORDSNET-16971 | Cell background color is incorrect in .NET Standard | Bug |
| WORDSNET-21838 | Docx \-> PDF: conversion never ends for a file | Bug |
| WORDSNET-21862 | Conversion from ODT to PDF throws IndexOutOfRangeException | Bug |
| WORDSNET-21680 | Missed footnotes during conversion between DOCX and Markdown | Bug |
| WORDSNET-22025 | LINQ Reporting Engine throws NullPointerException when   ReportBuildOptions.RemoveEmptyParagraphs is used | Bug |
| WORDSNET-21875 | Table rows are lost after PDF to DOCX conversion | Bug |
| WORDSNET-18770 | Unable to save the HTML version of DOCX file | Bug |
| WORDSNET-18092 | Document.UpdateFields method throws System.InvalidOperationException | Bug |
| WORDSNET-21330 | Rendering of some Japanese characters changes their orientation | Bug |
| WORDSNET-21886 | Hyperlink DisplayResult not present in result DOTX document | Bug |
| WORDSNET-21859 | Text from paragraphs with zero line spacing becomes visible in rendered   documents | Bug |
| WORDSNET-18969 | List bullet image is duplicated after conversion to HTML | Bug |
| WORDSNET-21685 | Image dimension is changed while importing Markdown | Bug |
| WORDSNET-21691 | ArgumentOutOfRangeException is thrown when call UpdatePageLayout | Bug |
| WORDSNET-15169 | Direction of Text Characters is changed in DOCX to JPG conversion | Bug |
| WORDSNET-21096 | Infinite loop on call of UpdatePageLayout | Bug |
| WORDSNET-21899 | DOC to PDF conversion issue with Chinese text rendering | Bug |
| WORDSNET-21722 | Some tests fail sometimes while running in parallel | Bug |
| WORDSNET-21435 | Styles are not imported correctly after HTML to DOCX conversion | Bug |
| WORDSNET-21733 | Combo Custom Combination Chart - Updating a Combinated Chart Corrupts   Document | Bug |
| WORDSNET-21151 | Bar char is not rendered correctly | Bug |
| WORDSNET-21910 | System.IndexOutOfRangeException occurs upon DOCX to PDF conversion | Bug |
| WORDSNET-21911 | System.ArgumentOutOfRangeException occurs upon Word DOCX to PDF   conversion | Bug |
| WORDSNET-21912 | Word to PDF conversion never ends for a DOC File | Bug |
| WORDSNET-20607 | Contents are pushed down to next page in output PDF | Bug |
| WORDSNET-21188 | An interval between list label end and first line text is different   depending on HtmlSaveOptions.PrettyFormat | Bug |
| WORDSNET-21602 | Table row is lost when HTML and Table is inserted into document using   DocumentBuilder | Bug |
| WORDSNET-21604 | Infinite loop during call of Document.UpdatePageLayout | Bug |
| WORDSNET-21748 | System.ArgumentOutOfRangeException for UpdatePageLayout method | Bug |
| WORDSNET-21484 | Incorrectly displayed form fields in PDF when viewed in Google Chrome Web   Browser | Bug |
| WORDSNET-21844 | Line extends out of bounds in pdf file after saving DPCX to PDF | Bug |
| WORDSNET-21763 | DOCX to TIFF conversion issue with simplified Arabic text rendering | Bug |
| WORDSNET-21929 | Text is moved to previous line after DOCX to PDF conversion | Bug |
| WORDSNET-21928 | Barcode position is changed after DOC to PDF conversion | Bug |
| WORDSNET-21800 | Japanese top to down text issue when converting DOCX to HTML | Bug |
| WORDSNET-21607 | New style introduced after adding a new SDT | Bug |
| WORDSNET-21592 | Links are broken when rendering CHM files to HTML | Bug |
| WORDSNET-13730 | System.TypeInitializationException is thrown while loading Document | Bug |
| WORDSNET-21930 | DOCX to PDF conversion issue with background | Bug |
| WORDSNET-21642 | Zny.Common.Document uses our AW.NET, check is it legal or not | Bug |
| WORDSNET-18507 | DOC to HtmlFixed conversion issue with table rendering | Bug |
| WORDSNET-21935 | Table row is shifted towards left side of page after DOCX to PDF   conversion | Bug |
| WORDSNET-21649 | Bookmarks are lost after initiating LayoutEnumerator | Bug |
| WORDSNET-21939 | FileCorruptedException occurs upon loading a DOCX | Bug |
| WORDSNET-21797 | DOCX to PDF/A conversion and validation fails: Table spanned over 2 pages   is tagged as two tables instead of one. | Bug |
| WORDSNET-21761 | Conversion process hangs on Linux | Bug |
| WORDSNET-19297 | Layout difference for the document | Bug |
| WORDSNET-21967 | Extract text from PDF file line by line and save data values inside SQL   server database | Bug |
| WORDSNET-21978 | Document.Cleanup() not removing all unused Styles and Lists | Bug |
| WORDSNET-13487 | Watermark positioning is incorrect in PDF | Bug |
| WORDSNET-16697 | TryParse does not work for "fr-CH" | Bug |
| WORDSNET-20979 | text-align : left style inside table column is not exported in output   HTML | Bug |
| WORDSNET-16683 | Document has incorrect tab size | Bug |
| WORDSNET-16705 | Original date value is incorrect | Bug |
| WORDSNET-21518 | Nested Textboxes inside Tables are missing in generated HTML | Bug |
| WORDSNET-12069 | Extra empty page appears after conversion form DOCX to PDF | Bug |
| WORDSNET-12153 | Contents position is changed after conversion from DOCX to PDF | Bug |
| WORDSNET-12393 | Some Tables are pushed to next page in rendered document | Bug |
| WORDSNET-20242 | DOC to HtmlFixed conversion is incorrect when   HtmlFixedSaveOptions.ResourcesFolder is used | Bug |
| WORDSNET-13531 | Incorrect conversion from DOCX to PDF | Bug |
| WORDSNET-20729 | MHTML to PDF conversion hangs | Bug |
| WORDSNET-16722 | Document has incorrect field values | Bug |
| WORDSNET-21590 | PDF to MS word formatting issues | Bug | 

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Aspose.Words.Comparing namespace was introduced

Due to refactoring work on Aspose.Words namespaces, CompareOptions, ComparisonTargetType, Granularity classes were moved to new separate namespace Aspose.Words.Comparing.
In case of compilation error - please add using Aspose.Words.Comparing.

### Aspose.Words.Notes namespace was introduced

Due to refactoring work on Aspose.Words namespaces, Footnote, EndnoteOptions, FootnoteOptions, EndnotePosition, FootnotePosition, FootnoteType, FootnoteNumberingRule classes were moved to new separate namespace Aspose.Words.Notes.
In case of compilation error - please add using Aspose.Words.Notes.

### The classes related to load options were moved to Aspose.Words.Loading namespace

Due to refactoring work on Aspose.Words namespaces, LoadOptions, PdfLoadOptions, RtfLoadOptions, TxtLoadOptions classes and corresponding enums were moved to Aspose.Words.Loading namespace.
In case of compilation error - please add using Aspose.Words.Loading.

### Added a new public property CleanupOptions.UnusedBuiltinStyles

Related issue: WORDSNET-21977

Added a new public property to CleanupOptions:

{{< highlight csharp >}}
/// <summary>
/// Specifies that unused BuiltIn styles should be removed from document.
/// </summary>
public bool UnusedBuiltinStyles { get; set; }
{{< /highlight >}}

Use Case: Explains how to use UnusedBuiltinStyles property.

{{< highlight csharp >}}
Document doc = new Document("input.docx");
CleanupOptions cleanupOptions = new CleanupOptions();
cleanupOptions.UnusedBuiltinStyles = true;
doc.Cleanup(cleanupOptions);
{{< /highlight >}}

### Advanced typography supported when saving to images on .NET and .NET Standard

Related issue: WORDSNET-21330, WORDSNET-21991

Advanced typography is now supported when saving to images with GDI+ or SkiaSharp (i.e. on all .NET platforms and .NET Standard).

Use Case: Saving document to image with advanced typography features.

{{< highlight csharp >}}
Document doc = new Document("input.docx");
doc.LayoutOptions.TextShaperFactory = HarfBuzzTextShaperFactory.Instance;
doc.Save("output.png");
{{< /highlight >}}

### Fill.Solid() method was introduced

Related issue: WORDSNET-21808

The following new public methods were added into the Fill class:

{{< highlight csharp >}}
/// <summary>
/// Sets the fill to a uniform color.
/// </summary>
/// <remarks>
/// Use this method to convert any of the fills back to solid fill.
/// </remarks>
public void Solid()
 
/// <summary>
/// Sets the fill to a specified uniform color.
/// </summary>
/// <remarks>
/// Use this method to convert any of the fills back to solid fill.
/// </remarks>
public void Solid(Color color)
{{< /highlight >}}

Use Case: Explains how to change fill to Solid.

{{< highlight csharp >}}
// Open some document with text effects.
Document doc = new Document("TextTwoColorGradient.docx");
 
// Get Fill object for Font of the first Run.
Fill fill = doc.FirstSection.Body.FirstParagraph.Runs[0].Font.Fill;
 
// Check Fill properties of the Font.
Console.WriteLine("The type of the fill is: {0}", fill.FillType);
Console.WriteLine("The foreground color of the fill is: {0}", fill.ForeColor);
Console.WriteLine("The fill is transparent at {0}%", fill.Transparency * 100);
 
// Change type of the fill to Solid with uniform green color.
fill.Solid(Color.Green);
Console.WriteLine("\nThe fill is changed:");
Console.WriteLine("The type of the fill is: {0}", fill.FillType);
Console.WriteLine("The foreground color of the fill is: {0}", fill.ForeColor);
Console.WriteLine("The fill transparency is {0}%", fill.Transparency * 100);
 
doc.Save("TextSolidOut.docx");
 
/*
This code example produces the following results:
 
The type of the fill is: Gradient
The foreground color of the fill is: Color [A=255, R=0, G=128, B=128]
The fill is transparent at 65%
 
The fill is changed:
The type of the fill is: Solid
The foreground color of the fill is: Color [A=255, R=0, G=128, B=0]
The fill transparency is 0%
*/
{{< /highlight >}}

### Public API of Structured Document Tag range was extended

Related issue: WORDSNET-21246

The constructors for StructuredDocumentTagRangeStart and StructuredDocumentTagRangeEnd classes have been made public. Now the instances of these classes can be created manually.

{{< highlight csharp >}}
/// <summary>
/// Initializes a new instance of the <b>Structured document tag range start</b> class.
/// </summary>
/// <remarks>
/// <para>The following types of SDT can be created:</para>
/// <list type="bullet">
/// <item><see cref="Markup.SdtType.Checkbox"/></item>
/// <item><see cref="Markup.SdtType.DropDownList"/></item>
/// <item><see cref="Markup.SdtType.ComboBox"/></item>
/// <item><see cref="Markup.SdtType.Date"/></item>
/// <item><see cref="Markup.SdtType.BuildingBlockGallery"/></item>
/// <item><see cref="Markup.SdtType.Group"/></item>
/// <item><see cref="Markup.SdtType.Picture"/></item>
/// <item><see cref="Markup.SdtType.RichText"/></item>
/// <item><see cref="Markup.SdtType.PlainText"/></item>
/// </list>
/// </remarks>
/// <param name="doc">The owner document.</param>
/// <param name="type">Type of SDT node.</param>
public StructuredDocumentTagRangeStart(DocumentBase doc, SdtType type)
 
/// <summary>
/// Initializes a new instance of the <b>Structured document tag range end</b> class.
/// </summary>
/// <param name="doc">The owner document.</param>
/// <param name="id">Identifier of the corresponding structured document tag range start.</param>
public StructuredDocumentTagRangeEnd(DocumentBase doc, int id)
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
Document doc = new Document("input.docx");
 
StructuredDocumentTagRangeStart start = new StructuredDocumentTagRangeStart(doc, SdtType.RepeatingSectionItem);
StructuredDocumentTagRangeEnd end = new StructuredDocumentTagRangeEnd(doc, start.Id);
 
doc.FirstSection.Body.InsertAfter(start, doc.FirstSection.Body.FirstParagraph);
doc.LastSection.Body.InsertBefore(end, doc.LastSection.Body.LastParagraph);
 
doc.Save("output.docx");
IEnumerable interface is implemented in StructuredDocumentTagRangeStart class for full LINQ support (i.e. Last(), LastOrDefault() and other methods).

Document doc = new Document("input.docx");
StructuredDocumentTagRangeStart start = (StructuredDocumentTagRangeStart)doc.FirstSection.Body.GetChild(NodeType.StructuredDocumentTagRangeStart, 0, false);
 
Console.WriteLine(start.LastOrDefault().GetText());
{{< /highlight >}}

A new public RemoveAllChildren() method has been added.

{{< highlight csharp >}}
/// <summary>
/// Removes all the nodes between this range start node and the range end node.
/// </summary>
public void RemoveAllChildren()
{{< /highlight >}}

Use Case: Explains how to use RemoveAllChildren() method.

{{< highlight csharp >}}
Document doc = new Document("input.docx");
 
int nodeCountBefore = doc.GetChildNodes(NodeType.Any, true).Count;
StructuredDocumentTagRangeStart start = (StructuredDocumentTagRangeStart)doc.FirstSection.Body.GetChild(NodeType.StructuredDocumentTagRangeStart, 0, false);
start.RemoveAllChildren();
 
int nodeCountAfter = doc.GetChildNodes(NodeType.Any, true).Count;
 
Console.WriteLine(nodeCountBefore);
Console.WriteLine(nodeCountAfter);
{{< /highlight >}}

A new public RemoveSelfOnly() method has been added.

{{< highlight csharp >}}
/// <summary>
/// Removes this range start and appropriate range end nodes of the structured document tag,
/// but keeps its content inside the document tree.
/// </summary>
public void RemoveSelfOnly()
{{< /highlight >}}

Use Case: Explains how to use RemoveSelfOnly() method.

{{< highlight csharp >}}
Document doc = new Document("input.docx");
StructuredDocumentTagRangeStart start = (StructuredDocumentTagRangeStart)doc.FirstSection.Body.GetChild(NodeType.StructuredDocumentTagRangeStart, 0, false);
start.RemoveSelfOnly();
{{< /highlight >}}

### Removed obsolete PdfSaveOptions.EscapeUri property

This option is not needed anymore because writing of URI to PDF was improved and cases when disabled escaping was required are handled well now.
