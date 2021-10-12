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

- Improved EMF+ rendering (Embedded Metafiles, Curve Drawing Records);
- Metafile rendering speed optimized;Supported RTL text during mail merge;
- Supported rendering OOXML Charts. 

For a list of changes to the public API in this release refer to the following article in the documentation. 

## New features

WORDSJAVA-622

WORDSJAVA-608 Manually port DateTime.Parse related code to java.

WORDSNET-170 Right to left is not exported to PDF well.

WORDSNET-927 Add the possibility of authenticate to a proxy before opening the Word document.

WORDSNET-1268Add possibility to copy styles between documents.

WORDSNET-3605 Support PageBorderArt in rendering.

WORDSNET-3860 OOXML Charts // Support rendering OOXML Charts.

WORDSNET-4494 OOXML Charts // DrawingML chart disappears while rendering.

WORDSNET-5080 Consider exporting XAML as XamlPackage.

WORDSNET-5233 Implement Unified methods for Load and Save warnings across all Conversions formats.

WORDSNET-5383 Support TXT document in INCLUDETEXT fields.

WORDSNET-5600 Extend IResourceLoading for all load formats.

WORDSNET-5714 Support PageBorderArt in export PDF.

WORDSNET-5935 OOXML Charts // Shape is missed during rendering in Pdf/WordML format.

WORDSNET-6063 Support warnings in DocumentValidator.

WORDSNET-6163 Page border is invisible when saving to fixed page formats.

WORDSNET-6344 OOXML Charts // While docx to Pdf, DrawingML does not get redered.

WORDSNET-6491 Consider extending ResourceLoadingCallback to work with all formats.

WORDSNET-6520 Create working prototype of a Example Dashboard application.

WORDSNET-6529 Option to ban network access.

WORDSNET-6717 Field code is rendered instead of field result if field is inside OfficeMath.

WORDSNET-6803 Support of extrusion effect rendering (wireframe).

WORDSNET-6830 Preserve MS Word 2010 compatibility section on docx roundtrip.

WORDSNET-6854 Support numeral configuration.

WORDSNET-6879 DrawingML is not rendering to fixed page formats.

## Enhancements

WORDSJAVA-42

WORDSJAVA-608 DateTime.ToString and DateTime.Parse should do all work for PalFormatter.

WORDSNET-2428 DachCap is not shown as expected in XPS.

WORDSNET-3358 Transform fonts from regular to given font style.

WORDSNET-3782 Rework TTC full embedding.

WORDSNET-4541 "Enable Usage Rights in Adobe Reader"WORDSNET-5430Add a method to Node to convert to HTML.

WORDSNET-5761 Incorrect floating shape position.

WORDSNET-6033 Incorrect floating image position.

WORDSNET-6543 Incorrect floating table position.

WORDSNET-6602 Consider adding a switch to select EMF+ dual rendering mode.

WORDSNET-6731 Text in table cell is rendered in a wrong vertical position.

WORDSNET-6747

WORDSNET-3860 Support rendering of stacked charts.

WORDSNET-6752

WORDSNET-3860 Render chart legend.

WORDSNET-6758

WORDSNET-3860 Improve combining of different types of charts.

WORDSNET-6798 Join line spacing and line spacing rule into one attribute.

WORDSNET-6807 Implement Save warnings for DOC.

WORDSNET-6808 Exception on loading document.

WORDSNET-6815

WORDSNET-3860 Make sure Axis.Delete option is taken in account.

WORDSNET-6817

WORDSNET-6803 Implement extrusion effect rendering (wireframe) without perspective and transformations.

WORDSNET-6818

WORDSNET-6803 Implement perspective view for extrusion effect rendering (wireframe).

WORDSNET-6819

WORDSNET-6803 Implement transformations for extrusion effect rendering (wireframe).

WORDSNET-6824

WORDSNET-3860 Rework Marker rendering.

WORDSNET-6825 Refactor live node collections.

WORDSNET-6867 Support EMF+ embedded WMF metafiles.

WORDSNET-6890 Support EMF+ curve drawing records.

WORDSNET-6902 StructuredDocumentTag.SdtType issue with RichText.

WORDSNET-6924

WORDSNET-3860 Render chart title with default options.

WORDSNET-6952 Sort out metafile tests.

WORDSNET-6953 Pass Roman's additional review.

WORDSNET-6978

WORDSNET-6450 Add spacing before and after math operators.

WORDSNET-6979

WORDSNET-6450 Add spacing between function and argument. 

## Exceptions

