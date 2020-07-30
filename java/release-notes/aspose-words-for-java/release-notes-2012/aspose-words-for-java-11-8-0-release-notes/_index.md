---
title: Aspose.Words for Java 11.8.0 Release Notes
type: docs
weight: 30
url: /java/aspose-words-for-java-11-8-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 11.8.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-11.8.0/)

{{% /alert %}} 

There are 164 improvements and fixes in this regular monthly release. The most notable are: 
Improved EMF+ rendering (Embedded Metafiles, Curve Drawing Records);Metafile rendering speed optimized;Supported RTL text during mail merge;Supported rendering OOXML Charts. 
` `For a list of changes to the public API in this release refer to the following article in the documentation. 
New features 
WORDSJAVA-622WORDSJAVA-608 Manually port
DateTime.Parse related code to java.WORDSNET-170Right to left is not exported to PDF wellWORDSNET-927Add the possibility of authenticate to a proxy before opening
the Word document.WORDSNET-1268Add possibility to copy styles between documents.WORDSNET-3605Support PageBorderArt in rendering.WORDSNET-3860OOXML Charts // Support rendering OOXML ChartsWORDSNET-4494OOXML Charts // DrawingML chart disappears while rendering.WORDSNET-5080Consider exporting XAML as XamlPackageWORDSNET-5233Implement Unified methods for Load and Save warnings across
all Conversions formatsWORDSNET-5383Support TXT document in INCLUDETEXT fields.WORDSNET-5600Extend IResourceLoading for all load formatsWORDSNET-5714Support PageBorderArt in export PDFWORDSNET-5935OOXML Charts // Shape is missed during rendering in Pdf/WordML
format.WORDSNET-6063Support warnings in DocumentValidator.WORDSNET-6163Page border is invisible when saving to fixed page formatsWORDSNET-6344OOXML Charts // While docx to Pdf, DrawingML does not get
redered.WORDSNET-6491Consider extending ResourceLoadingCallback to work with all
formatsWORDSNET-6520Create working prototype of a Example Dashboard applicationWORDSNET-6529Option to ban network accessWORDSNET-6717Field code is rendered instead of field result if field is
inside OfficeMath.WORDSNET-6803Support of extrusion effect rendering (wireframe)WORDSNET-6830Preserve MS Word 2010 compatibility section on docx roundtripWORDSNET-6854Support numeral configurationWORDSNET-6879DrawingML is not rendering to fixed page formats 

Enhancements 
WORDSJAVA-42WORDSJAVA-608 DateTime.ToString
and DateTime.Parse should do all work for PalFormatter.WORDSNET-2428DachCap is not shown as expected in XPS.WORDSNET-3358Transform fonts from regular to given font styleWORDSNET-3782Rework TTC full embeddingWORDSNET-4541"Enable Usage Rights in Adobe Reader"WORDSNET-5430Add a method to Node to convert to HTMLWORDSNET-5761Incorrect floating shape positionWORDSNET-6033Incorrect floating image positionWORDSNET-6543Incorrect floating table positionWORDSNET-6602Consider adding a switch to select EMF+ dual rendering modeWORDSNET-6731Text in table cell is rendered in a wrong vertical positionWORDSNET-6747WORDSNET-3860 Support rendering of stacked charts.WORDSNET-6752WORDSNET-3860 Render chart legend.WORDSNET-6758WORDSNET-3860 Improve combining of different types of charts.WORDSNET-6798Join line spacing and line spacing rule into one attribute.WORDSNET-6807Implement Save warnings for DOC.WORDSNET-6808Exception on loading document.WORDSNET-6815WORDSNET-3860 Make sure Axis.Delete option is taken in accountWORDSNET-6817WORDSNET-6803 Implement extrusion effect rendering (wireframe)
without perspective and transformationsWORDSNET-6818WORDSNET-6803 Implement perspective view for extrusion effect
rendering (wireframe)WORDSNET-6819WORDSNET-6803 Implement transformations for extrusion effect
rendering (wireframe)WORDSNET-6824WORDSNET-3860 Rework Marker rendering.WORDSNET-6825Refactor live node collectionsWORDSNET-6867Support EMF+ embedded WMF metafilesWORDSNET-6890Support EMF+ curve drawing recordsWORDSNET-6902StructuredDocumentTag.SdtType issue with RichTextWORDSNET-6924WORDSNET-3860 Render chart title with default options.WORDSNET-6952Sort out metafile testsWORDSNET-6953Pass Roman's additional review.WORDSNET-6978WORDSNET-6450 Add spacing before and after math operators.WORDSNET-6979WORDSNET-6450 Add spacing between function and argument. 

