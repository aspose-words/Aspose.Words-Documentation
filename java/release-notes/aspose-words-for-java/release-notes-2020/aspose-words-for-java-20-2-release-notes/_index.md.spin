---
title: Aspose.Words for Java 20.2 Release Notes
type: docs
weight: 50
url: /java/aspose-words-for-java-20-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 20.2](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2).

{{% /alert %}} 

## Major Features

- Performance and memory improvements due to NodeCollectionEnumerator algorithm optimization and loading of Blank Document optimization.
- IFieldUpdateCultureProvider is accessible from public API now.
- FieldOptions.setPreProcessCulture() is accessible from public API now.
- Added support of additional Java Charsets (Charsets that not exist in .NET).
- Background shape texture image is now rendered the same way as in print layout of MS Word with a 100% scale.
- Supported dynamic insertion of documents and images from Base64-encoded bytes and dynamic checkbox value setting for the LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1970|Java public API for IFieldUpdateCultureProvider|New Feature|
|WORDSJAVA-1985|Update ms CultureInfo and DateTimeFormatInfo for public API.|New Feature|
|WORDSJAVA-2271|Double relation to the same DataTable with LINQ Reporting Engine|New Feature|
|WORDSNET-19561|Support dynamic checkbox value setting using LINQ Reporting Engine|New Feature|
|WORDSNET-19750|Add features to support field formats when FieldMergingArgs.Text is used|New Feature|
|WORDSNET-19556|Add feature to append VBA from one document to another using Document.AppendDocument|New Feature|
|WORDSNET-18694|Add feature to export w:colFirst and w:colLast properties of bookmarkStart|New Feature|
|WORDSNET-19859|LINQ Reporting Engine - Support dynamic image insertion from Base64-encoded bytes|New Feature|
|WORDSNET-19924|Integrate Pdf2Word plugin in Aspose.Words for .NET Standard|New Feature|
|WORDSJAVA-1966|FieldUpdateCultureProvider doesn't work with some Field codes.|Bug|
|WORDSJAVA-2069|setPreProcessCulture() and IFieldUpdateCultureProvider uses internal objects|Bug|
|WORDSJAVA-2238|Images are not imported from HTML when href contains escaped percent character (%25)|Bug|
|WORDSJAVA-2266|java.io.EOFException: End of file reached occurs upon saving DOC with broken null substream to HTML_Fixed format|Bug|
|WORDSJAVA-2268|A Chinese character moves to the next line in the rendered document|Bug|
|WORDSJAVA-2270|InvalidConstraintException when evaluating a null-conditional operator on missing related DataRow|Bug|
|WORDSJAVA-2279|Performance degradation observed when updating from 16.7 to 19.12|Bug|
|WORDSJAVA-2282|DataRow.getParentRows works incorrectly|Bug|
|WORDSJAVA-2285|Some encoding types are not accepted by TxtLoadOptions.setEncoding|Bug|
|WORDSJAVA-2296|LINQ Reporting Engine with JsonDataSource generates incorrect output for double values|Bug|
|WORDSNET-19773|Horizontal Line not Shown in Rendered Document|Bug|
|WORDSNET-18592|After conversion to PDF, the content is not in the right place|Bug|
|WORDSNET-11069|Shape's strikethrough issues|Bug|
|WORDSNET-18733|Chart Diagram rendered incorrectly in PDF|Bug|
|WORDSNET-19783|System.NullReferenceException is thrown while saving the first page of the document to image|Bug|
|WORDSNET-19800|System.NullReferenceException is thrown while saving DOC to PDF/PNG|Bug|
|WORDSNET-19244|Different table width between DOCX and ODT|Bug|
|WORDSNET-19461|Gridlines and images are missing when saving into HTML with HtmlFixedSaveOptions|Bug|
|WORDSNET-14251|Table's cells are lost after re-saving ODT|Bug|
|WORDSNET-19710|Infinite loop during the call of Document.UpdatePageLayout|Bug|
|WORDSNET-19712|Footer Banner Repeats Multiple Times on all Pages in PDF|Bug|
|WORDSNET-19563|Lettered Bullet Points aren't preserved when converting from ODT to DOCX|Bug|
|WORDSNET-19257|DOCX to PDF conversion issue with watermark rendering|Bug|
|WORDSNET-19900|Unable to load shared library 'libSkiaSharp' or one of its dependencies|Bug|
|WORDSNET-19813|System.NullReferenceException occurs upon calling UpdateFields after UpdatePageLayout|Bug|
|WORDSNET-19814|System.NullReferenceException occurs upon saving DOCX to PDF after calling UpdatePageLayout method|Bug|
|WORDSNET-19129|Document.Compare throws System.ArgumentOutOfRangeException|Bug|
|WORDSNET-19600|Order of fonts in the Font Substitution Table is incorrect|Bug|
|WORDSNET-19819|System.NullReferenceException occurs upon calling UpdateFields after UpdatePageLayout|Bug|
|WORDSNET-8967|Clipping inline shapes by line|Bug|
|WORDSNET-19227|Table and Frame format is changed after saving .DOT as .ODT|Bug|
|WORDSNET-19727|Footnote elements out of margins when saved to PDF|Bug|
|WORDSNET-19734|Word to PDF tab alignment not working|Bug|
|WORDSNET-19801|Aspose.Words.FileCorruptedException is thrown while loading DOC|Bug|
|WORDSNET-19832|FileCorruptedException is thrown while loading RTF|Bug|
|WORDSNET-19834|Content shifted when saved to PDF|Bug|
|WORDSNET-19903|Incorrect naming of Document.AutomaticallyUpdateSyles param|Bug|
|WORDSNET-19414|Inline image rendering order|Bug|
|WORDSNET-19744|System.IndexOutOfRangeException occurs upon DOCX to PDF Conversion|Bug|
|WORDSNET-19748|Table Cell Shading Lost during RTF to PDF Conversion|Bug|
|WORDSNET-19749|Watermark angle changes during DOCX conversion|Bug|
|WORDSNET-19803|System.ArgumentOutOfRangeException is thrown while saving document's pages to PNG|Bug|
|WORDSNET-19848|LINQ Reporting Engine - ArgumentException is thrown if image expression returns an empty string|Bug|
|WORDSNET-19743|System.NullReferenceException occurs upon saving DOCX to PDF|Bug|
|WORDSNET-19418|Memory is not released upon conversion document with EMF|Bug|
|WORDSNET-19399|Setting PreserveFormFields to true cancels the effect of UpdateSdtContent|Bug|
|WORDSNET-19916|Reset StructureDocumentTag content formatting on comparison|Bug|
|WORDSNET-19534|Content in RTF is distorted|Bug|
|WORDSNET-19533|Content in RTF is distorted|Bug|
|WORDSNET-19779|Data labels are not rendered in PDF|Bug|
|WORDSNET-19782|DOCX to PDF - hyphenation not same|Bug|
|WORDSNET-19781|System.InvalidCastException is thrown while comparing documents|Bug|
|WORDSNET-19785|Word to PDF dotted line problem|Bug|
|WORDSNET-19789|Content pushed down from original position causing blank page at the end in PDF|Bug|
|WORDSNET-19795|System.ArgumentOutOfRangeException occurs upon invoking Document.PageCount|Bug|
|WORDSNET-14708|The content position is changed in output PDF|Bug|
|WORDSNET-14961|Text is incorrectly positioned in RTL paragraphs inside auto-sized shapes|Bug|
|WORDSNET-15064|DOCX  to PDF conversion issue with paragraph and shape position|Bug|
|WORDSNET-14843|DOCX to PDF conversion issue with image's position|Bug|
|WORDSNET-14826|TextBox Shapes moved to next page during rendering to PDF|Bug|
|WORDSNET-18880|The issue with table position and UpdateTableLayout method|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### FieldMergingArgsBase.FieldValue made settable

