---
title: Aspose.Words for Java 17.3.0 Release Notes
type: docs
weight: 100
url: /java/aspose-words-for-java-17-3-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 17.3.0](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/17.3.0/)

{{% /alert %}}

## **Major Features**
There are 72 improvements and fixes in this regular monthly release. The most notable are:

- Added public API to insert online video via DocumentBuilder.InsertOnlineVideo
- Added functionality to set thread-local (and Aspose.Words application only) Locale and TimeZone. CurrentThreadSettings public API class added for this.
- New public OfficeMath properties: MathObjectType, Justification, DisplayType
- Full support for Word 2013 documents (roundtrip to/from DOCX)
- Variables support and more new features are introduced in LINQ Reporting Engine.
- Font substitution mechanism improved. Now Aspose.Words evaluates all related fields in FontInfo (Panose, Sig etc) and finds the closest match among the available font sources.
- Asian font rendering improved (more precise metrics calculation).
- Stroke weight is now taken into account while rendering auto-sized Textboxes.
- Implemented next round of improvements in table grid algorithm.
- Improved table breaking logic in compatibility mode for tables with header rows.
- Improved table breaking logic for tables with nested tables in a cell with bottom margin set.
- Improved tables breaking logic for tables with vertically merged cells having horizontal borders.
- Implemented fitText option for table cells.

## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAVA-1497|Generated document contains data of another document in multi-threading environment|Bug|
|WORDSJAVA-1485|Adding FontSettings Object to Document Corrupts Images|Bug|
|WORDSJAVA-1479|Font of very small font size is not rendered.|Enhancement|
|WORDSJAVA-1477|InsertOnlineVideo|Feature|
|WORDSJAVA-1426|Contents are rendered on previous page in output Pdf|Bug|
|WORDSNET-12059|Paragraph formatting is lost after re-saving Docx|Bug|
|WORDSNET-13034|Underline/strikethrough formatting is applied to revisions imported from HTML|Bug|
|WORDSNET-13060|/tcFitText/ Conversion of table creates new line inside table|Bug|
|WORDSNET-13111|Compare and Reject feature do not mimic Microsoft Word's behavior|Bug|
|WORDSNET-13204|/nested row break height/Text moves to previous pages after conversion from Docx to Pdf|Bug|
|WORDSNET-13765|/fitText/ Chinese text render on next line in HtmlFixed|Bug|
|WORDSNET-13887|/table break header row/ Converting from .docx to .pdf loses table header|Bug|
|WORDSNET-14241|/table break header row/ Table is rendered on previous page after conversion form Docx to Pdf|Bug|
|WORDSNET-14448|Table header moves to previous page bottom in PDF|Bug|
|WORDSNET-14499|EndnoteOptions are not saved if the document does contain endnotes|Bug|
|WORDSNET-14559|/table break/ All pages show some content from next page at bottom in PDF|Bug|
|WORDSNET-14588|Paragraph's spacing is changed when InsertDocument is used with UseDestinationStyles mode|Bug|
|WORDSNET-14635|Hebrew date field renders incorrectly in Pdf|Bug|
|WORDSNET-14655|Incorrect formatting of 'Normal (Web)' after import from another document|Bug|
|WORDSNET-14704|Text in image is missing when exporting to HTML|Bug|
|WORDSNET-14705|More vertical spacing between lines added when exporting to HTML|Bug|
|WORDSNET-14710|Output Docx is not opened in MS Word after performing mail merge|Bug|
|WORDSNET-14711|Bookmark entries are not entirely merged after mail merge|Bug|
|WORDSNET-14712|Z-order is incorrect after conversion docx to odt.|Bug|
|WORDSNET-14718|Some table rows render on the previous page of PDF|Bug|
|WORDSNET-14767|Bullet list is changed to numbered list after conversion from bytes to Docx|Bug|
|WORDSNET-14785|ShapeAttr.LineFillBlipName attribute returns invalid value|Bug|
|WORDSNET-14802|A strange Box appears near certain images in PDF|Bug|
|WORDSNET-14832|TTFontMetrics.BoldSimulationScale is not too accurate for MS Gothic|Bug|
|WORDSNET-14839|Hyperlink encoded twice in PDF|Bug|
|WORDSNET-14840|Aspose.Words ignores stroke weight for autosized textboxes|Bug|
|WORDSNET-14855|Shape with caps is not rendered correctly|Bug|
|WORDSNET-14856|Docx to Pdf conversion issue with StructuredDocumentTag rendering|Bug|
|WORDSNET-14864|List label size differs in layout.|Bug|
|WORDSNET-14870|Content of StructuredDocumentTag is lost in output Pdf/Doc|Bug|
|WORDSNET-14903|Docx to Html conversion issue with chart's axis bounds|Bug|
|WORDSNET-14905|Ref field generates error code after conversion from FlatOpc to Doc|Bug|
|WORDSNET-4803|TOC update does not see format revision changes.|Bug|
|WORDSNET-5542|Position of AutoShape is changed after Appending.|Bug|
|WORDSNET-5843|Fonts substitution // Measurements: Spacing of text lines in PDF is different to when viewed in MS Word|Bug|
|WORDSNET-5956|Fonts substitution // Incorrect fonts rendering.|Bug|
|WORDSNET-8242|Docx to HtmlFixed conversion issue with fonts|Bug|
|WORDSNET-8525|/advanced typography/ Arabic text is incorrectly rendered to PDF|Bug|
|WORDSNET-8976|WordArt // Multiline // Watermark shape is not rendering correctly in PDF|Bug|
|WORDSNET-9785|Contents position is changed after conversion from Doc to Pdf|Bug|
|WORDSNET-9949|Table's contents move to next page after conversion from Doc to Pdf|Bug|
|WORDSNET-12581|Table header should be pushed to the next page if no rows fit below header in 2013 mode|Enhancement|
|WORDSNET-13472|Table header row orphaned in 2013 mode|Enhancement|
|WORDSNET-13729|Mail Recipient is lost after re-saving Doc|Enhancement|
|WORDSNET-14608|Add/remove document settings if OptimizeFor is called for a document|Enhancement|
|WORDSNET-14736|Incorrect Asian font metrics|Enhancement|
|WORDSNET-14759|Saving resources when converting Words documents to HTML|Enhancement|
|WORDSNET-4316|Fonts substitution // Improve font substitution rules.|Enhancement|
|WORDSNET-13567|Signing feature is not supported by ODT file format|Exception|
|WORDSNET-14690|/space shrink/ System.NullReferenceException occurs during exporting Hyperlinks to HtmlFixed|Exception|
|WORDSNET-14799|Document.Save throws System.NullReferenceException while saving Docx to Pdf|Exception|
|WORDSNET-14859|Documnte.RemoveUnusedResources throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-14895|Aspose.Words.FileCorruptedException is thrown while loading Doc|Exception|
|WORDSNET-14896|System.ArgumentOutOfRangeException is thrown while saving Doc to Html|Exception|
|WORDSNET-12412|Add MailMergeCleanupOptions option to remove empty row|[Feature](https://docs.aspose.com/words/java/how-to-remove-unmerged-fields-empty-paragraphs-and-unmerged-regions/)|
|WORDSNET-12487|Cell's content are warped incorrectly in output Pdf|Feature|
|WORDSNET-14389|PDF output is incorrect for 2 text columns|Feature|
|WORDSNET-14489|Add feature to set background color of table row using Linq Reporting Engine|Feature|
|WORDSNET-14600|Insert image dynamically using Linq without change size of textbox|Feature|
|WORDSNET-14602|Justification of OfficeMath object|[Feature](https://docs.aspose.com/words/java/working-with-officemath/)|
|WORDSNET-14611|Obtain type of the MathObject|Feature|
|WORDSNET-14627|Add feature to define variables in LINQ Reporting template|Feature|
|WORDSNET-14745|Provide ability to specify locale at Field level|[Feature]()|
|WORDSNET-14956|Implement reading of themes for RTF format.|Feature|
|WORDSNET-8969|Support of MS Word 2013 documents (WORDSNET-7741 and WORDSNET-7964)|Feature|
|WORDSNET-9943|/table grid/ Cell's content is rendering a few inches to the right in PDF|Feature|
|WORDSNET-14454|LeftIndent and FirstLineIndent are lost in output Docx|Regression|

## **Public API and Backward Incompatible Changes**

This section lists public API changes that were introduced in Aspose.Words 17.3.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### **WORDSNET-4316: Font Substitution Mechanism Improved**
Previously Aspose.Words performed font substitution only in cases when FontInfo in the document for the missing font doesn't contains the PANOSE. Now Aspose.Words evaluates all related fields in FontInfo (Panose, Sig etc) and finds the closest match among the available font sources. In case of font substitution the warning is issued with text:

"Font '<font_name>' has not been found. Using '<substitution_name>' font instead. Reason: closest match according to font info from the document."

Please note that now font substitution mechanism will override the FontSettings.DefaultFontName in cases when FontInfo for the missing font is available in the document. FontSettings.DefaultFontName will be used only in cases when there are no FontInfo for the missing font.

Also please note that font substitution algorithm in MS Word is not documented. And the result of Aspose.Words font substitution may not match MS Word choice.
### **WORDSNET-14602 - New Public OfficeMath.MathObjectType Property Added**
To improve customer experience with Office Math objects in Aspose.Words model we've exposed the following simple read-only addition to the public API:

- New readon-only property *OfficeMath.MathObjectType*
- New public enum **MathObjectType** 

{{< highlight csharp >}}

// How to use:
OfficeMath officeMath = GetOfficeMath();
if (officeMath.getMathObjectType() == MathObjectType.MATRIX)
{
   // Do something useful with the Matrix object.
}
{{< /highlight >}}
### **Support of Variables, Dynamic Text Background Setting, and a New Image Size Fit mode Added to LINQ Reporting Engine**
These issues have been resolved: WORDSNET-14489, WORDSNET-14600 and WORDSNET-14627

The following sections of the engine's documentation were added/updated to describe the changes:

- [Working with DataRow and DataRowView Objects](/words/java/working-with-datatable-row-objects/)
- [Inserting Images Dynamically](/words/java/inserting-images-dynamically/)
- [Setting Text Background Color Dynamically](https://docs.aspose.com/words/java/setting-background-color-dynamically/)
- [Using Variables](/words/java/using-variables/)
- [In-Table List Template with Running (Progressive) Total](https://docs.asposeptyltd.com/display/wordsjava/Appendix+C.+Typical+Templates#AppendixC.TypicalTemplates-InTableListTemplatewithRunningProgressiveTotal) (see In-Table List Template with Running (Progressive) Total).

### **WORDSNET-12412 - Added a MailMergeCleanupOptions Option to Remove Empty Row**
As per customer's request, we have added a MailMergeCleanupOptions option allowing to remove empty rows during mail merge:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether empty rows that contain mail merge regions should be removed from the document.
/// </summary>
/// <remarks>
/// This option applies only to mail merge with regions.
/// </remarks>
RemoveEmptyTableRows = 0x20
{{< /highlight >}}

Sample usage:

{{< highlight csharp >}}
document.getMailMerge().setCleanupOptions(MailMergeCleanupOptions.REMOVE_EMPTY_TABLE_ROW | MailMergeCleanupOptions.REMOVE_CONTAINING_FIELDS);
document.getMailMerge().setMergeDuplicateRegions(true);
document.getMailMerge().executeWithRegions(dataTable);
{{< /highlight >}}
### **WORDSNET-14602 - New Public Properties were Added to the OfficeMath Object.**
New public properties Justification and DisplayType were added into the OfficeMath class.

{{< highlight csharp >}}
/** 
 Gets/sets Office Math justification.
 <p>Justification cannot be set to the Office Math with display format type <see cref="OfficeMathDisplayType.Inline"/>.</p>
 <p>Inline justification cannot be set to the Office Math with display format type <see cref="OfficeMathDisplayType.Display"/>.</p>
 <p>Corresponding <see cref="DisplayType"/> has to be set before setting Office Math justification.</p>
*/
public OfficeMathJustification Justification
/** 
 Gets/sets Office Math display format type which represents whether an equation is displayed inline with the text&nbsp;
 or displayed on its own line.
 <p>Display format type has effect for top level Office Math only.</p>
 <p>Returned display format type is always <see cref="OfficeMathDisplayType.Inline"/> for nested Office Math.</p>
*/
public OfficeMathDisplayType DisplayType
{{< /highlight >}}

**Use Case:**

{{< highlight csharp >}}
OfficeMath officeMath = (OfficeMath)doc.getChild(NodeType.OFFICE_MATH, 0, true);

// Gets/sets Office Math display format type which represents whether an equation is displayed inline with the text

// or displayed on its own line.
officeMath.setDisplayType(OfficeMathDisplayType.DISPLAY);
 // or OfficeMathDisplayType.Inline

// Gets/sets Office Math justification.
officeMath.setJustification(OfficeMathJustification.LEFT);
 // Left justification of Math Paragraph.
{{< /highlight >}}



Mimic MS Word VBA behavior:

-  DisplayType cannot be changed for nested Office Math. The exception will be thrown.
-   Inline justification cannot be set to the Office Math displayed on its own line (DisplayType=OfficeMathDisplayType.Display). The exception will be thrown. OfficeMath.DisplayType property has to be used to change OfficeMathDisplayType first.
-   Justification cannot be set to the Office Math displayed inline with text. The exception will be thrown. OfficeMath.DisplayType property has to be used to change OfficeMathDisplayType first.

### **WORDSNET-14745 - Provided Ability to Specify Locale at Field Level**
As per customer's request, we have added a property that allows to get/set field's locale:

{{< highlight csharp >}}
/**
Gets or sets LCID of the field.
<seealso cref="FieldUpdateCultureSource.FieldCode"/>
*/
public int LocaleId
{{< /highlight >}}

Sample usage:

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
Field field = builder.insertField("=1", null);
field.setLocaleId(1027);
{{< /highlight >}}
