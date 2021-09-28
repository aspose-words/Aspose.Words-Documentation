---
title: Aspose.Words for .NET 15.11.0 Release Notes
type: docs
weight: 20
url: /net/aspose-words-for-net-15-11-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 15.11.0](https://www.nuget.org/packages/Aspose.Words/15.11.0)

{{% /alert %}} 

## Aspose.Words for .NET 15.11 Release Notes

### Major Features

There are 127 improvements and fixes in this regular monthly release. The most notable are:

- Improvements to rendering of images on Mono.
- Some new public methods and properties for picture bullets, checkboxes, fields, styles.
- Performance improvements.
- Many improvements in rendering of WordArt, gradient fill, SmartArt, DrawingML.
- Fixes and improvements in all document format conversions.

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10924|DrawingML text is not visible in PDF|Bug|
|WORDSNET-10984|Font color of Paragraph is changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-10985|Font properties are changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-10986|Page break is missing after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-11156|Document.UpdateFields changes the DrawingML to GroupShape|Bug|
|WORDSNET-11329|Position of auto-fitted rotated DML textbox is incorrect for some angles|Bug|
|WORDSNET-11499|Document.UpdatePageLayout hangs|Bug|
|WORDSNET-11659|Document.UpdateFields changes the individual Shapes into GroupShape|Bug|
|WORDSNET-11672|SpanText.IsAsianPunctuationCompressingNeeded() should depend on the option Paragraph.WordWrap for some characters.|Bug|
|WORDSNET-11691|Document.Unprotect does not fully unprotect Docx|Bug|
|WORDSNET-11757|List numbers are changed after re-saving Docx.|Bug|
|WORDSNET-11898|Rotated text box is not rotated when saved to PDF|Bug|
|WORDSNET-11950|Images in Textboxes are not always rendered correctly|Bug|
|WORDSNET-12009|Shapes are missing after conversion form Docx to Pdf|Bug|
|WORDSNET-12016|Document.Unprotect(password) does not unprotect Docx|Bug|
|WORDSNET-12072|Hyphenation not working correctly with vertical text|Bug|
|WORDSNET-12086|German characters issue when converting from .doc to .rtf|Bug|
|WORDSNET-12089|Paragraph styles Heading 1 & 2 change to Heading 11 and Heading 21 in DOCX|Bug|
|WORDSNET-12194|Shape (text) rotation is lost after conversion from Docx to Pdf|Bug|
|WORDSNET-12218|endnotes.xml, footnotes.xml and hidden data from document.xml is missing from output DOCX|Bug|
|WORDSNET-12231|Textbox is rotated by 90 degrees in rendered PDF|Bug|
|WORDSNET-12240|Model reports incorrect border width|Bug|
|WORDSNET-12262|Docx to Html conversion issue with list label|Bug|
|WORDSNET-12418|Heading 1 style does not apply inside table when InsertHtml is used|Bug|
|WORDSNET-12442|Table header does not repeat in output Pdf|Bug|
|WORDSNET-12452|Last paragraph line justified text problem in PDF|Bug|
|WORDSNET-12456|Document.UpdateFields changes the TabLeader in TOC|Bug|
|WORDSNET-12484|Text layout is changed after conversion from Doc to Pdf|Bug|
|WORDSNET-12509|WordArt text does not render in output HtmlFixed|Bug|
|WORDSNET-12528|Text formatting is not correct inside SDT after using DocumentBuilder.InsertDocument|Bug|
|WORDSNET-12545|Position of shapes are changed in output Docx|Bug|
|WORDSNET-12549|Chart is not rendered correctly in pdf|Bug|
|WORDSNET-12550|Surface chart is modified after calling UpdatePageLayout|Bug|
|WORDSNET-12565|Shape Size and Bounds are NaN when Aspose.Words v15.9.0 is used|Bug|
|WORDSNET-12566|Shape's text formatting style is lost after saving Docx to Docx/Pdf|Bug|
|WORDSNET-12573|Text is missing in the output PDF|Bug|
|WORDSNET-12583|StyleCollection.AddCopy ignores style's list level number style property|Bug|
|WORDSNET-12592|Missing outline \Title field when saving to PDF|Bug|
|WORDSNET-12596|Comment numbering is wrong in generated PDF|Bug|
|WORDSNET-12597|/interscript spacing/ The line is wrapped incorrectly|Bug|
|WORDSNET-12606|Docx to Html conversion issue with list label|Bug|
|WORDSNET-12608|Shape with texture fill disappears in output Pdf|Bug|
|WORDSNET-12610|Shape is stretched out in output Pdf|Bug|
|WORDSNET-12612|SmartArt does not render correctly in output image format/doc/pdf|Bug|
|WORDSNET-12614|Run.Font.Name return incorrect value|Bug|
|WORDSNET-12619|Save to PDF - footer table does not adjust between landscape and portrait|Bug|
|WORDSNET-12624|The space between list number and list text is increased after re-saving Doc|Bug|
|WORDSNET-12625|Windings font hand symbol coloring changes in PDF|Bug|
|WORDSNET-12642|TestJira11292 position of textboxes is slightly changed when render in DrawingML mode.|Bug|
|WORDSNET-12647|Legend and Axis of chart become invisible after calling UpdatePageLayout|Bug|
|WORDSNET-12648|Hebrew list labels are not rendered correctly in output PDF|Bug|
|WORDSNET-12659|Shape's text position is incorrect in output Doc/Pdf|Bug|
|WORDSNET-12671|Contents are pushed down to page after saving Docx to Pdf|Bug|
|WORDSNET-12673|Values in chart are incorrect in rendered document|Bug|
|WORDSNET-12691|Last Line in Paragraph Justified in PDF|Bug|
|WORDSNET-12706|SmartArt does not render correctly in output Pdf/image file format|Bug|
|WORDSNET-12710|Styles.AddCopy ignores Font.Name of style|Bug|
|WORDSNET-1566|/table grid/ Table in the footer has wrong size in DOCX|Bug|
|WORDSNET-1654|Table column widths are calculated to less than needed|Bug|
|WORDSNET-1973|Tab characters are not recognized correctly upon opening HTML/MHTML document.|Bug|
|WORDSNET-2135|The table structure is exported incorrectly|Bug|
|WORDSNET-4079|UseFELayout does not work for DOC, RTF and WML.|Bug|
|WORDSNET-4902|Table.UpdateTableLayout calculates too large cell widths|Bug|
|WORDSNET-4958|Size of floating table is changed after calling UpdatePageLayout.|Bug|
|WORDSNET-5148|Bookmark is not removed when AcceptAllRevisions.|Bug|
|WORDSNET-5157|mono / Images rendered to HTML format look distorted in Mono|Bug|
|WORDSNET-5501|Floating table is moved to previous page and partially disappears.|Bug|
|WORDSNET-5882|Horisontally merged cells rendered incorrectly when saved to image.|Bug|
|WORDSNET-6462|WordArt shape is incorrect when converting DOC to any flow format|Bug|
|WORDSNET-6718|Cell.GetText() return incorrect text|Bug|
|WORDSNET-7617|Unable to view Shapes when opening DOCX in edit mode in GoogleDocs|Bug|
|WORDSNET-8007|Shape fill color/opacity is not preserved during open/save|Bug|
|WORDSNET-8387|Bullets and Numbers are not rendering in PDF for tracked document|Bug|
|WORDSNET-8848|Document.UpdateFields set TOC tab leaders to dots|Bug|
|WORDSNET-9974|Image is rotated after conversion from Doc to PDF|Bug|
|WORDSNET-10613|Doc to Pdf conversion issue with table's rendering|Enhancement|
|WORDSNET-10787|Some tests is red if SaveOptions.DmlRenderingMode flag is set DmlRenderingMode.DrawingML|Enhancement|
|WORDSNET-11354|A nested Table is not preserved when rendering to PDF|Enhancement|
|WORDSNET-11598|Text shape is transformed to text box or frame|Enhancement|
|WORDSNET-12076|Docx to Pdf conversion issue with image and text position|Enhancement|
|WORDSNET-12542|Use different set of characters for Chinese/Japanese hanging punctuation when altKinsoku is enabled|Enhancement|
|WORDSNET-12620|Table next to picture is moved towards the right page edge in PDF|Enhancement|
|WORDSNET-12690|Shapes position is changed in output Pdf|Enhancement|
|WORDSNET-12725|Table is shifted right side of page in output Pdf|Enhancement|
|WORDSNET-1967|mono / Rendering to image on MONO produces ugly results|Enhancement|
|WORDSNET-5061|/rotated nested floaters:10/ Orientation of table is incorrect after rendering.|Enhancement|
|WORDSNET-8300|Improve export of paragraphs with hanging indent to HTML with embedded CSS|Enhancement|
|WORDSNET-11793|Document.PageCount throws System.InvalidOperationException|Exception|
|WORDSNET-11961|Document.UpdateFields throws System.InvalidOperationException|Exception|
|WORDSNET-12101|System.IO.EndOfStreamException is thrown while re-saving Doc|Exception|
|WORDSNET-12223|Document.UpdatePageLayout throws System.NullReferenceException|Exception|
|WORDSNET-12408|Document.UpdateFields throws System.InvalidOperationException|Exception|
|WORDSNET-12494|Aspose.Words.FileCorruptedException occurs upon loading a RTF|Exception|
|WORDSNET-12522|ExecuteWithRegions throws System.ArgumentOutOfRangeException when NumberGroupSeparator is used as ","|Exception|
|WORDSNET-12530|Document.Range.Replace is throwing exception when isForward is set to true|Exception|
|WORDSNET-12537|MailMerge.Execute throws System.NullReferenceException|Exception|
|WORDSNET-12571|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Exception|
|WORDSNET-12603|Aspose.Words.FileCorruptedException is thrown while loading Word 2003 XML|Exception|
|WORDSNET-12616|System.DivideByZeroException is thrown while loading Docx|Exception|
|WORDSNET-12641|System.InvalidOperationException is thrown while converting Doc to Pdf|Exception|
|WORDSNET-12653|LINQ + XML foreach breaks for missing elements in XML|Exception|
|WORDSNET-12664|System.OverflowException is thrown while loading RTF|Exception|
|WORDSNET-12666|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-12669|Document.Save throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-12698|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-9598|mono / Unable to convert Word documents with images to Html on linux with mono|Exception|
|WORDSNET-10012|Provide way to get/set default font of document|Feature|
|WORDSNET-10028|Support document level default font and paragraph settings|Feature|
|WORDSNET-11867|Add feature to get/set the Shape/Image of Picture Bullet|Feature|
|WORDSNET-11871|DocumentBuilder.InsertCheckBox inserts check box with incorrect default value|Feature|
|WORDSNET-12298|UpdateFields should support XPath Expression in INCLUDETEXT field|Feature|
|WORDSNET-12531|Replace underscore with space in bookmark name when it is exported to Pdf|Feature|
|WORDSNET-12559|Need support for ruby with {multiple|several|a few|many|numerous} base and top parts and each part having its own formatting.|Feature|
|WORDSNET-12561|ReportingEngine.buildReport throws exception if child method on a missing object is called|Feature|
|WORDSNET-12562|ReportingEngine.buildReport throws exception if a missing collection is used in foreach|Feature|
|WORDSNET-12567|Text effect is lost after saving Docx to Pdf|Feature|
|WORDSNET-12661|Add an option in PdfSaveOptions not to update fields|Feature|
|WORDSNET-2095|Outline level headings are imported incorrectly|Feature|
|WORDSNET-3400|ODF Plugfest 20100415. Numbering is lost during ODT to ODT conversion.|Feature|
|WORDSNET-4102|STYLEREF field shows error “Error! No text of specified style in document.” in the output PDF document.|Feature|
|WORDSNET-4292|Consider adding properties to retrieve the document defaults|Feature|
|WORDSNET-5560|Support style autoupdate|Feature|
|WORDSNET-7140|/margins rotated text box/ Wrong textbox size is calculated|Feature|
|WORDSNET-9538|/vertical text/ Chinese characters rotate to 90 degree when Doc file is printed|Feature|
|WORDSNET-2118|/slow/ It takes a lot of time to convert document with simple text to PDF.|Performance|
|WORDSNET-12462|DocumentBuilder.InsertImage ignores the specified height/width|Regression|
|WORDSNET-12623|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Regression|

