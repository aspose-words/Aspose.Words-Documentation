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

{{< highlight csharp >}}
OfficeMath is rendered and supported in almost all formats;MathML import in ODT is supported;Floating tables rendering improvements;Table formatting revisions are supported in DOCX and WML;Performance improvements for the PAGE field update;Support for some EMF+ rendering;Signature line shapes are supported. 
{{< /highlight >}}

Features 
WORDSNET-589SectionStart.NewColumn to work
when number of columns is sameWORDSNET-1135Support row formatting revisions in WordML and DocxWORDSNET-1466Document properties outside of their RTF groups are ignoredWORDSNET-1777Support Ink shapesWORDSNET-3032Packages embedded in DOCX are not converted to DOCWORDSNET-3087Consider exporting with or without BOM optionallyWORDSNET-3436ODF Plugfest 20090713. Math formula missing after ODT 2 ODT
conversion.WORDSNET-3519SectionStart.NewColumn is considered as page break upon
rendering.WORDSNET-3701Preserve Office Math Markup Language (OMML) formulas during
processing.WORDSNET-4153Ink annotations are converted to simple images after open/save
using Aspose.Words.WORDSNET-4532Export math content into binary DOCWORDSNET-4533Preserve Office Math Formulas during RTF roundtrip.WORDSNET-4534Support rendering of OfficeMathWORDSNET-4535Export Office Math content to HTMLWORDSNET-4536Export Office Math content to WMLWORDSNET-5118Support basic table row wrapping around floatersWORDSNET-5462Automatic thumbnail generating from first page of documentWORDSNET-5740Support absolutely positioned tabs renderingWORDSNET-5811Section break new column behaves like page break, while saving
Word document to Pdf FormatWORDSNET-5897Support MathML ODT importWORDSNET-5987Add functionality to FileFormatUtil to return if a document
format is supported on load or save based on mime-type.WORDSNET-6017Tabs are lost upon rendering to Fixed Page FormatsWORDSNET-6048Implement Load and Save warnings for WML formatWORDSNET-6121Text column break does not work while saving in PDF format. 
Enhancements 

WORDSJAVA-523WORDSJAVA-519 Quality of image
downscaled more than twiceWORDSJAVA-525WORDSJAVA-519 Extract "raw" images from a documentWORDSNET-1899Add anti-aliasing to ImageOptionsWORDSNET-2476Table formatting changes after open/save DOCWORDSNET-3302Consider saving macro-enabled FlatOPC.WORDSNET-3303Consider saving template FlatOPC.WORDSNET-3913Content Controls are lost during converting DOCX to DOC.WORDSNET-4827Double underline doesn't show up in HTML properly.WORDSNET-4837Auto paragraph spacing is incorrect in TOCWORDSNET-4943Improve automatic paragraph spacing handlingWORDSNET-4952/auto spacing inside cell + isHtmlCompatibility/ Part of
content is moved to previous page upon rendering.WORDSNET-4967Support basic table row wrapping around floaters.WORDSNET-5115Support basic table row wrapping around floatersWORDSNET-5201Support basic table row wrapping around floaters.WORDSNET-5207Floating table overlaps inline talbe after rendering.WORDSNET-5268Floating table overlaps an inline table after rendering.WORDSNET-5304Floating tables overlap each other after rendering.WORDSNET-5393Investigate whether Aspose.Words can use fonts embedded into
printer device.WORDSNET-5845Font.Bidi not working as neededWORDSNET-5972Logo in header overlaps the table in body in Fixed page
formatsWORDSNET-6030Support hideMark attribute for a table cell.WORDSNET-6053Floating table and regular table overlap each other.WORDSNET-6078Table content is getting overlapped on the framesWORDSNET-6089Tables overlap each other after renderingWORDSNET-6113Table content is getting overlapped on other objectsWORDSNET-6136Installer issues EULA update and graphic distortionWORDSNET-6137Layout gets disturbed upon rendering DOC to fixed page formatsWORDSNET-6160Update links to new URL format for product pages and
announcements threadsWORDSNET-6175Support EMF+ GetDC recordWORDSNET-6176Support EMF+ DrawDriverString recordWORDSNET-6191Page break is placed in the end of preceding page instead of
the beginning of the next pageWORDSNET-6200Small unrelated refactorings 

Performance 

WORDSJAVA-510Linear performance for very big
single-section documentsWORDSNET-5814Output PDF file size becomes too big as compared to input DOCXWORDSNET-5874Output PDF file size becomes too big as compared to output
DOCXWORDSNET-6153Updating PAGE fields degrades performance significantly 

Exceptions 

