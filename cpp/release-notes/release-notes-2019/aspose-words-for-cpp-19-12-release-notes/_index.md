---
title: Aspose.Words for CPP 19.12 Release Notes
description: "Aspose.Words for CPP 19.12 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 10
url: /cpp/aspose-words-for-cpp-19-12-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 19.12](https://www.nuget.org/packages/Aspose.Words.CPP/19.12)

{{% /alert %}} 

## Major Features

This is a regular monthly release, we continue to add features from Aspose.Words for .Net:

- Conversion to PDF 1.7 standard is now supported.
- User-installed fonts are now supported upon using SystemFontSource on Windows10.
- New public properties of Bookmark are exposed.
- OLE object data is exposed to public API.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support cryptography features - it cannot verify, sign, encrypt or decrypt documents.
- The current release does not support downloading remote resources from the Internet.
- The current release does not support Metered license.
- The current release does not support a multipage TIFF format.
- The current release does not support LINQ and Reporting features.
- The current release has limited support for database features - C++ does not have common API for DB like .Net System.Data.
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-18367|Mediaeval fonts: support for inline number forms|New Feature|
|WORDSNET-17731|Support converting word documents to the PDF 1.7 standard|New Feature|
|WORDSNET-11083|Support new PDF standard|New Feature|
|WORDSNET-1860|Support attribute to do "List numbering should be restarted when simple mail merge is performed."|New Feature|
|WORDSNET-10593|Add support Web Extensions into the model|New Feature|
|WORDSNET-18634|Provide support for adding dynamic WebExtension element nodes in Word Document|New Feature|
|WORDSNET-19531|Add handling of user font folder on Win10 to SystemFontSource|New Feature|
|WORDSNET-19238|Support access to related DataTable using relation name for LINQ Reporting Engine|New Feature|
|WORDSNET-18897|Expose OLE object data to public API|New Feature|
|WORDSNET-14286|The position of the text is changed after conversion from DOCX to DOC/PDF|Enhancement|
|WORDSNET-12678|Improve table bookmarks|Enhancement|
|WORDSNET-15814|Incorrect line wrapping in PDF output|Enhancement|
|WORDSNET-18776|Table with the proportional font in Word document will not be converted correctly to PDF|Enhancement|
|WORDSNET-14294|Shape's position is changed after conversion from DOCX to DOC/PDF|Enhancement|
|WORDSNET-19555|Font formatting Problem when converting Word to PDF|Bug|
|WORDSNET-18454|Line chart inverted and X-Axis have more values in PDF|Bug|
|WORDSNET-18914|Formatting issue when converting DOCX to PDF|Bug|
|WORDSNET-19471|Gap between Table Borders missing in PDF|Bug|
|WORDSNET-12922|Cell borders are merged making one big border for Rows in PDF|Bug|
|WORDSNET-13504|System.ArgumentOutOfRangeException is thrown while saving each page to HtmlFixed|Bug|
|WORDSNET-19460|DOCX to PDF conversion issue with content position|Bug|
|WORDSNET-19464|Check if Aspose.Words is affected by vulnerability CVE-2019-5041|Bug|
|WORDSNET-16921|Aspose.Wwords balances footnotes improperly|Bug|
|WORDSNET-17612|DOCX to HTML conversion issue BookmarkEnd node position|Bug|
|WORDSNET-18058|Shape position in chart is changed in output PDF|Bug|
|WORDSNET-18986|Range.Replace does not replace all occurrences of text|Bug|
|WORDSNET-19478|Mime type is different when Document is saved using MS Word and Aspose.Words|Bug|
|WORDSNET-19117|UpdatePageLayout Prevents a Table from Breaking across Pages in PDF|Bug|
|WORDSNET-14764|Document.RenderToScale only saves document's first page to image|Bug|
|WORDSNET-18788|Y-axis label values are changed in output PDF|Bug|
|WORDSNET-18789|The dashed line of chart does not render correctly in output PDF|Bug|
|WORDSNET-18790|The X-axis of chart is changed in output PDF|Bug|
|WORDSNET-19248|Footnotes issue after converting DOCX to PDF|Bug|
|WORDSNET-19560|incorrect indent level of numbered list in appended document|Bug|
|WORDSNET-18621|Tamil language not rendering correctly in PDF|Bug|
|WORDSNET-19574|Aspose.Words.FileCorruptedException is thrown while importing DOC|Bug|
|WORDSNET-19261|Content control are repeated after conversion from DOCX to PDF|Bug|
|WORDSNET-16628|Contents are pushed down to the next page in output PDF|Bug|
|WORDSNET-19480|ParagraphFormat.SpaceAfter validation issue|Bug|
|WORDSNET-19481|DOC to PDF conversion issue with table border|Bug|
|WORDSNET-19466|Arrow heads of a Prism6.Document embedded object not visible|Bug|
|WORDSNET-18938|Contents are truncated after conversion from MHTML to PDF|Bug|
|WORDSNET-19571|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Bug|
|WORDSNET-19532|Issues with output formatting when using KeepSourceFormatting and KeepDifferentStyles of ImportFormatMode enum|Bug|
|WORDSNET-19565|From Center Shading Style lost when converting DOC to DOCX to DOC|Bug|
|WORDSNET-18815|Opacity of text is lost when SVG is inserted into DOCX|Bug|
|WORDSNET-18816|Content position are changed and overlapped after conversion from HTML to PDF|Bug|
|WORDSNET-18632|Tamil Vijaya language not rendering correctly in PDF|Bug|
|WORDSNET-19047|After conversion to PDF table moves to the next page|Bug|
|WORDSNET-19161|Refactoring "paragraph rule" classes|Bug|
|WORDSNET-18937|Contents are truncated after conversion from MHTML to PDF|Bug|
|WORDSNET-19490|Document.Save throws System.InvalidOperationException|Bug|
|WORDSNET-19188|Word to PDF grid lines rendering issues|Bug|
|WORDSNET-19494|PDF Table header font color Issue|Bug|
|WORDSNET-19497|AppendDocument System.InvalidOperationException|Bug|
|WORDSNET-19412|Failure when Accepting all revisions|Bug|
|WORDSNET-19411|DOCX to PDF conversion issue with text position|Bug|
|WORDSNET-19502|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Bug|
|WORDSNET-19506|DOCX to PDF missing image in header|Bug|
|WORDSNET-19510|Styles are lost after conversion from WordML to DOCX|Bug|
|WORDSNET-19505|Page breaks are removed if ReportBuildOptions.RemoveEmptyParagraphs is used|Bug|
|WORDSNET-19419|RTF does not open in WordPad after conversion from HTML|Bug|
|WORDSNET-19178|HTML to PDF or Word convert with border around document|Bug|
|WORDSNET-19522|Math equations are changed after re-saving DOCX|Bug|
|WORDSNET-18774|Text is overlapped after conversion from DOCX to PDF|Bug|
|WORDSNET-19515|AppendDocument changes font size of TextBox Content|Bug|
|WORDSNET-16483|DOCX to PDF conversion issue with text position|Bug|
|WORDSNET-19237|NullReferenceException is thrown when evaluating a null-conditional operator on missing related DataRow|Bug|
|WORDSNET-19536|Add the ability to apply 3D effects without 3D rotation|Bug|
|WORDSNET-19608|Document.AcceptAllRevisions changes the list position|Bug|
|WORDSNET-19169|Chart to PNG conversion issue with chart title|Bug|
|WORDSNET-19597|Line spacing is incorrect in output PDF when font Arial is substituted to FreeSans|Bug|
|WORDSNET-19542|Heading paragraph outline level issue|Bug|
|WORDSNET-19543|Bullet list is lost after using Range.Replace with &p special meta-character|Bug|
|WORDSNET-19547|Bookmark.Text returns empty value that is incorrect|Bug|
|WORDSNET-19546|Incorrect encoding used while OlePackage is read|Bug|
|WORDSNET-19551|Document.compare with TOC fails in 19.11|Bug|
|WORDSNET-19315|Paragraph is rendered on previous page in output PDF|Bug|
|WORDSNET-19336|Aspose.Words.FileCorruptedException is thrown while loading mhtml|Bug|
|WORDSNET-19357|Difference in Order between the now and old deprecated Replace methods|Bug|
|WORDSNET-19367|Page break while converting DOC to HTML|Bug|
|WORDSNET-18084|TOC field sequence separator does not display properly until manual field update|Bug|
|WORDSNET-19424|Capital letters in HTML do not render correctly when ExportFontsAsBase64 is used|Bug|
|WORDSNET-19302|DOCX to PDF conversion issue with Accessibility check|Bug|
|WORDSNET-19435|Document.UpdateFields updates the table of content incorrectly|Bug|
|WORDSNET-19440|Incorrect scaling of the horizontal date axis after conversion to PDF|Bug|
|WORDSNET-19441|Incorret scaling of the vertical axis|Bug|
|WORDSNET-19456|MailMerge.Execute does not format the date field according to date switches|Bug|
|WORDSNET-19583|Bookmark.Text sets the text incorrectly|Bug|
|WORDSNET-17337|Performance issue with Range.Replace method in 18.8|Bug|
|WORDSNET-14646|Content is moved to the next page upon converting|Bug|
|WORDSNET-14675|Document.Save does not save the DOCX to TIFF images|Bug|
|WORDSNET-19249|Harfbuzz causes an exception in x64 environment|Bug|
|WORDSNET-18223|The list numbers are lost after comparing documents using Document.Compare|Bug|
|WORDSNET-14466|Empty page gets added to the PDF when converting from DOCX|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.12. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.


### Added ability to clone VbaProject and VbaModule

Related issue: WORDSNET-19556

Added a Clone() method for a VbaProject:

{{< highlight csharp >}}
/// <summary>
/// Performs a copy of the <see cref="VbaProject"/>.
/// </summary>
/// <returns>The cloned VbaProject.</returns>
public VbaProject Clone()
{{< /highlight >}}

Added a Clone() method for a VbaModule:

{{< highlight csharp >}}
/// <summary>
/// Performs a copy of the <see cref="VbaModule"/>.
/// </summary>
/// <returns>The cloned VbaModule.</returns>
public VbaModule Clone()
{{< /highlight >}}

Use Case 1:

{{< highlight csharp >}}
Document sourceDoc = TestUtil.Open(@"source.docm");
Document destDoc = new Document();

// Clone the whole project.
destDoc.VbaProject = sourceDoc.VbaProject.Clone();
destDoc.Save("output.docm", );
{{< /highlight >}}

Use Case 2:

{{< highlight csharp >}}
Document sourceDoc = TestUtil.Open(@"source.docm");
Document destDoc = new Document();
destDoc.VbaProject = new VbaProject();

// Clone a single module.
VbaModule copyModule = sourceDoc.VbaProject.Modules["Module1"].Clone();
destDoc.VbaProject.Modules.Add(copyModule);
destDoc.Save("output.docm", );
{{< /highlight >}}

### Added ability to get access to OLE object raw data

WORDSNET-18897: added a feature to get access to OLE object raw data.

{{< highlight csharp >}}
byte[] OleFormat.GetRawData();
{{< /highlight >}}



Use Case:

{{< highlight csharp >}}

// Load document with OLE object.
Document doc = new Document(filename);
Shape oleShape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
byte[] oleRawData = shape.OleFormat.GetRawData();
{{< /highlight >}}

### Added a new FindReplaceOptions.UseLegacyOrder option

Related issue: WORDSNET-19357.

Some time ago, the Find/Replace method was redesigned in accordance with Word's behavior. In the current behavior, text boxes are analyzed separately from traversal the contents of the document. However, sometimes it is required that the text find/replace occurs sequentially considering the text in the text boxes. To allow users to choose an appropriate behavior, the following option was introduced in FindReplaceOptions class:

{{< highlight csharp >}}
/// <summary>
/// True indicates that a text search is performed sequentially from top to bottom considering the text boxes.
/// Default value is false.
/// </summary>
public bool UseLegacyOrder
{
    get; set;
}
{{< /highlight >}}


#### Use Case: In the example, the text "2" is in the text box.

{{< highlight csharp >}}

// Open the document.
    Document doc = Document(@"source.docx");
    FindReplaceOptions options = new FindReplaceOptions();
    options.ReplacingCallback = new ReplacingCallback();
    options.UseLegacyOrder = useLegacyOrder;
    doc.Range.Replace(new Regex(@"\[(.*?)\]"), "", options);
}
private class ReplacingCallback : IReplacingCallback
{
    ReplaceAction IReplacingCallback.Replacing(ReplacingArgs e)
    {
        Console.Write(e.Match.Value);
        return ReplaceAction.Replace;
    }
}

