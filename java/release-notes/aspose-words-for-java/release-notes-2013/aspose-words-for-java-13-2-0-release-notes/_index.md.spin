---
title: Aspose.Words for Java 13.2.0 Release Notes
type: docs
weight: 100
url: /java/aspose-words-for-java-13-2-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 13.2.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-13.2.0/)

{{% /alert %}} 

## Aspose.Words for Java 13.2 Release Notes

### What's New

- 3D effects are rendered for VML shapes.
- Shadows are rendered for VML shapes.
- PDF rendering performance is improved for documents with large JPEG images.
- DrawingML Charts rendering new features added.
- DIV elements in HTML are supported.
- Non-binary OLE objects are supported in ODT.
- Floating table breaking and positioning improved.
- Layout of RTL tables and paragraphs improved. 

For a list of changes to the public API in this release refer to the following article in the documentation. 

## All Fixes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-656 |Explicit symbol Arabic font changed by run font. |Bug |
|WORDSJAVA-660 |QUOTE field update. |Bug |
|WORDSJAVA-666 |Aspose.Words doesn't read NUL and EOT ascii Code Characters from RTF |Bug |
|WORDSJAVA-673 |Unproperly ordered iso-8859-8 (Hebrew visually ordered) text. |Bug |
|WORDSJAVA-678 |One word rendered improperly in complex Arabic document. |Bug |
|WORDSJAVA-679 |Rtl text with incorrect RTL properties rendered improperly. |Bug |
|WORDSJAVA-680 |Rtl text with incorrect properties inside SDT. |Bug |
|WORDSJAVA-681 |HebrewShaper bug |Bug |
|WORDSJAVA-686 |Perl can't properly transfer Unicode string to Java code inside Inline::Java block |Bug |
|WORDSJAVA-692 |Japanese text with code page ms932 looses few symbols when converting RTF to DOC |Bug |
|WORDSJAVA-674 |Broken Windows Metafile of huge size is saved as empty to PDF |Enhancement |
|WORDSJAVA-677 |Render RTL text with complex or incorrect properties |Enhancement |
|WORDSJAVA-687 |Added WrapMode and affine transformations to PathGradient |Enhancement |
|WORDSJAVA-684 |StackOverflowError occurs during rendering to pdf when fonts are not available |Exception |
|WORDSJAVA-689 |Saving Docx to Pdf fails becuse of missing Font |Exception |
|WORDSJAVA-693 |StackOverflowError Exception while saving RTF to PDF at Linux OS |Exception |
|WORDSJAVA-695 |StackOverflowError occurs while converting Doc to pdf |Exception |
|WORDSJAVA-691 |Linux font not support windows font glyphs |Feature |
|WORDSJAVA-694 |StackOverflowError occurs during rendering to pdf |Regression |
|WORDSNET-1773 |“DoNotDisplayPageBoundaries” has no effect when save document in DOC format. |Bug |
|WORDSNET-2934 |EMF image is rendered improperly. |Bug |
|WORDSNET-5302 |Watermark disappears after open/save DOCX document. |Bug |
|WORDSNET-5738 |Lists are getting rendered incorrectly on DOCX>DOCX |Bug |
|WORDSNET-6395 |Aspose.Words does not load complete text in HTML |Bug |
|WORDSNET-6712 |Bottom line of header lost after verticle cell merge and zooming out the doucment |Bug |
|WORDSNET-6847 |The indentation of Paragraph is not correct in PDF |Bug |
|WORDSNET-6906 |HTML string truncates when converting to RTF |Bug |
|WORDSNET-7341 |/row height/ Table's cell text do not render correctly in output PDF file |Bug |
|WORDSNET-7342 |/row height/ Table's border do not render correctly in output PDF file |Bug |
|WORDSNET-7351 |Text in EMF image is shifted towards right in Xps |Bug |
|WORDSNET-7376 |UpdateFields doesn't update the value of a STYLEREF field |Bug |
|WORDSNET-7411 |Docx to PDF conversion issue with Pie Chart |Bug |
|WORDSNET-7412 |Doc to PDF conversion issue with X-axis title's alignment |Bug |
|WORDSNET-7461 |RTF to fixed file format conversion issue with character rendering |Bug |
|WORDSNET-7487 |Table Row/Cell widths are not preserved during DOC to HTML to DOC roundtrip |Bug |
|WORDSNET-7529 |ParagraphFormat.LinesToDrop corrupts Table in ODT |Bug |
|WORDSNET-7548 |Doc to RTF conversion issue with track changes |Bug |
|WORDSNET-7550 |ODT font size problem. |Bug |
|WORDSNET-7551 |Doc to HTML conversion issue with image rendering |Bug |
|WORDSNET-7552 |Bookmark value is visible in place where ASK field was located |Bug |
|WORDSNET-7558 |Cell shading color is not preserved in Pdf |Bug |
|WORDSNET-7559 |Table content is not preserved during open/save RTF |Bug |
|WORDSNET-7571 |Font size is imported incorrectly when it by default (if it open in MSo) |Bug |
|WORDSNET-7589 |Shading.BackgroundPatternColor do not save in ODT |Bug |
|WORDSNET-7593 |UpdateFields doesn't format MERGEFIELD values as Ordinals (English Words) |Bug |
|WORDSNET-7599 |HtmlSaveOptions.ScaleImageToShapeSize false value is not working |Bug |
|WORDSNET-7601 |List Tab Positions are incorrect in fixed page formats |Bug |
|WORDSNET-7615 |Docx to PDF conversion issue with axis labels of charts |Bug |
|WORDSNET-7626 |Contents are misplaced after conversion from Docx to Fixed file format |Bug |
|WORDSNET-7638 |Open/Save a DOCX with Aspose.Words produces a corrupted document |Bug |
|WORDSNET-7652 |Table width is not preserved during DOCX>HTML>DOCX roundtrip |Bug |
|WORDSNET-7654 |After HTML import table width is different in DOC and DOCX |Bug |
|WORDSNET-7660 |Paragraph space after changes after using Document.AppendDocument with UseDestinationStyles |Bug |
|WORDSNET-7668 |Shape size is read incrorrectly from XML/DOCX |Bug |
|WORDSNET-7674 |DocumentBuilder.InsertImage does not convert a wide image to Pdf |Bug |
|WORDSNET-7678 |Embedded Excel-Sheet (OLE) convert to picture after using AppendDocument |Bug |
|WORDSNET-7681 |DOCX produced by Aspose.Words cannot be opened in MS Word. |Bug |
|WORDSNET-7691 |Question marks after list label in HTML |Bug |
|WORDSNET-7698 |Font size of superscript character is not preserved during DOCX to HTML to DOCX roundtrip |Bug |
|WORDSNET-7699 |PDF page is spilling over to the next page after appending several documents |Bug |
|WORDSNET-7706 |Paragraph/Text Border is missing when saved to PDF, TIFF, XPS |Bug |
|WORDSNET-7709 |Quotes are lost after import of an MHTML document |Bug |
|WORDSNET-7712 |Shapes in TIFF become distorted |Bug |
|WORDSNET-7713 |Table in Shape is moved towards the left edge of Page in fixed formats |Bug |
|WORDSNET-7714 |Content in Cells is moving to other Cells in different Rows in fixed formats |Bug |
|WORDSNET-7715 |Document.Unprotect turn off the track changes |Bug |
|WORDSNET-7716 |Number formatting is incorrect in Russian culture. |Bug |
|WORDSNET-7718 |Special characters typed using the Symbol font are exported to HTML incorrectly |Bug |
|WORDSNET-7720 |Position of DrawingML is not preserved in fixed page formats |Bug |
|WORDSNET-7726 |Document.Save change the RTF contents to symbols |Bug |
|WORDSNET-7733 |RTF produces bad output. |Bug |
|WORDSNET-7738 |Border appears around textbox after open/save. |Bug |
|WORDSNET-7742 |base64 image is not showing in Chrome and Firefox |Bug |
|WORDSNET-7759 |Styles.AddCopy throws exception "duplicate" |Bug |
|WORDSNET-7761 |Formatting of currency number is incorrect during MailMerge |Bug |
|WORDSNET-7764 |Indentation of nested lists is not correct when importing from HTML |Bug |
|WORDSNET-7770 |OddAndEvenPagesHeaderFooter is not preserved when importing Section to another Document |Bug |
|WORDSNET-7782 |PageSplitter: Heading occurs first on the page it may have different height compared to the original document |Bug |
|WORDSNET-7784 |PageSplitter: If page ends with section break then odd page can be created in output, |Bug |
|WORDSNET-7785 |PageSplitter: TOC appearance is different |Bug |
|WORDSNET-7793 |Open/Save a DOCM with Aspose.Words produces a corrupted document |Bug |
|WORDSNET-7805 |End of Table Rows do not match on Html2Doc2Html |Bug |
|WORDSNET-7814 |Thick and shrinked Telugu characters are produced in PDF |Bug |
|WORDSNET-7841 |Alpha channel is lost using PdfImageCompression.Jpeg |Bug |
|WORDSNET-7845 |Header content is lost during open/save ODT |Bug |
|WORDSNET-2257 |Shape shadow is lost upon rendering/converting to PDF. |Enhancement |
|WORDSNET-3538 |Borders around table are partially lost after open/save. |Enhancement |
|WORDSNET-6062 |/asian font substitution/ Doc to PDF conversion issue with Japanese character. |Enhancement |
|WORDSNET-6444 |/asian font substitution/ Paragraph spacing needs to be improved during rendering to PDF |Enhancement |
|WORDSNET-6655 |Unable to load document in 11.5.0 version |Enhancement |
|WORDSNET-6704 |Bottom border line of image disappears upon converting DOCX to DOC/RTF |Enhancement |
|WORDSNET-6761 |RTF to PDF conversio issue with logo |Enhancement |
|WORDSNET-7111 |3D effects of Shapes are lost during rendering to PDF |Enhancement |
|WORDSNET-7155 |Floating table is rendering at the wrong page and cutting at the bottom in fixed page formats |Enhancement |
|WORDSNET-7180 |/asian font substitution/ Some of the text is having a bold typeface in PDF |Enhancement |
|WORDSNET-7184 |Decide if PrinterSettingsContainer should be public |Enhancement |
|WORDSNET-7437 |Remove the dependency for WingDings 2 font while rendering checkboxes in PDF file |Enhancement |
|WORDSNET-7457 |Improve axis labels auto rotation algorithm |Enhancement |
|WORDSNET-7488 |Translucent shape is rendered lighter than it should. |Enhancement |
|WORDSNET-7555 |WORDSNET-6804 Fix incorrect face order |Enhancement |
|WORDSNET-7582 |/asian font substitution/ Chinese text is formatted as bold in Pdf |Enhancement |
|WORDSNET-7596 |Saving a DOCX stream to disk using IO.File results in Document corruption |Enhancement |
|WORDSNET-7628 |Other\TestBugInFilesFromRK.docx crashes |Enhancement |
|WORDSNET-7644 |Cell borders are not preserved in Pdf |Enhancement |
|WORDSNET-7646 |/font substitution/ Special characters are rendered incorrectly while conversion from Doc to fixed file format |Enhancement |
|WORDSNET-7657 |Data labels are rendered incorrectly for bars, which height is less than tick size. |Enhancement |
|WORDSNET-7663 |A Shape takes place of Paragraphs and moves them towards right page edge |Enhancement |
|WORDSNET-7665 |Table is not rendering correctly while conversion from Docx to PDF |Enhancement |
|WORDSNET-7703 |Refactor virtual list related classes. |Enhancement |
|WORDSNET-7719 |Small image boxes in DrawingML nodes are not preserved in fixed formats |Enhancement |
|WORDSNET-7724 |/rtl floating table X compensation/ Floating RTL table is not positioned correctly |Enhancement |
|WORDSNET-7725 |Update OOXML chart supported features list |Enhancement |
|WORDSNET-7727 |Post blog and API changes for this month's release |Enhancement |
|WORDSNET-7743 |Use AttributeConverter instead of direct access to RunPr properties in Layout |Enhancement |
|WORDSNET-7753 |Implement support of simple shadows. |Enhancement |
|WORDSNET-7756 |PageIndex value is swapped with the Width part of LayoutEnumerator.Rectangle property |Enhancement |
|WORDSNET-7757 |PageIndex and Rectangle values of Run nodes returned by LayoutEnumerator are incorrect |Enhancement |
|WORDSNET-7768 |Conversion issue in Smart Art Shape Text |Enhancement |
|WORDSNET-7781 |Test documents with PageSplitter sample |Enhancement |
|WORDSNET-7791 |RenderedDocument class returns incorrect Rendered Last line of Column |Enhancement |
|WORDSNET-7792 |LayoutEnumerator returns incorrect number of Columns |Enhancement |
|WORDSNET-7820 |Page breaks can cause a second page when content is extracted |Enhancement |
|WORDSNET-7823 |Use .ttf extension instead of .odttf for font resources when write FixedXaml |Enhancement |
|WORDSNET-7833 |RTL line positioning is incorrect |Enhancement |
|WORDSNET-7840 |Create/find tool for validating generated WOFF files. |Enhancement |
|WORDSNET-7844 |Last Paragraph of HeaderPrimary is missing when rendering to image formats |Enhancement |
|WORDSNET-7216 |Document.UpdateFields throws exception |Exception |
|WORDSNET-7493 |UnsupportedFileFormatException occurs when loading a TEXT file into DOM |Exception |
|WORDSNET-7513 |Unable to load Docx into Aspose.Words.Document |Exception |
|WORDSNET-7595 |Document.UpdateFields method throws exception |Exception |
|WORDSNET-7604 |Doc to WordML conversion issue with .wmz data |Exception |
|WORDSNET-7640 |Exception while conversion from WordML to PDF |Exception |
|WORDSNET-7672 |Aspose.words Digital signature issue at Windows XP |Exception |
|WORDSNET-7686 |System.OutOfMemoryException occurs during loading a DOC |Exception |
|WORDSNET-7702 |NullReferenceException occurs during rendering to fixed page formats |Exception |
|WORDSNET-7711 |Document constructor throws exception FileCorruptedException during loading RTF |Exception |
|WORDSNET-7736 |Revision.ParentStyle throws System.InvalidOperationException |Exception |
|WORDSNET-7751 |Document.UpdateFields throws System.NullReferenceException |Exception |
|WORDSNET-7803 |XamlReader.Load throws NullReferenceException when loading XamlFixed |Exception |
|WORDSNET-7821 |FileCorruptedException is thrown on load of an HTML document |Exception |
|WORDSNET-4189 |Support basic 3D effects of shapes upon rendering. |Feature |
|WORDSNET-5375 |Div elements are not supported in the model. |Feature |
|WORDSNET-6804 |Support of extrusion effect rendering (lighting and shading) |Feature |
|WORDSNET-6868 |Shapes Shadows // WordArt shape is not rendering correctly in PDF |Feature |
|WORDSNET-7244 |Support rendering of leader lines upon rendering data labels. |Feature |
|WORDSNET-7354 |Support text rotation and direction upon rendering Axis labels. |Feature |
|WORDSNET-7468 |Shape shadow effects is not rendered in pdf output |Feature |
|WORDSNET-7609 |Hyperlink in PDF is not opened in a new window when specifying ContentDisposition.Inline option |Feature |
|WORDSNET-7696 |Support non binary OLE objects (&lt;draw:object&gt;) in ODT |Feature |
|WORDSNET-7710 |Aspose.Words renders more Pages than in original Docuement |Feature |
|WORDSNET-7728 |Create samples for the new access to page layout feature |Feature |
|WORDSNET-7729 |Touch up PageSplitter sample |Feature |
|WORDSNET-7730 |Create a sample which demonstrates how to get page numbers of every node in a document |Feature |
|WORDSNET-7731 |Create a sample which demonstrates LayoutEnumerator |Feature |
|WORDSNET-7732 |Create a sample to add a image to every page without using the header or footer |Feature |
|WORDSNET-7760 |/revision marks/ Support revisions in list numbers |Feature |
|WORDSNET-7772 |Create a basic wrapper for LayoutEnumerator which provides a object model API |Feature |
|WORDSNET-7780 |Provide a way to access content of a TextColumn |Feature |
|WORDSNET-7783 |PageSplitter: Heading numbers can be wrong |Feature |
|WORDSNET-7839 |Export font subsets in WOFF (Web Open Font Format) |Feature |
|WORDSNET-7842 |Implement writer for WOFF format. |Feature |
|WORDSNET-7566 |File size of PDF is too big |Performance |
|WORDSNET-7773 |Exception while loading Doc file into Aspose.Words.Document. |Regression |
|WORDSNET-7858 |RTF to Pdf conversion issue with text rendering using font MS Mincho |Regression |

