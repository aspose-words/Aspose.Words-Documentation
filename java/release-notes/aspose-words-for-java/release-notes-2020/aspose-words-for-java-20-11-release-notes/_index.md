---
title: Aspose.Words for Java 20.11 Release Notes
description: "Aspose.Words for Java 20.11 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 2
url: /java/aspose-words-for-java-20-11-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 20.11](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.11/).

{{% /alert %}} 

## Major Features

There are 87 improvements and fixes in this regular monthly release. The most notable are:

- Regular OSGI compatibility check&update is performed.
- JAI + non-Oracle JRE incompatibility is fixed.
- Document.SpellingChecked and Document.GrammarChecked properties were exposed publicly.
- Charts data points API was extended.
- Implemented basic support for rendering fonts with legacy Arabic encodings.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10130	|Implement table row wrapping around floaters as MS Word 2013 does|New Feature|
|WORDSNET-16527	|Incorrect RTL table row wrapping around a floater in 2013 mode|New Feature|
|WORDSNET-18416	|DOCX to PDF conversion issue with table position|Enhancement|
|WORDSNET-20148	|Table row does not break across pages|Enhancement|
|WORDSNET-20626	|Converting DOC/DOCX to PDF - Page break issue|Enhancement|
|WORDSNET-21179	|Saving requires a seekable stream|Enhancement|
|WORDSNET-14311	|Font type is changed after converting Word to PDF|Enhancement|
|WORDSJAVA-2386 | Different scales of the image watermark. | Bug |
|WORDSJAVA-2406 | Comment.getDateTime(), DigitalSignature.getSignTime() returns date plus   current time zone | Bug |
|WORDSJAVA-2471 | JAI + non-Oracle JRE incompatibility: jpegfactory fails with com.sun.\* exception. | Bug |
|WORDSJAVA-2476 | RTF can't load ImageData with DiB format. | Bug |
|WORDSJAVA-2477 | Some tests with Odt fail because of wrong Attribute order in XML. | Bug |
|WORDSJAVA-2478 | TestCultureInfo.testCreateSpecificCultureRandomShortLanguage throws   java.lang.AssertionError | Bug |
|WORDSJAVA-2479 | TestGoldMhtmlOther.testTimestamp throws java.lang.AssertionError | Bug |
|WORDSNET-21147	|Expected a value between 0 and 22024 error occurs during Rendering a DOC|Bug|
|WORDSNET-21198	|Creating instance of LayoutEnumerator throws System.NullReferenceException|Bug|
|WORDSNET-13856	|DOCX to PDF conversion issue with Arabic font rendering|Bug|
|WORDSNET-21240	|Font size of the text is changed after re-saving BIDI RTF|Bug|
|WORDSNET-21265	|Missing half of file when saving same DOCX file twice|Bug|
|WORDSNET-5827	|Table overflow problem, while saving a document with PdfSaveOptions|Bug|
|WORDSNET-18262	|Charts x-axis values and their layout is incorrect in PDF|Bug|
|WORDSNET-4745	|Export theme fonts to RTF|Bug|
|WORDSNET-11765	|Some characters are not rendering in PS|Bug|
|WORDSNET-18874	|ChartSeries.DataPoints.Count returns incorrect value|Bug|
|WORDSNET-21201	|Field result incorrectly compared|Bug|
|WORDSNET-11769	|Some characters are not rendering in PostScript|Bug|
|WORDSNET-21007	|Content misplaced after DOC to PDF conversion|Bug|
|WORDSNET-21013	|DivideByZeroException when call UpdatePageLayout for attached document|Bug|
|WORDSNET-13875	|Spell check disabled after a document save|Bug|
|WORDSNET-18286	|The font is missing in the output PDF document|Bug|
|WORDSNET-21209	|Content control does not lock after inserting HTML|Bug|
|WORDSNET-17381	|Arabic Fonts not rendering correctly in PDF|Bug|
|WORDSNET-21217	|Some tests failed upon converting|Bug|
|WORDSNET-11515	|Aspose.Words layout may not match to MS Word when a font Spacing is negative (condensed)|Bug|
|WORDSNET-21220	|Empty SDT rendered as a control to PDF leads to incorrect aps tree structure|Bug|
|WORDSNET-21045	|System.NullReferenceException during DOCX to PDF conversion|Bug|
|WORDSNET-20203	|Property inheritance issue of chart data labels|Bug|
|WORDSNET-18656	|Issue with SDT blocks when Section break inside it|Bug|
|WORDSNET-21225	|PDF can not be opened|Bug|
|WORDSNET-21226	|Incorrect position of SVG images grouped together|Bug|
|WORDSNET-20427	|Page number renders incorrectly in output PDF|Bug|
|WORDSNET-19794	|Large memory consumption during get document statistics|Bug|
|WORDSNET-20429	|Document's text is pushed down to next pages in output PDF|Bug|
|WORDSNET-20952	|Investigate whether SkiaSharp blur effect can improve performance in .NET Standard version|Bug|
|WORDSNET-20125	|DOCX to PDF conversion issue with font rendering|Bug|
|WORDSNET-21042	|Custom properties do not export in output PDF|Bug|
|WORDSNET-21074	|Implement conversion of images from EMF to PNG during import for DOC format|Bug|
|WORDSNET-21075	|Cropping SVG images is ignored|Bug|
|WORDSNET-21076	|DOCX to HTML conversion hangs|Bug|
|WORDSNET-21079	|DOCX to PDF conversion issue with text position|Bug|
|WORDSNET-20809	|Large memory consumption during DOCX to PDF conversion|Bug|
|WORDSNET-21204	|Image RelativeHorizontalPosition does not set correctly in ODT|Bug|
|WORDSNET-20305	|Content overlaps hides header's content in PDF|Bug|
|WORDSNET-21141	|MailMerge.ExecuteWithRegions throws System.ArgumentException|Bug|
|WORDSNET-21031	|EMF converted from SVG is truncated in output Word document|Bug|
|WORDSNET-21099	|Incorrect X-Axis tickmarks in charts when converting DOCX to PDF|Bug|
|WORDSNET-21214	|System.IndexOutOfRangeException is thrown when Noto font is set using TextWatermarkOptions|Bug|
|WORDSNET-20924	|Incorrect page range extraction|Bug|
|WORDSNET-21122	|Debug.Assert fires during fields updates|Bug|
|WORDSNET-21126	|Image size is reduced after inserting RTF into a document using InsertDocument|Bug|
|WORDSNET-21128	|DOCX to PDF conversion: System.InvalidOperationException|Bug|
|WORDSNET-21131	|INDEX field - customizing the separator between item name and page number|Bug|
|WORDSNET-21134	|Protected document crashes the MS Word|Bug|
|WORDSNET-21136	|Images (pages) are lost after DOCX to PDF conversion|Bug|
|WORDSNET-21138	|Content in the last cell of the table get duplicated after breaking the mapping|Bug|
|WORDSNET-21267	|Can not convert from PDF to Markdown|Bug|
|WORDSNET-21150	|Debug.Assert fires in UpdateTableBlockRow method|Bug|
|WORDSNET-21104	|Hyperlink inserted via ReportingEngine does not navigate to the bookmarked location|Bug|
|WORDSNET-21195	|System.NullReferenceException occurs upon DOCX to PDF conversion|Bug|
|WORDSNET-21152	|System.ArgumentException while save DOCX to HTML|Bug|
|WORDSNET-21233	|Table.InsertAfter throws System.InvalidOperationException|Bug|
|WORDSNET-20403	|Horizontal Category Axis Text of Chart has Incorrect Angle when Converting to Image|Bug|
|WORDSNET-21160	|Exception raised when reading CHM file|Bug|
|WORDSNET-21162	|Data labels of the category axis are rendered horizontally after converting to PDF|Bug|
|WORDSNET-21167	|Contents are pushed down to next pages after DOCX to PDF conversion|Bug|
|WORDSNET-21202	|Incorrect cropping of textbox contents|Bug|
|WORDSNET-21281	|RemoveStaticFields with MailMerge: The hyperlinks are no longer working in the output|Bug|
|WORDSNET-21270	|Aspose.Words cannot open WordML with <w:tab w:val="start" />|Bug|
|WORDSNET-20548	|Transparent images in generated RTF have black background|Bug|
|WORDSNET-8318	|FieldCode of a deleted REF field appears in fixed page formats|Bug|
|WORDSNET-8215	|Hebrew content in dropdown form fields is inverted during Doc to TIFF conversion|Bug|
|WORDSNET-8532	|RenderedDocument.Pages.Count return incorrect value|Bug|
|WORDSNET-4008	|Shape is improperly rendered|Bug|
|WORDSNET-11161	|Hidden text should not be hyphenated|Bug|
|WORDSNET-19910	|Footnotes are rendered wrong|Bug|
|WORDSNET-21057	|Shapes are overlapped after DOCX to PDF conversion|Bug|
|WORDSNET-21184	|Document.UpdateFields throws System.NullReferenceException|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.11. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Added a new public properties Document.SpellingChecked and Document.GrammarChecked

