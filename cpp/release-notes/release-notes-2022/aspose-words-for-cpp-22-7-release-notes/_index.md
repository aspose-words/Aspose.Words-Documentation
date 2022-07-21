---
title: Aspose.Words for C++ 22.7 Release Notes
description: "Aspose.Words for C++ 22.7 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 45
url: /cpp/aspose-words-for-cpp-22-6-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 22.7](https://www.nuget.org/packages/Aspose.Words.Cpp/22.7.0).

{{% /alert %}}

## Major Features

We have added the following features from Aspose.Words for .Net on this regular monthly release:

- Implemented support of WCAG 2.0 PDF.
- Implemented our own glyph outlines parsing for OpenType(CFF) fonts.
- Introduced new HTML import mode for block-level elements.
- Added support of the DATABASE fields.
- Provided an ability to set shadow formatting of the shape object.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .Net System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.

## Full List of Issues Covering all Changes in this Release (Reported by C++ Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSCPP-1182 | Aspose.Words for C+\+ Library error: Only 'v140', 'v141' and 'v142' toolsets are supported in Visual Studio 2022 | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-23654 | Add a new mode for import HTML block-level   elements during inserting HTML via DocumentBuilder.InsertHtml method | New Feature |
| WORDSNET-15752 | Support DATABASE field | New Feature |
| WORDSNET-19220 | Add feature to support WCAG 2.0 PDF | New Feature |
| WORDSNET-13702 | Support parsing of glyph data for OpenType(CFF) | New Feature |
| WORDSNET-23295 | Add a flag to take EXIF orientation in account while inserting a JPEG   image by LINQ Reporting Engine | New Feature |
| WORDSNET-18125 | Make sure saving to tagged PDF follows Section 508   Guidelines | Enhancement |
| WORDSNET-23851 | Data label values are rendered improperly | Bug |
| WORDSNET-23963 | List label is added to the paragraph on the next page when ExtractPages   is used | Bug |
| WORDSNET-23709 | Shape stroke is not rendered to JPEG | Bug |
| WORDSNET-23706 | Numbering is broken after converting document to HTML | Bug |
| WORDSNET-23936 | Reverse order of replies on the comment in the air | Bug |
| WORDSNET-23976 | Korean text is not wrapped properly when WordWrap option is disabled | Bug |
| WORDSNET-20981 | Word document converted to PDF results in different font for last page | Bug |
| WORDSNET-22323 | DOCX to PDF conversion issue with formula/equation rendering | Bug |
| WORDSNET-24010 | ImportStyle() returns null for KeepDifferentStyles | Bug |
| WORDSNET-23950 | Reply naming differences within export to PDF | Bug |
| WORDSNET-23981 | DOCX to MD conversion exception | Bug |
| WORDSNET-21368 | Unexpected Bold Formatting to custom style during Word to HTML to Word   conversion | Bug |
| WORDSNET-23701 | Font size is not exported to HTML | Bug |
| WORDSNET-23913 | FileNotFoundException is thrown upon loading DOCX document | Bug |
| WORDSNET-24034 | InvalidOperationException is thrown upon comparing document | Bug |
| WORDSNET-23828 | Content is removed after saving the document | Bug |
| WORDSNET-23544 | Document missing sections after saving | Bug |
| WORDSNET-23889 | Wrong list numbering in SDT bound to custom XML part | Bug |
| WORDSNET-23952 | Chart axis are not visible when render as SVG | Bug |
| WORDSNET-23954 | List labels in Swedish are rendered in English | Bug |
| WORDSNET-23888 | Aspose.Words hangs for a while upon loading MHTML file | Bug |
| WORDSNET-23646 | Date X-Axis shows values with incorrect step | Bug |
| WORDSNET-23865 | KeepSourceFormatting does not honor source document style | Bug |
| WORDSNET-23313 | Invalidate document layout after calling Document.Compare with two PDF   documents | Bug |
| WORDSNET-23974 | Style separator produces line break after rendering | Bug |
| WORDSNET-23890 | Evaluation watermark in ODT document overlaps content of the document | Bug |
| WORDSNET-23810 | Incorrect background image after Pdf2Word conversion | Bug |
| WORDSNET-23925 | Word document not saving PNG | Bug |
| WORDSNET-23829 | DOCX to PDF: Characters rendered as boxes | Bug |
| WORDSNET-23902 | Redundant space between letter is added upon rendering SVG image | Bug |
| WORDSNET-23783 | Consider disabling support for external resources when loading EPUB   documents | Bug |
| WORDSNET-23867 | Wrong outlines are returned for the space character | Bug |
| WORDSNET-23965 | InvalidOperationException is thrown upon rendering document | Bug |
| WORDSNET-23955 | Spacing between numbers and Chinese hieroglyphs is too big in chart axis   labels | Bug |
| WORDSNET-23841 | Text orientation is turned to vertical after converting to HTML | Bug |
| WORDSNET-23684 | Incorrect calculation of indents for border box&nbsp; around the formula | Bug |
| WORDSNET-23958 | Exception when comparing documents | Bug |
| WORDSNET-23948 | InvalidOperationException: MediaBox is null | Bug |
| WORDSNET-23929 | Text is wrapped differently after rendering | Bug |
| WORDSNET-23878 | Text is wrapped improperly | Bug |
| WORDSNET-14009 | Text Font and Gradient fill not saved in PDF output | Bug |
| WORDSNET-23942 | Images are rendered in PDF as red cross | Bug |
| WORDSNET-23947 | System.OverflowException: Value was either too large or too small for an   Int32 | Bug |
| WORDSNET-23924 | InvalidCastException is thrown upon updating fields | Bug |
| WORDSNET-23951 | Formating issue on the lastest Pdf2Word release | Bug |
| WORDSNET-23922 | Incorrect font detection for East Asian characters when rendering a   formula | Bug |
| WORDSNET-23886 | Style applied to text is changed after open/save DOCX document | Bug |
| WORDSNET-23941 | ZlibException: Bad state (invalid distance code) | Bug |
| WORDSNET-23855 | CryptographicException: The input data is not a complete block | Bug |
| WORDSNET-23919 | Aspose.Words hangs upon updating fields or layout | Bug |
| WORDSNET-23866 | Field updating hangs if document is optimized for Word2016 | Bug |
| WORDSNET-23875 | Header row is not repeated upon rendering for a floating table | Bug |
| WORDSNET-23869 | Incorrect font detection when rendering a formula | Bug |
| WORDSNET-23918 | ArgumentException because of duplicates in CustomDocumentProperties | Bug |
| WORDSNET-22948 | Import of SVG image differs from what is in browser | Bug |
| WORDSNET-23874 | Thickness of hairline is different when render with .NET and .NET   Standard versions | Bug |
| WORDSNET-23817 | Header height is changed that leads to layout issues | Bug |
| WORDSNET-6892 | TextBox is not preserved on HTML import | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-23877 | Provide API to remove the shape shadows | Bug |
| WORDSNET-24007 | FileCorruptedException on loading RTF file | Bug |
| WORDSNET-23980 | IF field with wildcard is updated improperly | Bug |
| WORDSNET-23598 | Part of content is moved to previous page | Bug |
| WORDSNET-23937 | Layout is different after DOCX to PDF conversion | Bug |
| WORDSNET-22648 | Incorrect Rendering of Math Equations in PDF | Bug |
| WORDSNET-23970 | Header and footer are lost after rendering | Bug |
| WORDSNET-23979 | Word to PDF \-&nbsp; conversion issue   with floating table header rows | Bug |
| WORDSNET-23862 | Chinese text in SVG is rendered as tofu when convert to PDF | Bug |
| WORDSNET-22896 | Font Fallback does not work properly for text within SVG images | Bug |
| WORDSNET-21279 | Arabic text rendered LTR (garbled) when converting from document to PDF | Bug |
| WORDSNET-23938 | FileCorruptedException is thrown upon loading DOCX document | Bug |
| WORDSNET-23968 | Hanging during export to PDF | Bug |
| WORDSNET-23599 | Whitespaces font is reset to Arial upon importing HTML | Bug |
| WORDSNET-23910 | Font is changed after inserting document when KeepDifferentStyles is used | Bug |
| WORDSNET-23909 | Numbering is changed after inserting document | Bug |
| WORDSNET-23781 | UpdatePageLayout hangs | Bug |
| WORDSNET-23893 | InvalidOperationException is thrown upon executing mail merge | Bug |
| WORDSNET-23927 | NullReferenceException is thrown upon rendering document | Bug |
| WORDSNET-23623 | API fails to load EML files as MHTML | Bug |
| WORDSNET-21764 | Math equations are blurred during exporting Word to HTML on Linux | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new mode for import HTML block-level elements during inserting HTML via DocumentBuilder.InsertHtml() method

Related issue: WORDSNET-23654

New HTML insertion option was added to HtmlInsertOptions enum.
{{< highlight cpp >}}

    enum class HtmlInsertOptions
    {
    /// <summary>
    /// Preserve properties of block-level elements.
    /// </summary>
    /// <remarks>
    /// <para>
    /// By default, properties of parent blocks are merged and stored on their child elements (i.e. paragraphs or tables).
    /// If this option is specified, properties of each block are stored separately in a special logical structure.
    /// As a result, this option allows to better preserve individual borders and margins seen in the HTML document
    /// and get better conversion results. The downside is that the resulting document gets harder to modify, since borders
    /// and margins stored in the logical structure are not available for editing.
    /// </para>
    /// <para>
    /// Only margins and borders of 'body', 'div', and 'blockquote' HTML elements are preserved. Properties of each HTML
    /// element are stored separately.
    /// </para>
    /// <para>
    /// If this option is specified, Aspose.Words mimics MS Word's behavior regarding import of block properties.
    /// </para>
    /// </remarks>
    PreserveBlocks = 4
    };
{{< /highlight >}}

The new mode of import HTML block-level elements during inserting HTML via DocumentBuilder.InsertHtml() method allows to better preserve borders and margins seen in the HTML document and get better conversion results.
{{< highlight cpp >}}

    auto html = u"
    <html>
        <div style='border:dotted'>
            <div style='border:solid'>
                <p>paragraph 1</p>
                <p>paragraph 2</p>
            </div>
        </div>
    </html>";
    // Set the new mode of import HTML block-level elements.
    auto insertOptions = HtmlInsertOptions::PreserveBlocks;
    auto builder = System::MakeObject<DocumentBuilder>();
    builder->InsertHtml(html, insertOptions);
    builder->get_Document()->Save(MyDir + u"sample.docx");
{{< /highlight >}}

### Added new public property ShadowFormat

Related issue: WORDSNET-23877

A new public ShadowFormat property has been added to ShapeBase class
{{< highlight cpp >}}

    /// <summary>
    /// Gets shadow formatting for the shape.
    /// </summary>
    System::SharedPtr<Aspose::Words::Drawing::ShadowFormat> get_ShadowFormat();
{{< /highlight >}}

With this property customers can set or get one of the preset shadow types.
{{< highlight cpp >}}

    /// <summary>
    /// Gets or sets the specified <see cref="ShadowType"/> for ShadowFormat.
    /// </summary>
    Aspose::Words::Drawing::ShadowType get_Type();
    /// <summary>
    /// Gets or sets the specified <see cref="ShadowType"/> for ShadowFormat.
    /// </summary>
    void set_Type(Aspose::Words::Drawing::ShadowType value);
{{< /highlight >}}

Users can also get information about a shadow's visibility.
{{< highlight cpp >}}

    /// <summary>
    /// Returns <c>true</c> if the formatting applied to this instance is visible.
    /// </summary>
    /// <remarks>
    /// Unlike <see cref="Clear()"/>, assigning <c>false</c> to Visible does not clear the formatting,
    /// it only hides the shape effect.
    /// </remarks>
    bool get_Visible();
{{< /highlight >}}

And it is also possible to clear ShadowFormat.
{{< highlight cpp >}}
    
    /// <summary>
    /// Clears shadow format.
    /// </summary>
    void Clear();
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}

    auto doc = System::MakeObject<Document>("DocumentWithShape.docx");
    auto shape = doc->get_FirstSection()->get_Body()->get_Shapes()->idx_get(0);
    // Checking whether the shadow effect is visible and whether the preset type is Shadow2.
    if (shape->get_ShadowFormat()->get_Visible() && shape->get_ShadowFormat->get_ShapeType() == ShapeType::Shadow2)
    // Setting the preset shadow type to Shadow7.
    shape->get_ShadowFormat()->set_ShapeType(ShapeType::Shadow7);
    // Checking whether the shadow is customized, i.e. the preset type is ShadowMixed.
    if (shape->get_ShadowFormat()->get_ShapeType == ShapeType::ShadowMixed)
    // Clearing ShadowFormat.
    shape->get_ShadowFormat()->Clear();
{{< /highlight >}}

