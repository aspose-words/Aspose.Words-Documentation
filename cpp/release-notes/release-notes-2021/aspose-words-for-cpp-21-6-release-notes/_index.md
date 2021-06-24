---
title: Aspose.Words for C++ 21.6 Release Notes
type: docs
weight: 40
url: /cpp/aspose-words-for-cpp-21-6-release-notes/
aliases: [/net/aspose-words-for-cpp-21-6-release-notes/]
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 21.6](https://www.nuget.org/packages/Aspose.Words.Cpp/21.6.0).

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .Net on this regular monthly release:

- Implemented an ability to set fill and stroke formatting for chart series, data points and markers.
- Introduced a new API for working with textures.
- Implemented rendering of OOXML Ink (InkML subset).
- TxtSaveOptions.MaxCharactersPerLine property was introduced.
- A new Document.LayoutOption is added to control page numbering in a continuous section.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .Net System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-21647 | DOCX to PDF: Content displacement occurs | New Feature |
| WORDSNET-12748 | Provide API to change Color of Category Series of Chart | New Feature |
| WORDSNET-13907 | Support rendering DrawingML InkML ContentPart | New Feature |
| WORDSNET-12275 | Add feature to change the color of ChartSeries | New Feature |
| WORDSNET-21847 | Advanced OpenType font features not applied | New Feature |
| WORDSNET-21871 | Add feature to create Scatter chart with lines | New Feature |
| WORDSNET-12529 | Add feature to get/set Asian Character Spacing properties | New Feature |
| WORDSNET-22082 | storeItemChecksum get/set method | New Feature |
| WORDSNET-22002 | Implement Fill.PresetTextured() method | New Feature |
| WORDSNET-20023 | Allow to change Pie chart colors | New Feature |
| WORDSNET-15201 | Implement MS Word 2013 behavior for continuous sections with footnotes | New Feature |
| WORDSNET-17510 | Aspose.Words does not mimic MS Word for document structure tags | Enhancement |
| WORDSNET-18186 | Ink annotations lost during conversion from Word to PDF | Enhancement |
| WORDSNET-20020 | Transparency in converted Word Document is not shown in PDF | Enhancement |
| WORDSNET-12640 | Add feature to set/get Chart series colors | Enhancement |
| WORDSNET-20462 | Handwritten contents are lost after DOCX to PDF | Enhancement |
| WORDSNET-21156 | Incorrect value returned by LayoutCollector | Enhancement |
| WORDSNET-19199 | DOCX to PDF with free hand drawing images | Enhancement |
| WORDSNET-22090 | Each Line in TXT File should have a Fix Length of Characters \| Maximum   Allowed Characters in Line | Enhancement |
| WORDSNET-21795 | DOCX to PDF/A conversion and validation fails: Problem with word/spaces   separation inside header | Enhancement |
| WORDSNET-15771 | Table overflows to next page while converting to PDF | Bug |
| WORDSNET-22155 | DOCX to PDF/A conversion: significant tagging overhead | Bug |
| WORDSNET-18780 | Table is rendered on the next page in output PDF | Bug |
| WORDSNET-22158 | MailMerge CleanupOptions does not remove the empty table rows | Bug |
| WORDSNET-14523 | After conversion to PDF, content is missing | Bug |
| WORDSNET-22171 | Missing SVG Shape in PDF | Bug |
| WORDSNET-16700 | PrinterMetrics does not work on Xamarin/NetStandard | Bug |
| WORDSNET-18091 | UpdateFields method throws System.InvalidOperationException | Bug |
| WORDSNET-22186 | Text of Frame is overlapped after DOCX to PDF conversion | Bug |
| WORDSNET-21845 | DOCX to PDF > Incorrect rendering of footnotes | Bug |
| WORDSNET-21848 | Text in images gets cut off after DOCX to PDF converison | Bug |
| WORDSNET-22189 | Incorrect list numbering when converting from DOCX to HTML | Bug |
| WORDSNET-18945 | System.InvalidOperationException is thrown while saving DOCX to PDF | Bug |
| WORDSNET-18275 | Document.UpdatePageLayout throws System.InvalidCastException | Bug |
| WORDSNET-22193 | Hidden text is rendered after DOCX to PDF conversion | Bug |
| WORDSNET-18618 | Document.UpdatePageLayout throws System.InvalidOperationException | Bug |
| WORDSNET-20733 | Incorrect rendering of Footnotes Content | Bug |
| WORDSNET-17613 | Content pushed down to subsequent pages in PDF causing overlapping in   Footnotes | Bug |
| WORDSNET-22201 | System.InvalidOperationException is thrown after removing styles | Bug |
| WORDSNET-22166 | Footnotes break continuous section break rendering (rendered as page   break) | Bug |
| WORDSNET-21332 | Overlapping - Embedded Table contents from 2nd & 3rd pages move to   1st page in TIFF | Bug |
| WORDSNET-21557 | Text is overlapped after DOCX to PDF conversion | Bug |
| WORDSNET-22207 | Bullet points order issue during Word to PDF conversion | Bug |
| WORDSNET-22209 | NullReferenceException occurs upon DOC to PDF conversion | Bug |
| WORDSNET-22208 | NullReferenceException occurs upon DOCX to PDF conversion | Bug |
| WORDSNET-22213 | Document.PageCount throws System.IndexOutOfRangeException | Bug |
| WORDSNET-22219 | Incorrect Image resolution and dimension units while importing Markdown | Bug |
| WORDSNET-20315 | A Legend Entry in Chart is missing when Converting Chart to JPEG | Bug |
| WORDSNET-19458 | DOCX to PDF conversion issue with document structure | Bug |
| WORDSNET-22224 | Hidden footnotes throws asserts during reflow | Bug |
| WORDSNET-22185 | Mail Merge field is lost after re-saving DOCX | Bug |
| WORDSNET-18562 | DOCX to PDF conversion issue with Chart's Data Label | Bug |
| WORDSNET-21707 | Font name of Hebrew text is changed to 'Times New Roman' after re-saving   DOCX | Bug |
| WORDSNET-20920 | StructuredDocumentTag content is changed on page extraction. | Bug |
| WORDSNET-15553 | Aspose.Words generated PDFA size issue | Bug |
| WORDSNET-20943 | Incorrect table position | Bug |
| WORDSNET-21730 | DOCX to PDF conversion issue with ExportDocumentStructure (incorrect   tags) | Bug |
| WORDSNET-22232 | Aspose.Words does not mimic MS Word for document structure tags | Bug |
| WORDSNET-22177 | Wrong Page Number when word converted to pdf | Bug |
| WORDSNET-22235 | Image is rendered as cross after inserting HTML into document at Linux | Bug |
| WORDSNET-21993 | DOCX to PDF conversion issue - PDF is not editable | Bug |
| WORDSNET-21609 | DOCX->HTML->DOCX conversion: table size changes in the output | Bug |
| WORDSNET-22241 | Checked symbol of content control is changed after first click | Bug |
| WORDSNET-22244 | Process hangs when calling UpdateFields method | Bug |
| WORDSNET-21701 | NullReferenceException is thrown when call UpdatePageLayout | Bug |
| WORDSNET-16663 | Problem with saving DOC with footnote to PDF | Bug |
| WORDSNET-21896 | FileCorruptedException occurs when loading a MHTML document | Bug |
| WORDSNET-22195 | Aspose.Words UpdateLayout method throws exception "Infinite   loop" | Bug |
| WORDSNET-22253 | Hyperlink is lost after re-saving DOCX | Bug |
| WORDSNET-21352 | ExportDocumentStructure creates incorrect tags in output PDF | Bug |
| WORDSNET-21937 | System.NullReferenceException is thrown when DOCX is saved to PDF | Bug |
| WORDSNET-22257 | AppendContent throws exception | Bug |
| WORDSNET-20631 | ExportDocumentStructure and NVDA application | Bug |
| WORDSNET-14495 | Alignment of OfficeMath is incorrect when it is inserted by InsertHtml | Bug |
| WORDSNET-22103 | Merging two documents and list numbering doesn't continue | Bug |
| WORDSNET-22276 | Incorrect rendering "Rectangle:Rounded Corners" shape | Bug |
| WORDSNET-22174 | DOCX to ODT conversion throws System.InvalidOperationException | Bug |
| WORDSNET-22259 | "Value was either too large or too small for an Int32."   exception when open DOCX file | Bug |
| WORDSNET-21968 | System.IndexOutOfRangeException occurs upon Word XML Document to PDF   conversion | Bug |
| WORDSNET-21969 | DOCX to PDF conversion \| Even numbers are skipped from x-axis of chart | Bug |
| WORDSNET-21975 | Heading is not properly rendered when exported to PDF | Bug |
| WORDSNET-22109 | System.NullReferenceException occurs upon DOCX to PDF conversion | Bug |
| WORDSNET-22113 | Text font is changed after DOCX to PDF conversion | Bug |
| WORDSNET-22129 | DocumentBuilder.InsertFootnote causes System.IndexOutOfRangeException   when saving to PDF | Bug |
| WORDSNET-21731 | DOCX to PDF conversion issue with ExportDocumentStructure (incorrect   list) | Bug |
| WORDSNET-22094 | Document.ExtractPages method removes Bookmarks | Bug |
| WORDSNET-22149 | Paragraph become list item after inserting one document into another | Bug |
| WORDSNET-22286 | InvalidOperationException: Unexpected ST_TrueFalse value occurs upon   loading a DOCX | Bug |
| WORDSNET-21622 | System.InvalidOperationException occurs upon DOCX to HTML conversion | Bug |
| WORDSNET-22292 | Update storeItemChecksum after XmlMapping update | Bug |
| WORDSNET-5293 | REF field should show hyperlink tooltip | Bug |
| WORDSNET-16691 | Printer metrics is rendered improperly | Bug |
| WORDSNET-17724 | DOCX to PDF conversion issue with table rendering | Bug |
| WORDSNET-17769 | Converting DOCX to PDF overlaps the tables | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new LayoutEntityType and new values for the Kind property within the LayoutEnumerator class

A new value *Note* has been added to the public enum LayoutEntityType:
{{< highlight csharp >}}
public enum LayoutEntityType
{
...
  /// <summary>
  /// Represents placeholder for note content.
  ///
  /// Note may have <see cref="Line"/> and <see cref="Row"/> child entities.
  /// </summary>
  Note
...
}
{{< /highlight >}}

This will help users iterate over notes inside footnotes/endnotes containers.

Use Case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"SomeDocument.docx")
auto en = System::MakeObject<LayoutEnumerator>(doc);