Related issue: WORDSNET-13875

Added a new public property Document.SpellingChecked:

A new public property IgnorePrinterMetrics has been added to the LayoutOptions class.
{{< highlight csharp >}}
    /// <summary>
    /// Returns <b>true</b> if the document has been checked for spelling.
    /// </summary>
    /// <remarks>
    /// To recheck the spelling in the document, set this property to <b>false</b>.
    /// </remarks>
    public bool SpellingChecked
    { 
        get;
        set;
    }
{{< /highlight >}}

Added a new public property Document.GrammarChecked:
{{< highlight csharp >}}
    /// <summary>
    /// Returns <b>true</b> if the document has been checked for grammar.
    /// </summary>
    /// <remarks>
    /// To recheck the grammar in the document, set this property to <b>false</b>.
    /// </remarks>
    public bool GrammarChecked
    { 
        get;
        set;
    }
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
    Document doc = new Document(fileName);
    // Verifying if this document has been checked for spelling or grammar.
    if (doc.SpellingChecked || doc.GrammarChecked)
    {
        // The string with spelling errors.
        doc.FirstSection.Body.FirstParagraph.FirstRun.Text = "The speeling in this documentz is all broked";
        // Spelling check start. 
        doc.SpellingChecked = false; 
        // Grammar check start. 
        doc.GrammarChecked = false;
    }
    doc.Save(outFileName);
{{< /highlight >}}

