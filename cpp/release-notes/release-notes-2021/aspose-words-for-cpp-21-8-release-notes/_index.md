---
title: Aspose.Words for C++ 21.8 Release Notes
type: docs
weight: 30
url: /cpp/aspose-words-for-cpp-21-8-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 21.8](https://www.nuget.org/packages/Aspose.Words.Cpp/21.8.0).

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .Net on this regular monthly release:

- Added an ability to insert GIF images into the document.
- Added new Pdf save option - ExportLanguageToSpanTag.
- Implemented field updating public callback.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .Net System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-20059 | Provide API to move cursor to any position (character etc) inside a Paragraph | New Feature |
| WORDSNET-19311 | Add support for HSL colors in HTML documents | New Feature |
| WORDSNET-19381 | Add context to exceptions thrown while evaluating expressions for LINQ Reporting Engine | New Feature |
| WORDSNET-21015 | Request to Remove Generator or Producer Name | New Feature |
| WORDSNET-22449 | Calculate storeItemChecksum attribute on Save | New Feature |
| WORDSNET-22345 | Export language in Tag tab of object properties | New Feature |
| WORDSNET-1786 | Allow inserting GIF images into the document | New Feature |
| WORDSNET-22408 | Implement field updating public callback | New Feature |
| WORDSNET-22539 | Opening a document using the Document class is significantly slower in version 21.3 compared to 16.5 | Enhancement |
| WORDSNET-18068 | Document.UpdateFields does not update RD field | Bug |
| WORDSNET-8796 | Hebrew RTL/LTR text is not preserved during saving DOCX to TXT | Bug |
| WORDSNET-22352 | PDF Conversion failing to an error when Shape has a Transparency value | Bug |
| WORDSNET-22354 | System.ArgumentOutOfRangeException occurs upon Word DOCX to PDF conversion | Bug |
| WORDSNET-21828 | Table list paragraph wrongly updating in word document table | Bug |
| WORDSNET-22365 | Text is pushed down to next page after DOCX to PDF conversion | Bug |
| WORDSNET-22549 | Unable to detect correct load format of a MHT file | Bug |
| WORDSNET-22375 | DOCX to PDF conversion issue | Bug |
| WORDSNET-22376 | DOCX to PDF conversion issue PDF is not editable | Bug |
| WORDSNET-19735 | The last horizontal axis label is lost after converting to PDF | Bug |
| WORDSNET-19175 | Chart is cropped in output PNG | Bug |
| WORDSNET-19180 | Line types in Chart mismatch in PDF | Bug |
| WORDSNET-19182 | Chart's Line type mismatched in PDF | Bug |
| WORDSNET-21686 | HTML to DOCX conversion issue with text layout and position | Bug |
| WORDSNET-19719 | The ConvertFontSizeToRelativeUnitsIfNeeded raises an exception if font-size is not a length ValueType | Bug |
| WORDSNET-21873 | Document comparison: Incorrect redlining | Bug |
| WORDSNET-21522 | DOCX to HTML conversion issue with target frame setting | Bug |
| WORDSNET-19950 | Formatting for some characters does not apply when rendering in PDF | Bug |
| WORDSNET-22405 | LocaleConverter doesn't have mapping for Language.Breton and Language.Alsatian locales | Bug |
| WORDSNET-21098 | Text is moved to previous page after DOCX to PDF conversion | Bug |
| WORDSNET-21449 | Khmer characters not appearing in PDF - Font: Avenir 85 Heavy | Bug |
| WORDSNET-20855 | Chart does not render correctly in output PDF | Bug |
| WORDSNET-20938 | Empty list paragraph moved to second page | Bug |
| WORDSNET-22410 | Language of text changes after re-saving a DOCX document | Bug |
| WORDSNET-22414 | "Pie" and "Doughnut" charts with "Explosion" are rendered incorrectly after converting to PDF | Bug |
| WORDSNET-22417 | Range.Replace with multi-line Regex to detect data in word files | Bug |
| WORDSNET-21925 | DOCX to HTML Image inside the table cells is not up to the original document | Bug |
| WORDSNET-22421 | Document.UpdateFields method throws System.ArgumentException | Bug |
| WORDSNET-22254 | Revisions.AcceptAll does not accept revisions correctly | Bug |
| WORDSNET-21365 | Content are lost after MHTML to PDF conversion | Bug |
| WORDSNET-21379 | Problem with logical structure of irregular tables when exporting to PDF | Bug |
| WORDSNET-21409 | Shape text does not render correctly after DOC to HtmlFixed conversion | Bug |
| WORDSNET-22431 | Chart data labels/axis are wrong when converting DOCX to PDF | Bug |
| WORDSNET-22434 | "Russian (Moldova)" and "Romanian (Moldova)" languages are not correctly loaded and saved from/to DOCX documents | Bug |
| WORDSNET-22269 | Quotes in Word document aren't matched by Replace | Bug |
| WORDSNET-21954 | Styling is not working when we use builder.InsertHtml | Bug |
| WORDSNET-22446 | InsertDocument does not preserve HeaderFooters and formatting when inserting into empty section | Bug |
| WORDSNET-22319 | Headers and Footers are lost after DOCX to ODT conversion | Bug |
| WORDSNET-22452 | System.NullReferenceException occurs upon DOCX to TIFF conversion | Bug |
| WORDSNET-22450 | Aspose gives FileCorruptedException for RTF but Microsoft Word opens fine | Bug |
| WORDSNET-22147 | DOCX to PDF/a: Empty P tag without content | Bug |
| WORDSNET-22385 | Document.UpdateFields throws System.Exception | Bug |
| WORDSNET-22327 | Image width is decreased after saving document to ODT | Bug |
| WORDSNET-22298 | Linked text box in source document corrupts NodeImporter result in destination document | Bug |
| WORDSNET-21588 | IReplacingCallback is never executed | Bug |
| WORDSNET-22456 | "IsShowingPlaceholderText" property is wrong | Bug |
| WORDSNET-22313 | FileCorruptedException when loading a document | Bug |
| WORDSNET-22438 | Option for Include label and number in Table of Figures | Bug |
| WORDSNET-22465 | DOCX to PDF Conversion issue with chart rendering | Bug |
| WORDSNET-22318 | Section breaks (odd/even ) are changed to 'continuous' after DOCX to ODT conversion | Bug |
| WORDSNET-22479 | Header image color changes from pink to blue after appending documents | Bug |
| WORDSNET-22485 | Need to implement the correct use of fonts in formulas | Bug |
| WORDSNET-22448 | fldinst DATE and TIME are inconsistent | Bug |
| WORDSNET-22491 | Document.PageCount returns incorrect page numbers | Bug |
| WORDSNET-22476 | NullReferenceException is thrown when call UpdatePageLayout | Bug |
| WORDSNET-22499 | Resource loading takes a long time | Bug |
| WORDSNET-22507 | Word Document Template - Data Merge Rendering Issue | Bug |
| WORDSNET-21830 | Replacing overlapping Bookmarks behaves unexpected or causes an error with Java | Bug |
| WORDSNET-22353 | Header and footer lost after replace with section break | Bug |
| WORDSNET-22515 | Word Table content overlaps footer content in PDF | Bug |
| WORDSNET-22534 | FileCorruptedException is thrown while loading DOC | Bug |
| WORDSNET-17892 | DOCX to HTML conversion issue with space between list number and text | Bug |
| WORDSNET-22015 | PDF generated by Aspose.Words does not conform PDF Standards | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to insert GIF image into the document

Related issue: WORDSNET-1786

Introduced ability to insert a GIF image into the model using "DocumentBuilder::InsertImage" method.

Limitations:

- Access to the image bytes causes conversion GIF to PNG;

- Saving to formats differ from the DOCX, DOTX, DOCM, DOTM, FOPC causes conversion GIF to PNG;

- DocumentBuilder must be optimized to Word 2007 or higher (Word 2007 is default option).

Use Case: Explains how to insert a GIF image.
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
auto image = builder->InsertImage(u"image.gif");
{{< /highlight >}}

### Added new Pdf save option - ExportLanguageToSpanTag

The new save option allows to customize how the Lang entry should be exported. It can be useful for compatibility with some screen readers.
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether or not to create a "Span" tag in the document structure to export the text language.
/// </summary>
/// <remarks>
/// <para> Default value is <c>false</c> and "Lang" attribute is attached to a marked-content sequence in a page content stream.</para>
/// <para> When the value is <c>true</c> "Span" tag is created for the text with non-default language and "Lang" attribute is attached to this tag.</para>
/// <para> This value is ignored when <see cref="ExportDocumentStructure"/> is <c>false</c>. </para>
/// </remarks>
public bool ExportLanguageToSpanTag
{{< /highlight >}}

Use Case: 
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"input.docx");
 
