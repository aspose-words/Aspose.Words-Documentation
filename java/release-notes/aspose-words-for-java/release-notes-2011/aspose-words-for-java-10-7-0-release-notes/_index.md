---
title: Aspose.Words for Java 10.7.0 Release Notes
description: "Aspose.Words for Java 10.7.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 10
url: /java/aspose-words-for-java-10-7-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 10.7.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-10.7.0/)

{{% /alert %}} 

Aspose.Words for Java 10.7 Release Notes

There are 112 improvements and fixes in this regular monthly release. Most notable changes are: 


- ActiveX controls are supported in DOCX documents.
- Custom footnote marks rendering.
- Improvements in rendering floating shapes.
- DrawingML rendering improvements.
- More field types are supported by the field update engine.
- Ability to specify a thumbnail image for EPUB documents.
- Improvements to 1bpp and also CMYK images in rendering.
- Better support for date and number formats in mail merges.


All fixes 

Key
Summary

WORDSJAVA-21
The image looks incorrect after converting to PDF.

WORDSJAVA-376
Line join round is not rendered to graphics in Java

WORDSJAVA-407
Lines rendering to graphics are not visible

WORDSJAVA-420
Can't read jpeg image with cmyk colorspace.

WORDSJAVA-441
MailMerge fields with Word-style mask formatting of number to
date.

WORDSJAVA-443
Parse Date formatted as "YYYY/MM/DD"

WORDSJAVA-448
small Gdi renderer regression: transparent background became
withe

WORDSJAVA-452
Indexed 1bpp bitmap with alpha is corrupted while saving to
PDF

WORDSNET-1675
Allow multiple paragraphs in endnote text in layout

WORDSNET-2030
Support rendering of all MS Word gradient fills in PDF.

WORDSNET-2349
Gradient looks incorrect during rendering /converting to PDF.

WORDSNET-2554
FitShapeToText option does not work during rendering.

WORDSNET-2727
Field values are missed after open/save RTF document.

WORDSNET-2736
OLE data is lost upon reading RTF document.

WORDSNET-3248
/fields/ MacroButton is not displayed during rendering.

WORDSNET-3445
Width of table is changed after open/save RTF document.

WORDSNET-3480
Line break in page header missing after convertign to DOC.

WORDSNET-3615
Support opening Office 2010 password protected documents.

WORDSNET-3652
Images are missing on the first page when converted DOC to ODT

WORDSNET-3790
/hidden/ Table after hidden paragraph marker disappears during
rendering to PDF

WORDSNET-3834
Table of Figures and Table of Tables are updated improperly.

WORDSNET-3847
Grouped shapes lose the gradient fill.

WORDSNET-3851
Vertical position of text in text box is wrong

WORDSNET-3893
_PID_HLINKS is listed in CustomDocumentProperties, while MS
Word does not show it.

WORDSNET-3899
If save document as TIF with RLE compression output image is
bitonal, but customer expects colored image.

WORDSNET-3908
Add an option to specify the thumbnail image for EPUB

WORDSNET-3989
Add support of relative units on table elements in HTML
import.

WORDSNET-4047
/activex/ Support ActiveX controls in DOCX

WORDSNET-4131
Make sure Aspose.Words .NET 3.5 client profile does not have
refference to System.Web.

WORDSNET-4139
RTF to PDF: Endnotes are missing in output

WORDSNET-4149
Embedded bitmap is converted to simple image

WORDSNET-4267
Update SAVEDATE fields.

WORDSNET-4313
Open and save document causes crash when resaving the output
document in MS Word

WORDSNET-4420
/embedded fonts/ Font licensed to Print or Preview-only looks
incorrect during rendering.

WORDSNET-4538
Text and logo are shifted when printing PDF and DOC documents.

WORDSNET-4578
Text is overlapped by image during rendering.

WORDSNET-4590
The field names are changed after the conversion to pdf.

WORDSNET-4596
Support scheme colors in outline of DML pictures

WORDSNET-4614
Create HashSet util class and change Hashtable to HashSet when
appropriate

WORDSNET-4652
List item incorrectly indented in ODT output

WORDSNET-4664
Center alignment is not correct when render to pdf or xps

WORDSNET-4680
Aspose.Words does not update Author/Title field

WORDSNET-4729
AW eats all memory and hangs upon updating fields.

WORDSNET-4730
Document looks different after open\save.

WORDSNET-4757
Embedded zip is converted to simple image

WORDSNET-4761
System.NullReferenceException occurred while saving document.

WORDSNET-4801
Incorrect page background color returned from ODT document.

WORDSNET-4805
Text of MACROBUTTON field is corrupted while saving into html.

WORDSNET-4835
DOCX document produced by Aspose.Words cannot be opened by
Word 2010

WORDSNET-4841
Header disappears after open/save.

