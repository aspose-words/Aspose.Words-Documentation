---
title: Aspose.Words for .NET 13.6.0 Release Notes
articleTitle: Aspose.Words for .NET 13.6.0 Release Notes
linktitle: Aspose.Words for .NET 13.6.0 Release Notes
description: "Aspose.Words for .NET 13.6.0 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /net/aspose-words-for-net-13-6-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 13.6.0](https://www.nuget.org/packages/Aspose.Words/13.6.0)

{{% /alert %}}

## What's New

There are 132 improvements and fixes in this regular monthly release. The most notable are:

- Improved algorithm of content width calculation inside table cells.
- More support for compatibility options in layout.
- Layout performance improvements.
- Decrease document size with Document.RemoveUnusedResources().
- Theme fonts are used in calculation of Run.Font font names.
- Many HTML and MHTML import improvements.
- Material when rendering VML objects with 3D effects.
- PDF form fields rendering improvements.

## All Fixes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-4307|A thick line shape when rendered, is cut off on its side.|Bug|
|WORDSNET-5421|AutoShape border is cut off during open/save.|Bug|
|WORDSNET-5608|DrawingML does not get rendered to flow formats other than DOCX|Bug|
|WORDSNET-6173|Incorrect font problem occurs after loading Word docx format.|Bug|
|WORDSNET-6291|Large image is rescaled to height of 1px when added to model|Bug|
|WORDSNET-6594|Problem in exporting HTML Cell with border having display none and size medium|Bug|
|WORDSNET-7099|Left Margin of Border Line is incorrect in HTML|Bug|
|WORDSNET-7190|Txt to PDF conversion issue|Bug|
|WORDSNET-7605|Docx to HTML conversion issue with bullets rendering|Bug|
|WORDSNET-7956|Font fallback is not working for EMF+ metafile|Bug|
|WORDSNET-7978|Portrait page orientation changes to Landscape in PDF|Bug|
|WORDSNET-7996|Table's contents become bold after conversion from Doc to HTML|Bug|
|WORDSNET-8031|Set field do not work when used with mail merge fields|Bug|
|WORDSNET-8056|DrawingML is pushed back to previous page in PDF|Bug|
|WORDSNET-8069|UpdateFields calculates value of a formula field incorrectly|Bug|
|WORDSNET-8079|Docx to HTML conversion issue with bullet items|Bug|
|WORDSNET-8112|Text layout is not preserved during converting to any format|Bug|
|WORDSNET-8117|DOC to HTML conversion issue: A TR is exported without any TD|Bug|
|WORDSNET-8119|Data points are rendering at incorrect places in PDF|Bug|
|WORDSNET-8120|Content at chart's x-axis is truncated in fixed page formats|Bug|
|WORDSNET-8173|/Do not suppress indentation/ Indentation of list lines is not exported correctly to fixed page formats|Bug|
|WORDSNET-8194|Doc to HTML conversion issue with Textbox rendering|Bug|
|WORDSNET-8213|Doc to Txt conversion issue with text rendering in RTL|Bug|
|WORDSNET-8243|Docx to Pdf conversion issue with inserted text when change tracking is enabled|Bug|
|WORDSNET-8247|Extra border lines appear in exported Pdf from Docx|Bug|
|WORDSNET-8264|Form Fields are rendered with incorrect font when PreserveFormFields is set to true|Bug|
|WORDSNET-8278|DocumentBuilder.InsertHtml insert the bullet list incorrectly|Bug|
|WORDSNET-8279|ImageData.Save does not save the DrawingML node into image|Bug|
|WORDSNET-8286|Paragraphs overlap a Shape after converting document to fixed page formats|Bug|
|WORDSNET-8289|Tab spacing is not respected in fixed page formats|Bug|
|WORDSNET-8290|Four column Section layout is not preserved during rendering|Bug|
|WORDSNET-8294|Formatting of next Cell is applied to the content in previous Cell|Bug|
|WORDSNET-8297|Textbox renders incorrectly when saving Shape with ShapeRenderer.|Bug|
|WORDSNET-8298|OleFormat.SuggestedExtension returns .bin for a DOCX file which is embedded in ODT|Bug|
|WORDSNET-8305|Native HTML list element (UL) does not close when a common border DIV element starts|Bug|
|WORDSNET-8306|'left' CSS properties are used for RTL list items in HTML|Bug|
|WORDSNET-8310|Mail Merge result are overlapped in output Docx|Bug|
|WORDSNET-8328|List bullets become corrupted after import from HTML if the 'font-family' property is applied to LI elements|Bug|
|WORDSNET-8330|Document.Update do not work with multi language|Bug|
|WORDSNET-8333|Aspose.Words.Document do not load MHTML shape|Bug|
|WORDSNET-8336|Horizontal Axis are missing while conversion from Docx to JPG|Bug|
|WORDSNET-8346|Border appears around text boxes on conversion to docx, pdf which is not present in the source file|Bug|
|WORDSNET-8359|Text inside Chart is missing when rendering to PDF|Bug|
|WORDSNET-8360|Document.Protect does not work with ProtectionType.AllowOnlyFormFields|Bug|
|WORDSNET-8365|MERGEFIELD contained inside an IF field is not getting merged by Execute method|Bug|
|WORDSNET-8366|Text in Legend of Chart truncates when converted to fixed page formats|Bug|
|WORDSNET-8378|Unwanted boxes around checkboxes appear during rendering|Bug|
|WORDSNET-8379|Incorrect vertical spacing between lines result in an extra page during rendering|Bug|
|WORDSNET-8382|Document.Save change the page orientation|Bug|
|WORDSNET-8383|Table moved to second page after re-saving the document|Bug|
|WORDSNET-8384|Doc to Tiff conversion issue with RTL text rendering|Bug|
|WORDSNET-8392|Character spacing between Chinese Words is reduced in PDF|Bug|
|WORDSNET-8403|Double quote character appears in output Pdf file after conversion|Bug|
|WORDSNET-8405|ClearFormatting does not work for hyper link having direct formatting|Bug|
|WORDSNET-8411|ImageResolution option in HtmlSaveOptions is cutting off images|Bug|
|WORDSNET-8415|Odd/Even Footer are lost when re-saving ODT|Bug|
|WORDSNET-8416|Docx to Pdf conversion issue with NumeralFormat.Context|Bug|
|WORDSNET-8421|FlowDocumentScrollViewer does not display 'All Caps' effect in XamlFlowPack document|Bug|
|WORDSNET-8424|Hyperlink on image missing when saving to pdf|Bug|
|WORDSNET-3531|AutoShape color is changed upon open/save.|Enhancement|
|WORDSNET-4326|Vertical text is positioned inmproperly in textbox upon rendering|Enhancement|
|WORDSNET-4720|Display pages side by side when there is enough space|Enhancement|
|WORDSNET-4771|Strange heading name appears in EPUB navigation map|Enhancement|
|WORDSNET-4901|Child region name is case-sensitive during mail merge.|Enhancement|
|WORDSNET-5685|document to pdf file conversion with Full Fonts generates large size file|Enhancement|
|WORDSNET-6065|Improve thick textbox border rendering|Enhancement|
|WORDSNET-6622|Doc to ePub conversion issue with image|Enhancement|
|WORDSNET-7918|Create CSS selector classes|Enhancement|
|WORDSNET-7940|Multiple copies of a single page document are not printed|Enhancement|
|WORDSNET-7997|Text alignment issue in a table after conversion from Doc to HTML|Enhancement|
|WORDSNET-8052|The test TestCollector sometimes is failed|Enhancement|
|WORDSNET-8174|Support "Don't vertically align inside of textboxes" compatibility option in the layout|Enhancement|
|WORDSNET-8210|Post this month's blog post and API changes|Enhancement|
|WORDSNET-8212|Add support of @page rulesets|Enhancement|
|WORDSNET-8220|Clean up doc build script|Enhancement|
|WORDSNET-8254|Watermark is not displayed in TIFF when specifying TiffCompression.Ccitt4|Enhancement|
|WORDSNET-8257|Borders.LineStyle is same for single, thick, hairline, inset, outset|Enhancement|
|WORDSNET-8280|Content inside TextBox Shapes is not visible in fixed page formats|Enhancement|
|WORDSNET-8287|Configure TC to run unit tests as parallel tasks|Enhancement|
|WORDSNET-8288|Configure TC to use an external database|Enhancement|
|WORDSNET-8292|Shape is only partially visible in fixed page formats|Enhancement|
|WORDSNET-8308|Check red tests in ab_CssInheritance|Enhancement|
|WORDSNET-8320|Table column widths are calculated incorrectly during rendering|Enhancement|
|WORDSNET-8323|Improve CSS Parser performance|Enhancement|
|WORDSNET-8331|Document.Range.Replace throws exception System.NotSupportedException|Enhancement|
|WORDSNET-8332|Update TC pages in wiki|Enhancement|
|WORDSNET-8348|Wrong algorithm of calculation CellPart.SpaceRight|Enhancement|
|WORDSNET-8352|Document.Save method double the RTF size|Enhancement|
|WORDSNET-8354|Update information in the docs about merging duplicate regions|Enhancement|
|WORDSNET-8356|Aspose.Pdf is unable to locate images in Aspose.Words' generated PDFs|Enhancement|
|WORDSNET-8361|Textbox position on DmlChart is incorrect.|Enhancement|
|WORDSNET-8369|Consider HtmlMargins in the layout engine.|Enhancement|
|WORDSNET-8386|SmartArt text rendering issue while conversion from docx to PDF|Enhancement|
|WORDSNET-8393|Doc to Pdf conversion issue with image rendering|Enhancement|
|WORDSNET-8402|Find a way to remove IsStroked property from the Shape class.|Enhancement|
|WORDSNET-8417|Support Smart tag recognizer data during open/save DOC|Enhancement|
|WORDSNET-7895|System.OutOfMemoryException occurs during rendering to PDF|Exception|
|WORDSNET-8209|AcceptAllRevisions throws NullReferenceException|Exception|
|WORDSNET-8277|Aspose.Words.FileCorruptedException occurs when loading RTF file|Exception|
|WORDSNET-8341|Aspose.Words.FileCorruptedException while loading Docx|Exception|
|WORDSNET-8351|System.InvalidCastException occurs when rendering a DOCX many times in a loop|Exception|
|WORDSNET-8394|Aspose.Words.FileCorruptedException occurs when loading DOC file|Exception|
|WORDSNET-8395|System.ArgumentException is thrown when rendering a DrawingML to PNG/TIFF|Exception|
|WORDSNET-8422|System.ArgumentOutOfRangeException occurs during saving to XAML|Exception|
|WORDSNET-2584|Support OpenXPS|Feature|
|WORDSNET-3291|Consider adding an ability to remove unused Styles/Lists/Fonts from the document.|Feature|
|WORDSNET-3312|Consider exposing theme’s information.|Feature|
|WORDSNET-3925|Consider adding RegionStart/End as equivalent of TableStart/End.|Feature|
|WORDSNET-4695|Values ??of controls are changed when rendering. (CustomXml)|Feature|
|WORDSNET-4719|Provide an ability to save a document from SWF viewer.|Feature|
|WORDSNET-5328|Add Table Text Wrapping property to Table object.|Feature|
|WORDSNET-5554|List labels format is changed after rendering.|Feature|
|WORDSNET-6299|Create DmlX model objects for every diagram element according to specs.|Feature|
|WORDSNET-6300|Read XML and build DmlX model. (Proper DmlXBuilder classes development).|Feature|
|WORDSNET-6592|Support all "layout" and "fake" fields in HTML export.|Feature|
|WORDSNET-7253|**VML 3D** Implement influence of material on face and edge color|Feature|
|WORDSNET-7278|List numbering style is not preserved during rendering to Pdf|Feature|
|WORDSNET-7306|Style.Font.Name does not return the correct font name|Feature|
|WORDSNET-7649|Provide options to generate a scalable SVG|Feature|
|WORDSNET-7950|Support OL and LI style attribute|Feature|
|WORDSNET-8127|Text file with ANSI encoding is not correctly loaded into Aspose.Words.Document|Feature|
|WORDSNET-8129|Release the .NET examples dashboard|Feature|
|WORDSNET-8153|Update Aspose.Total installer build scripts|Feature|
|WORDSNET-8283|Consider updating the REF field based off the SelectedValue of FORMDROPDOWN|Feature|
|WORDSNET-8316|Provide a way to specify a remote location as a Fonts Folder|Feature|
|WORDSNET-8350|Date (fixed) field is not preserved during open/save an ODT|Feature|
|WORDSNET-8362|Legend is rendered incorrectly.|Feature|
|WORDSNET-8372|Date content control (SDT) is not rendered in PDF|Feature|
|WORDSNET-8248|Performance reduced in Aspose.Words 11.11.0.0|Performance|
|WORDSNET-8265|/slow/ PageCount takes quite a long time|Performance|
|WORDSNET-8285|ExecuteWithRegions is not performing nested mail merge regions on child Table|Regression|
|WORDSNET-8357|Document.PageCount throws System.NullReferenceException|Regression|

