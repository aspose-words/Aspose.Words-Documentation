---
title: Aspose.Words for .NET 16.5.0 Release Notes
type: docs
weight: 70
url: /net/aspose-words-for-net-16-5-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 16.5.0](https://www.nuget.org/packages/Aspose.Words/16.5.0)

{{% /alert %}} 
## **Major Features**
There are 72 improvements and fixes in this regular monthly release. The most notable are:

- Improved reflow performance for large paragraphs.
- Added explicit support of multiple data sources to LINQ Reporting Engine.
- SVG output with IE compatibility improved.
- Improved widow/orphan handling for tables.
- Improved asian text line breaking.
- Improved font metrics calculation for substituted fonts.
- Implemented support for SuppressEndnotes option.
## **Full List of Issues Covering all Changes in this Release**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-11897|A symbol in picture is transformed to SDT and its actual look is not preserved during open/save a DOCX|Bug|
|WORDSNET-12133|Save Word document as PDF corrupts WordArt|Bug|
|WORDSNET-12432|Missing text in text boxes when converting to PDF|Bug|
|WORDSNET-12535|Word To PDF conversion - Problem with Textbox|Bug|
|WORDSNET-12927|Horizontal lines are not visible in generated document|Bug|
|WORDSNET-13011|/para rules during row break/ A Table row breaks across pages in PDF|Bug|
|WORDSNET-13062|TestJira4499 fails on certain machines|Bug|
|WORDSNET-13122|Numbered list does not get converted properly in the attached PDF|Bug|
|WORDSNET-13134|Google Chrome error: Duplicate headers received from server|Bug|
|WORDSNET-13137|Div is not imported into Aspose.Words DOM|Bug|
|WORDSNET-13169|Specifying new values to ComparisonOperator, LeftExpression or RightExpression of FieldIf cause lose of Tables and other formatting|Bug|
|WORDSNET-13282|{{SHAPE <br>* MERGEFORMAT }} is overlapped after re-saving Rtf.|Bug|
|WORDSNET-13357|Japanese text wraps to next line after English word in output Pdf|Bug|
|WORDSNET-13365|Hyperlink text should not wrap to the next line|Bug|
|WORDSNET-13372|A Page's content is splitting into two pages during rendering|Bug|
|WORDSNET-13373|Docx to SVG conversion issue with text selection in IE-11|Bug|
|WORDSNET-13409|Word to PDF conversion - missing drawing|Bug|
|WORDSNET-13410|Converting to PDF pushes last row on next page|Bug|
|WORDSNET-13417|Table's rows are moved to previous page after saving Doc to Pdf|Bug|
|WORDSNET-13419|Document.UpdateFields corrupts the document|Bug|
|WORDSNET-13442|Table's cell margins are changed after re-saving Docx|Bug|
|WORDSNET-13444|Table's cells width are changed after re-saving Doc|Bug|
|WORDSNET-13448|Mergefield TableStart inside an IF field are processed although the IF condition is false (IF field is outside any merge regions)|Bug|
|WORDSNET-13458|Docx to Doc/Pdf conversion issue with bounded check-boxes|Bug|
|WORDSNET-13464|Document.UpdateFields does not update REF fields|Bug|
|WORDSNET-13465|Image (shape) is lost after re-saving mhtml|Bug|
|WORDSNET-13471|Not able to load DOCX file|Bug|
|WORDSNET-13474|Paragraph moves to previous page after conversion from Docx to Pdf|Bug|
|WORDSNET-13477|Cell border not rendered in Word where rowspan is used in Html|Bug|
|WORDSNET-13481|Barcode font is changed to Arial after re-saving Docx|Bug|
|WORDSNET-13491|Chinese text is truncated in output HtmlFixed format|Bug|
|WORDSNET-13494|Asian text is improperly wrapped. Font is improperly detected for not asian characters.|Bug|
|WORDSNET-13511|Data Labels in chart are changed after re-saving Docx|Bug|
|WORDSNET-13523|Missing Numbering when save as PDF in Memory Stream|Bug|
|WORDSNET-13528|Special characters are displayed in PDF|Bug|
|WORDSNET-13536|MailMerge.PreserveUnusedTags does not preserve "mustache" tags|Bug|
|WORDSNET-13549|Right-hand border thickness is incorrect during open/save a DOC|Bug|
|WORDSNET-13579|Converting to PDF messes up the table cell format|Bug|
|WORDSNET-13582|Hyperlink color changes to Black in generated DOC/PDF|Bug|
|WORDSNET-5108|Images are lost after open/save DOCX document (Sdt).|Bug|
|WORDSNET-5134|Drop caps do not export well to HTML|Bug|
|WORDSNET-6464|The contents do not fit in table's cell in output PDF file.|Bug|
|WORDSNET-6514|Unable to view Aspose.Words generated DOCX file with GoogleDocs|Bug|
|WORDSNET-7492|Picture is shifted up during DOCX to PDF conversion|Bug|
|WORDSNET-7795|Table contents become invisible in output PDF file|Bug|
|WORDSNET-7847|Incorrect text color in output PDF|Bug|
|WORDSNET-8232|Moderate effect Shape Style is not preserved during open/save|Bug|
|WORDSNET-11353|SmartArt text render incorrectly in output Pdf|Enhancement|
|WORDSNET-11963|Inconsistent formatting of comment references exported to HTML|Enhancement|
|WORDSNET-12169|Implement public API to set the shape fill to picture (at least) / Ellipse shape image is rendered as square in PDF|Enhancement|
|WORDSNET-12225|Html to Docx conversion issue with display : inline style|Enhancement|
|WORDSNET-12398|Contents are moved from 1st page to second page in output Pdf|Enhancement|
|WORDSNET-13295|Support special handling of backslash for IF fields|Enhancement|
|WORDSNET-13309|list-style:none does not take effect in output document|Enhancement|
|WORDSNET-13400|Unrecognized image type encountered during DOCX export|Exception|
|WORDSNET-13437|Aspose.Words.FileCorruptedException is thrown while loading mhtml|Exception|
|WORDSNET-13483|Saving to PDF throws "Parameter is not valid" exception|Exception|
|WORDSNET-13499|System.NullReferenceException during converting DOCX to DOCX|Exception|
|WORDSNET-13501|Document.AcceptAllRevisions throws "The bookmark range is invalid" exception|Exception|
|WORDSNET-13507|Aspose.Words.FileCorruptedException is thrown while loading Doc|Exception|
|WORDSNET-13508|Document.Save throws System.NullReferenceException while re-saving Docx|Exception|
|WORDSNET-13517|Aspose.Words.FileCorruptedException is thrown while loading Doc|Exception|
|WORDSNET-13534|"Memory stream is not expandable" error occurs upon loading a RTF|Exception|
|WORDSNET-13560|UnsupportedFileFormatException while loading txt file|Exception|
|WORDSNET-10921|/para rules during row break/ Table's row split over pages after conversion from Docx to Pdf|Feature|
|WORDSNET-12492|Allow creation of bookmarks over 40 chars long when the target document is PDF|Feature|
|WORDSNET-13014|Add a special mode to Aspose.Words optimized for high-performance text extraction|Feature|
|WORDSNET-13325|PageSetup.SuppressEndnotes does not work when saving to PDF|Feature|
|WORDSNET-13538|Provide ReportingEngine.buildReport overload that accepts multiple data source objects|Feature|
|WORDSNET-13418|Optimize line wrapping performance|Performance|
|WORDSNET-13514|It takes long to save a document to PDF|Performance|
|WORDSNET-13577|Certain images don't show up in the printed version of the generated report|Regression|
## **Public API and Backward Incompatible Changes**
This section lists public API changes that were introduced in Aspose.Words 16.5.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.
### **WORDSNET-13538 - Added ReportingEngine.BuildReport() overload**
The following overload has been added to the ReportingEngine class:

{{< highlight csharp >}}

 /// <summary>

/// Populates the specified template document with data from the specified sources making it a ready report.

/// </summary>

/// <remarks>

/// <para>

/// Using this overload you can reference multiple data source objects and their members in the template.

/// The name of the first data source can be omitted (i.e. be an empty string or null) if you are going to

/// reference the data source's members but not the data source object itself. Names of the other data sources

/// must be specified and unique.

/// </para>

/// <para>

/// If you are going to use a single data source, consider using of <see cref="BuildReport(Document, object)"/>

/// and <see cref="BuildReport(Document, object, string)"/> overloads instead.

/// </para>

/// </remarks>

/// <param name="document">A template document to be populated with data.</param>

/// <param name="dataSources">An array of data source objects.</param>

/// <param name="dataSourceNames">An array of names to reference the data source objects within the template.</param>

public void BuildReport(Document document, object[] dataSources, string[] dataSourceNames)

{{< /highlight >}}

It allows using multiple data source objects while building a report.
