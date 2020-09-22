---
title: Aspose.Words for .NET 15.8.0 Release Notes
type: docs
weight: 50
url: /net/aspose-words-for-net-15-8-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 15.8.0](https://www.nuget.org/packages/Aspose.Words/15.8.0)

{{% /alert %}} 
## **Aspose.Words for .NET 15.8 Release Notes**
### **Major Features**
There are 89 improvements and fixes in this regular monthly release. The most notable are:

Added assemblies that target .NET CLR 4.0.

Implemented fixed table grid calculation.

Improved footnote balancing.

Supported roundtrip of ruby a.k.a phonetic guide in flow formats. Limited support for rendering to PDF is also provided.

EMF+ rendering is improved (line caps and shadows).

ODT Charts rendering implemented.

- CustomXmlMarkup fully removed from the code.

Allow to specify encoding when saving as HTML.
## **All Changes**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-10835|mso-style-name does not import correctly into DOM|Bug|
|WORDSNET-11655|OLE objects are missing after conversion from ODT to PDF|Bug|
|WORDSNET-11841|Thai words are showing as squares when converted to DOC|Bug|
|WORDSNET-11944|Position of picture is not preserved during open/save a DOC|Bug|
|WORDSNET-12001|Table's width is changed after re-saving docx|Bug|
|WORDSNET-12007|Header row background color is changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-12022|"-t" appears at second page in output Pdf|Bug|
|WORDSNET-12023|FetchCellAttr() returns an incorrect left padding value|Bug|
|WORDSNET-12040|Formulas embedded as pictures are lost when saving as PDF|Bug|
|WORDSNET-12046|Checkbox is not honoring the size in PDF|Bug|
|WORDSNET-12056|Document.Save does not preserve 'Limit formatting to permitted styles'|Bug|
|WORDSNET-12067|WordArt rotation does not render correctly in output Pdf|Bug|
|WORDSNET-12081|Font size for Normal Style changes when converted to PDF|Bug|
|WORDSNET-12083|Hyperlinks of GroupShape are lost after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-12097|Aspose.Words.FileCorruptedException is thrown when reading HTML document.|Bug|
|WORDSNET-12113|Incorrect image size after importing html.|Bug|
|WORDSNET-12119|Alignment is not correct after MHTML to PDF|Bug|
|WORDSNET-12120|Table border is truncated after MHTML to PDF|Bug|
|WORDSNET-12155|Document.UpdateFields does not update IF field|Bug|
|WORDSNET-12160|AcceptAllRevisions causing footer to disappear from rendered/printed document|Bug|
|WORDSNET-12168|Ruby text is lost after saving doc to pdf|Bug|
|WORDSNET-12188|DrawingML text-boxes become read-only and existing content is lost during open/save|Bug|
|WORDSNET-12197|Rtf to Doc/Docx/Pdf conversion issue with table rendering.|Bug|
|WORDSNET-12207|AcceptAllRevisions() generates three copies of content in headers and footers|Bug|
|WORDSNET-12210|Image size is reduced after HTML to DOCX|Bug|
|WORDSNET-12220|List numbers are missing from output PDF|Bug|
|WORDSNET-12226|Document is corrupted after re-saving|Bug|
|WORDSNET-12230|STYLEREF field shows Error! No text of specified style in document|Bug|
|WORDSNET-12237|NUMPAGES field is repeating incorrectly in output PDF|Bug|
|WORDSNET-12288|Document.UpdateFields does not update TOC field|Bug|
|WORDSNET-12319|Shape size is changed after re-saving Doc|Bug|
|WORDSNET-2936|White space after IMG tag is missed upon inserting HTML.|Bug|
|WORDSNET-9744|HTML to Doc conversion issue with Div boder styles|Bug|
|WORDSNET-10539|Export absolute URL of linked images to src attribute of img in HTML|Enhancement|
|WORDSNET-11797|Checkbox states are not preserved during open/save a DOCX|Enhancement|
|WORDSNET-11887|Incorrect font size on conversion to pdf|Enhancement|
|WORDSNET-11942|Import undeclared CSS classes from HTML|Enhancement|
|WORDSNET-12080|Expose Paragraph.InsertField()|Enhancement|
|WORDSNET-12085|Emf: Black dots instead of shadow|Enhancement|
|WORDSNET-12102|Extra blank page at the end of a document imported from HTML|Enhancement|
|WORDSNET-12137|WriteProtection.ValidatePassword does not work for legacy formats (DOC, DOT)|Enhancement|
|WORDSNET-12159|/footnote balancing / The last paragraph contains one line|Enhancement|
|WORDSNET-12272|Style name start with * does not import into Aspose.Words DOM|Enhancement|
|WORDSNET-1643|Replace all bullets in the document with “\u2022” during converting to TXT.|Enhancement|
|WORDSNET-3180|Part of content was moved to the next page during rendering.|Enhancement|
|WORDSNET-7985|Suppport EMF+ custom line caps|Enhancement|
|WORDSNET-8208|Horizontal table cell merge is lost on conversion doc to docx|Enhancement|
|WORDSNET-8921|Add full support for importing style elements specified via "class" attribute on HTML DIV tags|Enhancement|
|WORDSNET-11895|System.NullReferenceException occurs during rendering to PDF|Exception|
|WORDSNET-12062|System.InvalidOperationException occurs during converting to PDF|Exception|
|WORDSNET-12108|System.InvalidCastException is thrown by Document.Compare|Exception|
|WORDSNET-12110|A chart causes System.NullReferenceException during exporting to HTML|Exception|
|WORDSNET-12140|Document.UpdateFields throw System.NullReferenceException|Exception|
|WORDSNET-12157|Document.AcceptAllRevisions throws System.NullReferenceException|Exception|
|WORDSNET-12158|InsertHtml throws System.InvalidOperationException|Exception|
|WORDSNET-12177|MHTML cannot be loaded if ResourceLoadingAction.Skip is used for images|Exception|
|WORDSNET-12193|System.OutOfMemoryException occurs when calling UpdateFileds method|Exception|
|WORDSNET-12268|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-12274|Aspose.Words.FileCorruptedException is thrown while loading Html|Exception|
|WORDSNET-12278|Document.AcceptAllRevisions throws System.NullReferenceException|Exception|
|WORDSNET-12280|Document.PageCount throws System.NullReferenceException|Exception|
|WORDSNET-12310|MHTML cannot be loaded if ResourceLoadingAction.Skip is used for images|Exception|
|WORDSNET-10002|Import of element 'ruby' is not supported in Docx format by Aspose.Words|Feature|
|WORDSNET-10052|Support ODT charts rendering.|Feature|
|WORDSNET-10299|Create bookmarks using headings (including missing heading levels) while converting document to Pdf|Feature|
|WORDSNET-10447|Table column widths are calculated incorrectly during rendering|Feature|
|WORDSNET-10537|Add feature to copy a range in Excel to a embedded spreedsheet attached to a chart in Word document|Feature|
|WORDSNET-11594|Support License.IsLicensed API to check if license is set|Feature|
|WORDSNET-11935|EQ field is lost after saving document|Feature|
|WORDSNET-12178|Support HtmlFixedSaveOptions.Encoding|Feature|
|WORDSNET-12199|Import undeclared CSS classes from HTML|Feature|
|WORDSNET-12224|Math equations are missing after opening and saving a DOC|Feature|
|WORDSNET-12304|Implement table grid calculation for fixed table layout|Feature|
|WORDSNET-3958|Allow accessing data of OOXML Diagrams and Charts.|Feature|
|WORDSNET-4136|Ruby (EQ fields) are lost after open/save.|Feature|
|WORDSNET-4561|Width of table is incorrect during rendering.|Feature|
|WORDSNET-4603|Table width is incorrect during rendering.|Feature|
|WORDSNET-6337|UpdateFields calculates TOC page numbers incorrectly|Feature|
|WORDSNET-6809|Table is rendered inappropriately due to wrong table grid.|Feature|
|WORDSNET-7289|The layout of the tables is not honoured in PDF|Feature|
|WORDSNET-7752|Tables are not rendering correctly in fixed file formats|Feature|
|WORDSNET-8071|Docx to Pdf conversion issue with Table width|Feature|
|WORDSNET-8083|Table widths are not correct when rendering to PDF|Feature|
|WORDSNET-8197|Table column width and content alignment is off in fixed page formats|Feature|
|WORDSNET-8343|/ruby/ Docx to image convresion issue with Japanese furigana|Feature|
|WORDSNET-9110|Table is rendering beyond the right page edge in PDF|Feature|
|WORDSNET-9718|A Table in header overlaps a Shape when converting to Pdf|Feature|
|WORDSNET-11589|StyleCollection.AddCopy ignores table's style font|Regression|
|WORDSNET-12201|Doc to Rtf conversion issue with list items|Regression|

