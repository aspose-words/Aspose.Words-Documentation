---
title: Aspose.Words for Java 16.1 Release Notes
type: docs
weight: 110
url: /java/aspose-words-for-java-16-1-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 16.1](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/16.1.0/)

{{% /alert %}} 

## Aspose.Words for Java 16.1 Release Notes

### Major Features

There are 139 improvements and fixes in this regular monthly release. The most notable are:

- EMF format is now supported
- Aspose.Words for Java passes the Veracode Security Scan
- Performance of PNG encoding/decoding improved x 1.5 times
- Implemented auto-fit table grid calculation for numerous classes of tables
- EMF+ images now can be rendered without the GDI+ 
- Comments rendering improved
- Word 6.0 binary DOC files are supported now
- Added public methods for inserting signature lines
- Added ability to configure document hyphenation options
- Added capability to get mail merge regions hierarchy
- Added more public classes and methods to work with fields in a document
- Font sources can now be specified for each document instance
- Implemented line counting (Document.BuiltInDocumentProperties.Lines)

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1220|Office Math does not display correctly after saving Rtf to Html|Bug|
|WORDSJAVA-1257|WORDSJAVA-1219 is not resolved in v15.12.0|Bug|
|WORDSJAVA-1169|Check if it is possible to create the entire DataSet from Java's ResultSet|Enhancement|
|WORDSJAVA-1272|Expose of internal ThreadLocal&lt;Locale&gt; to public api.|Feature|
|WORDSJAVA-1273|Add feature to set ThreadLocal Locale for Document|Feature|
|WORDSJAVA-1239|Docx to PNG performance issue|Performance|
|WORDSNET-10588|Text is overlapped after conversion from Docx to Pdf|Bug|
|WORDSNET-11410|Inserting one document into another causes indent issue|Bug|
|WORDSNET-11532|ODT to Pdf conversion issue with frame layout|Bug|
|WORDSNET-11953|BuiltInDocumentProperties.Lines returns incorrect number of lines|Bug|
|WORDSNET-12017|/noExtraLineSpacing + suppressBottomSpacing/ Word Compatibility Options lost when creating PDF|Bug|
|WORDSNET-12235|Content cutting from left edge, Table disappears from top and unwanted rows appear in PDF|Bug|
|WORDSNET-12291|/noExtraLineSpacing + suppressBottomSpacing/ Docx to Pdf conversion issue with text position|Bug|
|WORDSNET-12415|RTF to Html conversion issue with Shape's text|Bug|
|WORDSNET-12493|/FloaterList.GetIndexAtOrAfterComparer.IsThisOrder/ System.InvalidOperationException during saving to PDF|Bug|
|WORDSNET-12546|HeaderFooter contents are not exported to Html|Bug|
|WORDSNET-12602|MailMerge.CleanupOptions change TOC into Hyperlink fields|Bug|
|WORDSNET-12615|Aspose.Words loads text with two fonts into one Run|Bug|
|WORDSNET-12632|TestDefect3873 contrast sidebar is rendered incorrectly.|Bug|
|WORDSNET-12633|TestDefect3873 shadow size is incorrect|Bug|
|WORDSNET-12657|Table header row truncates in PDF|Bug|
|WORDSNET-12665|Image Shadow lost during open/save a RTF|Bug|
|WORDSNET-12676|Shape size is different in output RTF and Docx|Bug|
|WORDSNET-12681|Position of shapes are changed in output Pdf|Bug|
|WORDSNET-12737|Newline characters inside URLs prevent HTML import from loading resources|Bug|
|WORDSNET-12749|Content moves to previous page and behind picture in PDF|Bug|
|WORDSNET-12752|Unable to open cloned document in MS Office|Bug|
|WORDSNET-12757|Set ShapeBase.HRef to empty string does not remove hyperlink|Bug|
|WORDSNET-12796|Incorrect series interval values in charts in exported HTML|Bug|
|WORDSNET-12797|Incorrect series interval values and Primary and Secondary vertical Axis Titles are replaced in charts in exported HTML|Bug|
|WORDSNET-12829|Incorrect inline shape width returned by ActualBounds|Bug|
|WORDSNET-12837|Incorrect font on wml to docx conversion|Bug|
|WORDSNET-12838|Incorrect spacing after paragraph on wml to docx conversion|Bug|
|WORDSNET-12851|Rtf to Pdf conversion issue with font rendering|Bug|
|WORDSNET-12885|Table header getting truncated in the output PDF|Bug|
|WORDSNET-12888|Shape (text) rotation is lost after conversion from Docx to Pdf|Bug|
|WORDSNET-12896|Chines text overlaps in same paragraph in output HtmlFixed|Bug|
|WORDSNET-12905|UpdateFields produces TOC that is different to Word|Bug|
|WORDSNET-12906|Docx to Doc/Pdf conversion issue with Vertical axis of chart|Bug|
|WORDSNET-12907|Horizontal axis of chart are changed after saving Docx to Doc/Pdf|Bug|
|WORDSNET-12915|Position of Korean text is changed in output Pdf|Bug|
|WORDSNET-12924|Html to Docx/Pdf conversion issue with text rendering|Bug|
|WORDSNET-12926|System.InvalidOperationException in GetStartPageIndex|Bug|
|WORDSNET-12936|Shape.SizeInPoints changes on GetShapeRenderer() call|Bug|
|WORDSNET-12940|Content is scattered in Aspose.Words generated DOC|Bug|
|WORDSNET-12941|/FloaterList.GetIndexAtOrAfterComparer.IsThisOrder/ Aspose.Words generates a corrupt PDF file|Bug|
|WORDSNET-12953|Text effect is lost after conversion from Docx to HtmlFixed|Bug|
|WORDSNET-12955|Document.WarningCallback returns incorrect output|Bug|
|WORDSNET-12959|Table's row width is increased after removing another row|Bug|
|WORDSNET-12999|/noExtraLineSpacing/ Docx to Pdf conversion issue with text position according to line numbers|Bug|
|WORDSNET-13007|Page numbers are not visible after DOCM to PDF|Bug|
|WORDSNET-3238|Incorrect behaviour for text:start-value attribute of list item|Bug|
|WORDSNET-3447|Font is changed during open/save.|Bug|
|WORDSNET-6439|Comments are rendering incorrectly in PDF|Bug|
|WORDSNET-6703|Doc to ePub conversion, incorrect output|Bug|
|WORDSNET-10909|BuiltInDocumentProperties.Lines return incorrect value|Enhancement|
|WORDSNET-11686|Display warnings for fonts replaced using FontSettings.addFontSubstitutes|Enhancement|
|WORDSNET-12166|A big negative value of 'margin-left' causes image part hiding after exporting from DOCX to HTML.|Enhancement|
|WORDSNET-12557|Improper Restriction of XML External Entity Reference (XXE).|Enhancement|
|WORDSNET-12883|Tables misaligned in rendered PDF|Enhancement|
|WORDSNET-12930|Enhancement in WORDSNET-1432|Enhancement|
|WORDSNET-5394|Consider providing Aspose.Words.dll built for .NET 4.0|Enhancement|
|WORDSNET-9240|Table column widths are calculated incorrectly during rendering|Enhancement|
|WORDSNET-11687|/pre-word97/ Support reading for Word6.0/Word95 documents.|Exception|
|WORDSNET-12504|/FloaterList.GetIndexAtOrAfterComparer.IsThisOrder/ System.InvalidOperationException is thrown while saving Doc to image/pdf|Exception|
|WORDSNET-12578|/FloaterList.GetIndexAtOrAfterComparer.IsThisOrder/ Document.PageCount throws System.InvalidOperationException|Exception|
|WORDSNET-12689|Document.Save throws System.NullReferenceException|Exception|
|WORDSNET-12762|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-12822|/FloaterList.GetIndexAtOrAfterComparer.IsThisOrder/ Document.PageCount throws System.InvalidOperationException|Exception|
|WORDSNET-12842|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-12880|NullReferenceException occurs when saving to PDF|Exception|
|WORDSNET-12881|System.OutOfMemoryException during DOCX to PDF conversion|Exception|
|WORDSNET-12889|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Exception|
|WORDSNET-12890|System.ArgumentOutOfRangeException occurs during open/save a DOCX|Exception|
|WORDSNET-12902|System.ArgumentOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-12910|System.IndexOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-12911|System.ArgumentOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-12913|System.ArgumentOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-12914|System.ArgumentOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-12928|Document.UpdatePageLayout throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-12931|Document.Save throws System.ArgumentOutOfRangeException while saving Docx to Doc/Pdf|Exception|
|WORDSNET-12957|System.NullReferenceException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-12966|System.ArgumentOutOfRangeException is thrown while re-saving Docx|Exception|
|WORDSNET-12988|/FloaterList.GetIndexAtOrAfterComparer.IsThisOrder/ Document.GetPageInfo throws System.InvalidOperationException|Exception|
|WORDSNET-12992|System.ArgumentOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-13000|System.ArgumentOutOfRangeException occurs during rendering to PDF|Exception|
|WORDSNET-10186|Table column widths are calculated incorrectly during rendering|Feature|
|WORDSNET-10366|Table nested inside SDT is not rendering correctly in fixed page formats|Feature|
|WORDSNET-10534|Reduction of vertical spacing between two Tables results in incorrect Document.PageCount value|Feature|
|WORDSNET-10609|Table width calculation problem in PDF|Feature|
|WORDSNET-10694|Formatting of table is lost after conversion from Docx to Pdf|Feature|
|WORDSNET-10852|Document.PageCount returns wrong value|Feature|
|WORDSNET-10926|When changing the page layout, table in footer is not resizing in PDF|Feature|
|WORDSNET-10978|Add feature to import font properties from based on style when font properties are not defined|Feature|
|WORDSNET-10983|StructuredDocumentTag is missing after conversion from Docx to Pdf|Feature|
|WORDSNET-11007|Table does not render correctly in output Pdf file|Feature|
|WORDSNET-11208|Support signature line (not digital signature) in Word documents|Feature|
|WORDSNET-11349|Different Word and PDF output when table auto fit is set to true|Feature|
|WORDSNET-11368|Add option in HtmlFixedSaveOptions to export FORMCHECKBOX as &lt;input type="checkbox"&gt;|Feature|
|WORDSNET-11375|Add option in HtmlFixedSaveOptions to export FORMDROPDOWN into select, option tags|Feature|
|WORDSNET-11746|/pre-word97/ Support pre-Word97 format|Feature|
|WORDSNET-11801|Provide way to use Aspose' hyphenation functionality when no input document is involved|Feature|
|WORDSNET-11835|Doc to Pdf conversion issue with Cell's text rendering|Feature|
|WORDSNET-12006|Incorrect table width in PDF saved from DOCX|Feature|
|WORDSNET-12045|Provide option to check document for automatic hyphenation|Feature|
|WORDSNET-12058|Text overlaps the Shape while saving docx to pdf|Feature|
|WORDSNET-12115|Implement public fields API v2.0 (add support for building arbitrary fields and field arguments)|Feature|
|WORDSNET-12143|MyriadPro font not rendered correctly in output EMF|Feature|
|WORDSNET-12309|Support merge fields' table hierarchy as XML node|Feature|
|WORDSNET-12321|Allow to specify font sources per document|Feature|
|WORDSNET-12443|Table header does not render correctly in output Pdf|Feature|
|WORDSNET-12738|Add feature to preserve mustache tags if field is not used|Feature|
|WORDSNET-12945|Add to public fields API "RemoveFormField" method|Feature|
|WORDSNET-12960|Cell's width is changed in output Pdf|Feature|
|WORDSNET-12967|Add to public API feature to replace mustache tags with corresponding merge fields|Feature|
|WORDSNET-1570|Import floating objects from HTML|Feature|
|WORDSNET-2338|Allow enabling “Auto Hyphenate” option on a document.|Feature|
|WORDSNET-253|Add capability to replace hyperlinks with other ones|Feature|
|WORDSNET-2726|One table column is missed upon rendering.|Feature|
|WORDSNET-3334|Table width in multicolumn document is incorrect upon rendering|Feature|
|WORDSNET-3881|/pre-word97/ Support loading pre-Word97 format|Feature|
|WORDSNET-427|Allow retrieving merge field names for a particular region.|Feature|
|WORDSNET-4464|Large pictures it table are truncated at right.|Feature|
|WORDSNET-4499|Update Barcode fields|Feature|
|WORDSNET-4694|Table narrows when rendering to pdf.|Feature|
|WORDSNET-5193|Width of table is incorrect, when width is specified in percents.|Feature|
|WORDSNET-6242|Table cells are not wide enough, causing the text to wrap incorrectly.|Feature|
|WORDSNET-6670|Vertical text position in TextBox becomes Horizontal during rendering|Feature|
|WORDSNET-7496|Widths of cells and tables are not correct in PNG|Feature|
|WORDSNET-7739|Table does not resize itself when rendered to fixed formats|Feature|
|WORDSNET-8014|Table width is incorrect in PDF|Feature|
|WORDSNET-8317|Word to PDF issue with table rendering, the table gets squeezed|Feature|
|WORDSNET-9330|Table column widths are calculated incorrectly during rendering|Feature|
|WORDSNET-9344|Text overlap after conversion from Docx to Pdf|Feature|
|WORDSNET-9557|Table column widths are calculated incorrectly during rendering|Feature|
|WORDSNET-5092|Full document traverse for each seq field degrades UpdateFields() performance.|Performance|
|WORDSNET-12830|RTF to Doc/Docx/Pdf conversion issue with content position|Regression|
|WORDSNET-12886|Font size not preserved during open/save a RTF|Regression|
|WORDSNET-12944|Aspose.Words.FileCorruptedException is thrown while loading RTF|Regression|