auto options = System::MakeObject<PdfSaveOptions>();
options->set_ExportDocumentStructure(true);
options->set_ExportLanguageToSpanTag(true);
 
doc->Save(u"output.pdf", options);
{{< /highlight >}}

### Implemented field updating public callback

Related issue: WORDSNET-22408

As a part of customer driven development, we have implemented a field updating public callback interface:
{{< highlight csharp >}}
/// <summary>
/// Implement this interface if you want to have your own custom methods called during a field update.
/// </summary>
public interface IFieldUpdatingCallback
{
    /// <summary>
    /// A user defined method that is called just before a field is updated.
    /// </summary>
    void FieldUpdating(Field field);
 
    /// <summary>
    /// A user defined method that is called just after a field is updated.
    /// </summary>
    void FieldUpdated(Field field);
}
{{< /highlight >}}

And a FieldOptions property:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets <see cref="IFieldUpdatingCallback"/> implementation
/// </summary>
public IFieldUpdatingCallback FieldUpdatingCallback { get; set; }
{{< /highlight >}}

Use case:
{{< highlight cpp >}}
document->get_FieldOptions()->set_FieldUpdatingCallback(System::MakeObject<FieldUpdatingCallback>());
 
class FieldUpdatingCallback : public IFieldUpdatingCallback
{
public:
    void FieldUpdating(System::SharedPtr<Aspose::Words::Fields::Field> field) override
    {
        // Do something on field updating.
    }
 
