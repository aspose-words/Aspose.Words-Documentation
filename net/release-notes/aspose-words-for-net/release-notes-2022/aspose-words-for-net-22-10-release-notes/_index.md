---
title: 22.10 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 22.10 Release Notes
linktitle: Aspose.Words for .NET 22.10 Release Notes
description: "Aspose.Words for .NET 22.10 Release Notes – the latest updates and fixes."
type: docs
weight: 25
url: /net/aspose-words-for-net-22-10-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 22.10](https://www.nuget.org/packages/Aspose.Words/22.10.0).

{{% /alert %}}

## Major Features

There are 78 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to ignore StructuredDocumentTags upon FindReplace.
- HtmlSaveOptions.MetafileFormat now affects OLE objects and controls.

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-19205|Add feature to export Shape into SVG and DIV tag in output HTML|New Feature
|WORDSNET-19780|Render correct indentation in Text format against HTML blockquote Tags|New Feature
|WORDSNET-23920|Consider providing a way to move DocumentBuilder cursor inside SDT|New Feature
|WORDSNET-23530|Check Boxes (Content Control) are checked after UpdatingFields|Enhancement
|WORDSNET-24237|Redundant revisions are rendered in PDF|Enhancement
|WORDSNET-24393|The document appears to be corrupted and cannot be loaded message on loading a doc file|Enhancement
|WORDSNET-21887|Node is internally removed from the DOM tree after table serialization|Bug
|WORDSNET-24403|Incorrect rendering of text box content reflection when shape has a pattern fill|Bug
|WORDSNET-20416|Use DML shapes instead VML for DOCX to HTML conversion|Bug
|WORDSNET-24401|Saving document throws "InvalidOperationException" error |Bug
|WORDSNET-24420|CenteredParagraphCorrector throws NullReferenceException|Bug
|WORDSNET-23629|PAGE field is updated improperly upon rendering|Bug
|WORDSNET-23647|Alpha list is reset to numbered list after conversion from HTML to DOCX|Bug
|WORDSNET-11419|Issue with table border when saving as PDF|Bug
|WORDSNET-23679|Table layout is broken after rendering document|Bug
|WORDSNET-24250|SystemArgumentOutOfRangeException: "Length cannot be less than zero" unhandled exception|Bug
|WORDSNET-24267|Legend gradient fill is not rendered|Bug
|WORDSNET-24269|DOCX to PDF: Chart rendered incorrectly|Bug
|WORDSNET-24272|Reflection effect is not rendered in Html Fixed|Bug
|WORDSNET-21964|Nested content control not deleted from document|Bug
|WORDSNET-24004|Gradient fill is rendered improperly|Bug
|WORDSNET-24012|Built in styles are written as custom styles after open/save DOCX|Bug
|WORDSNET-24286|Shape flip is not taken into account when rendering a gradient fill|Bug
|WORDSNET-22706|Issue when converting a Word Cell to text |Bug
|WORDSNET-24291|Resaving the document changes checkbox state|Bug
|WORDSNET-23435|Revisions changed after adding CustomXmlPart|Bug
|WORDSNET-24298|DOCX to PDF: Border around objects does not retain after conversion|Bug
|WORDSNET-24299|InvalidOperationException: Operator should take n operands: Incorrect stream content|Bug
|WORDSNET-24301|ExtractPages throws NullReferenceException|Bug
|WORDSNET-23638|HtmlSaveOptionsMetafileFormat does not work as expected|Bug
|WORDSNET-24300|InvalidOperationException: Operator should take n operands: too big integer value|Bug
|WORDSNET-24308|Invalid DOCX document|Bug
|WORDSNET-23850|Incorrect cell margins on html to docx conversion|Bug
|WORDSNET-24319|NullReferenceException on saving to PDF|Bug
|WORDSNET-24138|Text is truncated when rendering metafile to PDF|Bug
|WORDSNET-24149|Garbage text is loaded from a EPUB document|Bug
|WORDSNET-24150|Document title is incorrectly imported from EPUB|Bug
|WORDSNET-24148|Encoding of a HTML document is incorrectly detected as UTF-7|Bug
|WORDSNET-20600|DOCX to PDF conversion issue with chart's Y-Axis|Bug
|WORDSNET-24172|Set correct values for UseFELayout and DefaultFontLocalIdFarEast when Chinese is specified in LoadOptions|Bug
|WORDSNET-24331|Incorrect reflection direction when rendering 3D effects|Bug
|WORDSNET-24344|Date format of SDT is ignored when FindReplaceOptions.IgnoreStructuredDocumentTags is used|Bug
|WORDSNET-24345|SDTs are not replaced when FindReplaceOptions.IgnoreStructuredDocumentTags is used|Bug
|WORDSNET-23923|Incorrect table indent on rtf to docx conversion|Bug
|WORDSNET-24358|Redundant whitespaces appears after importing table from PDF with RTL content|Bug
|WORDSNET-24369|InvalidOperationException is thrown upon comparing document|Bug
|WORDSNET-12476|Shape's hyperlink is removed after saving to HTML|Bug
|WORDSNET-24398|Ideographic text in text box incorrectly rotated|Bug
|WORDSNET-19698|Page numbering in footer gets corrupted in PDF|Bug
|WORDSNET-20723|Conversion issue with page numbers|Bug
|WORDSNET-20724|Conversion issue with page number upon DOCX to PDF|Bug
|WORDSNET-20725|Incorrect page numbers|Bug
|WORDSNET-20726|Issue with page numbers when DOCX to PDF|Bug
|WORDSNET-18387|Incorrect conversion to PDF page numbers|Bug
|WORDSNET-19584|Page numbering is off when converting to PDF|Bug
|WORDSNET-24238|Strikethrough text format is changed to underline on PDF import|Bug

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24142|Getter for AbstractNumId|New Feature
|WORDSNET-21000|Incorrect font formatting applied to Hebrew text in PDF|Bug
|WORDSNET-24404|XML to DOCX: Footnotes numbers separated from text|Bug
|WORDSNET-24241|Find/Replace does not work if searched text contain SDT|Bug
|WORDSNET-23926|Metafile image is converted to PNG after validation with HtmlSaveOptions|Bug
|WORDSNET-24278|InvalidOperationException upon rendering shape|Bug
|WORDSNET-24216|Track revisions works improperly ParagraphAppendField method is used|Bug
|WORDSNET-23755|Footnote reference character is rendered as tofu|Bug
|WORDSNET-24281|Comparing documents throws  the "comasposewordsSpecialChar" error|Bug
|WORDSNET-23758|OutOfMemoryException is thrown upon comparing documents|Bug
|WORDSNET-24030|DOCX to PDF: Checkbox state changed after conversion|Bug
|WORDSNET-22838|HTML styles are lost after HTML to DOCX conversion |Bug
|WORDSNET-24288|Data labels values values are not rendered|Bug
|WORDSNET-22871|DOCX to PDF - List numbers disappearing|Bug
|WORDSNET-24090|Aspose.Words returns incorrect words count|Bug
|WORDSNET-24159|DocumentVariables are not updated on DocumentCompare method|Bug
|WORDSNET-24346|Footnote mark is rendered as toffu|Bug
|WORDSNET-24212|HTM to PDF: text-indentation has no effect |Bug
|WORDSNET-24213|Floating table is rendered improperly|Bug
|WORDSNET-24374|List item number is incorrect after comparing|Bug
|WORDSNET-19825|Value of NUMPAGES in output PDF is incorrect after mail merge|Bug
|WORDSNET-19361|Page and NUMPAGES fields have incorrect values in PDF|Bug

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added new FindReplaceOptions.IgnoreStructuredDocumentTags property

Related issue: WORDSNET-24241

The following public property is added to FindReplaceOptions class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either to ignore content of <see cref="StructuredDocumentTag"/>.
/// The default value is <c>false</c>.
/// </summary>
/// <remarks>
/// <para>
/// When this option is set to <c>true</c>, the content of <see cref="StructuredDocumentTag"/>
/// will be treated as a simple text.
/// </para>
/// <para>
/// Otherwise, <see cref="StructuredDocumentTag"/> will be processed as standalone Story
/// and replacing pattern will be searched separately for each <see cref="StructuredDocumentTag"/>,
/// so that if pattern crosses a <see cref="StructuredDocumentTag"/>, then replacement will not
/// be performed for such pattern.
/// </para>
/// </remarks>
public bool IgnoreStructuredDocumentTags { get; set; }
{{< /highlight >}}

Use Case: Explains how to ignore StructuredDocumentTags while finding and replacing text.
{{< highlight csharp >}}
Document doc = new Document("input.docx");

// Set options to ignore StructuredDocumentTags.
FindReplaceOptions options = new FindReplaceOptions() { IgnoreStructuredDocumentTags = true };
doc.Range.Replace("searchText", "replacement", options);
{{< /highlight >}}

### HtmlSaveOptions.MetafileFormat now affects OLE objects and controls

Related issue: WORDSNET-23562.

OLE objects and controls (shapes whose type is ShapeType.OleObject or ShapeType.OleControl) usually contain a metafile as a fallback image. 
Saving of such shapes to HTML has been changed in the following way:

- The option HtmlSaveOptions.MetafileFormat can be used to choose the format which images of the shapes are saved to.
- The option HtmlSaveOptions.ExportShapesAsSvg no longer affects the shapes.

In other words, OLE objects and controls are now treated as metafile images when a document is converted to HTML.
	
### Implemented ability to move DocumentBuilder cursor inside structured document tag

Related issue: WORDSNET-23920

Now it is possible to move cursor of DocumentBuilder inside a structured document tag. To do this, the following new members of the DocumentBuilder class have been added:
{{< highlight csharp >}}
/// <summary>
/// Moves the cursor to a structured document tag in the current section.
/// </summary>
/// <remarks>
/// The navigation is performed inside the current story of the current section. That is, if you moved the
/// cursor to the primary header of the first section, then <paramref name="structuredDocumentTagIndex"/>
/// specified the index of the structured document tag inside that header of that section.
/// When <paramref name="structuredDocumentTagIndex"/> is greater than or equal to 0, it specifies an index
/// from the beginning of the section with 0 being the first structured document tag. When
/// <paramref name="structuredDocumentTagIndex"/> is less than 0, it specified an index from the end of the
/// section with -1 being the last structured document tag.
/// </remarks>
/// <param name="structuredDocumentTagIndex">The index of the structured document tag to move to.</param>
/// <param name="characterIndex">The index of the character inside the structured document tag.
/// A negative value allows you to specify a position from the end of the structured document tag. Use -1 to
/// move to the end of the structured document tag. If the structured document tag is at the block level, and
/// you want to move the cursor to the end of its last paragraph, specify -2.</param>
public void MoveToStructuredDocumentTag(int structuredDocumentTagIndex, int characterIndex);

/// <summary>
/// Moves the cursor to the structured document tag.
/// </summary>
/// <param name="structuredDocumentTag">The structured document tag to move to.</param>
/// <param name="characterIndex">The index of the character inside the structured document tag.
/// A negative value allows you to specify a position from the end of the structured document tag. Use -1 to
/// move to the end of the structured document tag. If the structured document tag is at the block level, and
/// you want to move the cursor to the end of its last paragraph, specify -2.</param>
public void MoveToStructuredDocumentTag(StructuredDocumentTag structuredDocumentTag, int characterIndex);

/// <summary>
/// Returns true if the cursor is at the end of a structured document tag.
/// </summary>
public bool IsAtEndOfStructuredDocumentTag { get; }

/// <summary>
/// Gets the structured document tag that is currently selected in this DocumentBuilder.
/// </summary>
public StructuredDocumentTag CurrentStructuredDocumentTag { get; }
{{< /highlight >}}

Use Case: Moving cursor to end of inline-level structured document tag and getting currently selected structured document tag.
{{< highlight csharp >}}
Document doc = new Document("input.docx");
DocumentBuilder builder = new DocumentBuilder(doc);

// Move to the end of the second structured document tag.
builder.MoveToStructuredDocumentTag(1, -1);

builder.Write(" Text at end of structured document tag.");

// Get currently selected structured document tag.
builder.CurrentStructuredDocumentTag.Color = Color.Green;

doc.Save("output.docx");
{{< /highlight >}}

### Added new public method List.HasSameTemplate

Related issue: WORDSNET-24142

A new List.HasSameTemplate() public method has been added:
{{< highlight csharp >}}
/// <summary>
/// Returns true if the current list and the given list are created from the same template.
/// </summary>
public bool HasSameTemplate(List other)
{{< /highlight >}}

Use Case: Explains how to work with List.HasSameTemplate().
{{< highlight csharp >}}
List list1 = document.Lists[0];
List list2 = document.Lists[1];
List list3 = document.Lists[2];

if (list1.HasSameTemplate(list2))
{
    Console.WriteLine("These lists have the same list template.");
}

if (!list2.HasSameTemplate(list3))
{
    Console.WriteLine("These lists have different list templates.");
}
{{< /highlight >}}

### Obsolete LoadOptions.FlatOpcXmlMappingOnly and SaveOptions.FlatOpcXmlMappingOnly options were removed

Related issue: WORDSNET-21455

These options caused unexpected side-effects and decided to be removed eventually. 
Instead, it was suggested to convert the mapped document to FlatOpc file format directly. 
This approach has no side-effect and provides better output.

### SaveOptions.UpdateSdtContent default value changed and marked as obsolete.

Related issue: WORDSNET-24030

Default value of SaveOptions.UpdateSdtContent has been changed to False to follow MS Word behavoir, MS Word does not update content of common (not mapped) SDT from SDT values.

Also we decided to remove this option later as it causes unexpected side-effects similar to FlatOpcXmlMappingOnly load/save option. 

Instead we going to provide new method which should be called explicitly to update SDT content according to the values.