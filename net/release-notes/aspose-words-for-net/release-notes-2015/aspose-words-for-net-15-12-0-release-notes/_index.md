---
title: Aspose.Words for .NET 15.12.0 Release Notes
type: docs
weight: 10
url: /net/aspose-words-for-net-15-12-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 15.12.0](https://www.nuget.org/packages/Aspose.Words/15.12.0)

{{% /alert %}} 

## **Aspose.Words for .NET 15.12 Release Notes**

### **Major Features**

There are 80 improvements and fixes in this regular monthly release. The most notable are:

- Access ActiveX control properties
- New InsertOleObject method
- Preset text wrap (“follow path”, “warp”) for DrawingML textboxes rendering implemented
- DrawingML textboxes rendering improved
- Apply styles from the template during HTML insertion
- HTML Import supports ruby tags now

## **All Changes**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-10181|Some words are trimmed from the right side.|Bug|
|WORDSNET-10284|CSS style padding-right does not work after conversion from HTML to Pdf|Bug|
|WORDSNET-10314|/line numbers in RTL section/ Doc to Pdf conversion issue with line numbers position|Bug|
|WORDSNET-10388|WordML to Doc/Docx/Pdf conversion issue with table layout|Bug|
|WORDSNET-10460|Hebrew (RTL) characters are imported incorrectly from HTML|Bug|
|WORDSNET-10553|Style is changed after appending one document into another|Bug|
|WORDSNET-11212|DrawingML does not render correctly in output Pdf|Bug|
|WORDSNET-11275|InsertOleObject inserts incorrect ProgID in output document|Bug|
|WORDSNET-11296|Doc to Doc/Docx conversion issue with Hyperlink|Bug|
|WORDSNET-11388|Aspose.Words save as PDF/Print margin problems|Bug|
|WORDSNET-11463|/comments/ AW produces incorrect layout when comment contains RowPart.|Bug|
|WORDSNET-11692|Div border is lost during converting a HTML to DOC|Bug|
|WORDSNET-11775|Faild export page size to ODT|Bug|
|WORDSNET-11778|The initial of comment with chinese can't be displayed correctly after converted to PDF|Bug|
|WORDSNET-11839|Support extraction of the file name from an embedded object displaying as an icon|Bug|
|WORDSNET-12034|Autofit property value is not correct for nested tables|Bug|
|WORDSNET-12121|Merge fields are corrupted during open/save a DOC|Bug|
|WORDSNET-12135|Table Style does not import into output document while using InsertHTML|Bug|
|WORDSNET-12142|AW incorrectly breaks row across page|Bug|
|WORDSNET-12172|Page number alignment issue in TOC when generating PDF|Bug|
|WORDSNET-12279|Shape position and size is changed when Docx is converted to Pdf|Bug|
|WORDSNET-12303|When updating REF field in long document, the "/t" option is ignored|Bug|
|WORDSNET-12403|Styles are not applied in output Docx/html|Bug|
|WORDSNET-12407|Shape effects are lost after converting Docx to Pdf|Bug|
|WORDSNET-12463|/comments/ Comment highlights.|Bug|
|WORDSNET-12525|Width and height of image is changed after using DocumentBuilder.InsertImage|Bug|
|WORDSNET-12534|Doc to Docx/Pdf conversion issue with table layout|Bug|
|WORDSNET-12585|Space between bullet and paragraph text is increased after conversion from Docx to Doc|Bug|
|WORDSNET-12589|Doc to Pdf conversion issue with bullet rendering|Bug|
|WORDSNET-12618|Form field are not visible and clickable after re-saving Doc|Bug|
|WORDSNET-12650|IMailMergeDataSource - GetValue truncates leading spaces|Bug|
|WORDSNET-12658|List paragraph indentation issue with Odt|Bug|
|WORDSNET-12672|Generated DOCX is corrupted|Bug|
|WORDSNET-12709|Shape.BoundsInPoints returns incorrect value|Bug|
|WORDSNET-12723|mmathFont points to non-existing font in fonttable in output *.rtf file.|Bug|
|WORDSNET-12735|NodeCollection changes after ShapeBase.GetShapeRenderer() has been called|Bug|
|WORDSNET-12739|Docx to Xps conversion issue with shapes rendering|Bug|
|WORDSNET-12743|MailMergeCleanupOptions.RemoveContainingFields not working with 'Mustache' Template Syntax|Bug|
|WORDSNET-12744|Content moves to next page in generated ODT|Bug|
|WORDSNET-12754|Series data label font is changed after re-saving Docx|Bug|
|WORDSNET-12759|HTML sup and vertical-align:super produce inconsistent results|Bug|
|WORDSNET-12780|Size of rotated shape with relative size is incorrect upon rendering.|Bug|
|WORDSNET-12791|MailMerge.ExecuteWithRegions ignores leading tab of field value|Bug|
|WORDSNET-12821|Character is changed after conversion from Rtf to Odt|Bug|
|WORDSNET-12848|Heading text does not render in output Pdf|Bug|
|WORDSNET-12849|Table's contents text do not render in output Pdf|Bug|
|WORDSNET-12850|Extra empty spaces are rendered in output Pdf|Bug|
|WORDSNET-12853|/line numbers in RTL section/ Docx to Pdf conversion issue with line numbering position|Bug|
|WORDSNET-5968|The text within the table cells is rendered a little bit far to the left.|Bug|
|WORDSNET-6082|Ruby tag is not supported on HTML import|Bug|
|WORDSNET-6841|/arabic/ Characters ? and ? are displayed incorrectly while rendering to images|Bug|
|WORDSNET-7148|Incorrect margin reported on importing html file|Bug|
|WORDSNET-8233|Text truncate in output HTML after conversion from Docx|Bug|
|WORDSNET-9696|Document.Print move the contents to the right and upward direction|Bug|
|WORDSNET-9954|The position of REF field 'Subject' is changed in output Pdf|Bug|
|WORDSNET-11023|Query about SpecialChar|Enhancement|
|WORDSNET-12454|Flips apply to WordArt incorrectly.|Enhancement|
|WORDSNET-12668|List padding simulation spans writed by HTML Export aren't recognized during importing|Enhancement|
|WORDSNET-4174|List Numbering changes after appending documents|Enhancement|
|WORDSNET-7136|Model reports incorrect margins on loading wordml document|Enhancement|
|WORDSNET-11788|System.InvalidOperationException occurs in LayoutCollector.GetEntity()|Exception|
|WORDSNET-12346|System.OutOfMemoryException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-12579|System.InvalidCastException is thrown while loading Docx|Exception|
|WORDSNET-12667|Aspose.Words.FileCorruptedException occurs upon loading a RTF|Exception|
|WORDSNET-12677|DocumentBuilder.InsertHtml throws System.IO.EndOfStreamException|Exception|
|WORDSNET-12800|Document.Save throws System.OverflowException|Exception|
|WORDSNET-12819|System.NullReferenceException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-12831|Aspose.Words.FileCorruptedException is thrown while loading Rtf|Exception|
|WORDSNET-10118|Allow programmatic access to "Selected" state of radio controls|Feature|
|WORDSNET-11274|InsertOleObject does not insert the linked OLE|Feature|
|WORDSNET-11276|Add feature to insert linked webpage OLE|Feature|
|WORDSNET-11480|Support preset text wrap upon rendering DML text boxes.|Feature|
|WORDSNET-11540|Table cell text font issue|Feature|
|WORDSNET-11709|Contents move to next page after conversion from Docx to fixed page format|Feature|
|WORDSNET-12455|License.IsLicensed is not supported when used via COM|Feature|
|WORDSNET-12580|Incorrect default page margins reported|Feature|
|WORDSNET-1432|Consider adding a way to apply styles from the template during HTML insertion|Feature|
|WORDSNET-1877|Support programmatic access to ActiveX controls|Feature|
|WORDSNET-12622|Provide option to control whether to populate mergefield inside false part of IF field or not|Regression|
|WORDSNET-12864|RowFormat.Borders.Bottom.Color throws System.NullReferenceException|Regression|

