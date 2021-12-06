---
title: Aspose.Words for .NET 14.5.0 Release Notes
description: "Aspose.Words for .NET 14.5.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 60
url: /net/aspose-words-for-net-14-5-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 14.5.0](https://www.nuget.org/packages/Aspose.Words/14.5.0)

{{% /alert %}} 

## Aspose.Words for .NET 14.5 Release Notes

### Major Features

There are 84 improvements and fixes in this regular monthly release. The most notable are:

- Improved justification around inline paragraph breaks
  Hyphenation API updated and extended with a callback mechanism 
  Table row wrapping around floaters in compatibility mode improved 
  OOXML (MS Word 2010) Text effects rendering implemented 
  Image export to HTML, MHTML and EPUB improved 
  FitText attribute supported for all flow formats

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10020|/w:cr/ A Paragraph with Justified alignment is not rendering correctly in PDF|Bug|
|WORDSNET-10040|Docx to Pdf conversion issue with fonts (Open Type)|Bug|
|WORDSNET-10057|Last line of text wraps in the middle of words in PDF|Bug|
|WORDSNET-10058|Last line of text wraps in the middle of words in PDF|Bug|
|WORDSNET-10059|Leading line break of preformatted text is ignored during HTML import|Bug|
|WORDSNET-10062|DrawingML does not render in output Pdf file|Bug|
|WORDSNET-10063|Trailing whitespace of preformatted text is trimmed during HTML import|Bug|
|WORDSNET-10067|Text position is changed after conversion from Docx to Tiff file format|Bug|
|WORDSNET-10069|CoverPage layout changes when imported to another document|Bug|
|WORDSNET-10070|CoverPage layout changes when imported to another document|Bug|
|WORDSNET-10076|Document.AcceptAllRevisions does not accept moved up revision|Bug|
|WORDSNET-10078|Logo is rendering at incorrect position in fixed page formats|Bug|
|WORDSNET-10088|Table's cell layout is changed after re-saving the document|Bug|
|WORDSNET-10096|Unexpected tab-stops appear in output DOCX document after DOCX-HTML-DOCX round-trip|Bug|
|WORDSNET-10098|Date field is saved as a wrong date value during exporting to HTML|Bug|
|WORDSNET-10102|Alignment setting are not preserved during open/save a doc|Bug|
|WORDSNET-10103|/w:cr/ Contents are misplaced after conversion from Docx to Pdf|Bug|
|WORDSNET-10117|Math equations are truncated from top during exporting to HTML|Bug|
|WORDSNET-10119|Bullets show yellow highlight color in PDF|Bug|
|WORDSNET-10126|Output PDF has one page instead of eight pages|Bug|
|WORDSNET-10128|Docx to Pdf conversion issue with charts rendering (incomplete graphs)|Bug|
|WORDSNET-10129|Contents are lost after re-saving the document|Bug|
|WORDSNET-10134|Paragraph alignment is changed after re-saving the document|Bug|
|WORDSNET-2963|Left indent is -18pt after applying bullets, but should be 18pt.|Bug|
|WORDSNET-5800|Problem convert Symbol from Doc to ODT|Bug|
|WORDSNET-5940|While converting odt to txt, field codes exported to TXT|Bug|
|WORDSNET-7038|/w:cr/ Docx to PDF conversing issue with text formatting|Bug|
|WORDSNET-7449|Footer content from first Section appears in the Footer of second Section in Pdf|Bug|
|WORDSNET-8335|/justify narrows spaces/ ROOT. Docx to Pdf conversion issue with content rendering of two columns pages|Bug|
|WORDSNET-8784|/justify narrows spaces/ Less words per line are being written in Pdf|Bug|
|WORDSNET-9059|/w:cr/ Spacing between words is lost in Pdf|Bug|
|WORDSNET-9236|/justify narrows spaces/ Words are misplaced in the output PDF|Bug|
|WORDSNET-9318|Process &lt;style&gt; elements located in HTML document's body|Bug|
|WORDSNET-9591|Paragraph spacing of preformatted text is incorrectly imported from HTML|Bug|
|WORDSNET-9615|Preserve distance between the ListLabel and Text during importing/exporting a list (&lt;ul&gt; or &lt;ol&gt;)|Bug|
|WORDSNET-9617|Margins of a paragraph imported from &lt;pre&gt; are applied to the first line of the paragraph|Bug|
|WORDSNET-9784|Formatting tracked changes are lost after conversion from Docx to Pdf|Bug|
|WORDSNET-9791|Document.UpdateFields changes the paragraphs formatting|Bug|
|WORDSNET-9837|Document.JoinRunsWithSameFormatting does not work with RTF document|Bug|
|WORDSNET-9881|The color of DrawingML's border is changed after conversion from Docx to HTML|Bug|
|WORDSNET-9903|An HTML document in UTF-8 is imported as plain text in Windows-1252|Bug|
|WORDSNET-9909|Font name is changed after conversion from Doc to HTML|Bug|
|WORDSNET-9963|Scaling issue when Saving Word Document as EMF|Bug|
|WORDSNET-9966|DrawingML nodes do not render in output Pdf file|Bug|
|WORDSNET-9993|During Arabic Docx to Html conversion, a proper font size is not used|Bug|
|WORDSNET-9995|Calling Document.PageCount twice renders a horizontal line at the middle of generated images|Bug|
|WORDSNET-10094|Preserve PAGE fields during DOCX-HTML-DOCX round-trip|Enhancement|
|WORDSNET-2253|/w:cr:15/ Line separated by line break should not be justified.|Enhancement|
|WORDSNET-4650|Incorrect font size in Word.|Enhancement|
|WORDSNET-4766|Table layout is broken after open/save ODT document.|Enhancement|
|WORDSNET-6792|An image in the header overlaps repeated header row|Enhancement|
|WORDSNET-7896|OOXML Text Effects // MS Word 2010 text effects support|Enhancement|
|WORDSNET-8851|Obfuscated method are shown by Intellisense.|Enhancement|
|WORDSNET-9062|Border is not applied to table|Enhancement|
|WORDSNET-9680|OOXML Text Effects // Text Fill, Outline and Shadow effects are not preserved in Pdf|Enhancement|
|WORDSNET-9987|Provide Hyphenation.RegisterDictionary(String, Stream) method in API|Enhancement|
|WORDSNET-10005|InvalidOperationException occurs during iteraring through FieldCollection|Exception|
|WORDSNET-10043|System.InvalidOperationException is throrwn while saving Docx to Docm|Exception|
|WORDSNET-10051|Exception on saving to DOC format|Exception|
|WORDSNET-10066|Attempted to divide by zero exception on DOC and fixed page format conversions|Exception|
|WORDSNET-10071|Document.Save throws System.ArgumentException|Exception|
|WORDSNET-10077|Specifying PdfSaveOptions.ExportDocumentStructure on empty document throws exception|Exception|
|WORDSNET-10100|Aspose.Words.FileCorruptedException occurs when loading a DOCX|Exception|
|WORDSNET-10101|System.DivideByZeroException occurs during rendering Docx to Pdf|Exception|
|WORDSNET-10115|InvalidOperationException occurs during Open/Save a DOCX|Exception|
|WORDSNET-10122|Exception is thrown when CSS contains an escaped surrogate character|Exception|
|WORDSNET-10138|System.NullReferenceException is thrown while converting Doc to Pdf|Exception|
|WORDSNET-10139|System.NullReferenceException is thrown while converting Doc to HTML|Exception|
|WORDSNET-10160|InvalidOperationException occurs when saving to PDF after enabling Hyphenation|Exception|
|WORDSNET-10173|System.InvalidOperationException is thrown while using Hyphenation|Exception|
|WORDSNET-10193|Infinite loop detected during saving to PDF after applying Hyphenation|Exception|
|WORDSNET-10194|Infinite loop detected during saving to PDF after applying Hyphenation|Exception|
|WORDSNET-9838|System.ArgumentException is thrown when saving to PDF after enabling Hyphenation|Exception|
|WORDSNET-9977|System.ArgumentOutOfRangeException is thrown while converting Docx to Pdf|Exception|
|WORDSNET-10187|Support Gradient Text Fill effects during rendering|Feature|
|WORDSNET-1203|Consider using list-style, list-style-type, list-style-image, list-style-position CSS attributes|Feature|
|WORDSNET-7723|OOXML Text Effects // Word 2010 text effects are lost after conversion from Docx to Fixed file format|Feature|
|WORDSNET-9175|OOXML Text Effects // Text effects lost after conversion from Docx to Fixed file format|Feature|
|WORDSNET-9636|Content in Tables is shifted when converting from DOCX to PNGs|Feature|
|WORDSNET-9996|Consider implementing HtmlSaveOptions.UseAntiAliasing for HTML/EPUB|Feature|
|WORDSNET-10195|Process hangs during rendering/printing when Hyphenation is applied|Performance|
|WORDSNET-10143|ArgumentExceptionOutOfRangeException occurs when MailMerge.Execute is called after specifying nl-NL culture|Regression|
|WORDSNET-10165|Negative values in merge fields are prefixed with space|Regression|
|WORDSNET-10168|Expression result is incorrect when calculating a formula field|Regression|