WORDSJAVA-600 Image loading issue under OpenJDK6.

WORDSNET-6625 NullReferenceException occurs during executing simple MailMerge.

WORDSNET-6660 NullReferenceException occurs during rendering to PDF.

WORDSNET-6705 Exception while converting Docx to Pdf.

WORDSNET-6709 Exception while converting Doc to Pdf, Parameter is not valid.

WORDSNET-6763 System.InvalidOperationException thrown while converting DOC to EPUB.

WORDSNET-6772 Exception while loading Docx.

WORDSNET-6800 NullReferenceException occurs during rendering to fixed page formats.

WORDSNET-6835 FileCorruptedException occurs upon loading DOCX.

WORDSNET-6863 InvalidOperationException occurs during executing MailMerge with MailMergeRtlCleanupMode.RemoveForLtrText option specified.

WORDSNET-6880 Aspose.Words.FileCorruptedException occurs when loading a DOC into DOM.

WORDSNET-6884 NullReferenceException occurs when calling JoinRunsWithSameFormatting method.

WORDSNET-6889 NullReferenceException occurs during rendering to fixed page formats.

WORDSNET-6916 Aspose.Words.FileCorruptedException occurs when loading a DOC into DOM.

WORDSNET-6923 Multi-threaded print operations fail intermittently.

WORDSNET-6967 NullReferenceException occurs during rendering to PDF.

WORDSNET-6977 System.Xml.XmlException occurs during importing a DOCX file.

## Bugs

WORDSJAVA-522

WORDSJAVA-608 Comment.getDateTime returns incorrect time component.

WORDSJAVA-573 Exception while converting Docx to Pdf.

WORDSJAVA-579 MHtml to Pdf conversion issue, Error message displays on Pdf file.

WORDSJAVA-585 InsertImage throws java.lang.IllegalStateException for a TIFF.

WORDSJAVA-591 Exception while convert docx to pdf

WORDSJAVA-601 Doc to Tiff conversion produced differently sized tiff files at Windwos and Solaris.

WORDSJAVA-603 Image crop lost when save Docx to Pdf.

WORDSJAVA-617 Create Digitally Signed PDF Documents throws exception.

WORDSJAVA-618 Print spool size is much bigger than source docx.

WORDSJAVA-619 Consider removing the dependency on the JAI package from Sun.

WORDSJAVA-620

WORDSJAVA-614 Image inside brush is not cropped.

WORDSNET-2068 Support RTL in XAML.

WORDSNET-3029 RTL does not work as expected upon main merge.

WORDSNET-3867 Field value of LINK field is not retained after open/save.

WORDSNET-4408 Footnote is lost after open/save document.

WORDSNET-4748 Merge fields in IF field in header and footer are not filled with data.

WORDSNET-4872 INCLUDETEXT field {shows|demonstrates} error during rendering.

WORDSNET-4906 Page numbers are lost after converting RTF to DOC.

WORDSNET-5033 /image list labels:5/ Bullets are partially invisible after rendering.

WORDSNET-5626 Unknown macro: {PAGE} field in IF expression in first header does not get evaluated.

WORDSNET-5743 WPF host throws XamlParseException upon loading XAMLflow file i.e. generated by Aspose.Words.

WORDSNET-5783 Nested mail merge doesn't populate fields inside INCLUDETEXT.

WORDSNET-6143 Tables in .docx document are in the wrong position when converted to .pdf document.

WORDSNET-6201 Mail merge doesn't populate fields inside INCLUDETEXT.

WORDSNET-6400 Exception while updating INCLUDETEXT field.

WORDSNET-6404 Conversion issue with Docx to Docx.

WORDSNET-6423 System halts when loading HTML with too deep levels of nested tables.

WORDSNET-6450 Space Issue in MathML Equation with output Doc/PDF format.

WORDSNET-6578 /list line spacing/ Line spacing is wrong for empty list paragraphs.

WORDSNET-6639 RTF to PDF issue with image rendering.

WORDSNET-6650 Support hidden row in RTF.

WORDSNET-6667 /rtl/ Runs with RTL text but without rtl property are rendered incorrectly.

WORDSNET-6707 Font is rendering incorrectly in PDF.

WORDSNET-6770 Page orientation changed while converting RTF document to DOC.

WORDSNET-6777 Some wmf pictures disappear during converting from docx to pdf.

WORDSNET-6780 Header Top margin and spacing is lost when saving OTT to ODT.

WORDSNET-6781 Page styles are lost when saving OTT to ODT.

