---
title: Aspose.Words for Java 16.11.0 Release Notes
type: docs
weight: 20
url: /java/aspose-words-for-java-16-11-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 16.11.0](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/16.11.0/)

{{% /alert %}} 

## **Major Features**

There are 76 improvements and fixes in this regular monthly release. The most notable are:

- FixedPageSaveOptions.OptimizeOutput option is implemented for all fixed page formats, improving the size of output documents.
- Output PDF now contains a valid document ID despite the compliancy settings (with or without PDF/A compliancy)
- Supporting MS Word 2013 features from various DOCX extensions specs. In this release roundtrip of the following DOCX features are added:
  - Collapsed state of headings
  - Footnote columns
  - graphicFrame (Graphical object container)
  - effectLst (Effect Container)
  - cxnLst
  - The extrusionOk (3D Extrusion Allowed) and fill (Path Fill) attributes
  - scene3d, sp3d, extLst for charts
  - drawing ML extended text run properties

## **Full List of Issues Covering all Changes in this Release**

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1436|Overflow/underflow Chart values while converting to Pdf.|Bug|
|WORDSJAVA-1443|MS Word equation conversion problem during rendering.|Bug|
|WORDSNET-10370|The text on shape has incorrect color while rendering.|Bug|
|WORDSNET-11207|/rtl + decimal tabs/ Table's text does not render in output Pdf/Png|Bug|
|WORDSNET-11234|Ohm sign symbol font name is changed after doing open/save on a DOCX|Bug|
|WORDSNET-12413|Text color of Shape is changed to white in output Doc/Pdf|Bug|
|WORDSNET-13023|Mht to Docx conversion issue with image quality|Bug|
|WORDSNET-13576|ListLabel are appeared after conversion from Doc to Docx/Pdf|Bug|
|WORDSNET-13690|Docx to Pdf conversion issue with hyperlink|Bug|
|WORDSNET-13755|Overflow of images when converting from DOCX to PDF|Bug|
|WORDSNET-13782|Inserting html containing non-breaking hyphen does not keep the paragraph font for this character|Bug|
|WORDSNET-13853|Docx to HtmlFixed conversion issue with table's border|Bug|
|WORDSNET-13873|GroupShape does not render correctly in output HtmlFixed|Bug|
|WORDSNET-14018|OpenXml chart changes after Mail Merge|Bug|
|WORDSNET-14021|Docx to Html conversion issue with Tab leaders|Bug|
|WORDSNET-14067|When Chart object in Word document is converted to .jpg image, items in chart legend are ordered in opposite direction.|Bug|
|WORDSNET-14082|Word document converted to PDF, output PDF file has incorrect font|Bug|
|WORDSNET-14127|Custom bullets are changed after re-saving Docx|Bug|
|WORDSNET-14151|RTF to Html conversion issue with image|Bug|
|WORDSNET-14152|Images are lost after conversion from Doc to HtmlFixed|Bug|
|WORDSNET-14166|Paragraph alignment was incorrectly imported from RTF.|Bug|
|WORDSNET-14171|Font color of SmartArt is changed after conversion from Docx to Doc/Pdf.|Bug|
|WORDSNET-14172|SmartArt's text does not render correctly in output Doc/Pdf|Bug|
|WORDSNET-14175|Superscripts and subscripts of text in Visio diagram does not export correctly in output Html|Bug|
|WORDSNET-14177|Bookmarks in produced PDF navigate to wrong position|Bug|
|WORDSNET-14178|HTML to Doc or HTML produces additional line.|Bug|
|WORDSNET-14182|MathMl to emf problem|Bug|
|WORDSNET-14189|Docx to Pdf conversion issue with image rendering|Bug|
|WORDSNET-14195|LayoutEnumerator.Rectangle.Height returns incorrect value|Bug|
|WORDSNET-14199|Document.Compare does not mimic Microsoft Word's compare feature|Bug|
|WORDSNET-14202|Wrong space location in RTL span in HtmlFixed output|Bug|
|WORDSNET-14203|Aspose.Words hangs during rendering to PDF|Bug|
|WORDSNET-14210|Inaccurate position of power in OfficeMath equation|Bug|
|WORDSNET-14213|Document.Compare changes bullet list to number list|Bug|
|WORDSNET-14214|/rtl + decimal tabs/ Table's contents become invisible after conversion from Docx to Pdf|Bug|
|WORDSNET-14216|MHTML to PDF export - A yellow colored box is misplaced|Bug|
|WORDSNET-14221|Aspose.Words hangs while loading Html|Bug|
|WORDSNET-14225|MailMerge.Execute does not work when field contains "-" character in data-source|Bug|
|WORDSNET-14228|Text of a file displays differently after converting from docx into pdf|Bug|
|WORDSNET-14231|Document.UpdateFields does not update the Quote field|Bug|
|WORDSNET-14233|Text font and size changed in rendered PDF|Bug|
|WORDSNET-14238|Color of SmartArt's text is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-14240|Extra character (square box) renders after conversion from Txt to Pdf|Bug|
|WORDSNET-14259|Page-Fields in end-notes are not updated as in Word|Bug|
|WORDSNET-14263|FieldMacroButton does not render in output Pdf|Bug|
|WORDSNET-14264|NUMPAGES and SECTIONPAGES don't get translated to correct language when fields are updated|Bug|
|WORDSNET-14268|Bullets/Numbering is lost after re-saving Odt|Bug|
|WORDSNET-14270|Docx to Html conversion issue with chart's rendering|Bug|
|WORDSNET-14277|Docx to Html conversion issue with chart's rendering|Bug|
|WORDSNET-14304|Strange behavior of Document.AcceptAllRevisions()|Bug|
|WORDSNET-14314|A symbol gets added before all numbers in PDF|Bug|
|WORDSNET-14322|Do not embed fonts that are not installed in OS and are not embedded into the input document.|Bug|
|WORDSNET-14331|ListLabel.LabelString does not return correct value for number style GB2|Bug|
|WORDSNET-14339|Doc to HtmlFixed conversion issue with Visio diagram|Bug|
|WORDSNET-14352|Metafiles are rendered with black background in Bitmap mode|Bug|
|WORDSNET-14357|Docx to Pdf conversion issue with vertical axis' line position of chart|Bug|
|WORDSNET-14361|Unsupported file format exception when loading specific .doc file|Bug|
|WORDSNET-14366|FindReplaceOptions - Incorrect replacement of repeating characters|Bug|
|WORDSNET-6498|BookmarkReference.Evaluate method potential bugs.|Bug|
|WORDSNET-6932|/vml/ Shapes are not preserved on HTML import|Bug|
|WORDSNET-12696|Symbols <> are changed after re-saving RTF|Enhancement|
|WORDSNET-14005|Optimize the size of output SVG|Enhancement|
|WORDSNET-14185|HTML Export doesn't take into account Different First Page header option|Enhancement|
|WORDSNET-14229|Improve HTML round-trip support of tab-stops written as spaces.|Enhancement|
|WORDSNET-14230|/vml/ Shapes are not preserved on MHTML import|Enhancement|
|WORDSNET-14255|Saving to PDF without PDF/A compliance leads to empty Document ID|Enhancement|
|WORDSNET-14342|Aspose.Words.FileCorruptedException occurs upon loading a RTF|Enhancement|
|WORDSNET-14234|The document appears to be corrupted and cannot be loaded|Exception|
|WORDSNET-14303|Document.AcceptAllRevisions throws "Cannot remove because there is no parent"|Exception|
|WORDSNET-14307|System.OverflowException is thrown while re-saving Docx|Exception|
|WORDSNET-10846|List number formatting is lost after re-saving the Docx|Feature|
|WORDSNET-11501|A Table auto-copy-button is not preserved during open-save a DOCX|Feature|
|WORDSNET-12785|List Labels are changed after re-saving Docx|Feature|
|WORDSNET-14226|Provide option for "Create bookmarks using: Headings" in PDF|Feature|
|WORDSNET-3498|Support export to HTML5.|Feature|
|WORDSNET-14205|Styles lost when Word XML saved as Doc|Regression|