// We start from the first page.
assert(en->get_Type() == LayoutEntityType::Page);

// Move to the first column on the page.
en->MoveFirstChild();
assert(en->get_Type() == LayoutEntityType::Column);

// Move to the first child in the column.
en->MoveFirstChild();

do
{
  // Iterate to a footnote container.
  if (en->get_Type() == LayoutEntityType::Footnote)
  {
    break;
  }
}
while(en->MoveNext());

// If the footnote container exists in the column, we will process notes.
if (en->get_Type() == LayoutEntityType::Footnote)
{
  // Move to the first note in the footnote container.
  if (en->MoveFirstChild())
  {
    do
    {
     // Move over notes inside the footnote container.
     assert(en->get_Type() == LayoutEntityType::Note);
     // Do something.
    }
    while (en->MoveNext());
   }
 }
}
{{< /highlight >}}

### New Kind enum values for the LayoutEnumerator class

8 new Kind enum values have been added for the LayoutEnumerator class:
{{< highlight csharp >}}
"FOOTNOTES"
"ENDNOTES"
"FOOTNOTESEPARATOR"
"ENDNOTESEPARATOR"
"FOOTNOTECONTINUATIONSEPARATOR"
"ENDNOTECONTINUATIONSEPARATOR"
"FOOTNOTECONTINUATIONNOTICE"
"ENDNOTECONTINUATIONNOTICE"
{{< /highlight >}}