WORDSNET-6782 Blue HighlightColor appears behind Bullet List Symbols in Fixed page formats.

WORDSNET-6785 Rtf to Doc conversion; the page number issue.

WORDSNET-6786 Rtf to Doc conversion; table border line issue.

WORDSNET-6787 Exception while loading Docx file.

WORDSNET-6789 AppendDocument do not import styles correctly.

WORDSNET-6790 Docx to PDF conversion issue with image.

WORDSNET-6796 Floating Table is rendering incorrectly in PDF.

WORDSNET-6797 Shape becomes visible after rendering to PDF.

WORDSNET-6805 A Paragraph gets duplicated twice when rendering to fixed page formats.

WORDSNET-6810 Bullet Lists have too much left indent in fixed page formats.

WORDSNET-6812 ExecuteWithRegions do not work while merging data into table surrounded with IF condition.

WORDSNET-6813 RTL text when inserted into merge fields is rendered incorrectly.

WORDSNET-6820 Doc to RTF conversion, the output RTF do not render correctly in richTextBox windows control.

WORDSNET-6822 Exception on converting doc to Pdf.

WORDSNET-6828 RTF to Docx conversion issue with image visibility.

WORDSNET-6831 Bookmark name, containing more than 40 characters, is truncated during loading.

WORDSNET-6836 Shape.AlternativeText do not work with Docx/ODT.

WORDSNET-6838 The document appears to be corrupted and cannot be loaded.

WORDSNET-6842 Style is imported incorrectly in destination document during appending documents.

WORDSNET-6844 Unable to Load Doc file.

WORDSNET-6846 Content controls are getting lost when rendering to fixed page formats.

WORDSNET-6852 Incorrect conversion of LeftIndentUnits into LeftIndent by DocumentValidator.

WORDSNET-6853 Document.Print method issue with ODT file.

WORDSNET-6855 The document appears to be corrupted and cannot be loaded.

WORDSNET-6859 Template path is lost when loading DOTX into DOM.

WORDSNET-6861 RTL text inserted in MERGEFIELD is not preserved.

WORDSNET-6862 LTR text is reversed when inserting into a MERGEFIELD.

WORDSNET-6864 Page margins and header spacing are not preserved during open/save ODT.

WORDSNET-6865 Docx to PDF conversion issue with INCLUDETEXT.

WORDSNET-6869 Shape from second Section is overlapping the content in first Section.

WORDSNET-6870 Blank pages are produced incorrectly in PDF.

WORDSNET-6883 Exception while converting doc to PDF.

WORDSNET-6887 /rtl/ Runs with RTL text but without rtl property are rendered incorrectly (WORDSNET-6667 followup).

WORDSNET-6888 Docx to HTML conversion issue with text rendering of HTML.

WORDSNET-6910 RTL layout and rendering issue; Doc to PDF conversion.

WORDSNET-6912 Append one document to another issue with line space/Extra Lines.

WORDSNET-6921 number formatting switch # ,0.00 do not work.

WORDSNET-6922 Obfuscator issue for NumeralFormat property.

WORDSNET-6927 Mail Merge with Regions freezes when used inside (IF MERGEFIELD).

WORDSNET-6928 xml:space="preserve" attribute is not preserved during open/save.

WORDSNET-6929 Tables with merged cells are rendered incorrectly in PDF.

WORDSNET-6931 Exception while converting Doc to Image with ImageSaveOptions.

WORDSNET-6934 "html" extension is missing for a file in EPUB package.

WORDSNET-6947 Shape becomes hidden after converting RTF to DOC.

WORDSNET-6948 Doc to PNG conversion issue with table position.

WORDSNET-6955 Visio.Drawing.11 object is invisible when printing PDF produced by Aspose.Words.

WORDSNET-6960 IndexOutOfRangeException is thrown upon rendering chart.

WORDSNET-6962 NullReferenceException is thrown upon rendering chart.

WORDSNET-6963 Axis labels are rendered improperly.

WORDSNET-6964 NullReferenceException is thrown upon rendering chart.

WORDSNET-6965 NullReferenceException is thrown upon rendering chart.

WORDSNET-6966 NullReferenceException is thrown upon rendering chart.

WORDSNET-6971 Complex IF field fails to evaluate properly.

WORDSNET-6974 Text in RFFlow chart object is laid out incorrectly in PDF.

## Regressions

WORDSNET-6832 RTL text inserted in MERGEFIELD is no longer preserved when converting to TIFF.

WORDSNET-6881 NullReferenceException occurs during rendering to fixed page formats.
