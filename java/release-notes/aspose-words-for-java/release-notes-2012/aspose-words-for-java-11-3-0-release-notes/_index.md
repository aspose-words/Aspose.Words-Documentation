---
title: Aspose.Words for Java 11.3.0 Release Notes
type: docs
weight: 80
url: /java/aspose-words-for-java-11-3-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 11.3.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-11.3.0/)

{{% /alert %}} 

What's new

There are 133 improvements and fixes in this regular monthly release. Most notable changes are:

- OfficeMath is rendered and supported in almost all formats;
- MathML import in ODT is supported;
- Floating tables rendering improvements;
- Table formatting revisions are supported in DOCX and WML;
- Performance improvements for the PAGE field update;
- Support for some EMF+ rendering;
- Signature line shapes are supported. 

## Features

WORDSNET-589SectionStart.NewColumn to work when number of columns is same.

WORDSNET-1135 Support row formatting revisions in WordML and Docx.

WORDSNET-1466 Document properties outside of their RTF groups are ignored.

WORDSNET-1777 Support Ink shapes.

WORDSNET-3032 Packages embedded in DOCX are not converted to DOC.

WORDSNET-3087 Consider exporting with or without BOM optionally.

WORDSNET-3436 ODF Plugfest 20090713. Math formula missing after ODT 2 ODT conversion.

WORDSNET-3519 SectionStart.NewColumn is considered as page break upon rendering.

WORDSNET-3701 Preserve Office Math Markup Language (OMML) formulas durin processing.

WORDSNET-4153 Ink annotations are converted to simple images after open/save using Aspose.Words.

WORDSNET-4532 Export math content into binary DOC.

WORDSNET-4533 Preserve Office Math Formulas during RTF roundtrip.

WORDSNET-4534 Support rendering of OfficeMath.

WORDSNET-4535 Export Office Math content to HTML.

WORDSNET-4536 Export Office Math content to WML.

WORDSNET-5118 Support basic table row wrapping around floaters.

WORDSNET-5462 Automatic thumbnail generating from first page of document.

WORDSNET-5740 Support absolutely positioned tabs rendering.

WORDSNET-5811 Section break new column behaves like page break, while saving Word document to Pdf Format.

WORDSNET-5897 Support MathML ODT import.

WORDSNET-5987 Add functionality to FileFormatUtil to return if a document format is supported on load or save based on mime-type.

WORDSNET-6017 Tabs are lost upon rendering to Fixed Page Formats.

WORDSNET-6048 Implement Load and Save warnings for WML format.

WORDSNET-6121 Text column break does not work while saving in PDF format. 

## Enhancements 

WORDSJAVA-523

WORDSJAVA-519 Quality of image downscaled more than twice.

WORDSJAVA-525

WORDSJAVA-519 Extract "raw" images from a document.

WORDSNET-1899 Add anti-aliasing to ImageOptions.

WORDSNET-2476 Table formatting changes after open/save DOC.

WORDSNET-3302 Consider saving macro-enabled FlatOPC.

WORDSNET-3303 Consider saving template FlatOPC.

WORDSNET-3913 Content Controls are lost during converting DOCX to DOC.

WORDSNET-4827 Double underline doesn't show up in HTML properly.

WORDSNET-4837 Auto paragraph spacing is incorrect in TOC.

WORDSNET-4943 Improve automatic paragraph spacing handling.

WORDSNET-4952 /auto spacing inside cell + isHtmlCompatibility/ Part of content is moved to previous page upon rendering.

WORDSNET-4967 Support basic table row wrapping around floaters.

WORDSNET-5115 Support basic table row wrapping around floaters.

WORDSNET-5201 Support basic table row wrapping around floaters.

WORDSNET-5207 Floating table overlaps inline talbe after rendering.

WORDSNET-5268 Floating table overlaps an inline table after rendering.

WORDSNET-5304 Floating tables overlap each other after rendering.

WORDSNET-5393 Investigate whether Aspose.Words can use fonts embedded into printer device.

WORDSNET-5845 Font.Bidi not working as needed.

WORDSNET-5972 Logo in header overlaps the table in body in Fixed page formats.

WORDSNET-6030 Support hideMark attribute for a table cell.

WORDSNET-6053 Floating table and regular table overlap each other.

WORDSNET-6078 Table content is getting overlapped on the frames.

WORDSNET-6089 Tables overlap each other after rendering.

WORDSNET-6113 Table content is getting overlapped on other objects.

WORDSNET-6136 Installer issues EULA update and graphic distortion.

WORDSNET-6137 Layout gets disturbed upon rendering DOC to fixed page formats.

WORDSNET-6160 Update links to new URL format for product pages and announcements threads.

WORDSNET-6175 Support EMF+ GetDC record.

WORDSNET-6176 Support EMF+ DrawDriverString record.

WORDSNET-6191 Page break is placed in the end of prece ding page instead of the beginning of the next page.

WORDSNET-6200 Small unrelated refactorings.

## Performance 

WORDSJAVA-510 Linear performance for very big single-section documents.

WORDSNET-5814 Output PDF file size becomes too big as compared to input DOCX.

WORDSNET-5874 Output PDF file size becomes too big as compared to output DOCX.

WORDSNET-6153 Updating PAGE fields degrades performance significantly.

## Exceptions 

WORDSNET-4521 ArgumentException occurs during gradient rendering.

WORDSNET-5397 InvalidOperationException is thrown upon updating fields in HeaderFooter.

WORDSNET-5580"Stack empty" exception on saving document in any format.

WORDSNET-5625NullReferenceException upon DOC to PDF conversion.