The most useful values are the kinds that allow to unambiguously determine what type of separator you are working with. This is true because for all kinds of separators the LayoutEntityType is LayoutEntityType.NoteSeparator.

Use Case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"SomeDocument.docx")
auto en = System::MakeObject<LayoutEnumerator>(doc);

// We start from the first page.
assert(en->get_Type() == LayoutEntityType::Page);

// Move to the first column on the page.
en->MoveFirstChild();
assert(en->get_Type() == LayoutEntityType::Column);

// Move to the first child in the column.
en.MoveFirstChild();

do
{
   if (en->get_Type() == LayoutEntityType::NoteSeparator && en->get_Kind() == u"FOOTNOTESEPARATOR")
   {
      // Do something.
   }

   if (en->get_Type() == LayoutEntityType::NoteSeparator && en->get_Kind() == u"FOOTNOTECONTINUATIONSEPARATOR")
   {
      // Do something.
   }

   if (en->get_Type() == LayoutEntityType::NoteSeparator && en->get_Kind() == u"FOOTNOTECONTINUATIONNOTICE")
   {
      // Do something.
   }
}
while(en->MoveNext());
}
{{< /highlight >}}

### Added a new public property CustomXmlPart.DataChecksum

Related issue: WORDSNET-22082

Added a new public property CustomXmlPart.DataChecksum:
{{< highlight csharp >}}
/// <summary>
/// Specifies a cyclic redundancy check (CRC) checksum of the <see cref="Data"/> content.
/// </summary>
public long DataChecksum
{{< /highlight >}}

