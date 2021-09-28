---
title: Aspose.Words for Java 13.12.0 Release Notes
type: docs
weight: 10
url: /java/aspose-words-for-java-13-12-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 13.12.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-13.12.0/)

{{% /alert %}} 

Aspose.Words for Java has been updated to version 13.12.0 and we are pleased to announce this release brings the addition of 109 new useful improvements.

Using Aspose.Words for Java you can work with DOC, OOXML, RTF, HTML, OpenDocument, PDF, XPS, EPUB and other formats in your applications. You can also view, generate, modify, convert, render and print documents all without using Microsoft Word.

Visit the documentation to learn how to get started with Aspose.Words for Java.

Note this download contains a fully working version of the product, however without a license set it will run in evaluation mode with some limitations. To test Aspose.Words without these evaluation limitations you can request a free 30-day temporary license.

The following is a list of changes in this version of Aspose.Words.

## Major Features

- Improved tight wrapping text flow around floating objects
- Curved WordArt objects rendering implemented (WordArt shapes fit to frames defined by Bezier curves)
- DrawingML “Glow” effect rendering implemented
- DrawingML “Outer Shadow” effect rendering implemented
- DrawingML “Reflection” effect rendering implemented

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-690 |Saving WordArt with Webdings font to non-Microsoft formats |Bug |
|WORDSJAVA-771 |Investigate why does the default locale of JVM changes randomly |Bug |
|WORDSJAVA-805 |Text form fields turn into square boxes when converting to PDF over CentOS |Bug |
|WORDSJAVA-807 |Exception while converting MS Word document to Pdf after merging |Bug |
|WORDSJAVA-812 |Incorrect Wingdings font rendering issue while conversion from Docx to PNG |Bug |
|WORDSJAVA-794 |Exception while downloading Aspose.Words for Java examples |Exception |
|WORDSNET-1988 |Support transparency in EMF emulated by SRCPAINT and SRCAND raster operations. |Bug |
|WORDSNET-2141 |Interval after paragraph is exported incorrectly when paragraph in table cell |Bug |
|WORDSNET-4219 |Open template document in SilverLight demos doesn't work in IE |Bug |
|WORDSNET-4258 |UserDocsApiLinker: Paragraph constructor does not link properly |Bug |
|WORDSNET-4948 |Image moves to the next page in ODT format |Bug |
|WORDSNET-5445 |Text box is rendered with a greater width and less height than it should. |Bug |
|WORDSNET-5451 |Text box content is rendered lower than it should be. |Bug |
|WORDSNET-6245 |With Aspose generated input Pdf file, PDFBox engine exports image incorrectly(or misplaced) |Bug |
|WORDSNET-8757 |A symbol is not preserved during open/save a RTF |Bug |
|WORDSNET-8944 |UpdateFields does not respect \n switch inside TOC field |Bug |
|WORDSNET-8951 |Indentation of list items increases after DOCX-HTML-DOCX round trip |Bug |
|WORDSNET-8952 |Distance between list item label and list item text increases after DOCX-HTML-DOCX round trip |Bug |
|WORDSNET-8955 |List item indentation increases after DOCX-HTML-DOCX round trip |Bug |
|WORDSNET-8956 |'Space After' value of list items increases after DOCX-HTML-DOCX round-trip |Bug |
|WORDSNET-8957 |Header and footer of an empty section become visible when exported to HTML |Bug |
|WORDSNET-8958 |Hyperlink text formatting is lost during conversion to HTML |Bug |
|WORDSNET-8979 |/Word 2002-2007 style evaluation rules/ Docx to Fixed file format conversion issue with content rendering |Bug |
|WORDSNET-8980 |/Word 2002-2007 style evaluation rules/ Text moves to next page after conversion from Docx to Fixed file format. |Bug |
|WORDSNET-9010 |Aspose.Words.Document does not import the html styles correctly. |Bug |
|WORDSNET-9048 |GetShapeRenderer().Save method incorrectly save DrawingML |Bug |
|WORDSNET-9115 |AutoShape objects are not preserved during open/save a RTF |Bug |
|WORDSNET-9177 |Incorrect positioning of frame elements after appending two documents |Bug |
|WORDSNET-9219 |HTML to Docx conversion issue with table's cell layout |Bug |
|WORDSNET-9226 |Paragraphs are not preserved during open/save a DOCX |Bug |
|WORDSNET-9257 |Height/Width of SVG is not same in output Docx/Pdf |Bug |
|WORDSNET-9267 |An image is not preserved during open/save RTF |Bug |
|WORDSNET-9269 |Character in some words are rendering with different font formatting in HtmlFixed |Bug |
|WORDSNET-9270 |A tiff image is incorrectly imported from Aspose.Email generated MHTML file |Bug |
|WORDSNET-9271 |Relative position of nested floating Text Boxes is unexpected when rendering |Bug |
|WORDSNET-9274 |Aspose.Words throws numerous warnings when loading DigitalSignature in DOCX |Bug |
|WORDSNET-9275 |DocProperty field values are not preserved during open/save a DOCX |Bug |
|WORDSNET-9278 |Aspose.Words doesn't use a barcode font during rendering |Bug |
|WORDSNET-9279 |Comment's alignment is changed from right to left after conversion from Docx to Pdf |Bug |
|WORDSNET-9281 |UpdateFields causes TOC to display NO TABLE OF CONTENTS ENTRIES FOUND message |Bug |
|WORDSNET-9282 |Unexpected Paragraphs are being displayed in TOC when calling UpdateFields method |Bug |
|WORDSNET-9283 |UpdateFields does not build the TOC field correctly |Bug |
|WORDSNET-9284 |First page contents are truncated after conversion from Doc to Pdf file format |Bug |
|WORDSNET-9289 |A Pie chart and it's data labels are not rendering correctly in PDF |Bug |
|WORDSNET-9293 |Image effect is not preserved in output Pdf file |Bug |
|WORDSNET-9297 |Chart does not render correctly in Pdf file after conversion from Docx |Bug |
|WORDSNET-9309 |Hyperlinks color is changed after conversion from HTML to Docx/Pdf |Bug |
|WORDSNET-9314 |Font changes from Arial to Courier New during open/save a RTF |Bug |
|WORDSNET-9332 |Aspose.Words produces a corrupt DOCX file. |Bug |
|WORDSNET-9333 |Lines of text imported from &lt;pre&gt; HTML elements have non-zero spacing |Bug |
|WORDSNET-9336 |Left and Hanging indentation values are incorrectly imported from HTML |Bug |
|WORDSNET-9337 |StructuredDocumentTag does not export correctly in output Doc/Pdf files |Bug |
|WORDSNET-9341 |Styles are imported with incorrect settings when importing sections |Bug |
|WORDSNET-9347 |Empty spaces are added in table's cell after conversion from RTF to Doc |Bug |
|WORDSNET-9348 |Table's layout is changed after conversion from RTF to Doc |Bug |
|WORDSNET-9360 |BuiltInDocumentProperties.Words return incorrect value |Bug |
|WORDSNET-9379 |Images overlap each other in converted HTML file |Bug |
|WORDSNET-9385 |Invalid Signature message appear in output Pdf file after conversion from Docx |Bug |
|WORDSNET-9407 |Formatting of Paragraph in Shape is not preserved during open/save an ODT |Bug |
|WORDSNET-9427 |Aspose.Words renders an invalid signature in PDF/Image formats |Bug |
|WORDSNET-9434 |Aspose.Words.FileCorruptedException is thrown while loading Doc file |Bug |
|WORDSNET-1787 |Import &lt; thead &gt; and &lt; th &gt; in tables properly |Enhancement |
|WORDSNET-1869 |font.color and td.bgcolor are not imported during HTML import. |Enhancement |
|WORDSNET-3855 |Shape extrusion doesn't work |Enhancement |
|WORDSNET-4436 |"!Syntax Error" is shown after updating fields. |Enhancement |
|WORDSNET-4630 |The copyright year in the CHM documentation is incorrect |Enhancement |
|WORDSNET-4797 |There is no documentation for the Underline enumeration |Enhancement |
|WORDSNET-5852 |WordArt advanced // While docx to Pdf, Text render incorrectly. |Enhancement |
|WORDSNET-596 |Using [BR]() tags within table cells leads to incorrect output |Enhancement |
|WORDSNET-6914 |WordArt // Bezier // shape is not rendering correctly in PDF |Enhancement |
|WORDSNET-7422 |Disregard paragraph space after for tight wrapping |Enhancement |
|WORDSNET-7465 |Incorrect image size and text wrapping |Enhancement |
|WORDSNET-764 |Update DocumentBuilder.InsertHtml method with correct handling of runs containing mixed rtl/ltr text. |Enhancement |
|WORDSNET-8017 |Add support shape fit to Bezier curves (for all all wordart shapes except ArchUp(Curve), ArchDown(Curve), Circle(Curve), Button(Curve)). |Enhancement |
|WORDSNET-8168 |Images are moved towards right Page edge in PDF |Enhancement |
|WORDSNET-8607 |An extra blank page is introduced in PDF |Enhancement |
|WORDSNET-8771 |Add a remark to the API docs that SVG images are inserted as vector image format EMF |Enhancement |
|WORDSNET-8910 |Implement a mechanism to apply a few depended CSS properties together to a model format |Enhancement |
|WORDSNET-9015 |Add support of :link selectors |Enhancement |
|WORDSNET-9017 |Add support of "pre-line" and "pre-wrap" values of "white-space" css property. |Enhancement |
|WORDSNET-9028 |Extra paragraph is added to table's cell so cell becomes higher in HTML import. |Enhancement |
|WORDSNET-9119 |Allow more control on how CSS styles are saved when saving to HtmlFixed format |Enhancement |
|WORDSNET-9120 |Add HtmlFixedSaveOptions.FontsFolder and HtmlFixedSaveOptions.FontsFolderAlias properties in API |Enhancement |
|WORDSNET-9155 |Incorrect text wrapping around a tight-wrapped image |Enhancement |
|WORDSNET-9244 |Contents move to next page after conversion from Docx to fixed file format |Enhancement |
|WORDSNET-9261 |Move Conversions [Explicit]() long running Unit Tests into the new project Aspose.Words.Test.Longrun |Enhancement |
|WORDSNET-9292 |Inaccurate WordArt rendering in output Pdf file |Enhancement |
|WORDSNET-9300 |Unsupported path type and rendering mode are encountered during rendering WordArt shapes to PDF |Enhancement |
|WORDSNET-9316 |At slash sign a line of text is broken into two lines in PDF |Enhancement |
|WORDSNET-8115 |Document.Save method throws System.NullReferenceException on saving Docx to Pdf |Exception |
|WORDSNET-8978 |Clickonce network error when installing dashboard |Exception |
|WORDSNET-9251 |Null reference exception in PDF conversion |Exception |
|WORDSNET-9280 |AcceptAllRevisions throws InvalidCastException |Exception |
|WORDSNET-9302 |Aspose.Words.FileCorruptedException occurs when loading HTML file |Exception |
|WORDSNET-9327 |An exception is thrown when an HTML document contains the Unicode Noncharacter (U+FFFF) |Exception |
|WORDSNET-9338 |OleFormat.SuggestedExtension throws System.IO.EndOfStreamException |Exception |
|WORDSNET-9363 |Aspose.Words.FileCorruptedException is thrown while loading MHTML file |Exception |
|WORDSNET-1503 |FootNote/Endnote fields inside another Hyperlink field is not converted as separate links during converting the .DOC to .HTML. |Feature |
|WORDSNET-2104 |Improve automatic spacing between paragraphs on HTML import |Feature |
|WORDSNET-228 |Add "blockquote" tag importing |Feature |
|WORDSNET-6052 |Implement Load and Save warnings for ODT format |Feature |
|WORDSNET-7195 |3D WordArt doesn't support shape fit to Bezier curves and has some fill issues |Feature |
|WORDSNET-8818 |Contents position is changed after conversion from RTF to Pdf |Feature |
|WORDSNET-8870 |Text is missing after conversion from RTF to Pdf |Feature |
|WORDSNET-8959 |Second page header and footer become visible in HTML |Feature |
|WORDSNET-9118 |Save SVG resources to files when exporting a document to Fixed HTML format. |Feature |
|WORDSNET-9209 |Preserve trackmoves revision upon DOCX round-trip. |Feature |
|WORDSNET-9247 |Aspose.Words does not use the same font as MS Word does for html to PDF conversion |Feature |
|WORDSNET-9256 |A paragraph in cell breaks into two lines when converting to fixed page formats |Feature |