Exceptions 
WORDSJAVA-600Image loading issue under
OpenJDK6.WORDSNET-6625NullReferenceException occurs during executing simple
MailMergeWORDSNET-6660NullReferenceException occurs during rendering to PDFWORDSNET-6705Exception while converting Docx to PdfWORDSNET-6709Exception while converting Doc to Pdf, Parameter is not validWORDSNET-6763System.InvalidOperationException thrown while converting DOC
to EPUBWORDSNET-6772Exception while loading DocxWORDSNET-6800NullReferenceException occurs during rendering to fixed page
formatsWORDSNET-6835FileCorruptedException occurs upon loading DOCX.WORDSNET-6863InvalidOperationException occurs during executing MailMerge
with MailMergeRtlCleanupMode.RemoveForLtrText option specifiedWORDSNET-6880Aspose.Words.FileCorruptedException occurs when loading a DOC
into DOMWORDSNET-6884NullReferenceException occurs when calling
JoinRunsWithSameFormatting methodWORDSNET-6889NullReferenceException occurs during rendering to fixed page
formatsWORDSNET-6916Aspose.Words.FileCorruptedException occurs when loading a DOC
into DOMWORDSNET-6923Multi-threaded print operations fail intermittentlyWORDSNET-6967NullReferenceException occurs during rendering to PDFWORDSNET-6977System.Xml.XmlException occurs during importing a DOCX file 

Bugs 
WORDSJAVA-522WORDSJAVA-608
Comment.getDateTime returns incorrect time componentWORDSJAVA-573Exception while converting Docx to PdfWORDSJAVA-579MHtml to Pdf conversion issue, Error message displays on Pdf
fileWORDSJAVA-585InsertImage throws java.lang.IllegalStateException for a TIFFWORDSJAVA-591Exception while convert docx to pdfWORDSJAVA-601Doc to Tiff conversion produced differently sized tiff files
at Windwos and Solaris.WORDSJAVA-603Image crop lost when save Docx to PdfWORDSJAVA-617Create Digitally Signed PDF Documents throws exceptionWORDSJAVA-618Print spool size is much bigger than source docx.WORDSJAVA-619Consider removing the dependency on the JAI package from SunWORDSJAVA-620WORDSJAVA-614 Image inside brush is not cropped.WORDSNET-2068Support RTL in XAMLWORDSNET-3029RTL does not work as expected upon main merge.WORDSNET-3867Field value of LINK field is not retained after open/save.WORDSNET-4408Footnote is lost after open/save document.WORDSNET-4748Merge fields in IF field in header and footer are not filled
with data.WORDSNET-4872INCLUDETEXT field shows error during rendering.WORDSNET-4906Page numbers are lost after converting RTF to DOC.WORDSNET-5033/image list labels:5/ Bullets are partially invisible after
rendering.WORDSNET-5626

Unknown macro: {PAGE}