It's readonly. It is numeric representation of the storeItemChecksum element. The checksum is computed using the data of the corresponding custom XML data part.

Use Case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"Document.docx");
auto sdt = System::StaticCast<StructuredDocumentTag>(doc->get_GetChild(NodeType::StructuredDocumentTag, 0, true));
std::cout << sdt->get_XmlMapping()->get_CustomXmlPart()->get_DataChecksum() << '\n';
auto doc = System::MakeObject<Document>();

auto sdt = System::MakeObject<StructuredDocumentTag>(doc, SdtType::RichText, MarkupLevel::Block);
doc->get_FirstSection()->get_Body()->Insert(sdt, nullptr, false);
             
sdt->get_XmlMapping()->SetMapping(doc->get_CustomXmlParts()->Add(u"C8FFD3B6-7EF8-4963-895B-3565F68A03E7",
    u"<root><text>test</text></root>"), u"/root/text", u"");
std::cout << sdt->get_XmlMapping()->get_CustomXmlPart()->get_DataChecksum() << '\n';
{{< /highlight >}}

### A new Document.LayoutOption is added to control page numbering in a continuous section

Related issues: WORDSNET-22177, WORDSNET-17760.

A new layout option is added to control Aspose.Words behavior when computing page numbers in a continuous section that restarts page numbering:
{{< highlight csharp >}}
namespace Aspose.Words.Layout
{
...
    public class LayoutOptions
    {
...
        /// <summary>
        /// Gets or sets the mode of behavior for computing page numbers when a continuous section
        /// restarts the page numbering.
        /// </summary>
        /// <remarks>
        /// The default behavior matches the latest MS Word version.
        /// Older page numbering logic demonstrated by MS Word 2016 is available via this option.
        /// </remarks>
        public ContinuosSectionRestart ContinuousSectionPageNumberingRestart
}
...
    /// <summary>
    /// Represents different behaviors when computing page numbers in a continuous section that restarts page numbering.
    /// </summary>
    public enum ContinuosSectionRestart
    {
        /// <summary>
        /// Page numbering always restarts regardless of content flow.
        /// </summary>
        /// <remarks>
        /// This behavior is demonstrated by all MS Word versions, except Word 2016.
        /// </remarks>
        Always = 0,
        /// <summary>
        /// Page numbering restarts only if there is no other content before the section on the page where the section starts.
        /// </summary>
        /// <remarks>
        /// The behavior is demonstrated by MS Word 2016.
        /// </remarks>
        FromNewPageOnly,
    }
}
{{< /highlight >}}

