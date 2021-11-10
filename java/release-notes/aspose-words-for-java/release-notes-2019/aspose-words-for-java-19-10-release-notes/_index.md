---
title: Aspose.Words for Java 19.10 Release Notes
type: docs
weight: 30
url: /java/aspose-words-for-java-19-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for Aspose.Words for Java 19.10.

{{% /alert %}} 

## Major Features

- JSON data source functionality for Reporting is implemented for Java.
- Main Maven POM automation: choose the right JDK jar version, download plugins only if needed.
- Implemented DocumentDirection option that allows specifying the direction to flow the text in a document.
- Implemented proper scaling for shapes inside ‘graphicFrame’ container for DrawingML rendering.
- Improved "inline/not inline" validation for OMath objects when rendering.
- Supported dynamic insertion of links to document bookmarks for LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2177|JSON data source functionality for Reporting.|New Feature|
|WORDSJAVA-2188|Main Maven POM should load right Aspose.Words.Shaping plugins for the local platform.|New Feature|
|WORDSJAVA-2196|Main Maven POM should choose jdk16 or jdk17 jar depending on local JDK.|New Feature|
|WORDSNET-11772|Image is misplaced in generated PDF|New Feature|
|WORDSNET-19103|Add feature to link CustomDocumentProperty to Bookmark|New Feature|
|WORDSNET-18920|Add feature to insert a hyperlink to bookmark using LINQ Reporting|New Feature|
|WORDSNET-19263|Some content render at the bottom of the previous page in PDF|New Feature|
|WORDSNET-18596|DOCX to PDF - text is not on the right page|New Feature|
|WORDSNET-19067|Add feature to detect text direction (RTL / LTR) while import TXT document|New Feature|
|WORDSNET-8253|Images are overlapping and rendering to previous pages in PDF|New Feature|
|WORDSNET-14273|Content renders on previous page in output PDF|New Feature|
|WORDSNET-7534|SmartArt graphic is not preserved during DOCX to RTF conversion|New Feature|
|WORDSNET-19054|Add the ability to set the NumberFormat for an individual data label|New Feature|
|WORDSJAVA-2171|Rewrite PrintPreviewDialog Code Example|Bug|
|WORDSJAVA-2187|CultureInfo.getDateTimeFormat() returns incorrect result|Bug|
|WORDSJAVA-2189|java.lang.AssertionError exception is thrown when Aspose.Words is used with gson JAR|Bug|
|WORDSNET-19216|OMath should be rendered as "Not inline" (currently OMath is always "inline")|Bug|
|WORDSNET-4631|IMailMergeDataSource has no code sample for the GetValue member|Bug|
|WORDSNET-18984|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Bug|
|WORDSNET-19225|Text in ODT charts has incorrect fill when rendering|Bug|
|WORDSNET-19091|DOCX to PDF conversion issue with Georgian text rendering|Bug|
|WORDSNET-5222|Example for CellFormat.VerticalAlignment is not injected into the API XML|Bug|
|WORDSNET-16950|DOCX to PDF conversion hangs with maxed CPU|Bug|
|WORDSNET-17859|Extra space and characters (dot) are appeared after re-saving DOCX|Bug|
|WORDSNET-17870|Incorrect rotation of X-axis labels after converting to PDF|Bug|
|WORDSNET-18235|The app hangs while retrieving the page count|Bug|
|WORDSNET-17429|Circle shapes do not render correctly in PDF|Bug|
|WORDSNET-17511|Picture moves to previous page causing wrapping issues|Bug|
|WORDSNET-19214|UpdatePageLayout() modifies OfPieChart properties|Bug|
|WORDSNET-19096|DOCX to PDF conversion issue with shape's text renderin|Bug|
|WORDSNET-15438|Shapes position is changed in output PDF|Bug|
|WORDSNET-19235|System.InvalidCastException occurs upon loading a ODT|Bug|
|WORDSNET-19012|System.NullReferenceException occurs during rendering|Bug|
|WORDSNET-9058|Vertical textbox is not rendered correctly when saving document to PDF|Bug|
|WORDSNET-18726|Failed OGL tests on continuous integration server|Bug|
|WORDSNET-12134|Fix warnings that occur during loading a DOCX|Bug|
|WORDSNET-14274|Images are overlapped after conversion from DOCX to PDF|Bug|
|WORDSNET-19030|System.NullReferenceException occurs upon saving DOCX to PDF|Bug|
|WORDSNET-19032|Bullet formatting is lost after saving the document|Bug|
|WORDSNET-19037|Document save never finishes|Bug|
|WORDSNET-18787|Document.Save throws System.ArgumentNullException|Bug|
|WORDSNET-19243|Incorrect text wrapping of the frame in ODT|Bug|
|WORDSNET-19247|Merged cells in table are broken when AllowAutoFit is false|Bug|
|WORDSNET-19250|Issues with PaperSize.Ledger and PaperSize.Quarto|Bug|
|WORDSNET-19228|System.ArgumentOutOfRangeException is thrown while saving DOCX to PNG|Bug|
|WORDSNET-18464|Some text in PDF output is improperly wrapped|Bug|
|WORDSNET-18463|The code execution hangs during PDF rendition|Bug|
|WORDSNET-18538|Charts are overlapped after conversion from DOCX to PDF|Bug|
|WORDSNET-18548|Item Number Error in PDF|Bug|
|WORDSNET-19121|Aspose.Words.FileCorruptedException occurs on loading a RTF file|Bug|
|WORDSNET-19122|System.InvalidOperationException occurs upon saving a DOCX|Bug|
|WORDSNET-18942|Minus and Plus signs in embedded graph do not render in output PDF|Bug|
|WORDSNET-18800|Background of SVG becomes white instead of transparent in output DOCX|Bug|
|WORDSNET-19112|Aspose.Words.Shaping.HarfBuzz failed on latest prerelease Aspose.Words 19.9|Bug|
|WORDSNET-19106|OleFormat.IconCaption Property throws System.ArgumentOutOfRangeException|Bug|
|WORDSNET-19151|DOCX to PDF/Print issue with text position|Bug|
|WORDSNET-19098|Cross-reference field without hyperlink switch rendered with hyperlink|Bug|
|WORDSNET-19154|Unable to set text of Bookmark|Bug|
|WORDSNET-19163|Source code files detected as Markdown files|Bug|
|WORDSNET-19190|Table pushed to the next page in Aspose.Words PDF output|Bug|
|WORDSNET-19194|Left arrow convertion issue while saving DOCX to HTML|Bug|
|WORDSNET-18892|Revisions in Header and footer are incorrect after using Document.Compare method|Bug|
|WORDSNET-19200|MHT to PDF NullPointerException|Bug|
|WORDSNET-19203|Aspose.Words.FileCorruptedException occurs upon loading a Word 2003 XML Document (XML)|Bug|
|WORDSNET-19213|Aspose.Words.FileCorruptedException is thrown while loading DOC|Bug|
|WORDSNET-19212|Aspose.Words.FileCorruptedException is thrown while loading document to DOM|Bug|
|WORDSNET-11908|Text box layout issue when converting from DOCX to PDF/DOC|Bug|
|WORDSNET-18851|TestFieldFormat.TestJira4632 fails in Windows 1903|Bug|
|WORDSNET-19201|Table header missing when converting word to PNG|Bug|
|WORDSNET-19279|Word document formatting is not aligned properly|Bug|
|WORDSNET-19272|Aspose.Words throws an error upon loading Apple Pages Documents|Bug|
|WORDSNET-18924|EditableRange seems not working when saving to DOC format|Bug|
|WORDSNET-18771|Error When Converting to PNG / SVG with Track Changes|Bug|
|WORDSNET-18773|Document.UpdatePageLayout method changes the font size of content control|Bug|
|WORDSNET-19296|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Bug|
|WORDSNET-6129|Section breaks are not rendering correctly in Fixed page formats|Bug|
|WORDSNET-9452|Quotation marks are treated as full-width characters|Bug|
|WORDSNET-5405|Table styles are always expanded in "DOC" mode|Bug|
|WORDSNET-19246|Incorrect line width computation in the footnote.|Bug|
|WORDSNET-12429|Tag with name 'extraClrSchemeLst' is not supported|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Implemented DocumentDirection option that allows specifying the direction to flow the text in a document

Related issue: WORDSNET-19067.

The new public enumeration was added:



{{< highlight csharp >}}
/// <summary>
/// Allows to specify the direction to flow the text in a document.
/// </summary>
public enum DocumentDirection
{{< /highlight >}}



Added new public option into TxtLoadOptions class:



{{< highlight csharp >}}
/// <summary>
/// Gets or sets a document direction.
/// The default value is <see cref="Aspose.Words.DocumentDirection.LeftToRight"/>. 
/// </summary>
public DocumentDirection DocumentDirection
{{< /highlight >}}



Use Case. Explains how to detect document direction automatically:



{{< highlight csharp >}}
TxtLoadOptions loadOptions = new TxtLoadOptions();
loadOptions.DocumentDirection = DocumentDirection.Auto;
Document doc = new Document("SomeRtlText.txt", loadOptions);
Paragraph paragraph = doc.FirstSection.Body.FirstParagraph;
Console.WriteLine(paragraph.ParagraphFormat.Bidi);
{{< /highlight >}}


### Supported dynamic insertion of links to document bookmarks for LINQ Reporting Engine

Issue: WORDSNET-18920

The "[Inserting Hyperlinks Dynamically](/words/java/working-with-fields/)" section of the engine's documentation was updated to describe the change.
