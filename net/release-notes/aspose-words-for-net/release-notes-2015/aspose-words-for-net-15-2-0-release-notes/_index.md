---
title: Aspose.Words for .NET 15.2.0 Release Notes
type: docs
weight: 110
url: /net/aspose-words-for-net-15-2-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 15.2.0](https://www.nuget.org/packages/Aspose.Words/15.2.0)

{{% /alert %}} 

## **Aspose.Words for .NET 15.2 Release Notes**

### **Major Features**

There are 116 improvements and fixes in this regular monthly release. The most notable are:

Document comparison feature is introduced, see Document.Compare

DrawingML API breaking changes (Shape and DrawingML classes merged into Shape)

Implemented text justification for multiline WordArt objects

Implemented multi line text rendering in DrawingML text boxes, SmartArt and charts

Middle East languages are now rendered correctly in SmartArt and charts
Improved positioning of comment's balloons during rendering

Improved vertical text inside text boxes during rendering

## **All Changes**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10065|Second line of Multi-line text in DrawingML is not visible in fixed page formats|Bug|
|WORDSNET-10305|LayoutCollector.GetStartPageIndex method incorrectly updates FILENAME value|Bug|
|WORDSNET-10326|Vertical spacing between lines in DrawingML is not preserved and multi-line text is transformed to single line in PDF|Bug|
|WORDSNET-10765|DocumentBuilder.Font formatting is incorrectly applied using 14.8.0|Bug|
|WORDSNET-10865|Multi-line text in SmartArt objects render on a single line in PDF|Bug|
|WORDSNET-11060|A PageBreak is not preserved during open/save a WordML document|Bug|
|WORDSNET-11137|Content removed during open/save a DOCX|Bug|
|WORDSNET-11204|Merge fields in text boxes lose values after conversion to PDF|Bug|
|WORDSNET-11205|DrawingML looks incorrect after rendering with DmlRenderingMode.DrawingML set.|Bug|
|WORDSNET-11206|Hebrew text is reversed after conversion from Docx to Pdf/Png/Docx|Bug|
|WORDSNET-11214|Image is moving up toward the cell top after the document merge|Bug|
|WORDSNET-11231|Infinite loop when converting a document with a floating table in a vertically merged cell to pdf|Bug|
|WORDSNET-11244|Put name of Word document in FILENAME field in PDF|Bug|
|WORDSNET-11246|Cannot insert a node of this type at this location - for doc with chart and shape|Bug|
|WORDSNET-11269|Percian words in Chart are broken when rendering to PDF|Bug|
|WORDSNET-11283|Left indent of table is changed after re-saving RTF|Bug|
|WORDSNET-11301|Warnings is being generated during open/save a DOC|Bug|
|WORDSNET-11312|Corrupted pdf is saved by OleFormat.Save|Bug|
|WORDSNET-11322|Issue with converting Word Textbox to PDF|Bug|
|WORDSNET-11325|Open/save document Corrupted for Office 2007|Bug|
|WORDSNET-11326|Aspose.Words halts during loading a DOCX|Bug|
|WORDSNET-11364|Load document takes much time (endless loop)|Bug|
|WORDSNET-11373|AcceptAllRevisions does not accept all tracked changes in the document|Bug|
|WORDSNET-11378|UpdatePageLayout loses DrawingML text modifications|Bug|
|WORDSNET-11382|Docx to Ps conversion issue with apostrophe rendering|Bug|
|WORDSNET-11387|TOC displays "No table of contents entries found" message in genereted output|Bug|
|WORDSNET-11390|Textboxes overlap in generated MHTML|Bug|
|WORDSNET-11392|COMPARE field return incorrect value if one of expression contain "*"|Bug|
|WORDSNET-11401|Arabic text inside DrawingML node does not render correctly|Bug|
|WORDSNET-11405|Horizontal Axis Chart Data is truncated in PDF|Bug|
|WORDSNET-11406|Barchart in the pdf file looks very different to the docx file|Bug|
|WORDSNET-11407|Document.UpdateFields changes the position of DrawingML|Bug|
|WORDSNET-11428|MailMerge.Execute does not merge fields inside header|Bug|
|WORDSNET-11435|Docx to Pdf conversion issue with list number formatting|Bug|
|WORDSNET-11445|Mail merge field formatting issue with # x###|Bug|
|WORDSNET-11462|Word Quick Parts Are displaying incorrectly in the converted PDF file|Bug|
|WORDSNET-11476|Html to Doc/Docx conversion issue with base64 images|Bug|
|WORDSNET-11486|Odt checkbox issue with output Pdf/Docx/Odt|Bug|
|WORDSNET-11495|Stacked Column Charts are rendering incorrectly|Bug|
|WORDSNET-4931|Second page is missing during rendering.|Bug|
|WORDSNET-5079|Do not output borders of empty Runs when export to HTML.|Bug|
|WORDSNET-5360|Position of Textbox is incorrect during rendering.|Bug|
|WORDSNET-5461|Headers/Footers are placed on wrong pages|Bug|
|WORDSNET-5571|Position of frame is changed during rendering.|Bug|
|WORDSNET-5576|Image is moved to the next page upon rendering.|Bug|
|WORDSNET-7270|DrawingML.Width is not changing the width of DML|Bug|
|WORDSNET-9242|Contents of DrawingML are truncated after conversion from Docx to fixed file format|Bug|
|WORDSNET-9772|SmartArt Text is lost after conversion from Docx to Pdf|Bug|
|WORDSNET-9835|DrawingML.Height does not work while re saving Docx|Bug|
|WORDSNET-10669|Invalidate DrawingML fallback upon changing DrawingML.|Enhancement|
|WORDSNET-10736|Refine detection of Asian typography for RTF format|Enhancement|
|WORDSNET-10837|Create public common facade class for DrawingMLs and Shapes.|Enhancement|
|WORDSNET-10977|A Table Row truncates from the end of page in PDF|Enhancement|
|WORDSNET-11000|Word table data truncated in PDF|Enhancement|
|WORDSNET-11103|Roll back unneeded (FIX WORDSNET-10998) changes when we're ready to generate fallback dynamically.|Enhancement|
|WORDSNET-11142|TestJira11120 axis labels are rotated improperly.|Enhancement|
|WORDSNET-11225|Improve comment balloon positioning on the page|Enhancement|
|WORDSNET-11236|Improve comment balloon truncation logic|Enhancement|
|WORDSNET-11348|Text is lost after conversion from Docx to Pdf|Enhancement|
|WORDSNET-11380|Rtf to Docx issue with comment's date|Enhancement|
|WORDSNET-11399|Docx to Pdf conversion issue with text rendering|Enhancement|
|WORDSNET-2607|Some problem with row heights when cell contains an image.|Enhancement|
|WORDSNET-4165|Updating deeply nested fields takes too long|Enhancement|
|WORDSNET-5086|Consider inserting images as DrawingML.|Enhancement|
|WORDSNET-5386|Image is moved to previous page and truncated upon rendering.|Enhancement|
|WORDSNET-6591|Doc to Html conversion issue with image quality.|Enhancement|
|WORDSNET-9208|Axis labels are partially visible under user shapes.|Enhancement|
|WORDSNET-9644|Text outline and other formatting of DrawingML is not preserved during rendering/printing|Enhancement|
|WORDSNET-9741|OOXML Text Effects // Font color of DrawingML TextBoxes is not preserved in fixed page formats|Enhancement|
|WORDSNET-9771|Hebrew text in SmartArt is rendered in reverse order after conversion from Docx to Pdf|Enhancement|
|WORDSNET-9918|Center middle alignment of image in table cell is not preserved in PDF|Enhancement|
|WORDSNET-10935|Document.UpdatePageLayout throws System.FormatException|Exception|
|WORDSNET-10941|Corrupted document is generated while using OoxmlCompliance.Ecma376_2006|Exception|
|WORDSNET-11114|System.NullReferenceException when saving to PDF|Exception|
|WORDSNET-11153|System.DivideByZeroException is thrown while converting from Doc to Pdf|Exception|
|WORDSNET-11242|Infinite loop while converting Doc to Pdf|Exception|
|WORDSNET-11314|Not able to load MHTML file|Exception|
|WORDSNET-11336|Aspose.Words.FileCorruptedException is thrown while loading Docx.|Exception|
|WORDSNET-11343|System.InvalidOperationException is thrown while using multi threading|Exception|
|WORDSNET-11362|Aspose.Words.FileCorruptedException is thrown while loading RTF|Exception|
|WORDSNET-11404|Aspose.Words.FileCorruptedException occurs when loading a DOCX file|Exception|
|WORDSNET-11416|System.ArgumentException is thrown while converting Docx to Doc/Pdf|Exception|
|WORDSNET-11417|Aspose.Words.FileCorruptedException occurs when loading a DOCX file|Exception|
|WORDSNET-11434|System.InvalidOperationException is thrown while converting Doc to txt|Exception|
|WORDSNET-11437|Aspose.Words.FileCorruptedException is thrown while loading Docx file|Exception|
|WORDSNET-11444|System.ArgumentOutOfRangeException occurs during open save a DOC|Exception|
|WORDSNET-11454|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-11455|Document.UpdatePageLayout throws System.IndexOutOfRangeException|Exception|
|WORDSNET-11464|System.OutOfMemoryException is thrown while converting Docx to Pdf|Exception|
|WORDSNET-11472|System.InvalidOperationException occurs during rendering ODT to PDF|Exception|
|WORDSNET-11492|System.NullReferenceException is thrown while saving document to Docx|Exception|
|WORDSNET-7560|Aspose.Words.FileCorruptedException occurs when loading RTF file|Exception|
|WORDSNET-10009|Docx to Pdf conversion issue with DML text|Feature|
|WORDSNET-10502|Rework DocumentBuilder.InsertImage to insert DrawingML instead of VML|Feature|
|WORDSNET-10507|Expose ShapeType property for DrawingML|Feature|
|WORDSNET-10682|Add feature to get/set Shape height/width when it is in GroupShape|Feature|
|WORDSNET-10987|Expose Font property for DrawingML same as Shape.Font|Feature|
|WORDSNET-11151|Add feature to import page-break-before (-after, -inside) for Div tag|Feature|
|WORDSNET-11309|Shape position is changed after conversion from Doc to Pdf|Feature|
|WORDSNET-11391|Textboxes are misplaced in PDF|Feature|
|WORDSNET-11415|Expose Fill, FillColor and Filled properties for DraingML objects|Feature|
|WORDSNET-217|Add a capability of document comparison|Feature|
|WORDSNET-2385|Add feature to compare documents|Feature|
|WORDSNET-5408|Expose shape properties in DrawingML objects|Feature|
|WORDSNET-6003|Expose border of DrawingML|Feature|
|WORDSNET-6999|Expose HorizontalAlignment property for DrawingML|Feature|
|WORDSNET-7034|/vertical text/ TextBox's Vertical TextDirection is not preserved when rendering|Feature|
|WORDSNET-7717|Position of Straight Connector Line Shape is not preserved in fixed formats|Feature|
|WORDSNET-8122|Support of Alt Text Title property in DrawingML|Feature|
|WORDSNET-8570|Expose FillColor/Fill properties for DrawingML|Feature|
|WORDSNET-9377|Incorrect position of shapes relative to rotated text|Feature|
|WORDSNET-10426|Slow loading of some ODT documents|Performance|
|WORDSNET-11344|Range.Replace does not work for text inside DrawingML|Regression|
|WORDSNET-11367|Image in table becomes small during converting HTML to Word|Regression|
|WORDSNET-11429|NodeImporter.ImportNode throws System.ArgumentException|Regression|
|WORDSNET-11449|UpdateFields does not update TOC field values|Regression|