// The example displays the following output:

//    If useLegacyOrder is true: [1][2][3]

//    If useLegacyOrder is false: [1][3][2]
{{< /highlight >}}

### Added new RtfSaveOption.SaveImagesAsWmf

Related issue: WORDSNET-19419

Added the following new RtfSaveOption:

{{< highlight csharp >}}
/// <summary>
/// When true all images will be saved as WMF.
/// </summary>
/// <remarks>
/// This option might help to avoid WordPad warning messages.
/// </remarks>
public bool SaveImagesAsWmf
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
Document doc = new Document(@"source.docx");
RtfSaveOptions saveOpts = new RtfSaveOptions();
saveOpts.SaveImagesAsWmf = true;
doc.Save("output.rtf", saveOpts);
{{< /highlight >}}

### Conversion to PDF 1.7 standard is now supported

Added by Denis Panov, last edited by Andrey Noskov on Dec 04, 2019 (view change)
Task: WORDSNET-11083 - Support converting to PDF 1.7(Subtask - WORDSNET-19508)

Changes:

- Implemented conversion Word documents to PDF 1.7.
- Changed default output PDF format to PDF 1.7.

Description:

Added PDF 1.7 to PdfCompliance enum:

{{< highlight csharp >}}
/// <summary>
/// Specifies the PDF standards compliance level.
/// </summary>
public enum PdfCompliance
{
    /// <summary>
    /// The output file will comply with the PDF 1.7 standard.
    /// </summary>
    Pdf17,
    …
}
{{< /highlight >}}



