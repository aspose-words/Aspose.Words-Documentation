---
title: Aspose.Words for C++ 22.2 Release Notes
second_title: Aspose.Words for C++
description: "Aspose.Words for C++ 22.2 Release Notes – the latest updates and fixes."
type: docs
weight: 65
url: /cpp/aspose-words-for-cpp-22-2-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 22.2](https://www.nuget.org/packages/Aspose.Words.Cpp/22.2.0).

{{% /alert %}}

## Major Features

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- AZW3 format (KF8 is another name of the format) is now supported for loading.
- Added an ability to get custom field data which is associated with the field.
- Saving progress notifications were extended for HTML-based and XAML-based flow formats.
- Provided an ability to convert Shapes to SVG images upon export to HTML, MHTML or EPUB.
- Implemented list numbering export to PDF logical structure.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.

## Full List of Issues Covering all Changes in this Release (Reported by C++ Users)

| Key | Summary | Category |
| :- | :- | :- |
| WORDSCPP-1163 | Possibility of adding RPATH ORIGIN | New Feature |
| WORDSCPP-1155 | Digitally sign Aspose.Words for C++ dll | Bug |
| WORDSCPP-1160 | NotImplementedException is thrown when use FontConfigSubstitutionRule | Bug |
| WORDSCPP-1164 | Broken compiler detection | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-9675 | Layout of the document is incorrect:   paragraph justify and table grids | New Feature |
| WORDSNET-23235 | Consider adding an html save option to export shapes as SVG. | New Feature |
| WORDSNET-11377 | DOCX to PDF conversion issue with table rendering | New Feature |
| WORDSNET-22411 | Add support for loading of AZW3 (Kindle KF8) format documents | New Feature |
| WORDSNET-18936 | Implement performance logger | New Feature |
| WORDSNET-23319 | Add saving progress notification | New Feature |
| WORDSNET-6683 | UpdateTablelayout resizes the cell widths incorrectly | Bug |
| WORDSNET-7379 | Table layout issue on converting DOCM to PDF | Bug |
| WORDSNET-22735 | Content are lost after DOCX to PDF conversion | Bug |
| WORDSNET-8933 | DOCX to PDF conversion issue with table rendering | Bug |
| WORDSNET-10113 | Table width is changed after conversion from DOC to fixed file format | Bug |
| WORDSNET-13360 | Table's cell contents are wrapped to next line in output PDF | Bug |
| WORDSNET-14846 | An image and the text are bunched together with no padding in PDF | Bug |
| WORDSNET-15766 | Document layout differs from Word | Bug |
| WORDSNET-15846 | The document content corrupted after PDF rendition | Bug |
| WORDSNET-23364 | Text is justified improperly | Bug |
| WORDSNET-16375 | Table width is decreased after conversion from DOCX to PDF | Bug |
| WORDSNET-17446 | Table column content truncated in generated PDF | Bug |
| WORDSNET-15380 | A word splits and renders on two lines | Bug |
| WORDSNET-12200 | Table column widths are not correct in PDF/HTML | Bug |
| WORDSNET-20685 | Content are push down to page after DOCX to PDF conversion | Bug |
| WORDSNET-19395 | Document.PageCount returns incorrect value after saving document | Bug |
| WORDSNET-18786 | Document.PageCount returns incorrect page count | Bug |
| WORDSNET-13803 | Table's width is changed after conversion from DOCX to PDF | Bug |
| WORDSNET-12869 | DOC to XPS conversion issue with image rendering | Bug |
| WORDSNET-20844 | Table layout does not match Word | Bug |
| WORDSNET-20578 | Table corruption during Word to PDF conversion | Bug |
| WORDSNET-22074 | Image logo and text moved toward left side of page in output PDF | Bug |
| WORDSNET-9035 | "Automatically resize to fit contents" table option does not   work during converting to PDF | Bug |
| WORDSNET-23214 | Table is rendered improperly | Bug |
| WORDSNET-21626 | Narrowing of Table columns cause increase in Table heights and an extra   page in PDF | Bug |
| WORDSNET-18661 | Imitate MS Word logic of table grid calculation for auto-fit tables with   cells spanning multiple columns | Bug |
| WORDSNET-10721 | A floating table partially renders beyond left/right page margins in PDF | Bug |
| WORDSNET-14064 | Table's width is changed after conversion from DOCX to PDF | Bug |
| WORDSNET-22424 | Table AutoFit not working While converting From Word To PDF | Bug |
| WORDSNET-14634 | Table's width shrinks when two cells are merged | Bug |
| WORDSNET-15755 | Difference in number of pages between Aspose.Words and MS Word generated   PDF | Bug |
| WORDSNET-20687 | DOCX to PDF conversion issue with Table header | Bug |
| WORDSNET-20686 | Cell Content are rendered on two lines after DOCX to PDF conversion | Bug |
| WORDSNET-23244 | Improve single-path frame DML WordArt rendering | Bug |
| WORDSNET-15017 | Table and cell width is changed in output Pdf | Bug |
| WORDSNET-9595 | Calling UpdateTableLayout makes table widths incorrect | Bug |
| WORDSNET-17060 | Wrong Table column width in PDF export when mixing millimeter and percent   widths | Bug |
| WORDSNET-23272 | Add ListNumbering attribute to the PDF logical structure | Bug |
| WORDSNET-22689 | Table cell width increased in Aspose PDF | Bug |
| WORDSNET-22898 | Incorrect table column widths on conversion to PDF | Bug |
| WORDSNET-23312 | Some content is pushed to the previous page after converting DOCX to PDF | Bug |
| WORDSNET-15845 | Pages with landscape orientation trimmed after PDF rendition | Bug |
| WORDSNET-837 | Table layout algorithm does not work for "merged cells" that   are simply wide | Bug |
| WORDSNET-18698 | Curved text is not rendered correctly | Bug |
| WORDSNET-23339 | Oval shape with text is wrapped improperly | Bug |
| WORDSNET-23344 | Consider exporting hyperlink screentip as alternative text to PDF logical   structure | Bug |
| WORDSNET-23185 | Lost table while convert from PDF to MD | Bug |
| WORDSNET-19160 | OfficeMath renders incorrectly in output EMF | Bug |
| WORDSNET-22056 | Unwanted revisions are appeared after re-saving DOC | Bug |
| WORDSNET-23178 | InvalidOperationException: End of stream while reading literal string | Bug |
| WORDSNET-21070 | Support Widow/Orphan paragraph rule for the first line in a column when   footnotes balancing | Bug |
| WORDSNET-23374 | Custom footnote missed while converting from PDF to Word document | Bug |
| WORDSNET-22522 | Table Error\! No text of specified style in document after appending   documents | Bug |
| WORDSNET-23206 | Incorrect text of the legend items of the PieChart | Bug |
| WORDSNET-21384 | Embedded graphs are rendered wrong when saving to PDF | Bug |
| WORDSNET-23359 | "The document appears to be corrupted and cannot be loaded."   exception when opening ODT file | Bug |
| WORDSNET-23340 | An exception occurs when open ODT document | Bug |
| WORDSNET-23236 | Fix accuracy tests keeping failing | Bug |
| WORDSNET-23238 | Missing some contents after converting PDF to DOCX | Bug |
| WORDSNET-23315 | Custom document property cannot be retrieved from the PDF generated by   Aspose.Words | Bug |
| WORDSNET-23347 | Out of memory exception when creating custom XML | Bug |
| WORDSNET-23387 | Alignment of the equation changed after converting a DOCX to PDF | Bug |
| WORDSNET-20819 | Exception was thrown: Could not create the bitmap with the specified   parameters | Bug |
| WORDSNET-23392 | No way to apply Style to ApplyFont in FindReplaceOptions | Bug |
| WORDSNET-22818 | Text formatting is italicized in the PDF | Bug |
| WORDSNET-22826 | Chart X-Axis are changed after DOCX to PDF Conversion | Bug |
| WORDSNET-23256 | DOCX to PDF conversion issue with page number rendering in footer | Bug |
| WORDSNET-23258 | IReplacingCallback is called before processing FindWholeWordsOnly option | Bug |
| WORDSNET-23262 | Repeating table header is rendered improperly | Bug |
| WORDSNET-23265 | PDF import takes a lot of time | Bug |
| WORDSNET-23270 | WordArt glyphs are rendered with an extra outline | Bug |
| WORDSNET-23029 | NullReferenceException at PdfContext.ProcessCrossReferenceStream | Bug |
| WORDSNET-23179 | NullReferenceException at FootnoteDetector.AddSegmentToFootnotes | Bug |
| WORDSNET-23157 | OutOfMemoryException is thrown upon updating fields | Bug |
| WORDSNET-23274 | Paragraph space after is changed in diagram after open/save DOCX document | Bug |
| WORDSNET-23199 | InvalidOperationException: Cannot read AES initialization vector | Bug |
| WORDSNET-23036 | IndexOutOfRangeException at PdfUnfilteredStream.ApplyFilters | Bug |
| WORDSNET-23202 | InvalidOperationException in CffReader.ReadOffsets | Bug |
| WORDSNET-23207 | InvalidOperationException at PdfStream.ToByteArray | Bug |
| WORDSNET-23044 | Fix row detection issues on OCR Table.png | Bug |
| WORDSNET-23281 | Footnote paragraphs are broken | Bug |
| WORDSNET-23034 | InvalidOperationException: Unexpected nested BT operator | Bug |
| WORDSNET-23284 | The end-of-cell marker has been removed and revisions have changed when   creating custom XML | Bug |
| WORDSNET-23287 | Aspose.Words produces invalid document after DOCX to DOCX to DOCM   conversion | Bug |
| WORDSNET-23307 | Footnote contains original reference name | Bug |
| WORDSNET-23309 | Repair OCR in Aspose.Apps project before next website release | Bug |
| WORDSNET-23205 | InvalidOperationException: Page content invalid at PdfPage.get_Contents() | Bug |
| WORDSNET-23318 | Formatting is lost after open/save DOC file | Bug |
| WORDSNET-23233 | File can no be re-saved | Bug |
| WORDSNET-23308 | Missing bookmarks in DOCX to PDF conversion | Bug |
| WORDSNET-22504 | PDF size comparison between .NET framework and .NET Core | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-23326 | Tables are rendered with incorrect column   widths | New Feature |
| WORDSNET-17734 | DOCX to PDF conversion issue with table and images rendering | New Feature |
| WORDSNET-23198 | Make FieldData property public | New Feature |
| WORDSNET-21135 | Different table widths in resultant file | Bug |
| WORDSNET-21082 | Aspose Saved DOCX Converted to PDF Suppresses First Column from Table | Bug |
| WORDSNET-21921 | Number is wrapped to next line in table cell after DOCX to PDF   conversion | Bug |
| WORDSNET-20549 | More rows rendered on first Page causing lesser total pages in PDF | Bug |
| WORDSNET-17015 | DOCX to PDF - incorrect table cell width | Bug |
| WORDSNET-22779 | Document Compare changes the list numbers | Bug |
| WORDSNET-22926 | NullReferenceException is thrown on updating layout | Bug |
| WORDSNET-23170 | RTF to HTML conversion issue with List labels | Bug |
| WORDSNET-23299 | ArgumentException is thrown while inserting document | Bug |
| WORDSNET-23305 | Redundant table format revision is rendered | Bug |
| WORDSNET-22785 | Elements overlap when converting DOC to PDF with Java | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added FieldStart.FieldData property

Related issue: WORDSNET-23198

The following public property is added to FieldStart class:
{{< highlight csharp >}}
/// <summary>
/// Gets custom field data which is associated with the field.
/// </summary>
public byte[] FieldData { get; }
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(fileName);
auto field = document->get_Range()->get_Fields()->idx_get(0);
std::cout << field->get_Start()->get_FieldData()->get_Length() << '\n'
std::cout << Encoding::get_Default()->GetString(field->get_Start()->get_FieldData()) << '\n';
{{< /highlight >}}

### Added HtmlSaveOptions.SaveShapesAsSvg public property

Related issue: WORDSNET-23235

The following public property is added to HtmlSaveOptions class:
{{< highlight csharp >}}
/// <summary>
/// Controls whether <see cref="Drawing.Shape"/> nodes are converted to SVG images when saving to HTML, MHTML or EPUB. 
/// Default value is <c>false</c>.
/// </summary>
/// <remarks>
/// <para>
/// If this option is set to <c>true</c>, <see cref="Drawing.Shape"/> nodes are exported as &lt;svg&gt; elements.
/// Otherwise, they are rendered to bitmaps and are exported as &lt;img&gt; elements.
/// </para>
/// <para>
/// Note that this options also affects text boxes, because they are represented by <see cref="Drawing.Shape"/> nodes.
/// As a result, if this option is set to <c>true</c>, it overrides the <see cref="ExportTextBoxAsSvg"/> property
/// value and causes text boxes to be converted to SVG.
/// </para>
/// </remarks>
public bool ExportShapesAsSvg
{
    get { return mSaveImageOptions.ShapesAsSvg; }
    set { mSaveImageOptions.ShapesAsSvg = value; }
}
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
auto doc = System::MakeObject<Document>(fileName);
auto saveOptions = System:MakeObject<HtmlSaveOptions>();
saveOptions->set_ExportShapesAsSvg(true);
doc->Save(outputFileName, saveOptions);
{{< /highlight >}}

### AZW3 format is now supported for loading

Related issue: WORDSNET-22411

Aspose.Words can now load AZW3 documents (KF8 is another name of the format). Usually, documents in the AZW3 format have the ".azw3" or ".mobi" extension. However, a ".mobi" document may be in the older MOBI format, and some ".mobi" documents contain two versions of content - MOBI and AZW3 - for backward compatibility.

The following table explains what reader Aspose.Words uses to load MOBI and AZW3 documents in different cases:

![load-MOBI-and-AZW3-documents](MobiAzw3LoadFormat.png)

Currently, Aspose.Words always loads all topics from an AZW3 document in the order in which they appear in the table of contents.

The following publicly visible enum values were added:
{{< highlight csharp >}}
FileFormat.Azw3
LoadFormat.Azw3
{{< /highlight >}}

The FileFormatUtil class can now be used to determine if a file is an AZW3 document. For example, the following call
{{< highlight cpp >}}
auto info = FileFormatUtil::DetectFileFormat(u"book.azw3");
{{< /highlight >}}

will return an info instance with the FileFormatInfo.LoadFormat property set to LoadFormat.Azw3.

Currently, no load options have effect when loading AZW3 documents. LoadOptions.ResourceLoadingCallback is not invoked when loading AZW3 documents, because Aspose.Words expects all referenced resource files to be stored locally in the AZW3 document. Like in the Kindle reader, references to external resource files are ignored.

As a result, the only use cases for loading AZW3 documents that is currently available is the one illustrated below:
{{< highlight csharp >}}
auto doc = System::MakeObject<Document>(u"book.azw3");
{{< /highlight >}}

### Enabled saving progress notifications for HTML-based and XAML-based flow formats

Related issue: WORDSNET-23319

The SaveOptions.ProgressCallback is now also invoked when saving to the following HTML-based and XAML-based flow formats: Html, Mhtml, Epub, XamlFlow, and XamlFlowPack.

### Breaking change – explicit Table.AutoFit() call may be required to make table structure match the specified cell widths in a builder scenario

A major update that handles tables with incorrect or missing column width data in the source document is released in Aspose.Words 22.2.

Cell/column width data and the number of columns spanned by a cell are re-calculated from table and cell properties. Column width data stored in the document are replaced by re-calculated values.

The algorithm imitates MS Word logic that does not use cell widths. (In fact, cell width is not even stored in .DOCX format used by MS Word).

The new logic may change the output for some document builder scenarios. In the following example the number of columns spanned by the cell in row 2 is no longer calculated automatically from the specified cell widths:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
 
// First row
builder->StartTable();
 
auto cell1 = builder->InsertCell();
cell1->get_CellFormat->set_Width(100);
builder->Write(u"Text in cell 1.");

auto cell2 = builder->InsertCell();
cell2->get_CellFormat->set_Width(100);
builder->Write(u"Text in cell 2.");
 
// End of first row
builder->EndRow();

// Second row
auto cell3 = builder->InsertCell();
cell3->get_CellFormat()->set_Width(200);
builder->Write(u"Row 2 cell spans 2 columns.");

// End of second row
builder->EndRow();
builder->EndTable();
 
doc->UpdatePageLayout();
doc->Save(u"mergedCell.docx");
{{< /highlight >}}

The behavior was changed because cell width data proved to be unreliable in a number of generated documents.

In order to preserve the specified cell widths in the above scenario and calculate the number of columns spanned by a cell from cell width, Aspose.Words should be explicitly instructed by calling Table.AutoFit() method:
{{< highlight csharp >}}
// ...
auto table = builder->EndTable();

// Re-calculate table structure from the specified cell widths.
table->AutoFit(AutoFitBehavior::FixedColumnWidths);
doc->UpdatePageLayout();
doc->Save(u"mergedCell.docx");
{{< /highlight >}}

This will also set table layout to fixed, which is better suited for preserving cell widths regardless of contents.

### Removed obsolete property FieldXE.HasPageRangeBookmarkName

Removed obsolete property FieldXE.HasPageRangeBookmarkName. Please, use the FieldXE.PageRangeBookmarkName property instead.