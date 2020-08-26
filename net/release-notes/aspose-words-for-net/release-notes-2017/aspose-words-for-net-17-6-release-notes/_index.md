---
title: Aspose.Words for .NET 17.6 Release Notes
type: docs
weight: 70
url: /net/aspose-words-for-net-17-6-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 17.6](https://www.nuget.org/packages/Aspose.Words/17.6.0)

{{% /alert %}} 
## **Major Features**
There are 82 improvements and fixes in this regular monthly release. The most notable are:

- Added feature to Automatically adjust space between Asian and Latin text, numbers.
- Throw warnings when an external resource in HTML could not be loaded.
- Track changes view settings in LibreOffice.
- Added ability to reference to data from parent region in child regions.
- Implemented support for distributed paragraph alignment.
- Improved handling of justified alignment in Asian text.
- Improved line height calculation for inline images in asian text
- Improved handling of hidden paragraph breaks around text frames
- Improved text wrapping of sections breaks around floating objects
- Improved Aps logical structure generation for repeated header rows
- SVG graphics are now rendered via internal EMF rendering engine (without GDI+).
- Improved rendering of PDF logical structure of Table headers.
- Character offsets in META_EXTTEXTOUT records are now taken into account while rendering multi-byte encoding metafiles.
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-10727|/advanced tabs/ Extra character 'R' appears in header of document after conversion from Doc to Pdf|Bug|
|WORDSNET-11780|/justified cjk text/ Docx to PDF conversion issue with Chinese text justification|Bug|
|WORDSNET-12249|/aps logical structure/ Adobe Accessibility Check fails for table headers in PDF|Bug|
|WORDSNET-12323|/cjk distributed alignment/ Paragraph formatting is lost after saving Doc to Fixed file format|Bug|
|WORDSNET-12586|/cjk distributed alignment/ Paragraph's space distribution is lost in output Pdf|Bug|
|WORDSNET-12892|/distribute alignment/ The Paragraph distribute formatting is lost in output Pdf|Bug|
|WORDSNET-12985|/cjk distributed alignment/ Chinese text distribution is lost in output HtmlFixed|Bug|
|WORDSNET-13056|The diacritics in the word disappears when Docx is saved to Pdf|Bug|
|WORDSNET-13679|Run.Font.Name returns incorrect font name|Bug|
|WORDSNET-13910|Japanese ruby text does not render correctly in output pdf|Bug|
|WORDSNET-13965|Position of axis title is incorrect.|Bug|
|WORDSNET-14536|Debug assertion fails upon saving a document to HTML|Bug|
|WORDSNET-14821|DISPLAYBARCODE does not render "{ PAGE } of { NUMPAGES }" in PDF|Bug|
|WORDSNET-14968|/aps logical structure/ Table header Tags missing starting from 2nd page onward in PDF|Bug|
|WORDSNET-15069|URIs in external CSS files are resolved incorrectly during import from HTML|Bug|
|WORDSNET-15076|Superscript of footnote is lost when documents are joined using KeepSourceFormatting|Bug|
|WORDSNET-15124|DOCX to PDF: Aspose.Words generates more pages than MS Word|Bug|
|WORDSNET-15133|Revision Sequence ID (RSIDs) reset in .doc file after modification in Aspose.Words followed by edit in Word|Bug|
|WORDSNET-15134|Text spacing issue in DOCX to PDF conversion|Bug|
|WORDSNET-15180|RTF to PDF conversion merge the pages|Bug|
|WORDSNET-15190|Bullets replaced with empty box symbol when viewing in Windows 7|Bug|
|WORDSNET-15221|Line height is improperly computed if a line contains shapes, CJK and non-CJK characters.|Bug|
|WORDSNET-15247|DOC to PDF conversion issue with shape's rendering|Bug|
|WORDSNET-15253|Paragraph is rendered on next page in output PDF|Bug|
|WORDSNET-15258|/divid/ Images are lost after conversion from DOT to PDF|Bug|
|WORDSNET-15260|/divid/ ODT to PDF conversion issue with text position|Bug|
|WORDSNET-15274|Read-only access to style properties affects results of Style.Equals|Bug|
|WORDSNET-15297|OfficeMath rendering issue in DOCX to HTML|Bug|
|WORDSNET-15303|Words space issue in MHTML to PDF converison|Bug|
|WORDSNET-15318|Document.UpdateFields changes decimal symbol for Finnish culture|Bug|
|WORDSNET-15322|Image is replaced with its hyperlink text|Bug|
|WORDSNET-15326|SVG multithread processing issue|Bug|
|WORDSNET-15328|Column Stacked chart rendering issue|Bug|
|WORDSNET-15335|/hidden before list label/ Heading formatting is lost in resultant PDF document|Bug|
|WORDSNET-15337|Glow effect color issue in PDF|Bug|
|WORDSNET-15354|Font of line numbers is changed in output PDF|Bug|
|WORDSNET-15365|Text position is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-15371|Image size is lost at convertion RTF => DOCX if image link is invalid.|Bug|
|WORDSNET-15375|Number list of RTF file removes in conversion|Bug|
|WORDSNET-15377|Aspose.Words 17.4.0: Can't open some *.mobi files|Bug|
|WORDSNET-15407|Aspose.Words updates AppVersion of Word documents|Bug|
|WORDSNET-15411|BasedOnIstd incorrectly compared.|Bug|
|WORDSNET-1586|MS Word Spell Checker ignores text that was inserted into the merge fields.|Bug|
|WORDSNET-6519|/justified cjk text/ Justified Asian text is rendered incorrectly|Bug|
|WORDSNET-10045|Consecutive tables in different sections have additional vertical spacing between them in PDF|Enhancement|
|WORDSNET-12093|A second blank page is produced in rendered document|Enhancement|
|WORDSNET-12836|Table's position is changed after conversion from Docx to Pdf|Enhancement|
|WORDSNET-12948|Paragraphs are rendered at incorrect page in output Pdf|Enhancement|
|WORDSNET-12949|Header/Footer does not render in output Pdf|Enhancement|
|WORDSNET-13948|Images in the PDF file not appearing as expected|Enhancement|
|WORDSNET-14052|Doc to Tiff conversion issue with text position|Enhancement|
|WORDSNET-14232|GroupShape is lost after conversion from Docx to pdf|Enhancement|
|WORDSNET-14275|Doc to Pdf conversion issue with image position|Enhancement|
|WORDSNET-14276|Doc to Pdf conversion issue with image position|Enhancement|
|WORDSNET-14503|Docx to Pdf conversion issue with image position|Enhancement|
|WORDSNET-14632|Contents are lost after conversion from Doc to Pdf|Enhancement|
|WORDSNET-14669|Import certain <input> elements as SDT during HTML to DOCX conversion|Enhancement|
|WORDSNET-15415|Word ignores cell width value when compares cells.|Enhancement|
|WORDSNET-6668|Watermark shape in header is overlapping the other content in PDF|Enhancement|
|WORDSNET-9590|A DrawingML is partially rendering and doesn't wrap text around it in Pdf|Enhancement|
|WORDSNET-9978|Two consecutive empty sections causes Aspose.Words to render more vertical space in PDF|Enhancement|
|WORDSNET-14995|Document.Save throws System.InvalidOperationException while using DocumentSplitCriteria|Exception|
|WORDSNET-15234|Error "StartElement in state Epilog would result in an invalid XML document" occurs during RTF to DOCX conversion|Exception|
|WORDSNET-15292|/SvmReader/ Aspose.Words.FileCorruptedException is thrown while loading ODT|Exception|
|WORDSNET-15298|Saving html after mail merge throws OutOfMemoryException|Exception|
|WORDSNET-15309|Aspose.Words.FileCorruptedException is thrown while loading DOC|Exception|
|WORDSNET-15316|DocumentBuilder.InsertImage throws System.Xml.XmlException|Exception|
|WORDSNET-15321|Rendering issue of a document with emf image to HtmlFixed format|Exception|
|WORDSNET-15339|Shape.GetShapeRenderer throws System.NullReferenceException|Exception|
|WORDSNET-15402|System.ArgumentException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-14376|Add feature to set/get "Automatically adjust space between Asian and Latin text"|Feature|
|WORDSNET-14377|Add feature to set/get "Automatically adjust space between Asian text and numbers"|Feature|
|WORDSNET-14515|Throw warnings when an external resource in HTML could not be loaded|Feature|
|WORDSNET-15145|Obtain correct font size for paragraph|Feature|
|WORDSNET-15317|Track changes view settings in LibreOffice|Feature|
|WORDSNET-3276|Consider adding an ability to reference to data from parent region in child regions.|Feature|
|WORDSNET-5387|/distributed alignment/ Support "distributed" paragraphs upon rendering.|Feature|
|WORDSNET-8234|/justified cjk text/ Docx to HTML conversion issue with text alignment|Feature|
|WORDSNET-14459|/slow/ Process hangs during converting DOCX to PDF|Performance|
|WORDSNET-15090|Document.AcceptAllRevisions takes much time to execute|Performance|
|WORDSNET-14939|Duplicate table styles are generated when content control is updated with Html|Regression|
|WORDSNET-15319|Font size difference in document appending feature after 17.2|Regression|

Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.
### **Public Properties ParagraphFormat.AddSpaceBetweenFarEastAndAlpha and ParagraphFormat.AddSpaceBetweenFarEastAndDigit**
WORDSNET-14376 and WORDSNET-14377 are resolved. Two new public properties are available in the ParagraphFormat class: AddSpaceBetweenFarEastAndAlpha and AddSpaceBetweenFarEastAndDigit.

Two new public properties are available in the ParagraphFormat class: AddSpaceBetweenFarEastAndAlpha and AddSpaceBetweenFarEastAndDigit.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a flag indicating whether inter-character spacing is automatically adjusted between regions
/// of Latin text and regions of East Asian text in the current paragraph.
/// </summary>
public bool AddSpaceBetweenFarEastAndAlpha { get; set; }
/// <summary>
/// Gets or sets a flag indicating whether inter-character spacing is automatically adjusted between regions
/// of numbers and regions of East Asian text in the current paragraph.
/// </summary>
public bool AddSpaceBetweenFarEastAndDigit { get; set; }
{{< /highlight >}}

### **Added Public Property HtmlLoadOptions.PreferredControlType**
WORDSNET-14669 has been resolved. New public property PreferredControlType is added into the HtmlLoadOptions class:

{{< highlight csharp >}}
/// <summary>
/// Type of document nodes that represent &lt;input&gt; and &lt;select&gt; elements imported from HTML.
/// </summary>
public enum HtmlControlType
{
    FormField,
    StructuredDocumentTag
}
/// <summary>
/// Gets or sets preffered type of document nodes that will represent imported &lt;input&gt; and &lt;select&gt; elements.
/// Default value is <see cref="HtmlControlType.FormField"/>.
/// </summary>
/// <remarks>
/// Please note that setting this property does not guarantee that all imported controls will be of the specified type.
/// If an HTML control is not representable with document nodes of the preferred type, Aspose.Words will use
/// a compatible <see cref="HtmlControlType"/> for that control.
/// </remarks>
public HtmlControlType PreferredControlType
{
    get { return mPreferedControlType; }
    set { mPreferedControlType = value; }
}
{{< /highlight >}}

Sample usage:

{{< highlight csharp >}}
HtmlLoadOptions lo = new HtmlLoadOptions();
lo.PreferredControlType = HtmlControlType.StructuredDocumentTag;
Document doc = new Document(@"test.html", lo);
{{< /highlight >}}
### **WORDSNET-15326 - SVG Multithread Processing Issue Resolved**
Upon inserting SVG image into the document, it is converted to meta-file (EMF).When do this in multiple threads exception might occur in GDI+. To prevent problems with multi-threading, we switched to our own EMF renderer instead of GDI+ used earlier.
