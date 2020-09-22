---
title: Aspose.Words for Java 15.5.0 Release Notes
type: docs
weight: 70
url: /java/aspose-words-for-java-15-5-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 15.5.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-15.5.0/)

{{% /alert %}} 

## **Aspose.Words for Java 15.5 Release Notes**

### **Major Features**

There are 87 improvements and fixes in this regular monthly release. The most notable are: 

CustomXML nodes are removed

Support for conditional blocks added to the LINQ Reporting Engine

Improved rendering of floating shapes in complex tables

Implemented Arabic Abjad list numbering style in the layout

Improved performance of importing HTML documents with complex CSS selectors

Improved positioning of floating shapes in HTML output

A document can now be rendered in a grayscale mode

Improved Far-Eastern characters rendering for PDF embedded fonts

Significantly improved time and size when rendering PDF documents with DrawingML text effects 

## **All Changes**

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-1054 |Image borders are incorrect when saving to image using GetShapeRenderer.Save method |Bug |
|WORDSJAVA-1057 |Shape origin is shifted. |Bug |
|WORDSJAVA-877 |Internal methods are available as Public API |Enhancement |
|WORDSJAVA-1038 |Uniform local host slashes for different hosts and platforms. |Regression |
|WORDSJAVA-1055 |java.lang.NoSuchFieldError: NODESET occurs during loading a DOCX |Regression |
|WORDSNET-10490 |An image overlaps the other content when converting to HTML |Bug |
|WORDSNET-10764 |Table's borders are missing after saving Docx to PDF/Docx/Doc |Bug |
|WORDSNET-10785 |Contents position is changed after re-saving RTF |Bug |
|WORDSNET-11037 |Table's border is changed after re-saving the Doc file |Bug |
|WORDSNET-11076 |Word Online is not able to Edit Aspose.Words generated documents |Bug |
|WORDSNET-11182 |Table borders are missing after re-saving Docx |Bug |
|WORDSNET-11241 |Open/Save corrupts document |Bug |
|WORDSNET-11267 |/footnote balancing/ Text flows to the next page (Doc to Pdf) |Bug |
|WORDSNET-11268 |/footnote balancing/ Footnote position is changed (Doc to Pdf) |Bug |
|WORDSNET-11271 |TabStops, Left and Hanging indent values of TOC items are not preserved by UpdateFields |Bug |
|WORDSNET-11273 |CSS font size for table's content are not applied in output Doc/Docx/HTML |Bug |
|WORDSNET-11339 |Text moves to next page after re-saving RTF |Bug |
|WORDSNET-11539 |Underlines are getting removed in merged document |Bug |
|WORDSNET-11548 |/footnotes/ Paragraph position is changed after conversion from Doc to pdf |Bug |
|WORDSNET-11678 |Shapes do not render in output Pdf |Bug |
|WORDSNET-11735 |UpdateField does not work for DocVariable/DocProperty with vertical tab |Bug |
|WORDSNET-11795 |IF fields in bookmark text not resolving properly |Bug |
|WORDSNET-11800 |Missing Embedding Font when renderring to PDF |Bug |
|WORDSNET-11809 |Table borders become 'nil' during open/save a DOCX |Bug |
|WORDSNET-11810 |Provide way to set id, name values of legacy control |Bug |
|WORDSNET-11819 |Table border: border colour generated incorrect during Html to Word conversion |Bug |
|WORDSNET-11826 |Docx to Pdf conversion issue with footer contents |Bug |
|WORDSNET-11840 |Convert DOCX to PDF - repeat table headers problem |Bug |
|WORDSNET-11844 |Content (Fields) position is changed after conversion from Doc to Pdf |Bug |
|WORDSNET-11864 |Shape fill color is not set correctly using Color.FromArgb |Bug |
|WORDSNET-11880 |Docx to Pdf conversion issue with Arabic Abjad numbering |Bug |
|WORDSNET-11896 |Incorrect default font color of tables when importing an HTML document in Quirks mode |Bug |
|WORDSNET-11919 |Text with shadow effect does not render correctly in Pdf |Bug |
|WORDSNET-11926 |ShapeRenderer.Save messed up the text on the x-coordinate of chart in output Png |Bug |
|WORDSNET-11927 |ShapeRenderer.Save does not save the x-coordinate of chart correctly in output Png |Bug |
|WORDSNET-5236 |/export floating/ Position of floating shape is incorrect |Bug |
|WORDSNET-5263 |Position of shape is incorrect |Bug |
|WORDSNET-5500 |Shapes are removed and misplaced |Bug |
|WORDSNET-5825 |RTF to PDF conversion page number issue |Bug |
|WORDSNET-6690 |Lines rendered on different page |Bug |
|WORDSNET-6768 |TextBoxes are laid out incorrectly in EPUB |Bug |
|WORDSNET-7998 |Exception : Mail merge regions 'x' and 'y' overlap. Two regions cannot start/end in the same paragraph or occupy the same table row. |Bug |
|WORDSNET-8347 |Mail Merge with formula that contain asterisk not working |Bug |
|WORDSNET-8609 |/linked textbox reflow/ A line of text in TextBox is rendering inside another TextBox in PDF |Bug |
|WORDSNET-9670 |Document.UpdateFields does not update the IF field |Bug |
|WORDSNET-9706 |Mail Merge is not working with formatted date field using Mustache syntax |Bug |
|WORDSNET-10516 |Provide a way to render documents with Grayscale effect. |Enhancement |
|WORDSNET-11543 |Improve positioning of floating shapes in HTML output |Enhancement |
|WORDSNET-11640 |Consider adding partial support for the 'min-width' CSS property on empty table cells |Enhancement |
|WORDSNET-11782 |Transparent image backgrounds are displayed as black in HTML |Enhancement |
|WORDSNET-11805 |Add descriptions for -aw properties |Enhancement |
|WORDSNET-11827 |Support creating grayscale PDF |Enhancement |
|WORDSNET-11860 |Shadow effect on a Drawing is incorrect during rendering to PDF |Enhancement |
|WORDSNET-11903 |Docx to Pdf conversion issue with text position |Enhancement |
|WORDSNET-3306 |Consider moving verifications in DocumentValidator to avoid creating zero-weight files. |Enhancement |
|WORDSNET-4796 |Table style cell borders override direct table formatting borders |Enhancement |
|WORDSNET-10308 |System.Security.Cryptography.CryptographicException is thrown while loading docx with digital signature |Exception |
|WORDSNET-11310 |System.Security.Cryptography.CryptographicException is thrown while loading Docx |Exception |
|WORDSNET-11706 |System.Security.Cryptography.CryptographicException is thrown while loading Docx |Exception |
|WORDSNET-11804 |Shape.Fill.Color throws System.NullReferenceException |Exception |
|WORDSNET-11813 |Stroke.Color throws System.InvalidCastException |Exception |
|WORDSNET-11822 |ImportNode method throws System.ArgumentException |Exception |
|WORDSNET-11823 |Aspose.Words.FileCorruptedException occurs when loading Aspose.Words generated DOCX file |Exception |
|WORDSNET-11834 |Document.Print throws System.NullReferenceException |Exception |
|WORDSNET-11842 |System.ArgumentOutOfRangeException is thrown while saving Docx to Pdf |Exception |
|WORDSNET-11917 |Aspose.Words.FileCorruptedException occurs during loading a DOC |Exception |
|WORDSNET-11920 |Fill.Color throws System.NullReferenceException |Exception |
|WORDSNET-11921 |Fill.Color throws System.InvalidCastException |Exception |
|WORDSNET-10514 |Provide code to manually insert watermark at the centre of each page |Feature |
|WORDSNET-10928 |Add feature to change the name of 'Page' class when document is exported to HtmlFixed |Feature |
|WORDSNET-11496 |Support GlossaryDocument features in DOC, DOT |Feature |
|WORDSNET-11704 |FarEast layout should be calculated for each paragraph independently. |Feature |
|WORDSNET-11923 |Support conditional blocks for the new reporting engine |Feature |
|WORDSNET-3197 |Repeat only part of a paragraph instead of repeating whole paragraph durign mail merge with regions |Feature |
|WORDSNET-3301 |Allow specifying "Text Flow" through PageSetup. |Feature |
|WORDSNET-3602 |Consider updating invalid IF fields. |Feature |
|WORDSNET-50 |Allow placing more reporting-syntax constructs in the documents |Feature |
|WORDSNET-6292 |Consider adding FootnoteOptions.ExportAsComments property |Feature |
|WORDSNET-7055 |Can not set Date value by using StructuredDocumentTag.FullDate |Feature |
|WORDSNET-7064 |StructuredDocumentTag.DateDisplayLocale Property do not work |Feature |
|WORDSNET-11497 |It takes hours of time and gigabytes of RAM to convert a DOCX to HtmlFixed |Performance |
|WORDSNET-11828 |Process hangs during open save a RTF |Performance |
|WORDSNET-11832 |Improve performance of CSS selector combinators |Performance |
|WORDSNET-11197 |NullReferenceException is thrown while using InsertHtml |Regression |
|WORDSNET-11386 |Bookmark.Text returns extra empty space using v14.12.0 |Regression |
|WORDSNET-11593 |RestartPageNumbering doesnt work anymore in Word |Regression |
|WORDSNET-11789 |Crop of images seems to be broken since 15.2 |Regression |