field in IF expression in first header does not get
evaluatedWORDSNET-5743WPF host throws XamlParseException upon loading XAMLflow file
i.e. generated by Aspose.WordsWORDSNET-5783Nested mail merge doesn't populate fields inside INCLUDETEXTWORDSNET-6143Tables in .docx document are in the wrong position when
converted to .pdf documentWORDSNET-6201Mail merge doesn't populate fields inside INCLUDETEXTWORDSNET-6400Exception while updating INCLUDETEXT fieldWORDSNET-6404Conversion issue with Docx to DocxWORDSNET-6423System halts when loading HTML with too deep levels of nested
tablesWORDSNET-6450Space Issue in MathML Equation with output Doc/PDF formatWORDSNET-6578/list line spacing/ Line spacing is wrong for empty list
paragraphsWORDSNET-6639RTF to PDF issue with image renderingWORDSNET-6650Support hidden row in RTF.WORDSNET-6667/rtl/ Runs with RTL text but without rtl property are rendered
incorrectlyWORDSNET-6707Font is rendering incorrectly in PDFWORDSNET-6770Page orientation changed while converting RTF document to DOCWORDSNET-6777Some wmf pictures disappear during converting from docx to pdfWORDSNET-6780Header Top margin and spacing is lost when saving OTT to ODTWORDSNET-6781Page styles are lost when saving OTT to ODTWORDSNET-6782Blue HighlightColor appears behind Bullet List Symbols in
Fixed page formatsWORDSNET-6785Rtf to Doc conversion; the page number issueWORDSNET-6786Rtf to Doc conversion; table border line issueWORDSNET-6787Exception while loading Docx fileWORDSNET-6789AppendDocument do not import styles correctlyWORDSNET-6790Docx to PDF conversion issue with imageWORDSNET-6796Floating Table is rendering incorrectly in PDFWORDSNET-6797Shape becomes visible after rendering to PDFWORDSNET-6805A Paragraph gets duplicated twice when rendering to fixed page
formatsWORDSNET-6810Bullet Lists have too much left indent in fixed page formatsWORDSNET-6812ExecuteWithRegions do not work while merging data into table
surrounded with IF conditionWORDSNET-6813RTL text when inserted into merge fields is rendered
incorrectly.WORDSNET-6820Doc to RTF conversion, the output RTF do not render correctly
in richTextBox windows controlWORDSNET-6822Exception on converting doc to PdfWORDSNET-6828RTF to Docx conversion issue with image visibilityWORDSNET-6831Bookmark name, containing more than 40 characters, is
truncated during loadingWORDSNET-6836Shape.AlternativeText do not work with Docx/ODTWORDSNET-6838The document appears to be corrupted and cannot be loaded.WORDSNET-6842Style is imported incorrectly in destination document during
appending documentsWORDSNET-6844Unable to Load Doc fileWORDSNET-6846Content controls are getting lost when rendering to fixed page
formatsWORDSNET-6852Incorrect conversion of LeftIndentUnits into LeftIndent by
DocumentValidatorWORDSNET-6853Document.Print method issue with ODT fileWORDSNET-6855The document appears to be corrupted and cannot be loadedWORDSNET-6859Template path is lost when loading DOTX into DOMWORDSNET-6861RTL text inserted in MERGEFIELD is not preservedWORDSNET-6862LTR text is reversed when inserting into a MERGEFIELDWORDSNET-6864Page margins and header spacing are not preserved during
open/save ODTWORDSNET-6865Docx to PDF conversion issue with INCLUDETEXTWORDSNET-6869Shape from second Section is overlapping the content in first
SectionWORDSNET-6870Blank pages are produced incorrectly in PDFWORDSNET-6883Exception while converting doc to PDFWORDSNET-6887/rtl/ Runs with RTL text but without rtl property are rendered
incorrectly (WORDSNET-6667 followup)WORDSNET-6888Docx to HTML conversion issue with text rendering of HTMLWORDSNET-6910RTL layout and rendering issue; Doc to PDF conversionWORDSNET-6912Append one document to another issue with line space/Extra
LinesWORDSNET-6921number formatting switch # ,0.00 do not workWORDSNET-6922Obfuscator issue for NumeralFormat propertyWORDSNET-6927Mail Merge with Regions freezes when used inside (IF
MERGEFIELD)WORDSNET-6928xml:space="preserve" attribute is not preserved
during open/saveWORDSNET-6929Tables with merged cells are rendered incorrectly in PDFWORDSNET-6931Exception while converting Doc to Image with ImageSaveOptionsWORDSNET-6934"html" extension is missing for a file in EPUB
packageWORDSNET-6947Shape becomes hidden after converting RTF to DOCWORDSNET-6948Doc to PNG conversion issue with table positionWORDSNET-6955Visio.Drawing.11 object is invisible when printing PDF
produced by Aspose.WordsWORDSNET-6960IndexOutOfRangeException is thrown upon rendering chart.WORDSNET-6962NullReferenceException is thrown upon rendering chart.WORDSNET-6963Axis labels are rendered improperlyWORDSNET-6964NullReferenceException is thrown upon rendering chartWORDSNET-6965NullReferenceException is thrown upon rendering chart.WORDSNET-6966NullReferenceException is thrown upon rendering chart.WORDSNET-6971Complex IF field fails to evaluate properlyWORDSNET-6974Text in RFFlow chart object is laid out incorrectly in PDF 

Regressions 
WORDSNET-6832RTL text inserted in MERGEFIELD
is no longer preserved when converting to TIFFWORDSNET-6881NullReferenceException occurs during rendering to fixed page
formats 