    void FieldUpdated(System::SharedPtr<Aspose::Words::Fields::Field> field) override
    {
        // Do something on field updated.
    }
};
{{< /highlight >}}

### Added new public property SaveOptions::FlatOpcXmlMappingOnly

Related issue: WORDSNET-22507

New public FlatOpcXmlMappingOnly option has been implemented.
{{< highlight csharp >}}
/// <summary>
/// Gets or sets value determining which document formats are allowed to be mapped by <see cref="StructuredDocumentTag.XmlMapping"/>.
/// By default only <see cref="LoadFormat.FlatOpc"/> document format is allowed to be mapped.
/// </summary>
public bool FlatOpcXmlMappingOnly { get; set; }
{{< /highlight >}}

By default MS Word allows to bind structured document tags to FlatOpc documents only. 
This option allows to control this behavior and bind documents in any format.

Use case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"filename"); // a document containing SDT mapped to document, for example, in HTML format
doc->Save(u"out_1.pdf"); // the default behavior - SDT will contain raw HTML text
 
auto so = SaveOptions::CreateSaveOptions(SaveFormat::Pdf);
so->set_FlatOpcXmlMappingOnly(false);

doc->Save(u"out_2.pdf", so); // mapped HTML will be parsed and resulting document is inserted into SDT content
{{< /highlight >}}