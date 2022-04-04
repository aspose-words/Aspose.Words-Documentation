---
title: 20.1 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 20.1 Release Notes
linktitle: Aspose.Words for .NET 20.1 Release Notes
description: "Aspose.Words for .NET 20.1 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /net/aspose-words-for-net-20-1-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 20.1](https://www.nuget.org/packages/Aspose.Words/20.1.0).

{{% /alert %}}

## Major Features

- Implemented support of paragraph rules in footnotes.
- API to get/set the position of the floating table are exposed.
- Implemented an ability to check if VbaProject is signed.
- Added feature to insert IconCaption while using InsertOleObject.
- Supported dynamic bookmark insertion for LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-12444|Support an API to check if VBAcode is signed|New Feature|
|WORDSNET-12204|Add feature to set/get positioning of floating table|New Feature|
|WORDSNET-19648|Create bookmarks using LINQ Reporting Engine|New Feature|
|WORDSNET-11833|Add feature to insert IconCaption while using InsertOleObject|New Feature|
|WORDSNET-19366|insertOleObject IconCaption filename|New Feature|
|WORDSNET-18818|Make DML image rendering resilient to images with corrupted SVG extensions|Enhancement|
|WORDSNET-19498|Content pushed to previous pages in PDF|Enhancement|
|WORDSNET-11110|DOC to PDF conversion issue with table's layout|Enhancement|
|WORDSNET-19479|NullReferenceException occurs upon saving to HtmlFixed|Bug|
|WORDSNET-18603|Nested shapes overlaps cell borders|Bug|
|WORDSNET-19667|Paragraph marker changes from not hidden to hidden after document insert|Bug|
|WORDSNET-19671|DOCX to PDF conversion issue with content position|Bug|
|WORDSNET-19681|IgnoreFields options causes incorrect comparison|Bug|
|WORDSNET-19683|Document layout is not preserved after conversion from ODT to a DOCX|Bug|
|WORDSNET-19549|Word Document to PDF "Attempted to divide by zero"|Bug|
|WORDSNET-19674|Lucida Console text metrics do not match MS Word|Bug|
|WORDSNET-19601|DocumentProperty isLinkToContent fails for Numbers-type using bookmark in DOCX file|Bug|
|WORDSNET-18928|Add feature to insert IconCaption and correct icon while using InsertOleObject|Bug|
|WORDSNET-14272|DOCX to PDF conversion issue with Khmer font|Bug|
|WORDSNET-19625|After conversion to PDF a part of a table content is wrapping|Bug|
|WORDSNET-19659|System.OutOfMemoryException occurs upon saving DOCX to PDF|Bug|
|WORDSNET-19483|DocumentBuilder.EndTable sets wrong font size after PushFont/PopFont|Bug|
|WORDSNET-17053|Wrong Font for certain Arabic Characters used in PDF|Bug|
|WORDSNET-14337|DOC to PDF  conversion issue with Khmer font|Bug|
|WORDSNET-17864|Sort out fr-CH, de-CH and uk-UA formatting on .NET 4.0|Bug|
|WORDSNET-18378|Watermark (Korean) is incorrect and bolder in MS Word|Bug|
|WORDSNET-16766|Incorrect PDF Rendition of Arabic text|Bug|
|WORDSNET-19567|Extra blank space after each row in the table in PDF|Bug|
|WORDSNET-19577|Converting DOCX to PDF Mirror Margins doesn't translate|Bug|
|WORDSNET-19495|System.NullReferenceException occurs upon saving DOCX to PDF|Bug|
|WORDSNET-19588|One-page Word document turned into a two-page PDF document|Bug|
|WORDSNET-19482|Document.UpdateFields does not update the formula fields|Bug|
|WORDSNET-19598|Content position are changed after conversion from DOCX to PDF|Bug|
|WORDSNET-19713|ExampleManager fails while parse BaseWebExtensionCollection tags|Bug|
|WORDSNET-19668|MS Word 2016 displays Emoji as square boxes|Bug|
|WORDSNET-19729|Chart with extra small step. The precision of "float" is insufficient, "double" must be used|Bug|
|WORDSNET-19622|DocumentBuilder.InsertStyleSeparator does not work when using style from template|Bug|
|WORDSNET-19391|Document.UpdateFields does not update formula field|Bug|
|WORDSNET-19687|Documentation on how Aspose.Words caches user data/files for performance|Bug|
|WORDSNET-19746|Rendering of APS containing shaping information to XPS is not correct|Bug|
|WORDSNET-19695|Border of SmartArt is lost after repeated save and load operations|Bug|
|WORDSNET-19753|Fix ApiTests.NetStandard2.0 project on Jenkins|Bug|
|WORDSNET-19607|Endnote not displaying in output PDF file|Bug|
|WORDSNET-19516|DOCM is corrupted after conversion from DOC|Bug|
|WORDSNET-15450|Watermark position issue in resultant PDF|Bug|
|WORDSNET-19521|Embedded file (.exe) is lost after re-saving DOC|Bug|
|WORDSNET-19609|DOCX to PDF conversion issue with StructuredDocumentTag rendering|Bug|
|WORDSNET-19610|Text of textbox is lost in output PDF|Bug|
|WORDSNET-19558|Table alignment and overlapping problem in PDF|Bug|
|WORDSNET-19634|Infinite loop during call of Document.UpdatePageLayout|Bug|
|WORDSNET-18740|Document.Save hangs while saving document's page to JPEG|Bug|
|WORDSNET-19620|Specifying ImportFormatMode.KeepDifferentStyles causes AppendDocument to throw exception|Bug|
|WORDSNET-18916|Problem with rendered PDF with OTF font in Mac OS Preview app|Bug|
|WORDSNET-19332|LINQ Reporting with JsonDataSource using List&lt;string&gt; does not work|Bug|
|WORDSNET-19073|Provide another SkiaSharp Native Asset Package for Redhat Enterprise Linux|Bug|
|WORDSNET-19331|Document.Save generates big size HtmlFixed document|Bug|
|WORDSNET-19637|A line moves to the next page in PDF|Bug|
|WORDSNET-13624|DOC to PDF conversion issue with page number|Bug|
|WORDSNET-10391|Text is overlapped after conversion from DOC to PDF|Bug|
|WORDSNET-8338|Extra space is rendered between text and horizontal line|Bug|
|WORDSNET-4210|Table row height is changed during rendering|Bug|
|WORDSNET-19545|Appending Document causes indent issues|Bug|
|WORDSNET-14050|DOC to PDF conversion issue with RTL text direction|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.


