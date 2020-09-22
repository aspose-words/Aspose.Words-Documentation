---
title: Aspose.Words for .NET 15.3.0 Release Notes
type: docs
weight: 100
url: /net/aspose-words-for-net-15-3-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 15.3.0](https://www.nuget.org/packages/Aspose.Words/15.3.0)

{{% /alert %}} 
## **Aspose.Words for .NET 15.3 Release Notes**
### **Major Features**
There are 131 improvements and fixes in this regular monthly release. The most notable are:

Improvements in the layout engine for handling RTL text, text boxes, cell vertical alignment and others.

Improvements in import/export for all file formats.

Optimized output size of PDF documents for some cases.

Document.WarningCallback property can now send you loss of formatting warnings at anytime during document lifetime, not only during saving.

Fields are now updated inside DrawingML shapes.

ShapeRenderer.OpaqueBoundsInPoints returns the "real" shape bounds.

Improvements in rendering of fills, 3D text effects and others.

The BARCODE field is supported now so you can add a custom barcode generator.
## **All Changes**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-10007|Fields in shapes // Aspose.Words does not update SECTIONPAGES fields automatically|Bug|
|WORDSNET-10356|DocumentBuilder.InsertImage lose original size of image|Bug|
|WORDSNET-10466|Doc to Pdf conversion issue with SYMBOL 168|Bug|
|WORDSNET-10626|Doc to RTF conversion issue with TextBox orientation|Bug|
|WORDSNET-10644|Comments indication are shifted to the right in FF/Chrome for the document|Bug|
|WORDSNET-10649|Aspose.Words generated PDF output does not match MS Word|Bug|
|WORDSNET-10811|Aspose.Words corrupts the document when saving from DOCX to WordML|Bug|
|WORDSNET-10881|Bullets are missing from SmartArt when Docx is exported to Pdf/Doc|Bug|
|WORDSNET-10907|Image width/height are not being set correctly in DOCX when aspect ratio is locked|Bug|
|WORDSNET-11003|Text position is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-11004|DrawingML.Width and DrawingML.Height do not work|Bug|
|WORDSNET-11019|Doc to Pdf conversion issue with footer's contents|Bug|
|WORDSNET-11036|Table's header row is missing after re-saving the Doc file|Bug|
|WORDSNET-11038|Position of table's contents are changed after re-saving Doc file|Bug|
|WORDSNET-11065|Document.Save corrupts the Hyperlinks|Bug|
|WORDSNET-11075|Bug whereby comments appear in wrong place when converting RTF to Word format|Bug|
|WORDSNET-11133|The text formatting of DrawingML is lost after converting from Docx to Pdf/HTML|Bug|
|WORDSNET-11134|Text color of DrawingML is lost after conversion from Docx to Pdf/Html/Doc/Docx|Bug|
|WORDSNET-11149|Blue lines appear when converting a flow chart to PDF|Bug|
|WORDSNET-11168|Tab characters are added after re-saving RTF|Bug|
|WORDSNET-11203|Incorrect representation of RTL text in HTML DOM|Bug|
|WORDSNET-11248|Bookmark position is changed after conversion from Doc to Html|Bug|
|WORDSNET-11252|Border should not be visible in Aspose.Words generated output documents|Bug|
|WORDSNET-11262|Some entries of TOC are pushed down to the next page in PDF|Bug|
|WORDSNET-11277|HTML to Docx/Doc issue with left indentation|Bug|
|WORDSNET-11291|Docx to Pdf conversion issue with left indentation of list items|Bug|
|WORDSNET-11324|Issues with table heights in PDF|Bug|
|WORDSNET-11340|Html to Doc/Pdf/Html conversion issue with Arial black font|Bug|
|WORDSNET-11352|ParagraphFormat.LeftIndent return incorrect value|Bug|
|WORDSNET-11355|Incorrect Y position is returned by LayoutEnumerator|Bug|
|WORDSNET-11357|Twip-based attributes with fractional parts rounds up for DOCX or WML.|Bug|
|WORDSNET-11418|Track changes on pictures issue during DOCX to HTML conversion|Bug|
|WORDSNET-11422|Hyperlink is chagned after covnersion from Doc to Doc/Docx|Bug|
|WORDSNET-11433|Doc to Docm conversion issue with embedded images|Bug|
|WORDSNET-11474|Document.PageCount returns wrong value|Bug|
|WORDSNET-11475|A DrawingML is not preserved during open/save a DOC|Bug|
|WORDSNET-11508|Conversion into Postscript, special characters (german Umlauts) get lost|Bug|
|WORDSNET-11514|LoadOptions.WebRequestTimeout ignores the web request time out|Bug|
|WORDSNET-11520|Issue with font family which is not reflected in Word document|Bug|
|WORDSNET-11528|Document locks up Aspose.Words while getting page count.|Bug|
|WORDSNET-11537|Docx to fixed file format conversion issue with STYLEREF|Bug|
|WORDSNET-11541|WORDSNET-10264 was not resolved in 14.10.0|Bug|
|WORDSNET-11549|Conditional Merge fields causing whole document to not merge|Bug|
|WORDSNET-11561|Assertion on Part.Height < 0 for a text box|Bug|
|WORDSNET-11562|Table's contents are missing after conversion from Docx to Pdf|Bug|
|WORDSNET-11572|Chart data values overlap Pie chart's graphical area|Bug|
|WORDSNET-11573|Bookmark's contents are not visible after conversion from Docx to Docx/Doc/Pdf|Bug|
|WORDSNET-11574|Document.Save method does not stop while converting Docx to Png|Bug|
|WORDSNET-11583|When converting Word document to PDF, there are additional empty pages|Bug|
|WORDSNET-11587|Some elements of a wmf image are missing in AW pdf output|Bug|
|WORDSNET-11595|Complete image inside INCLUDEPICTURE is not visible after mail merge|Bug|
|WORDSNET-11596|Shape.SizeInPoints returns incorrect value if shape is child node of GroupShape|Bug|
|WORDSNET-11600|A picture overlaps Table in HtmlFixed|Bug|
|WORDSNET-11613|Images in .DOC files being shifting to LEFT on save|Bug|
|WORDSNET-11675|DocumentBuilder.InsertImage causing Wrapping error|Bug|
|WORDSNET-3922|Huge DOCX document failed to load|Bug|
|WORDSNET-4985|UnsupportedFileFormatException is thrown when try to open ODT document.|Bug|
|WORDSNET-5444|Paragraph down border is rendered incorrectly inside the text box.|Bug|
|WORDSNET-5477|Content is moved outside textbox after rendering.|Bug|
|WORDSNET-5479|Image effects are lost after updating page layout.|Bug|
|WORDSNET-5623|Aspose.Words returns incorrect indents.|Bug|
|WORDSNET-5726|Specified Alpha color component in Shape.FillColor exported incorrectly to DOCX|Bug|
|WORDSNET-6037|/aps/ Page border should be rendered behind the comments|Bug|
|WORDSNET-6186|Run.Font.Bold returns incorrect value|Bug|
|WORDSNET-6221|Text overlapped while Converting Word document to PDF.|Bug|
|WORDSNET-7264|/shading bounds/ Paragraph shading overlaps wrapped image in PDF|Bug|
|WORDSNET-7438|Conversion of MS Word document to HTML issue with overlapped shapes|Bug|
|WORDSNET-7497|DML rescaling does not work when specifying non-uniform aspect ratio|Bug|
|WORDSNET-8580|RTF to Pdf conversion issue with content rendering at first page|Bug|
|WORDSNET-9695|Docx to Html conversion issue with image position|Bug|
|WORDSNET-9975|/aps/ /trailing space shading/ The last letter is cut off after conversion from Docx to Pdf|Bug|
|WORDSNET-9982|Fields in shapes // Aspose.Words does not update TIME and DATE fields automatically|Bug|
|WORDSNET-9983|Fields in shapes // Aspose.Words does not update NUMPAGES, PAGE fields automatically|Bug|
|WORDSNET-10617|Add feature to implement IWarningCallback for Document.RenderToSize method|Enhancement|
|WORDSNET-10900|Issue with resizing DrawingML node|Enhancement|
|WORDSNET-10923|Aspose.Words.FileCorruptedException occurs when specifying password via LoadOptions|Enhancement|
|WORDSNET-10949|Document.AppendDocument throws System.ArgumentException for cloned documents|Enhancement|
|WORDSNET-11302|Footer position is changed after conversion from Docx to Pdf|Enhancement|
|WORDSNET-11403|Throw warning using IWarningCallback when an image is unavailable|Enhancement|
|WORDSNET-11490|Doc to Pdf conversion issue with footer position|Enhancement|
|WORDSNET-11502|DrawingML shape that simultaneously has 3D effect and others effects is rendered incorrectly (except simultaneous applying three effects - 3D effect, Outer shadow and Reflection)|Enhancement|
|WORDSNET-11511|Header content does not render correctly in HtmlFixed|Enhancement|
|WORDSNET-11609|Frames with inline shapes truncated, wrapped incorrectly in a multi-column section|Enhancement|
|WORDSNET-2268|Consider support of CSS3 paged media attributes|Enhancement|
|WORDSNET-4167|Page Background specified using picture is not displayed in HTML.|Enhancement|
|WORDSNET-4195|Space appears between two inline images in HTML output|Enhancement|
|WORDSNET-4580|Size of image is incorrect after inserting to document.|Enhancement|
|WORDSNET-5818|document to pdf conversion, shape width increase|Enhancement|
|WORDSNET-6133|Space between number and text in a heading is incorrect when rendering|Enhancement|
|WORDSNET-6273|Docx to PDF conversion issue with table|Enhancement|
|WORDSNET-6494|Table is not being rendered properly during conversion DOC to PNG|Enhancement|
|WORDSNET-6593|Text formatting issue while converting Docx to Pdf|Enhancement|
|WORDSNET-6684|Table in footer has incorrect width.|Enhancement|
|WORDSNET-6711|Docx to PDf conversion issue, text misplaced|Enhancement|
|WORDSNET-8780|Position of floating DrawingML is incorrect after exporting Docx to HTML|Enhancement|
|WORDSNET-9679|Bullet symbols in SmartArt are not rendering in Pdf|Enhancement|
|WORDSNET-10619|System.TypeInitializationException occurs when creating Document instance|Exception|
|WORDSNET-11088|Document.UpdatePageLayout throws System.InvalidOperationException|Exception|
|WORDSNET-11183|System.InvalidOperationException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-11491|System.StackOverflowException is thrown while saving doc to pdf|Exception|
|WORDSNET-11507|Null Pointer Exception with MergeFields execute|Exception|
|WORDSNET-11519|NodeImporter.ImportNode throws System.ArgumentException|Exception|
|WORDSNET-11522|System.InvalidOperationException occurs during rendering DOCX to PDF|Exception|
|WORDSNET-11523|System.InvalidOperationException occurs during rendering DOCX to PDF|Exception|
|WORDSNET-11524|System.InvalidOperationException occurs during rendering DOCX to PDF|Exception|
|WORDSNET-11526|System.StackOverflowException during rendering to PDF|Exception|
|WORDSNET-11535|Document.Save throws System.InvalidOperationException|Exception|
|WORDSNET-11544|Document.Save throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-11576|Stroke.Color throws System.NullReferenceException|Exception|
|WORDSNET-11580|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-11621|System.NullReferenceException occurs during saving a DOCX|Exception|
|WORDSNET-11635|System.NullReferenceException occurs during saving a DOCX|Exception|
|WORDSNET-11637|System.NullReferenceException occurs during saving a DOC to PDF|Exception|
|WORDSNET-11644|System.ArgumentOutOfRangeException is thrown while re-saving Docx|Exception|
|WORDSNET-11651|System.NullReferenceException is thrown while re-saving Docx|Exception|
|WORDSNET-11673|Stroke.Color throws System.NullReferenceException|Exception|
|WORDSNET-10775|Add feature to support HTML TextArea tag to load into DOM same as MS Word does|Feature|
|WORDSNET-10812|Aspose.Words corrupts the document when saving from DOCX to WordML|Feature|
|WORDSNET-10944|Support for DISPLAYBARCODE merge field|Feature|
|WORDSNET-11443|Export Content Controls as SDT tags in HTML|Feature|
|WORDSNET-5742|Implement support for new AbsolutePositionTab model node.|Feature|
|WORDSNET-11009|Document.UpdateFields takes time to update fields|Performance|
|WORDSNET-11109|Document.UpdatePageLayout takes much time to complete|Performance|
|WORDSNET-11450|Excessive PDF output file size issue|Performance|
|WORDSNET-11525|Bad rendering performance|Performance|
|WORDSNET-11559|Document.UpdatePageLayout or MHTML to PDF hangs if ResourceLoadingAction.Skip is set|Performance|
|WORDSNET-11447|System.NullReferenceException occurs when calling ToString(SaveFormat.Text)|Regression|
|WORDSNET-11465|Incorrect brackets in RTL text when saving to fixed formats|Regression|
|WORDSNET-11516|When converting Word file to PDF logo placed in header drops into main document|Regression|
|WORDSNET-11558|BookmarkStart.remove() causes an IllegalStateException|Regression|
|WORDSNET-11633|DocumentBuilder.InsertImage causing Wrapping error|Regression|