### Changes in API of chart data points
The following changes in chart data points API have been implemented (WORDSNET-18874):

- The this property of the ChartDataPointCollection class has been changed to automatically create a data point if it does not exist yet. In the past, a point representing default data point properties was returned at this case.
- The Count property of the ChartDataPointCollection class has been changed to return a number of all data points of series, not just those that have non-default formatting, as it was in the previous versions of the software.
- The enumerator of the ChartDataPointCollection class has been changed to go through all data points of a series, not just those with non-default formatting.
- The ClearFormat method has been added to the ChartDataPointCollection class.
- The ClearFormat method has been added to the ChartDataPoint class.
- The Add, RemoveAt and Clear methods have been marked as obsolete. The collection contains all data points of series now and there is no need to add points to it. The RemoveAt and Clear methods actually reset the formatting of data point(s) to default values, so the ClearFormat methods can be used instead.

{{< highlight csharp >}}
    public class ChartDataPointCollection
    {
        /// <summary>
        /// Adds new <see cref="ChartDataPoint"/> at the specified index.
        /// </summary>
        [Obsolete("All data points are available in this collection.")]
        public ChartDataPoint Add(int index);
  
        /// <summary>
        /// Clears format of a <see cref="ChartDataPoint"/> at the specified index.
        /// </summary>
        [Obsolete("Use the ChartDataPoint.ClearFormat method instead.")]
        public void RemoveAt(int index);
  
        /// <summary>
        /// Clears format of all <see cref="ChartDataPoint"/> in this collection.
        /// </summary>
        [Obsolete("Use the ClearFormat method instead.")]
        public void Clear();
  
        /// <summary>
        /// Clears format of all <see cref="ChartDataPoint"/> in this collection.
        /// </summary>
        public void ClearFormat();
    }

    public class ChartDataPoint
    {
        /// <summary>
        /// Clears format of this data point. The properties are set to the default values defined in the parent series.
        /// </summary>
        public void ClearFormat();
    }
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
    Document doc = new Document();
    DocumentBuilder builder = new DocumentBuilder(doc);
    Shape shape = builder.InsertChart(ChartType.Line, 432, 252);
    Chart chart = shape.Chart;
 
    // Delete default generated series.
    chart.Series.Clear();
 
    ChartSeries series = chart.Series.Add("Series 1",
        new string[] { "Category 1", "Category 2", "Category 3" },
        new double[] { 1, 5, 4 });
 
    series.Marker.Symbol = MarkerSymbol.Square;
    series.Marker.Size = 10;
 
    series.DataPoints[1].Marker.Symbol = MarkerSymbol.Circle;
    series.DataPoints[1].Marker.Size = 15;
 
    doc.Save(dir + "DataPoints.docx");
{{< /highlight >}}

### Aspose.Words now retains hyperlinks in the output PDF (breaking change)
Reference: WORDSNET-21281

In the past, we satisfied a customer's request for removing HYPERLINK fields in TOC field result when the MailMergeCleanupOptions.RemoveStaticFields option is specified. However, MS Word retains them, and an ES customer asked us to change Aspose.Words' behaviour accordingly (WORDSNET-21281). We have implemented that in 20.11.

Here is the code snippet for backward compatibility:
{{< highlight csharp >}}
    foreach (FieldPageRef field in document.Range.Fields.OfType<FieldPageRef>())
        field.Unlink();
 
    foreach (FieldHyperlink field in document.Range.Fields.OfType<FieldHyperlink>())
    {
        HashSet<Inline> hyperlinkNodes = new HashSet<Inline>();
        Node resultNode = field.Separator;
        while (true)
        {
            if (resultNode is Inline inline && inline.Font.StyleIdentifier == StyleIdentifier.Hyperlink)
                hyperlinkNodes.Add(inline);
 
            if (resultNode == field.End)
                break;

            resultNode = resultNode.NextSibling;
        }
 
        // Unlink method clears Hyperlink style according to MS Word behaviour.
        field.Unlink();
 
        foreach (Inline inline in hyperlinkNodes)
            inline.Font.StyleIdentifier = StyleIdentifier.Hyperlink;
    }
{{< /highlight >}}