The property allows specifying PDF format for the output document. Example:

{{< highlight csharp >}}
Document originalDoc = new Document(@"C:\PathToSource\Document.docx");
Saving.PdfSaveOptions pso = new Saving.PdfSaveOptions();
pso.Compliance = Saving.PdfCompliance.Pdf17;
originalDoc.Save(@"C:\PathToSource\Output.pdf", pso);

// or just convert without SaveOptions
Document originalDoc = new Document(@"C:\PathToSource\Document.docx");
originalDoc.Save(@"C:\PathToSource\Output.pdf");
{{< /highlight >}}


### New public properties of Bookmark are exposed

Issue WORDSNET-12678.

The following new public properties have been added into the Bookmark class:

{{< highlight csharp >}}
/// <summary>
/// Returns <b>true</b> if this bookmark is a table column bookmark.
/// </summary>
public bool IsColumn
{
    get;
}
/// <summary>
/// Gets the zero-based index of the first column of the table column range associated with the bookmark.
/// </summary>
/// <remarks>
/// Returns <b>-1</b> if this bookmark is not a table column bookmark.
/// </remarks>
public int FirstColumn
{
    get;
}
/// <summary>
/// Gets the zero-based index of the last column of the table column range associated with the bookmark.
/// </summary>
/// <remarks>
/// Returns <b>-1</b> if this bookmark is not a table column bookmark.
/// </remarks>
public int LastColumn
{
    get;
}
{{< /highlight >}}

