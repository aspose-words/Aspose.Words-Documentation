---
title: Aspose.Words for Java 16.10.0 Release Notes
description: "Aspose.Words for Java 16.10.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 30
url: /java/aspose-words-for-java-16-10-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 16.10.0](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/16.10.0/)

{{% /alert %}} 

## Major Features

There are 117 improvements and fixes in this regular monthly release. The most notable are:

- Improved importing of text in DOS Arabic or Hebrew encodings.
- Added feature to compare document as MS Word does.
- Added feature to get OOXML compliance version as determined from the loaded document content.
- Font fallback while rendering fonts of Myanmar Unicode range improved.
- DrawingML text effects rendering performance slightly improved.
- DrawingML text box rendering effects added.
- SVG rendering improved.
- Detection of encoding while rendering MathML improved.
- Chinese text rendering in HtmlFixed improved.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1442|DML effects work incorrectly for semi-transparent areas|Bug|
|WORDSJAVA-1421|Field currency number formatting issue.|Enhancement|
|WORDSJAVA-1420|Incorrect importing of text in DOS Arabic or Hebrew encodings.|Enhancement|
|WORDSJAVA-1372|Better runtime localization of different possible Linux JRE fonts folders.|Enhancement|
|WORDSJAVA-1431|JAI and imageIO issue while loading mhtml|Exception|
|WORDSJAVA-1428|PdfEncryptionDetails.setPermissions throws exception while using PHP-JavaBridge|Exception|
|WORDSJAVA-1358|Document Preview And Print example throws "contentPane cannot be set to null" exception|Exception|
|WORDSJAVA-1441|Dml Effects Combination rises size of image border/shadow.|Regression|
|WORDSNET-10206|/font substitution/ Font fallback issue with space character|Bug|
|WORDSNET-12191|/document grid + charSpace/ AW incorrectly wraps lines|Bug|
|WORDSNET-12290|Images are missing from GroupShape after re-saving Doc|Bug|
|WORDSNET-12295|/document grid + charSpace/ Some characters are misplaced after DOCX to PDF|Bug|
|WORDSNET-12296|/document grid + charSpace/ Extra page after DOCX to PDF|Bug|
|WORDSNET-12369|Extra Revisions are appeared when a set of pages are added to Document|Bug|
|WORDSNET-12903|Document.Compare does not mimic MS Word behavior|Bug|
|WORDSNET-13110|Document.Compare does not mimic Microsoft Word's compare feature|Bug|
|WORDSNET-13145|Double line on a shape not converting correctly in PDF|Bug|
|WORDSNET-13159|Document.Compare does not mimic Microsoft Word's compare feature|Bug|
|WORDSNET-13358|Japanese text moves to next line after conversion from Docx to Pdf|Bug|
|WORDSNET-13520|NodeImporter.ImportNode corrupts the output document|Bug|
|WORDSNET-13596|Doc file becomes protected (Restrict Editing) after re-saving|Bug|
|WORDSNET-13598|Special characters (SpecialChar) are not converted correctly in output text file format|Bug|
|WORDSNET-13762|Document.Compare does not compare list items correctly|Bug|
|WORDSNET-13790|Contents move to next page after conversion from Docx to Pdf|Bug|
|WORDSNET-13810|Some methods work incorrectly when field is located within a single paragraph|Bug|
|WORDSNET-13811|Some field specific code parsers work incorrectly if the field has nested fields|Bug|
|WORDSNET-13812|ShapeBase.AspectRatioLocked returns wrong value|Bug|
|WORDSNET-13818|Document.Compare incorrectly compares bookmark's text|Bug|
|WORDSNET-13825|Corrupted document is generated on saving RTF to DOCX|Bug|
|WORDSNET-13829|/Mixed fonts metrics/ Contents move to next page after conversion from Docx to Pdf|Bug|
|WORDSNET-13857|/font substitution/ Incorrect Arabic words are rendering in Pdf|Bug|
|WORDSNET-13918|Shape's text is rendered on next line in output Pdf|Bug|
|WORDSNET-13969|Html to Docx/Pdf conversion issue with SVG "dy" attribute|Bug|
|WORDSNET-13970|Html to Docx/Pdf conversion issue with SVG "text-anchor" attribute|Bug|
|WORDSNET-13978|Converting DOC to PDF - Numbering changed|Bug|
|WORDSNET-13994|The number list is changed to bullet list in output Pdf|Bug|
|WORDSNET-13995|Discrepancy merging tables when saving as pdf|Bug|
|WORDSNET-14002|Positions of axis lines not preserved when inserting SVG image in Word document|Bug|
|WORDSNET-14003|Data missing when inserting SVG image in Word document|Bug|
|WORDSNET-14015|Zero CSS values are considered invalid on certain properties in Standards mode|Bug|
|WORDSNET-14020|Word (DOC & DOCX) file containing Burmese letters to PDF conversion Issue|Bug|
|WORDSNET-14039|Exporting Content Controls inside bulleted and numbered lists to HTML|Bug|
|WORDSNET-14042|WORDSNET-13833 has not resolved in v16.7.0|Bug|
|WORDSNET-14057|Chinese words are rotated after conversion from Doc to HtmlFixed|Bug|
|WORDSNET-14066|Signature become invalid after conversion from Docx to Pdf|Bug|
|WORDSNET-14068|When Chart object in Word document is converted to .jpg image, part of legend is missing|Bug|
|WORDSNET-14072|Footer of produced PDF file has different alignment|Bug|
|WORDSNET-14073|DocumentBuilder.InsertDocument changes page margins in output document|Bug|
|WORDSNET-14077|/font substitution/ Txt to Pdf conversion issue with text encoding/rendering|Bug|
|WORDSNET-14081|Text overlapping when Word document is converted to PDF|Bug|
|WORDSNET-14085|Chart's Data Table is not rendered correctly in Doc/Pdf|Bug|
|WORDSNET-14086|Image color is lost after conversion from Docx to Html|Bug|
|WORDSNET-14096|Hebrew text alignment problem in PDF|Bug|
|WORDSNET-14115|Aspose.Words.FileCorruptedException when opening RTF file|Bug|
|WORDSNET-14117|DOCX to PDF conversion produces blurred output|Bug|
|WORDSNET-14121|Image renders as black box in output XPS|Bug|
|WORDSNET-14130|WriteProtection.IsWriteProtected returns wrong value for RTF|Bug|
|WORDSNET-14132|Images are inverted after conversion from Doc to Pdf|Bug|
|WORDSNET-14133|Images are inverted after conversion from Doc to Pdf|Bug|
|WORDSNET-14141|/Mixed fonts metrics/ A blank page got inserted when rendering|Bug|
|WORDSNET-14149|Lower case formatting of mail merge is lost in output document|Bug|
|WORDSNET-14155|MS Word equation conversion problem during rendering|Bug|
|WORDSNET-14158|Formula negative value is not rendered correctly (German)|Bug|
|WORDSNET-14163|Hyperlink.Result update => lost link formatting (font size, link color)|Bug|
|WORDSNET-14180|Range.Replace overloads not finding text to replace in citations|Bug|
|WORDSNET-4632|REF field switches does not work correctly.|Bug|
|WORDSNET-4723|Field code is taken from a deleted run when change tracking is on.|Bug|
|WORDSNET-5789|/KeepWithNext + Shape/ The output PDF page count is greater than the input document.|Bug|
|WORDSNET-5892|Hidden ASK field becomes visible when converting to Fixed Page Formats|Bug|
|WORDSNET-7900|/table grid/ Table width is incorrect in PDF|Bug|
|WORDSNET-8650|Not correct working NEXTIF field with nested fields and spaces|Bug|
|WORDSNET-8674|Docx to Pdf conversion issue with table layout|Bug|
|WORDSNET-8763|Table width is changed upon rendering document.|Bug|
|WORDSNET-9217|A DrawingML is rendering more towards the left edge of PDF|Bug|
|WORDSNET-9249|/advanced typography/ Arabic characters are being rendered as circles in TIFF format|Bug|
|WORDSNET-9295|Contents are missing in output Pdf file after conversion from Doc file|Bug|
|WORDSNET-9306|Dashed type Straight Line Connector Shape is converted to solid line during open/save DOCX|Bug|
|WORDSNET-9667|Contents move to previous page after conversion from Docx to fixed file format|Bug|
|WORDSNET-9900|BuiltInDocumentProperties.LastPrinted is not updated when saving in pdf format|Bug|
|WORDSNET-9939|Docx to Pdf conversion issue with Field rendering|Bug|
|WORDSNET-11358|Track changes on Heading issue in HTML|Enhancement|
|WORDSNET-12027|Generate results closer to what Word generates after comparison|Enhancement|
|WORDSNET-12339|Compare Word documents is wrongly comparing Normal text to Heading text|Enhancement|
|WORDSNET-12460|Enhancement in Document.Compare when complete section is removed/inserted|Enhancement|
|WORDSNET-12461|Enhancement in Document.Compare (when a lot of contents are changed)|Enhancement|
|WORDSNET-14160|Reduce number of &lt;span&gt; in HtmlFixed|Enhancement|
|WORDSNET-14196|Table top row is missing when DOCX converted to PDF|Enhancement|
|WORDSNET-5582|Consider filling multiple regions with the same name.|Enhancement|
|WORDSNET-8396|Multi-paragraph DocVariable do not render correctly in output Pdf|Enhancement|
|WORDSNET-13297|System.InvalidOperationException occurs when saving DOCX to DOCX|Exception|
|WORDSNET-13556|Exception is thrown in VmlShapeReader while reading VML shape|Exception|
|WORDSNET-13775|System.ArgumentException is thrown while saving Odt to image|Exception|
|WORDSNET-13826|System.InvalidCastException is thrown while loading document under different Culture|Exception|
|WORDSNET-13874|Bookmark.Text throws System.ArgumentException|Exception|
|WORDSNET-13945|LayoutEnumerator.Kind throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-13979|System.InvalidCastException is thrown while loading document under different Culture|Exception|
|WORDSNET-13984|inserting MathML with insertHTML - bug with binomials|Exception|
|WORDSNET-13985|System.IndexOutOfRangeException occurs during saving to HTML|Exception|
|WORDSNET-14023|System.NullReferenceException is thrown while saving Docx to Html.|Exception|
|WORDSNET-14055|Document.Save throws System.NullReferenceException|Exception|
|WORDSNET-14187|ArgumentException is thrown while saving to png|Exception|
|WORDSNET-7527|/slow/ Document.Save method throws exception while conversion from Docx to fixed file format|Exception|
|WORDSNET-10723|Reply To Comments nesting is lost during open/save a DOC|Feature|
|WORDSNET-12337|Compare documents like MS Word does|Feature|
|WORDSNET-12387|Add feature to compare document as MS Word does|Feature|
|WORDSNET-13740|Chinese text renders incorrectly in HtmlFixed|Feature|
|WORDSNET-13851|/document grid + charSpace/ Shape's text is truncated in HtmlFixed|Feature|
|WORDSNET-13852|/document grid + charSpace/ Chinese text moves to next line and pushes text to next page in HtmlFixed|Feature|
|WORDSNET-13999|Support underline color during HTML import/export|Feature|
|WORDSNET-14046|Support edit revisions for table cells.|Feature|
|WORDSNET-3762|Consider adding an ability to determine 2007/2010 compliance.|Feature|
|WORDSNET-4660|Add an ability to get field names from Addressblock fields.|Feature|
|WORDSNET-9210|Add feature to detect OoxmlCompliance of Document|Feature|
|WORDSNET-976|Add an analogue of the Fields.Unlink method.|Feature|
|WORDSNET-9769|Docx-Html-Docx round-trip - Add feature to preserve Page field|Feature|
|WORDSNET-14027|GetEffectsKey() causes a performance decrease when comparing 16.6 to 13.2|Performance|
|WORDSNET-14165|System.NullReferenceException occurs during converting DOCX to PDF|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 16.10.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### WORDSNET-3762 - Added feature to get OOXML compliance version determined from the loaded document content

Starting from 16.10.0 Version of Aspose.Words you can get OOXML compliance version determined from the loaded document content.

{{< highlight csharp >}}
Document doc = new Document("in.docx");
OoxmlCompliance compliance = doc.Compliance;
{{< /highlight >}}

Please note that it makes sense only for OOXML documents. If you created a new blank document or load non OOXML document this property returns the OoxmlCompliance.Ecma376_2006.

### WORDSNET-12027 Generate results closer to what MS Word generates after comparison

Document comparison changed to compare at word level rather than at character level. This makes output looks more readable and closer to MS Word. Also speed is greatly improved for big documents.