WORDSNET-4521ArgumentException occurs during
gradient renderingWORDSNET-5397InvalidOperationException is thrown upon updating fields in
HeaderFooter.WORDSNET-5580"Stack empty" exception on saving document in any
format.WORDSNET-5625NullReferenceException upon DOC to PDF conversionWORDSNET-5629Exception during conversion doc to pdfWORDSNET-5693OutOfMemoryException: DrawingML fails to render to PDFWORDSNET-5828Unicode (Chinese text) gets lost on open/saveWORDSNET-5841OutofMemoryException occurs when calling RenderToScale methodWORDSNET-5862MHTML file format stream generated by AE is not supported by
AWWORDSNET-5870NullReferenceException occurs on calling UpdateFieldsWORDSNET-5899InsertHtml method throws Exception when using <tr
style='HEIGHT: 0.0'>WORDSNET-5916While loading rtf file, an exception occur if an image is used
at a bullet in the RTF file.WORDSNET-5973NullReferenceException occurs when UpdateFields() is called
after MailMergeWORDSNET-5995InvalidCastException occurs during UpdateFieldsWORDSNET-6031System.NullReferenceException occur while inserting/updating
Page field.WORDSNET-6039NullReferenceException occurs during rendering to PDFWORDSNET-6044OutOfMemoryException: DrawingML fails to render to fixed page
formatsWORDSNET-6079FileCorruptedException is thrown upon importing RTF file.WORDSNET-6102UnsupportedFileFormatException occurs while loading HTM/HTML
file.WORDSNET-6122NullReferenceException occurs on calling UpdateFieldsWORDSNET-6180Aspose.Words.FileCorruptedException occurs upon loading RTF 

Bugs 

WORDSJAVA-447JapaniseDatePatternWORDSJAVA-519Images extracted from WordML Doc are getting corruptedWORDSJAVA-524WORDSJAVA-519 Crop of images downscaled more than twiceWORDSNET-1710List format is lost after open/saving RTF document using
Aspose.Words.WORDSNET-1748/signature line/ Support "Signature Line" shapes in
Aspose.WordsWORDSNET-1820“Customization metadata” is removed from the document after
saving using Aspose.Words.WORDSNET-2186Some text becomes on the previous page during
rendering/converting to PDF.WORDSNET-3004/"Don't add space between paragraphs of the same
style" option for text inside cells:4/ Spacing is incorrect between
paragraphs in the table cell during rendering.WORDSNET-3392Formatting revisions are not supported in RTFWORDSNET-3632Size of EMF image is improper during rendering.WORDSNET-3754Numbers in numbered lists are changed during HTML export.WORDSNET-3978Control output of text with negative marginsWORDSNET-4014AW incorrectly imports mhtml with part of content outside of
tagWORDSNET-4038Extra content appears in the output document during MHTML
import.WORDSNET-4212Negative left margin is not fixed when saving Html for
external cssWORDSNET-4228Windows Forms 2.0 Frame is converted to shape after open/save.WORDSNET-4490When open the document in Acrobat Reader error occurs "An
error exists on this page"WORDSNET-4514Section Break (Continuous) initiates page break during
rendering.WORDSNET-4520Incorrect handling font property OUTLWORDSNET-4553DrawingML is improperly rendered.WORDSNET-4731Shape is missed upon loading document.WORDSNET-4741Style of table in document looks different when rendered.WORDSNET-4750/border equality/ Border between paragraphs is improperly
renderedWORDSNET-4765Section Break (Continuous) initiates page break during
rendering ODT document.WORDSNET-4885Text of the first row of the table seems to be positioned too
high.WORDSNET-5127Paragraph Spacing After is not correct after converting DOCX
to other formats.WORDSNET-5129There is a slight difference in font size after rendering
metafile.WORDSNET-5159Quality of vector image is degraded when exporting to HTMLWORDSNET-5210Inappropriate encoding breaks Html importWORDSNET-5484Metafile is not rendered in PDF/XPS/SWF.WORDSNET-5658Hidden Comment tags in RTF appear after open/save.WORDSNET-5681Hanging identation of paragraphs in tables is set after
open/save document.WORDSNET-5709Layout gets disturbed upon converting DOCX to PDFWORDSNET-5776Support 'style' attribute of '<HR>'WORDSNET-5855Table in .DOCX Loses Formatting and Indentation on Conversion
to WordMLWORDSNET-5919Exception while using mailmergeWORDSNET-5925DrawingML's GrayScale color tone is lost when converting to
Fixed Page FormatsWORDSNET-5936While converting rtf to doc, paragraph indented incorrectly.WORDSNET-5938While converting doc to rtf, incorrect text wrapping and drop
cap setting.WORDSNET-5963While converting odt to pdf file, border lines appear around
the text after rendering.WORDSNET-5969Document's 1st, 2nd page layout gets disturbed during
renderingWORDSNET-5975While converting docx to html, three starting letters are
missing in IE8.WORDSNET-6004Docx to PDF/XPS conversion issueWORDSNET-6023Bottom VerticalAlignment is lost upon loading the RTFWORDSNET-6024While converting dot to doc, incorrect layout problem occur.WORDSNET-6040Vector image is not displaying during rendering to PDFWORDSNET-6086Table is shifted left during accepting revisions.WORDSNET-6103Changing color of Run changes color of adjacent Paragrapgh
break character and vice versaWORDSNET-6147Link between textboxes breaks when saving a .docxWORDSNET-6170DrawingML does not get rendered to PDFWORDSNET-6174Docx to HTML conversion issue with fractionsWORDSNET-6226UpdateFields converts OfficeMath to Shape. 