After the changes, the default Aspose.Words behavior matches the current MS Word version (2019).
The older behavior implemented per WORDSNET-17760 is still avaialable via the introduced option:

{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"input.docx");
doc->get_LayoutOptions()->set_ContinuousSectionPageNumberingRestart(ContinuosSectionRestart::FromNewPageOnly);
doc->Save(u"out.pdf");
{{< /highlight >}}

Note: It is required to rebuild the document page layout (via Document.UpdatePageLayout() method) after changing the Document.LayoutOptions values.

### Implemented ability to set fill and stroke formatting for chart series, data points and markers

Related issue: WORDSNET-12275

Properties of the new ChartFormat type have been added to the ChartSeries, ChartDataPoint and ChartMarker classes.
{{< highlight csharp >}}
public class ChartSeries
{
    /// <summary>
    /// Provides access to fill and line formatting of the series.
    /// </summary>
    public ChartFormat Format { get; }
}

public class ChartDataPoint
{
    /// <summary>
    /// Provides access to fill and line formatting of this data point.
    /// </summary>
    public ChartFormat Format { get; }
}

public class ChartMarker
{
    /// <summary>
    /// Provides access to fill and line formatting of this marker.
    /// </summary>
    public ChartFormat Format { get; }
}

/// <summary>
/// Represents the formatting of a chart element.
/// </summary>
public class ChartFormat
{
    /// <summary>
    /// Gets fill formatting for the parent chart element.
    /// </summary>
    public Fill Fill { get; }

    /// <summary>
    /// Gets line formatting for the parent chart element.
    /// </summary>
    public Stroke Stroke { get; }
}
{{< /highlight >}}

Also aliases to some existing properties have been added to the Stroke class: ForeColor, BackColor, Visible and Transparency. The original Color, Color2, On and Opacity properties will be made obsolete in a future version of Aspose.Words.
{{< highlight csharp >}}
public class Stroke
{
    /// <summary>
    /// Gets or sets the foreground color of the stroke.
    /// </summary>
    public Color ForeColor { get; set; }

    /// <summary>
    /// Gets or sets the background color of the stroke.
    /// </summary>
    public Color BackColor { get; set; }
     
    /// <summary>
    /// Gets or sets a flag indicating whether the stroke is visible.
    /// </summary>
    public bool Visible { get; set; }
     
    /// <summary>
    /// Gets or sets a value between 0.0 (opaque) and 1.0 (clear) representing the degree of transparency of the stroke.
    /// </summary>
    /// <remarks>
    /// The default value is 0.
    /// </remarks>
    public double Transparency { get; set; }
}
{{< /highlight >}}

Use Case: Explains how to set series color
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();
auto seriesColl = chart->get_Series();

// Delete default generated series.
seriesColl->Clear();

// Create category names array.
auto categories = System::MakeArray<System::String>({ u"AW Category 1", u"AW Category 2" });

// Adding new series. Value and category arrays must be the same size.
auto series1 = seriesColl->Add(u"AW Series 1", categories, System::MakeArray<double>({ 1, 2 }));
auto series2 = seriesColl->Add(u"AW Series 2", categories, System::MakeArray<double>({ 3, 4 }));
auto series3 = seriesColl->Add(u"AW Series 3", categories, System::MakeArray<double>({ 5, 6 }));

// Set series color.
series1->get_Format()->get_Fill()->set_ForeColor(Color::get_Red());
series2->get_Format()->get_Fill()->set_ForeColor(Color::get_Yellow());
series3->get_Format()->get_Fill()->set_ForeColor(Color::get_Blue());