## Public API and Backwards Incompatible Changes

The following is a list of any changes made to the public API such as added, renamed, removed or deprecated members as well as any non-backward compatible change made to Aspose.Words for .NET. If you have concerns about any change listed, please raise it on the Aspose.Words support forum.

### DrawingML.GetShapeRenderer Behavior Changed

In earlier versions Aspose.Words always used to use the fallback shape when rendering DrawingML as Aspose.Words was not able to properly render DrawingML. Fallback shapes are prerendered shapes included by Microsoft Word or the host program when the graphics object is created. The current version version can render DrawingMLs on almost the same level as VML Shapes so the behavior of this method has been switched to render the original DrawingML instead of fall back to VML rendering.h3. ExportEmbeddedSvg Property Added to HtmlFixedSaveOptions 

The ExportEmbeddedSvg boolean property has been added to HtmlFixedSaveOptions that controls how SVG resources are exported when a document is saved to fixed-page HTML.If the property is set to true (which is the default value) SVG resources are embedded in the HTML document, as before however if the property is set to false, SVG resources are saved to external files. The files are named "svg1.svg", "svg2.svg", etc and are placed next to other resource files of the document. If the user provides a callback using HtmlFixedSaveOptions.ResourceSavingCallback this callback will be called for each SVG file. As with images Aspose.Words remembers all SVG files already exported for the document and reuses them to prevent duplication.h3. FirstPageHeaderFooterPerSection Option Added to ExportHeadersFootersMode 