User Case:

{{< highlight csharp >}}
Document doc = new Document(fileName);
foreach (Bookmark bookmark in doc.Range.Bookmarks)
{
    Console.WriteLine("Bookmark: {0}{1}", bookmark.Name, bookmark.IsColumn ? " (Column)" : "");
    if (bookmark.IsColumn)
    {
        Row row = bookmark.BookmarkStart.GetAncestor(NodeType.Row) as Row;
        if (row != null && bookmark.FirstColumn < row.Cells.Count)
            Console.WriteLine(row.Cells[bookmark.FirstColumn].GetText().TrimEnd(ControlChar.CellChar));
    }
}
{{< /highlight >}}

### Supported access to related DataTable using relation name for LINQ Reporting Engine

Issue: WORDSNET-19238

The following sections of the engine's documentation were updated to describe the change:

- "[Working with DataRow and DataRowView Objects](/display/wordsnet/Template+Syntax#TemplateSyntax-WorkingwithDataRowandDataRowViewObjects)"

### User-installed fonts are now supported upon using SystemFontSource on Windows10

Issue WORDSNET-19531

On Windows 10 fonts may be installed either into system folder "%windir%\fonts" for all users or into user folder "%userprofile%\AppData\Local\Microsoft\Windows\Fonts" for the current user. Previously for SystemFontSource AW scanned only system-installed fonts. Now AW also scans user-installed fonts for SystemFontSource.