## **Public API and Backward Incompatible Changes**

This section lists public API changes that were introduced in Aspose.Words 16.11.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### **WORDSNET-3498 Support export to HTML5**

#### **New public enum HtmlVersion:**

{{< highlight csharp >}}
/// <summary>
/// Indicates the version of HTML is used when saving the document to <see cref="SaveFormat.Html"/> and 
/// <see cref="SaveFormat.Mhtml"/> formats.
/// </summary>
public enum HtmlVersion
{
    /// <summary>
    /// Saves the document in compliance with the XHTML 1.0 Transitional standard. 
    /// </summary>
    /// <remarks>
    /// <p>Aspose.Words aims to output XHTML according to the XHTML 1.0 Transitional standard, 
    /// but the output will not always validate against the DTD. Some structures inside a Microsoft Word 
    /// document are hard or impossible to map to a document that will validate against the XHTML schema. 
    /// For example, XHTML does not allow nested lists (UL cannot be nested inside another UL element), 
    /// but in Microsoft Word document multilevel lists occur quite often.</p>
    /// </remarks>
    Xhtml,
    /// <summary>
    /// Saves the document in compliance with the HTML 5 standard. 
    /// </summary>
    Html5
}
{{< /highlight >}}

#### **New public property in HtmlSaveOptions:**

{{< highlight csharp >}}
/// <summary>
/// Specifies version of HTML standard that should be used when saving the document to HTML or MHTML.
/// Default value is <see cref="Saving.HtmlVersion.Xhtml"/>.
/// </summary>
public HtmlVersion HtmlVersion
{
     get { return mHtmlVersion; }
     set { mHtmlVersion = value; }
}
{{< /highlight >}}

#### **Usecase:**

{{< highlight csharp >}}
var so = new HtmlSaveOptions();
so.HtmlVersion = HtmlVersion.Html5;
doc.Save("out.html", so);
{{< /highlight >}}

### **WORDSNET-13625 - FixedPageSaveOptions.OptimizeOutput**

Starting from 16.11.0 version, OptimizeOutput option is available for all fixed page formats.

{{< highlight csharp >}}
/// <summary>
/// Flag indicates whether it is required to optimize output of XPS.
/// If this flag is set redundant nested canvases and empty canvases are removed,
/// also neighbor glyphs with the same formating are concatenated.
/// Note: The accuracy of the content display may be affected if this property is set to true.
///
/// Default is false.
/// </summary>
public virtual bool OptimizeOutput
{
    get { return mOptimizeOutput; }
    set { mOptimizeOutput = value; }
}
{{< /highlight >}}