doc->Save(u"ColumnColor.docx");
{{< /highlight >}}

Use Case: Explains how to set individual formatting for categories of a column chart
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();

// Delete default generated series.
chart->get_Series()->Clear();

// Adding new series.
auto series = chart->get_Series->Add(u"AW Series 1", 
    System::MakeArray<System::String>({ u"AW Category 1", u"AW Category 2", u"AW Category 3", u"AW Category 4" }), 
    System::MakeArray<double>({ 1, 2, 3, 4 }));

// Set column formatting.
auto dataPoints = series->get_DataPoints();
dataPoints->idx_get(0)->get_Format()->get_Fill()->PresetTextured(PresetTexture::Denim);
dataPoints->idx_get(1)->get_Format()->get_Fill()->set_ForeColor(Color::get_Red());
dataPoints->idx_get(2)->get_Format()->get_Fill()->set_ForeColor(Color::get_Yellow());
dataPoints->idx_get(3)->get_Format()->get_Fill()->set_ForeColor(Color::get_Blue());

doc->Save("IndividualColumnFormatting.docx");
{{< /highlight >}}

Use Case: Explains how to set line color and weight
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();
auto seriesColl = chart->get_Series();

// Delete default generated series.
seriesColl->Clear();

// Adding new series.
auto series1 = seriesColl->Add(u"AW Series 1", System::MakeArray<double>({ 0.7, 1.8, 2.6 }), System::MakeArray<double>({ 2.7, 3.2, 0.8 }));
auto series2 = seriesColl->Add(u"AW Series 2", System::MakeArray<double>({ 0.5, 1.5, 2.5 }), System::MakeArray<double>({ 3, 1, 2 }));

// Set series color.
series1->get_Format()->get_Stroke()->set_ForeColor(Color::get_Red());
series1->get_Format()->get_Stroke()->set_Weight(5);
series2->get_Format()->get_Stroke()->set_ForeColor(Color::get_LightGreen());
series2->get_Format()->get_Stroke()->set_Weight(5);

doc->Save("LineColorAndWeight.docx");
{{< /highlight >}}

Use Case: Explains how to set line segment colors
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();

// Delete default generated series.
chart->get_Series()->Clear();

// Adding new series.
auto series = chart->get_Series()->Add(u"AW Series 1", System::MakeArray<double>({ 0.7, 1.8, 2.6, 3.5 }), System::MakeArray<double>({ 2.7, 3.2, 0.8, 0.1 }));
series->get_Format()->get_Stroke()->set_Weight(4);

// Set line colors.
auto dataPoints = series->get_DataPoints();
dataPoints->idx_get(1)->get_Format()->get_Stroke()->set_ForeColor(Color::get_Red());
dataPoints->idx_get(2)->get_Format()->get_Stroke()->set_ForeColor(Color::get_Yellow());
dataPoints->idx_get(3)->get_Format()->get_Stroke()->set_ForeColor(Color::get_Blue());

doc->get_Save(u"LineSegmentColor.docx");
{{< /highlight >}}

Use Case: Explains how to set Pie chart colors
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();

// Delete default generated series.
chart->get_Series()->Clear();

// Adding new series.
auto series = chart->get_Series()->Add(u"Series 1", System::MakeArray<System::String>({ "Category1", "Category2", "Category3" }), System::MakeArray<double>({ 2.7, 3.2, 0.8 }));

// Set data point color.
auto dataPoints = series->get_DataPoints();
dataPoints->idx_get(0)->get_Format()->get_Fill()->set_ForeColor(Color::get_Red());
dataPoints->idx_get(1)->get_Format()->get_Fill()->set_ForeColor(Color::get_Yellow());
dataPoints->idx_get(2)->get_Format()->get_Fill()->set_ForeColor(Color::get_Green());

doc->Save(u"PieColor.docx");
{{< /highlight >}}

Use Case: Explains how to set marker formatting
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();

// Delete default generated series.
chart->get_Series()->Clear();