### Added a new public property VbaProject.IsSigned

Related issue: WORDSNET-12444 Added a new public property VbaProject.IsSigned:

{{< highlight csharp >}}
/// <summary>
/// Shows whether the VbaProject is signed or not.
/// </summary>
public bool IsSigned
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
Document doc = new Document(@"source.docm"); 
if (doc.VbaProject.IsSigned)
 
  // do smth..
{{< /highlight >}}

### Added setters for floating table properties

WORDSNET-12204. Added setters for following table properties: RelativeHorizontalAlignment, AbsoluteHorizontalDistance, RelativeVerticalAlignment, AbsoluteVerticalDistance.

These properties allow setting floating table position.

{{% alert color="primary" %}}

Note that this is combined property, i.e setting RelativeHorizontalAlignment will reset AbsoluteHorizontalDistance to the default value and vice versa. The same is for vertical positioning.

{{% /alert %}}



Use Case:

{{< highlight csharp >}}
Document doc = new Document("some doc"); 
Table table = document.FirstSection.Body.Tables\[0\];
table.AbsoluteHorizontalDistance = 10;
 // sets absolute table horizontal position at 10pt.
table.RelativeVerticalAlignment = VerticalAlignment.Center;
 // sets vertical table position to center of entity specified by Table.VerticalAnchor.
{{< /highlight >}}

### SaveOptions.ColorMode property moved to FixedPageSaveOptions class

Related issue: WORDSNET-19635 SaveOptions.ColorMode public property moved to FixedPageSaveOptions class.

### Supported dynamic bookmark insertion for LINQ Reporting Engine

Issue: WORDSNET-19648 The "[Inserting Bookmarks Dynamically](/words/net/template-syntax/#templatesyntax-insertingbookmarksdynamically)" section of the engine's documentation was added to describe the change.

### WORDSNET-18928 - Add feature to insert IconCaption and correct icon while using InsertOleObject

A new public method has been added to the DocumentBuilder class:

{{< highlight csharp >}}
/// <summary>
/// Inserts an embedded or linked OLE object as icon into the document. 
/// Allows to specify icon file and caption. Detects OLE object type using file extension. 
/// </summary>
/// <param name="fileName">Full path to the file.</param>
/// <param name="isLinked">
/// If true then linked OLE object is inserted otherwise embedded OLE object is inserted.
/// </param>/// <param name="iconFile">
/// Full path to the ICO file. 
/// If the value is null or the ICO file is not readable, Aspose.Words will use a predefined image.
/// </param>/// <param name="iconCaption">Icon caption.</param>/// <returns>Shape node containing Ole object and inserted at the current Builder position.</returns>
public Shape InsertOleObjectAsIcon(string fileName, bool isLinked, string iconFile, string iconCaption)
{{< /highlight >}}



Use Case. Explains how to inserts an embedded or linked OLE object as an icon into the document:

{{< highlight csharp >}}
Document doc = new Document();DocumentBuilder builder = new DocumentBuilder(doc);
Shape shape = builder.InsertOleObjectAsIcon("C:\\embedded.xlsx", false, "C:\\icon.ico", "My embedded file");
doc.Save("C:\\output.docx");
{{< /highlight >}}
