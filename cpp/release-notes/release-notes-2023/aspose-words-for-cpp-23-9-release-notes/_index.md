---
title: Aspose.Words for C++ 23.9 Release Notes
description: "Aspose.Words for C++ 23.9 Release Notes – the latest updates and fixes."
type: docs
weight: 30
url: /cpp/aspose-words-for-cpp-23-9-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.9](https://www.nuget.org/packages/Aspose.Words.Cpp/23.9.0).

{{% /alert %}}

## Major Features

There are 68 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to set axis title of charts.
- Extended MarkdownSaveOptions with ImagesFolderAlias property.
- Added an ability to specify fonts vertical position on a line for paragraph.
- Implemented metafile rendering emulation of rasterization size for WMF pen width and EMF cosmetic pen.

## Full list of changes

{{% alert color="secondary" %}}

<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Allow getting styleId value form Style
2. Support MarkdownSaveOptions.ImagesFolderAlias
3. Support chart axis title in API
4. Axis title support
5. Add feature to set Axis Title of Chart
6. Support paragraph's property Automatically Adjust Right Indent When Using Document Grid
7. LINQ Reporting Engine - Treat a variable initialized upon a missing member as a missing member
8. Consider moving to SkiaSharp 2.88.3
9. None of the table lines are being printed on the TIFF image and incorrect table layout
10. Text is Shifted up to Previous Page in output PDF
11. Table lines are not printed on the TIFF image
12. Content is shown incorrectly after report building and converting to PDF
13. Text outline format is lost on CHM loading
14. Invalid license signature error message when a license is applied
15. FileCorruptedException is thrown upon loading DOCX document
16. DOCX to MD: Ticks not converted correctly
17. Content appears on the wrong page in AW layout
18. Incorrect paragraph border position
19. OutOfMemoryException on rendering to PDF
20. DOCX to PDF: different chart label
21. Text is not matched when FindWholeWordsOnly is enabled
22. Make ParagraphFormat.BaselineAlignment public
23. Markdown document with a SVG image embedded as a data URL is imported as plain text
24. Zero-width joiner is not rendered correctly when exporting Word document to PDF
25. REF filed is rendered/updated incorrectly when saving to PDF
26. Exception loading rtf file
27. Date SDT has incorrect value after comparing documents.
28. Leading spaces for the Code 128 font are rendered incorrectly
29. DOCX merging issue
30. Page numbers in TOC is incorrect after rendering
31. Form field font is changed after open/save document as RTF and further rendering to PDF
32. Performance degradation of AppendDocument method after 23.8 version
33. InvalidCastException is thrown while comparing documents
34. EMF cosmetic pen to vector graphics rendering - pictures render incorrectly in PDF
35. Dashed line is rendered with too small step in metafile
36. Text is moved to the previous page after DOCX to PDF conversion
37. Shape is moved to previous page and overlaps content
38. DOC to PDF: Image is clipped on conversion
39. The size of radical sign according to the font size of the first MathElement
40. Incorrect height calculation of the function if it is part of complex math element
41. FileCorruptedException is thrown upon loading HTML document when BlockImportMode.Preserve is used
42. Double underline looks like a single bold underline in HtmlFixed or PDF
43. The exception is thrown when comparing documents
44. Excel spreadsheet OLE object extracted from DOC cannot be opened
45. NullReferenceException on conversion to PDF
46. IndexOutOfRangeException is thrown on conversion to PDF
47. Textbox is missing on the first page after import
48. Artifacts appears after rendering document to PDF with SkiaSharp 2.88.0
49. Incorrect rendering document to PDF
50. Line AutoShape is rendered thinner
51. Aspose.Words 23.8 - evaluation message added if metered license applied
52. Document.UpdateFields() throws 'Invalid document model. Operation can not be completed.'
53. Missing characters after converting PDF to DOCX
54. Metered license not expired but watermark is shown
55. The size of "Sigma" and "Pi" signs is incorrect in "stretch" mode of the N-ary function
56. Transparent page background does not work in EMF using AW EMF renderer
57. Fonts are substituted even when they are availabe in the fonts folder
58. Incorrect rendering of the radical sign
59. Extra memory consumption for metafiles
60. Font size is changed after converting PDF to DOCX
61. DML shape is not detected as a watermark by Aspose.Words
62. InvalidOperationException is thrown when remove hidden bookmark
63. List type is changed after appending documents
64. Inaccurate header export when converting RTF to HTML
65. Font in footer is changed after appending document with KeepSourceFormatting
66. Image is lost upon rendering document on Alpine Linux
67. Inline shape is not clipped by the container table cell on conversion to PDF
68. Unexpected font in output PDF

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added an ability to set chart axis title

A new public class **ChartAxisTitle** has been implemented. And a property **Title** of this type has been added.
{{< highlight cpp >}}

    /// <summary>
    /// Provides access to the axis title properties.
    /// </summary>
    class ASPOSE_WORDS_SHARED_CLASS ChartAxisTitle
    {
        /// <summary>
        /// Gets or sets the text of the axis title.
        /// If <c>null</c> or empty value is specified, auto generated title will be shown.
        /// </summary>
        /// <remarks>Use <see cref="Show"/> option if you need to show the title.</remarks>
        ASPOSE_WORDS_SHARED_API System::String get_Text();
        ASPOSE_WORDS_SHARED_API void set_Text(const System::String& value);
    
        /// <summary>
        /// Determines whether other chart elements shall be allowed to overlap the title.
        /// The default value is <c>false</c>.
        /// </summary>
        ASPOSE_WORDS_SHARED_API bool get_Overlay();
        ASPOSE_WORDS_SHARED_API void set_Overlay(bool value);
    
        /// <summary>
        /// Determines whether the title shall be shown for the axis.
        /// The default value is <c>false</c>.
        /// </summary>
        ASPOSE_WORDS_SHARED_API bool get_Show();
        ASPOSE_WORDS_SHARED_API void set_Show(bool value);
    }
    
    class ASPOSE_WORDS_SHARED_CLASS ChartAxis
    {
        /// <summary>
        /// Provides access to the axis title properties.
        /// </summary>
        ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxisTitle> get_Title();
    }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to set and show title of X and Y axes:
{{< gist "aspose-words-gists" "95061862a2ab3d338a5cc332744e133d" "chart-axis-title.cpp" >}}
{{% /alert %}}

### Added public property MarkdownSaveOptions.ImagesFolderAlias

A new public property **ImagesFolderAlias** has been added to class **MarkdownSaveOptions**:
{{< highlight cpp >}}

    /// <summary>
    /// Specifies the name of the folder used to construct image URIs written into a document.
    /// </summary>
    ASPOSE_WORDS_SHARED_API System::String get_ImagesFolderAlias() const;
    ASPOSE_WORDS_SHARED_API void set_ImagesFolderAlias(const System::String& value);

{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use ImagesFolderAlias property within MarkdownSaveOptions:
{{< gist "aspose-words-gists" "95061862a2ab3d338a5cc332744e133d" "images-folder.cpp" >}}
{{% /alert %}}

### Added public property ParagraphFormat.BaselineAlignment

A new public property **BaselineAlignment** has been added to class **ParagraphFormat** and a new public enum has been introduced:
{{< highlight cpp >}}

    /// <summary>
    /// Gets or sets fonts vertical position on a line.
    /// </summary>
    ASPOSE_WORDS_SHARED_API Aspose::Words::BaselineAlignment get_BaselineAlignment();
    ASPOSE_WORDS_SHARED_API void set_BaselineAlignment(Aspose::Words::BaselineAlignment value);
    
    /// <summary>
    /// Specifies fonts vertical position on a line.
    /// </summary>
    enum class ASPOSE_WORDS_SHARED_CLASS BaselineAlignment

{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use BaselineAlignment property of a ParagraphFormat:
{{< gist "aspose-words-gists" "95061862a2ab3d338a5cc332744e133d" "paragraph-baseline-alignment.cpp" >}}
{{% /alert %}}

### Changed MetafileRenderingOptions properties related to metafile size on page emulation

**ScaleWmfFontsToMetafileSize** property is replaced with **EmulateRenderingToSizeOnPage** and added **EmulateRenderingToSizeOnPageResolution**.

{{< highlight cpp >}}

    /// <summary>
    /// Gets or sets a value determining whether metafile rendering emulates the display of the metafile according to the size on page
    /// or the display of the metafile in its default size.
    /// </summary>
    /// <remarks>
    /// <para>When metafiles are displayed in MS Word, some graphics may be scaled according to the actual metafile size in pixels.
    /// I.e. even zooming may affect the metafile display.</para>
    ///
    /// <p>When this value is set to <c>true</c>, Aspose.Words emulates rendering according to the metafile size on page.
    /// The size in pixels is calculated from the metafile size on the page and the specified <see cref="EmulateRenderingToSizeOnPageResolution"/>.</p>
    ///
    /// <p>When this value is set to <c>false</c>, Aspose.Words emulates metafile rendering to its default size in pixels.</p>
    ///
    /// <p>This option is used only when metafile is rendered as vector graphics.</p>
    ///
    /// <p>The default value is <c>true</c>.</p>
    /// </remarks>
    ASPOSE_WORDS_SHARED_API bool get_EmulateRenderingToSizeOnPage() const;
    ASPOSE_WORDS_SHARED_API void set_EmulateRenderingToSizeOnPage(bool value);
    
    /// <summary>
    /// Gets or sets the resolution in pixels per inch for the emulation of metafile rendering to the size on page.
    /// </summary>
    /// <remarks>
    /// <p>This option is used only when <see cref="EmulateRenderingToSizeOnPage"/> is set to <c>true</c>.</p>
    ///
    /// <p>The default value is 96. This is a default display resolution. I.e. metafile rendering will emulate the display of
    /// the metafile in MS Word with a 100% zoom factor.</p>
    /// </remarks>
    ASPOSE_WORDS_SHARED_API int32_t get_EmulateRenderingToSizeOnPageResolution() const;
    ASPOSE_WORDS_SHARED_API void set_EmulateRenderingToSizeOnPageResolution(int32_t value);

{{< /highlight >}}

### Removed obsolete property ChildNodes from CompositeNode class

The obsolete public property **ChildNodes** is removed from **Aspose.Words.CompositeNode** class.
Note, the removed ChildNodes is equivalent to calling GetChildNodes(NodeType, bool) with arguments (NodeType.Any and false)
Please check the following example:

{{< highlight cpp >}}

    Node[] children = source.GetChildNodes(NodeType.Any, false).ToArray();

{{< /highlight >}}

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