// Adding new series.
auto series = chart->get_Series()->Add(u"AW Series 1", System::MakeArray<double>({ 0.7, 1.8, 2.6, 3.9 }), System::MakeArray<double>({ 2.7, 3.2, 0.8, 1.7 }));

// Set marker formatting.
series->get_Marker()->set_Size(40);
series->get_Marker()->set_Symbol(MarkerSymbol::Square);
auto dataPoints = series->DataPoints();

dataPoints->idx_get(0)->get_Marker()->get_Format()->get_Fill()->PresetTextured(PresetTexture::Denim);
dataPoints->idx_get(0)->get_Marker()->get_Format()->get_Stroke()->set_ForeColor(Color::get_Yellow());
dataPoints->idx_get(1)->get_Marker()->get_Format()->get_Fill()->PresetTextured(PresetTexture::WaterDroplets);
dataPoints->idx_get(1)->get_Marker()->get_Format()->get_Stroke()->set_ForeColor(Color::get_Yellow());
dataPoints->idx_get(2)->get_Marker()->get_Format()->get_Fill()->PresetTextured(PresetTexture::GreenMarble);
dataPoints->idx_get(2)->get_Marker()->get_Format()->get_Stroke()->set_ForeColor(Color::get_Yellow());
dataPoints->idx_get(3)->get_Marker()->get_Format()->get_Fill()->PresetTextured(PresetTexture::Oak);
dataPoints->idx_get(3)->get_Marker()->get_Format()->get_Stroke()->set_ForeColor(Color::get_Yellow());

doc->Save(u"MarkerFormatting.docx");
{{< /highlight >}}

### Implemented Rendering of OOXML Ink (InkML subset)