WORDSNET-4843
The indention of the second level in TOC is incorrect after
UpdateFields

WORDSNET-4851
ImageFieldMerging Method of the IFieldMergingCallback does not
call.

WORDSNET-4852
/embedded fonts/ Implement EmbeddedOpenType->OpenType
conversion.

WORDSNET-4880
Part of content disappears after open/save.

WORDSNET-4883
/text wrap:3/ Textbox position is incorrect during rendering.

WORDSNET-4886
/text wrap:3/ Position of image is incorrect during rendering.

WORDSNET-4899
Text is incorrectly rendered around floating shape.

WORDSNET-4913
Investigate all the text box issues in TestDefect3873.

WORDSNET-4937
/floater column position:10/ Position of images is changed
during rendering.

WORDSNET-4938
/floater column position:10/ Support Column horizontal
position for floaters with anchors inside a wrapped lines

WORDSNET-4972
Header disappears during rendering.

WORDSNET-5030
/floater column position:10/ Position of shape is incorrect
after rendering.

WORDSNET-5062
/restart reflow with relative floaters:5/ Header on the second
page disappears after rendering.

WORDSNET-5100
NullReferenceException is thrown upon saving the document to
DOCX.

WORDSNET-5126
DrawingML looks incorrect during rendering.

WORDSNET-5170
Support far east layout in RTF.

WORDSNET-5206
Checkboxes in DOCX document loses their functionality after
open/save using Aspose.Words.

WORDSNET-5215
"Two Lines in One" option is lost after converting
document to RTF or DOCX

WORDSNET-5216
"Horizontal in Vertical" option is lost after
converting document to RTF

WORDSNET-5217
Make exported dc:identifier unique

WORDSNET-5224
WordArt looks incorrect after converting RTF document to other
flow formats.

WORDSNET-5237
Export multiple authors as a separate tags in ePub

WORDSNET-5254
Word Pad on Windows XP shows some characters improperly.

WORDSNET-5271
Footnote mark is improperly rendered.

WORDSNET-5272
Custom footnote marks are rendered as numbers.

WORDSNET-5275
/floater column position:10/ Position of shapes is incorrect
during rendering.

WORDSNET-5294
"FileCorruptedException" exception occurs during
opening file.

WORDSNET-5313
InvalidCastException occurs during UpdateFields

WORDSNET-5318
RTF document looks incorrect after open/save using
Aspose.Words.

WORDSNET-5323
/custom footnote/ FileCorruptedException occurs during loading

WORDSNET-5324
/custom footnote/ Error in opening a Word file (.docx)

WORDSNET-5336
ODT document looks incorrect after open/save.

WORDSNET-5341
Warn user during load and save operations when document
contains unsupported Shape features.

WORDSNET-5366
InvalidOperationException occurs during converting to XPS.

WORDSNET-5369
Create a migration from automation section and add a migration
tip

WORDSNET-5381
Ole object is broken.

WORDSNET-5400
Some DocVariables cannot be updated in MS Word after open/save
document using Aspose.Words.

WORDSNET-5410
Gradient is rendered as solid fill.

WORDSNET-5422
FileCorruptedException occurs during loading.

WORDSNET-5436
Upon Opening DOCX Exception is raised

WORDSNET-5450
Shape with automatic size is rendered shrinked vertically.

WORDSNET-5457
InvalidOperationException occurs during update fields.

WORDSNET-5459
Fix some issues with the visuals in the MSI installer

WORDSNET-5465
"Window/Orphan control" option is lost after
converting document to RTF.

WORDSNET-5467
Asian Typography Line Break options are lost during converting
doc to rtf.

WORDSNET-5478
InvalidOperationException occurs during update fields after
mail merge.

WORDSNET-5480
SDT that surrounds TOC disappears during open/save.

WORDSNET-5481
ArgumentOutOfRangeException occurs during converting to XPS

WORDSNET-5492
Table columns change width after open/save RTF

WORDSNET-5509
MHT file imported incorrectly

WORDSNET-5512
FileCorruptedException upon loading DOC

WORDSNET-5513
FileCorruptedException is thrown upon importing DOCX file.

WORDSNET-5514
FileCorruptedException is thrown upon importing DOCX file.

WORDSNET-5515
FileCorruptedException is thrown upon importing DOCX file.

WORDSNET-5518
Cannot switch document to "Page layout" mode after
open/save.

WORDSNET-5541
Content is overlapped after open/save ODT document.

WORDSNET-5553
Additional paragraph break are added after open/save document.

WORDSNET-5555
Floating table in the header is overlapped by the body's
content

WORDSNET-5559
Default.aspx.resx for VB cannot be found after install using
MSI

WORDSNET-583
Expose PreferredWidth

WORDSNET-692
Support PAGEREF fields with options

WORDSNET-946
Add a lot of options to HTML export

? 