### ReportBuildOptions.RespectJpegExifOrientation enum member

Related issue: WORDSNET-23295

The following member has been added to the ReportBuildOptions enum:
{{< highlight cpp >}}

    /// <summary>
    /// Specifies that the engine should use EXIF ​​image orientation values to appropriately rotate inserted
    /// JPEG images.
    /// </summary>
    RespectJpegExifOrientation
{{< /highlight >}}

The option can be applied while building a report in the following way:
{{< highlight cpp >}}

    auto engine = System::MakeObject<ReportingEngine>();
    engine->get_Options() |= ReportBuildOptions::RespectJpegExifOrientation;
    engine->BuildReport(...);
{{< /highlight >}}

### Supported the DATABASE field

Related issue: WORDSNET-15752

The following types and members have been added:
{{< highlight cpp >}}

    class FieldOptions final
    {
    /// <summary>
    /// Gets or sets a provider that returns a query result for the <see cref="FieldDatabase"/> field.
    /// </summary>
    const System::SharedPtr<Aspose::Words::Fields::IFieldDatabaseProvider>& get_FieldDatabaseProvider() const;
    /// <summary>
    /// Gets or sets a provider that returns a query result for the <see cref="FieldDatabase"/> field.
    /// </summary>
    void set_FieldDatabaseProvider(const System::SharedPtr<Aspose::Words::Fields::IFieldDatabaseProvider>& value);
    }
    
    /// <summary>
    /// Implement this interface to provide data for the <see cref="FieldDatabase"/> field when it's updated.
    /// </summary>
    class IFieldDatabaseProvider
    {
    /// <summary>
    /// Returns query result.
    /// </summary>
    /// <param name="fileName">The complete path and file name of the database specified in the \d field switch.</param>
    /// <param name="connection">The connection to the data specified in the \c field switch.</param>
    /// <param name="query">The set of SQL instructions that query the database specified in the \s field switch.</param>
    /// <param name="field">The field being updated.</param>
    /// <returns>The <see cref="FieldDatabaseDataTable"/> instance that should be used for the field's update.</returns>
    virtual System::SharedPtr<Aspose::Words::Fields::FieldDatabaseDataTable> GetQueryResult(System::String fileName, System::String connection, System::String query, System::SharedPtr<Aspose::Words::Fields::FieldDatabase> field) = 0;
    }
    
    /// <summary>
    /// Provides data for the <see cref="FieldDatabase"/> field result.
    /// </summary>
    class FieldDatabaseDataTable
    {
    /// <summary>
    /// Initializes a new instance of the <see cref="FieldDatabaseDataTable"/> class.
    /// </summary>
    FieldDatabaseDataTable(const System::ArrayPtr<System::String>& columnNames);
    
    /// <summary>
    /// Gets columns that belong to this table.
    /// </summary>
    const System::ArrayPtr<System::String>& get_ColumnNames() const;
    
    /// <summary>
    /// Gets rows that belong to this table.
    /// </summary>
    const System::SharedPtr<System::Collections::Generic::IList<System::SharedPtr<Aspose::Words::Fields::FieldDatabaseDataRow>>>& get_Rows() const;
     
    /// <summary>
    /// Initializes a new instance of the <see cref="FieldDatabaseDataTable"/> class
    /// from the <see cref="System.Data.DataTable"/> instance.
    /// </summary>
    static System::SharedPtr<Aspose::Words::Fields::FieldDatabaseDataTable> CreateFrom(const System::SharedPtr<System::Data::DataTable>& dataTable);
    }
    
    /// <summary>
    /// Provides data for the <see cref="FieldDatabase"/> field result.
    /// </summary>
    class FieldDatabaseDataRow
    {
    /// <summary>
    /// Initializes a new instance of the <see cref="FieldDatabaseDataRow"/> class.
    /// </summary>
    FieldDatabaseDataRow(const System::ArrayPtr<System::String>& values);
    
    /// <summary>
    /// Gets values that belong to this row.
    /// </summary>
    const System::ArrayPtr<System::String>& get_Values() const;
    
    /// <summary>
    /// Initializes a new instance of the <see cref="FieldDatabaseDataRow"/> class
    /// from the <see cref="System.Data.DataRow"/> instance.
    /// </summary>
    static System::SharedPtr<Aspose::Words::Fields::FieldDatabaseDataRow> CreateFrom(const System::SharedPtr<System::Data::DataRow>& dataRow);
    }
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}

    document->get_FieldOptions()->set_FieldDatabaseProvider(System::MakeObject<OleDbFieldDatabaseProvider>());
    document->UpdateFields();

    class OleDbFieldDatabaseProvider : public IFieldDatabaseProvider
    {
        System::SharedPtr<Aspose::Words::Fields::FieldDatabaseDataTable> GetQueryResult(System::String fileName, System::String connection, System::String query, System::SharedPtr<Aspose::Words::Fields::FieldDatabase> field) override
        {
            auto connectionStringBuilder = System::MakeObject<OleDbConnectionStringBuilder>(connection);
            connectionStringBuilder->set_DataSource(fileName);

            auto oleDbConnection = System::MakeObject<OleDbConnection>(connectionStringBuilder->ToString()))
            auto oleDbDataAdapter = System::MakeObject<OleDbDataAdapter>(query, oleDbConnection); 
            auto dataTable = System::MakeObject<DataTable>();
            oleDbDataAdapter->Fill(dataTable);

            return FieldDatabaseDataTable->CreateFrom(dataTable);
        }
    }
{{< /highlight >}}