OOXML Ink content is specified by a subset of syntax and semantics for the Ink Markup Language (see ["InkML specification"](https://www.w3.org/TR/InkML/)). The details of the subset are described in ["2.1.4 Ink Content Part"](https://docs.microsoft.com/en-us/openspecs/office_standards/ms-odrawxml/096dacae-0d2c-4861-bc4d-c8e4c6405ad3) of OOXML specification.

Prior to this version Aspose.Words could render only fallback shapes for OOXML Ink objects, i.e. InkML was not actually processed and a simple prerendered image was used instead. And now OOXML ink content part can be rendered directly ("cold" rendering).

To control the mode of Ink rendering a new public property SaveOptions.ImlRenderingMode was introduced and the corresponding enum was added:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining how ink (InkML) objects are rendered.
/// </summary>
/// <remarks>
/// The default value is <see cref="Aspose.Words.Saving.ImlRenderingMode.InkML"/>.
/// <para>This property is used when the document is exported to fixed page formats.</para>
/// </remarks>
public ImlRenderingMode ImlRenderingMode
/// <summary>
/// Specifies how ink (InkML) objects are rendered to fixed page formats.
/// </summary>
public enum ImlRenderingMode
{
    /// <summary>
    /// If fall-back shape is available for ink (InkML) object, Aspose.Words renders fall-back shape instead of the InkML.
    /// </summary>
    /// <remarks>
    /// Please note that after saving a document to a fixed page format with fall-back rendering mode,
    /// InkML objects in the Aspose.Words document model are permanently replaced with their fall-back counterparts.
    /// As a result, saving the same document again will always use fall-back shapes, even if ImlRenderingMode is set to InkML.
    /// </remarks>
    Fallback,
    /// <summary>
    /// Aspose.Words ignores fall-back shape of ink (InkML) object and renders InkML itself.
    /// This is the default mode.
    /// </summary>
    InkML
}
{{< /highlight >}}

In addition to limitations described in ["2.1.4 Ink Content Part"](https://docs.microsoft.com/en-us/openspecs/office_standards/ms-odrawxml/096dacae-0d2c-4861-bc4d-c8e4c6405ad3) of OOXML specification, the first version of InkML cold rendering has the following limitations:

InkML Structural Element: 
- **channel** 
	- The *name* attribute can be any string, but strings other than the following strings are ignored: X, Y, F. 
	- The *units* attribute can be any string, but any value other than the following value is ignored: dev, in, cm
- **traceGroup**
	- Any content other than *trace* and *traceGroup* is ignored and not persisted.
- **brushProperty**
	- *rasterOp* - A value that defines how the colors of the pen and background interact. Is ignored. 
	- *antiAliased* - A value that indicates if the drawn ink is anti-aliased. Is ignored.
	- *fitToCurve* - A value that indicates if the ink is rendered as a series of curves versus as lines between pen sample points. Is ignored. 
- **annotationXML**
	- Is ignored and not persisted.

Due to the limitations described above the Aspose.Words output may not exactly match the MS Word output in some cases.
If the rendering result is unsatisfactory, please use the fallback mode to get a result similar to previous versions of Aspose.Words.

### ImportFormatOptions.MergePastedLists property was introduced

Related issue: WORDSNET-22103

The following new public property was added into the ImportFormatOptions class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value that specifies whether pasted lists will be merged with surrounding lists.
/// The default value is <c>false</c>.
/// </summary>
public bool MergePastedLists
{{< /highlight >}}

Use Case: Explains how to merge pasted lists with surrounding lists when adding one document to another
{{< highlight cpp >}}
auto srcDoc = System::MakeObject<Document>(u"src.docx");
auto dstDoc = System::MakeObject<Document>(u"dst.docx");

auto importFormatOptions = System::MakeObject<ImportFormatOptions>();
importFormatOptions->set_MergePastedLists(true);
dstDoc->AppendDocument(srcDoc, ImportFormatMode::UseDestinationStyles, importFormatOptions);

dstDoc->Save(u"out.docx");
{{< /highlight >}}

### Public API for working with textures has been introduced

Related issue: WORDSNET-22002

A new Fill.PresetTextured() public method has been added:
{{< highlight csharp >}}
/// <summary>
/// Sets the fill to a preset texture.
/// <param name="presetTexture"><see cref="Drawing.PresetTexture"/></param>
/// </summary>
public void PresetTextured(PresetTexture presetTexture)
{{< /highlight >}}

A new Fill.PresetTexture public property has been added:
{{< highlight csharp >}}
/// <summary>
/// Gets a <see cref="Drawing.PresetTexture"/> for the fill.
/// </summary>
public PresetTexture PresetTexture{ get; }
{{< /highlight >}}

A new public enum has been introduced:
{{< highlight csharp >}}
/// <summary>
/// Specifies texture to be used to fill a shape.
/// </summary>
public enum PresetTexture
{{< /highlight >}}

Use Case: Explains how to get and apply a texture to a fill
{{< highlight cpp >}}
// Open some document with a shape.
auto doc = System::MakeObject<Document>(u"DocWithShape.docx");

// Get Fill object for the first shape.
auto fill = doc->get_FirstSection()->get_Body()->get_Shapes()->idx_get(0)->get_Fill();

// Check Fill PresetTexture value.
std::cout << "PresetTexture value is: " << System::ObjectExt::ToString(fill->get_PresetTexture()).ToUtf8String() << '\n';

// Apply BrownMarble texture to the shape fill.
fill->PresetTextured(PresetTexture::BrownMarble);

doc->Save(u"BrownMarble.docx");
{{< /highlight >}}

### TxtSaveOptions.MaxCharactersPerLine property was introduced

Related issue: WORDSNET-22090

The following new public property was added into the TxtSaveOptions class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets an integer value that specifies the maximum number of characters per one line.
/// The default value is 0, that means no limit.
/// </summary>
public int MaxCharactersPerLine { get; set; }
{{< /highlight >}}

Use Case: Explains how to limit maximum characters per line in output document of TXT format:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"input.docx");

auto saveOptions = System::MakeObject<TxtSaveOptions>();
// Set 60 characters as maximum allowed per one line.
saveOptions->set_MaxCharactersPerLine(60);

doc->Save("out.txt", saveOptions);
{{< /highlight >}}