Related issue: WORDSNET-19750

The customer was using the FieldMergingArgs.Text property and wanted the provided value to be formatted according to the format specified in the field being merged. We have made the FieldMergingArgsBase.FieldValue property settable so that instead of setting Text the user can set FieldValue which takes formatting into account instead of simply replacing the field.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the value of the field from the data source.
/// </summary>
/// <remarks>
/// This property contains a value that has just been selected from your data source
/// for this field by the mail merge engine. You can also replace the value by setting the property.
/// </remarks>
public object FieldValue
{
    get { return mFieldValue; }
    set { mFieldValue = value; }
}
{{< /highlight >}}


### Supported dynamic insertion of documents and images from Base64-encoded bytes and dynamic checkbox value setting for LINQ Reporting Engine

**Issues:** WORDSNET-19859 and WORDSNET-19561

The following sections of the engine's documentation were updated/added to describe the changes:

- [Inserting Documents Dynamically](/words/java/inserting-documents-dynamically/)
- [Inserting Images Dynamically](/words/java/inserting-images-dynamically/)
- [Working with Content Controls](/words/java/working-with-content-controls/)
- [Setting Checkbox Values Dynamically](/words/java/working-with-content-controls/#workingwithcontentcontrols-settingcheckboxvaluedynamically)
- [Setting Content Control Titles Dynamically](/words/java/working-with-content-controls/#workingwithcontentcontrols-settingcontentcontroltitlesdynamically)

### Word 2019 version set by default

Ref: WORDSNET-19908

Due to the fact that submissions to the support service regarding different default spacing values for the paragraph have become more frequent, it was decided to change the default version of MS Word. Now, this version is MSWordVersion.Word2019. In most cases, the issue appeared when the customers created documents in WPS Office that do not write default spacing values for the paragraph in a document to be saved. When opening such documents in Aspose.Words, the values actual for MSWord 2007 were substituted because it was the default version before this release.

Now the code:

{{< highlight csharp >}}
Document doc = new Document("document.docx");
{{< /highlight >}}

will be identical to:

{{< highlight csharp >}}
LoadOptions lo = new LoadOptions();
lo.MswVersion = MsWordVersion.Word2019;
Document doc = new Document("document.docx", lo);
{{< /highlight >}}

To achieve the previous behavior, it is necessary to explicitly specify the version:

{{< highlight csharp >}}
LoadOptions lo = new LoadOptions();
lo.MswVersion = MsWordVersion.Word2007;
Document doc = new Document("document.docx", lo);
{{< /highlight >}}