A new enumeration value of FirstPageHeaderFooterPerSection has been added to HtmlSaveOptions.ExportHeaderFootersMode that enables you to export first page headers and footers instead of primary headers and footers while exporting to HTML-based formats.h3. Rendering of DrawingML Glow Effect 

Starting from 13.12.0 version Aspose.Words supports rendering DrawingML glow effect. The glow effect can be rendered in one of three modes: 

- Simplified (default) - Soft edges are simulated using many layers with different transparency, which gives acceptable result with higher performance than in Fine mode.
- Fine - Blur filter is applied, which gives the same result as MS Word, but with lower performance because of complexity of convolution filter.
- None - In this mode no DrawingML effects are rendered.

The different modes can be set using new property: SaveOptions.DmlEffectsRenderingMode.h3. Rendering of DrawingML Glow Effect 

Starting from 13.12.0 version Aspose.Words supports rendering of outer shadow DrawingML effect. Effect can be rendered in two modes: 

### ResourceFileUri Property Added to ResourceSavingArgs

We have added ResourceSavingArgs.ResourceFileUri property that enables users to provide custom uniform resource identifiers (URI) for resources saved to external files during export to SVG and fixed-page HTML formats. When Aspose.Words calls an instance of IResourceSavingCallback provided by user the ResourceFileUricontains the URI generated by Aspose.Words for the resource file.The properties HtmlFixedSaveOptions.ResourcesFolderAlias and SvgSaveOptions.ResourcesFolderAlias already exist that modify URIs of external resources, but these properties have the following limitations: 

- It is impossible to provide different aliases for individual resource files. 
- Generated URIs have the form "alias/filename", which is fixed. For example, it is impossible to change the order of the alias and the file name or remove the slash character that separates them.

The new property ResourceSavingArgs.ResourceFileUri does not have the limitations of resource aliases and allows more control over URI construction. However, resource aliases are still useful in simple scenarios where resource saving callbacks introduce unnecessary overhead.h3. SaveOptions.DmlRenderingMode Introduced 

Within a separate fix a new option SaveOptions.DmlRenderingMode was introduced. It enables users to control how DrawingML shapes are rendered to fixed page formats. It has two possible values: 

### TOC Field Switch to Omit Page Numbers is Supported

The "\n" switch in TOC fields to omit page numbering during field generation is now supported. Any TOC field with this switch present will have page numbering removed. In previous versions this switch was ignored.h3. Trackmove Revisions Supported upon DOCX Round-trip 

In previous versions moving a portion of a document to another part of the document when tracked changed enabled would create a separate delete and insertion revision for the move. In this version the trackmove revision is now supported and the same edit will appear as a single move operation.
