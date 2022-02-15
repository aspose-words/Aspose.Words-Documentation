---
title: Aspose.Words for Java 15.4.0 Release Notes
articleTitle: Aspose.Words for Java 15.4.0 Release Notes
linktitle: Aspose.Words for Java 15.4.0 Release Notes
description: "Aspose.Words for Java 15.4.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 80
url: /java/aspose-words-for-java-15-4-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 15.4.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-15.4.0/)

{{% /alert %}} 

## Aspose.Words for Java 15.4 Release Notes

### Major Features

There are 110 improvements and fixes in this regular monthly release. The most notable are: 

MathML equations rendering inside shapes implemented

MathML equations vertical positioning improved when rendering

Improved Iso29500 support for MS Word for Mac 2011 documents

Improved page number calculation, footnote balancing, nested floating tables and text wrapping around floating objects

EMF and WMF rendering improvements

Added some new public members to HTML save options and shapes/drawing

Over 30 improvements to DocumentBuilder, TXT, ODT and Microsoft Word document formats 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-1007 |Color of DrawingML is changed after conversion from Docx to Pdf |Bug |
|WORDSJAVA-1023 |Document.PageCount returns incorrect value due absent fonts. |Bug |
|WORDSJAVA-1039 |Dr3DFaceComparer violates its general contract if TimSort (ether java or net implementation) is used |Bug |
|WORDSJAVA-1042 |WebRequestTimeout is ignored during load of html with link to absent image. |Bug |
|WORDSJAVA-1045 |On word document saved as pdf, the romanian character "?" is displayed as a box under linux. |Bug |
|WORDSJAVA-988 |Special processing of MS Shell Dlg font. |Bug |
|WORDSJAVA-1037 |Different sorting of docx xml tags. |Enhancement |
|WORDSJAVA-1048 |On word document saved as png, the romanian character "?" is displayed as a box under Linux despite of any fonts' sources. |Enhancement |
|WORDSJAVA-994 |com.sun.media.jai.codecimpl.PNGImageDecoder is thrown while converting Docx to Pdf |Exception |
|WORDSJAVA-1029 |Transparent color (chroma key) is lost. |Regression |
|WORDSJAVA-1046 |FileCorruptedException is thrown while loading Docx with broken image. |Regression |
|WORDSNET-10212 |/negative page margins/ Header paragraph border is lost after conversion from Doc to PDF |Bug |
|WORDSNET-10275 |A blank page is rendered in PDF |Bug |
|WORDSNET-10477 |Images are not preserved during exporting to MHTML |Bug |
|WORDSNET-10521 |Image border disappear after saving Docx to Doc/Pdf |Bug |
|WORDSNET-10952 |DrawingML contents are missing after conversion from Docx to Pdf |Bug |
|WORDSNET-11039 |Extra paragraph mark is inserted at the bottom of the footer upon document save |Bug |
|WORDSNET-11162 |Table's border is lost after conversion from ODT to Docx |Bug |
|WORDSNET-11230 |Field.Remove does not remove the mail merge field |Bug |
|WORDSNET-11350 |Text wraps around empty space while converting Doc to Pdf |Bug |
|WORDSNET-11351 |Document protection issue with Microsoft Word for Mac 2011 |Bug |
|WORDSNET-11389 |Table's border width does not import into Aspose.Words DOM |Bug |
|WORDSNET-11467 |Paragraph with big left indentation value is rendering incorrectly in PDF |Bug |
|WORDSNET-11468 |Page breaks are not preserved in PDF |Bug |
|WORDSNET-11471 |Aspose.Words produces empty documents |Bug |
|WORDSNET-11565 |Shape is missing after merging one document into another |Bug |
|WORDSNET-11612 |Docx to Pdf causes 100% memory usage |Bug |
|WORDSNET-11617 |Color of brush in Wmf is wrong. |Bug |
|WORDSNET-11630 |Doc to Pdf conversion issue with bullet position |Bug |
|WORDSNET-11632 |Text gets blurred during rendering to HtmlFixed |Bug |
|WORDSNET-11647 |CARDTEXT swtich does not work for Dutch language |Bug |
|WORDSNET-11654 |PrintDate value is changed after conversion from RTF to PDF |Bug |
|WORDSNET-11656 |Image is missing after conversion from Docx to Pdf/Docx |Bug |
|WORDSNET-11668 |STYLEREF produces error message in PDF |Bug |
|WORDSNET-11676 |Tables are pushed to following pages during open/save an ODT |Bug |
|WORDSNET-11677 |Document.AcceptAllRevisions deletes the footer in the document |Bug |
|WORDSNET-11685 |Contents move to next page after conversion from Doc to Pdf |Bug |
|WORDSNET-11690 |Word REF fields are incorrectly updated |Bug |
|WORDSNET-11695 |Track Revisions set incorrect author name |Bug |
|WORDSNET-11697 |Table row headings are missing after converting RTF to Tiff/Rtf |Bug |
|WORDSNET-11699 |Table position is changed after converting RTF to Tiff/Rtf. |Bug |
|WORDSNET-11700 |Contents are missing after converting RTF to Tiff/Rtf |Bug |
|WORDSNET-11702 |'A generic error occurred in GDI+' occurs when converting DOCX to PDF |Bug |
|WORDSNET-11707 |Bullet numbers are changed after re-saving Doc |Bug |
|WORDSNET-11708 |Paragraph moves to previous page after conversion from Docx to Pdf |Bug |
|WORDSNET-11714 |Displayed date format in chart is not the same as in the docx file |Bug |
|WORDSNET-11716 |Missing MERGEFIELD in Conditional, Works in Word, Not In Aspose.Words |Bug |
|WORDSNET-11718 |Strange * MERGEFORMAT text appears in front of equations in PDF |Bug |
|WORDSNET-11719 |Equations are rendered higher than the text on the same line. I.e. baselines do not match. |Bug |
|WORDSNET-11724 |WORDSNET-11511 was not fixed in v15.3.0 |Bug |
|WORDSNET-11725 |Missing images on word to HTML conversion |Bug |
|WORDSNET-11727 |EMF image big differnce after docx saved to pdf |Bug |
|WORDSNET-11734 |fldLock="on" attribute is removed from document after re-saving WordML |Bug |
|WORDSNET-11739 |PageSetup.DifferentFirstPageHeaderFooter value is lost after re-saving Doc |Bug |
|WORDSNET-11747 |Aspose.Words ignore Thai fonts while saving html/txt to Pdf or Docx |Bug |
|WORDSNET-11748 |Dr3DFaceComparer violates transitivity rule |Bug |
|WORDSNET-11751 |First page header content is not preserved during open/save a |Bug |
|WORDSNET-11756 |Header on second page is missing in PDF |Bug |
|WORDSNET-4286 |Page layout of rendered PDF differs from original document |Bug |
|WORDSNET-5020 |Field Codes not parsed correctly when leading quotes or paragraph end markers present |Bug |
|WORDSNET-5249 |/printer metrics/ Text is wrapped incorrectly during rendering. |Bug |
|WORDSNET-5762 |PAGE field, GroupShape inside Primary Footer becomes invisible after processing |Bug |
|WORDSNET-5895 |Image squashed, while converting Word document to Pdf |Bug |
|WORDSNET-7547 |Paragraph's embedded style applied to table cell's text without "p" tag. |Bug |
|WORDSNET-7637 |/printer metrics/ Some text is moved to the previous page upon rendering |Bug |
|WORDSNET-8046 |/printer metrics/ Content is rendering on the previous page in Pdf |Bug |
|WORDSNET-8047 |/printer metrics/ Indent of some list lines are not exported correctly to fixed page formats |Bug |
|WORDSNET-8087 |DocumentBuilder.Font.ClearFormatting do not reset to default font formatting |Bug |
|WORDSNET-8377 |Document.AcceptAllRevisions add empty Paragraph in output Docx |Bug |
|WORDSNET-9394 |Implement Bevel effect // Simple Frame style applied on a DrawingML is not preserved when rendering |Bug |
|WORDSNET-9398 |A GUID text value is added at the end of a SDT during rendering to fixed page formats |Bug |
|WORDSNET-10029 |Nested number sequence of lists is wrong in HTML |Enhancement |
|WORDSNET-10718 |DocumentBuilder.InsertImage does not mimics the MS Word behavior |Enhancement |
|WORDSNET-11458 |Document.Save generates huge size html for Odt |Enhancement |
|WORDSNET-11538 |Images are very small after HTML to DOCX |Enhancement |
|WORDSNET-11547 |/w:legacySpace/ Toc field does not render correctly in output Pdf |Enhancement |
|WORDSNET-11554 |Extra space between numbers and text after RTF to HTML to RTF |Enhancement |
|WORDSNET-11585 |Barcode text is misplaced after DOC to PDF |Enhancement |
|WORDSNET-11639 |Incorrect default font color of tables when importing an HTML document in Quirks mode |Enhancement |
|WORDSNET-11645 |Vertical alignment of table cells is not preserved during HTML-DOCX-HTML round trip |Enhancement |
|WORDSNET-11671 |DrawingML shape that simultaneously has 3D effect, Outer shadow and Reflection is rendered a bit incorrectly |Enhancement |
|WORDSNET-11679 |Text in the left most column in a table is cut in PDF |Enhancement |
|WORDSNET-11726 |A picture overlaps Table in HtmlFixed |Enhancement |
|WORDSNET-11730 |System.IndexOutOfRangeException is thrown while saving docx to pdf |Enhancement |
|WORDSNET-2058 |ParagraphBreakFont should be the same as DocumentBuilder.Font, when use builder.Writeln. |Enhancement |
|WORDSNET-2284 |Shape name is always empty |Enhancement |
|WORDSNET-3443 |Picture switch does not work if there is “Text Before”. |Enhancement |
|WORDSNET-4926 |/footnote balancing/ Number of pages is incorrect after rendering. |Enhancement |
|WORDSNET-6286 |Add a way to distinguish signature line shapes in the API |Enhancement |
|WORDSNET-9612 |Export Revision's metadata to Html |Enhancement |
|WORDSNET-10704 |Aspose.Words throws a TypeInitializationException when it is merged into the calling assembly |Exception |
|WORDSNET-11318 |NodeImporter.ImportNode throws ArgumentException when importing section |Exception |
|WORDSNET-11470 |StackOverflowException encountered during mail merge process |Exception |
|WORDSNET-11473 |Aspose.Words.FileCorruptedException occurs when loading an ODT file |Exception |
|WORDSNET-11638 |DOCX to PDF throws Object reference not set to an instance of an object |Exception |
|WORDSNET-11653 |System.ArgumentException occurs during rendering to PostScript format |Exception |
|WORDSNET-11657 |System.IndexOutOfRangeException is thrown while saving RTF to HTML |Exception |
|WORDSNET-11705 |DocumentBuilder.InsertHtml throws System.InvalidOperationException |Exception |
|WORDSNET-11713 |PdfDigitalSignatureDetails constructor throws System.Security.Cryptography.CryptographicException |Exception |
|WORDSNET-11720 |System.ArgumentException occurs during rendering to PostScript format |Exception |
|WORDSNET-11721 |System.ArgumentException occurs during rendering to PostScript format |Exception |
|WORDSNET-11722 |System.ArgumentException occurs during rendering to PostScript format |Exception |
|WORDSNET-11723 |System.ArgumentException occurs during rendering to PostScript format |Exception |
|WORDSNET-10932 |Add feature to specify a suffix for CSS rules in style.css when document is exported to HtmlFixed |Feature |
|WORDSNET-10965 |/equation alignment/ Equations do not render correctly in Pdf |Feature |
|WORDSNET-11457 |Add feature to export linked image URL for exported image |Feature |
|WORDSNET-4443 |Support all picture switches like Ms Word does. |Feature |
|WORDSNET-9328 |Japanese contents moves to next page after conversion from Doc to Pdf |Feature |
|WORDSNET-11622 |Textboxes are not preserved during open/save a DOCX |Regression |
|WORDSNET-11745 |Aspose Words V15 performance problem |Regression |