WORDSNET-5629Exception during conversion doc to pdf.

WORDSNET-5693OutOfMemoryException: DrawingML fails to render to PDF.

WORDSNET-5828Unicode (Chinese text) gets lost on open/save.

WORDSNET-5841OutofMemoryException occurs when calling RenderToScale method.

WORDSNET-5862MHTML file format stream generated by AE is not supported by AW.

WORDSNET-5870NullReferenceException occurs on calling UpdateFields.

WORDSNET-5899InsertHtml method throws Exception when using &lt;tr style='HEIGHT: 0.0'&gt;.

WORDSNET-5916While loading rtf file, an exception occur if an image is used at a bullet in the RTF file.

WORDSNET-5973NullReferenceException occurs when UpdateFields() is called after MailMerge.

WORDSNET-5995InvalidCastException occurs during UpdateFields.

WORDSNET-6031System.NullReferenceException occur while inserting/updating Page field.

WORDSNET-6039NullReferenceException occurs during rendering to PDF.

WORDSNET-6044OutOfMemoryException: DrawingML fails to render to fixed page formats.

WORDSNET-6079FileCorruptedException is thrown upon importing RTF file.

WORDSNET-6102UnsupportedFileFormatException occurs while loading HTM/HTML file.

WORDSNET-6122NullReferenceException occurs on calling UpdateFields.

WORDSNET-6180Aspose.Words.FileCorruptedException occurs upon loading RTF 

## Bugs 

WORDSJAVA-447 JapaniseDatePattern.

WORDSJAVA-519 Images extracted from WordML Doc are getting corrupted.

WORDSJAVA-524

WORDSJAVA-519 Crop of images downscaled more than twice.

WORDSNET-1710 List format is lost after open/saving RTF document using Aspose.Words.

WORDSNET-1748 /signature line/ Support "Signature Line" shapes in Aspose.Words.

WORDSNET-1820 “Customization metadata” is removed from the document after saving using Aspose.Words.

WORDSNET-2186 Some text becomes on the previous page during rendering/converting to PDF.

WORDSNET-3004 /"Don't add space between paragraphs of the same style" option for text inside cells:4/ Spacing is incorrect between paragraphs in the table cell during rendering.

WORDSNET-3392 Formatting revisions are not supported in RTF.

WORDSNET-3632 Size of EMF image is improper during rendering.

WORDSNET-3754 Numbers in numbered lists are changed during HTML export.

WORDSNET-3978 Control output of text with negative margins.

WORDSNET-4014 AW incorrectly imports mhtml with part of content outside of tag.

WORDSNET-4038 Extra content appears in the output document during MHTML import.

WORDSNET-4212 Negative left margin is not fixed when saving Html for external css.

WORDSNET-4228 Windows Forms 2.0 Frame is converted to shape after open/save.

WORDSNET-4490 When open the document in Acrobat Reader error occurs "An error exists on this page".

WORDSNET-4514 Section Break (Continuous) initiates page break during rendering.

WORDSNET-4520 Incorrect handling font property OUTL.

WORDSNET-4553 DrawingML is improperly rendered.

WORDSNET-4731 Shape is missed upon loading document.

WORDSNET-4741 Style of table in document looks different when rendered.

WORDSNET-4750 /border equality/ Border between paragraphs is improperly rendered.

WORDSNET-4765 Section Break (Continuous) initiates page break during rendering ODT document.

WORDSNET-4885 Text of the first row of the table seems to be positioned too high.

WORDSNET-5127 Paragraph Spacing After is not correct after converting DOCX to other formats.

WORDSNET-5129 There is a slight difference in font size after rendering metafile.

WORDSNET-5159 Quality of vector image is degraded when exporting to HTML.

WORDSNET-5210 Inappropriate encoding breaks Html import.

WORDSNET-5484 Metafile is not rendered in PDF/XPS/SWF.

WORDSNET-5658 Hidden Comment tags in RTF appear after open/save.

WORDSNET-5681 Hanging identation of paragraphs in tables is set after open/save document.

WORDSNET-5709 Layout gets disturbed upon converting DOCX to PDF.

WORDSNET-5776 Support 'style' attribute of '&lt;HR&gt;'.

WORDSNET-5855 Table in .DOCX Loses Formatting and Indentation on Conversion to WordML.

WORDSNET-5919 Exception while using mailmerge.

WORDSNET-5925 DrawingML's GrayScale color tone is lost when converting to Fixed Page Formats.

WORDSNET-5936 While converting rtf to doc, paragraph indented incorrectly.

WORDSNET-5938 While converting doc to rtf, incorrect text wrapping and drop cap setting.

WORDSNET-5963 While converting odt to pdf file, border lines appear around the text after rendering.

WORDSNET-5969 Document's 1st, 2nd page layout gets disturbed during rendering.

WORDSNET-5975 While converting docx to html, three starting letters are missing in IE8.

WORDSNET-6004 Docx to PDF/XPS conversion issue.

WORDSNET-6023 Bottom VerticalAlignment is lost upon loading the RTF.

WORDSNET-6024 While converting dot to doc, incorrect layout problem occur.

WORDSNET-6040 Vector image is not displaying during rendering to PDF.

WORDSNET-6086 Table is shifted left during accepting revisions.

WORDSNET-6103 Changing color of Run changes color of adjacent Paragrapgh break character and vice versa.

WORDSNET-6147 Link between textboxes breaks when saving a .docx.

WORDSNET-6170 DrawingML does not get rendered to PDF.

WORDSNET-6174 Docx to HTML conversion issue with fractions.

WORDSNET-6226 UpdateFields converts OfficeMath to Shape. 