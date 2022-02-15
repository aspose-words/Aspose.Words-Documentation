---
title: Aspose.Words for C++ 20.9 Release Notes
description: "Aspose.Words for C++ 20.9 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 8
url: /cpp/aspose-words-for-cpp-20-9-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 20.9](https://downloads.aspose.com/words/cpp/new-releases/aspose.words-for-c---20.9/)

{{% /alert %}} 

## Major Features

Starting from this release, we are beginning to publish the Linux version of Aspose.Words for C++.
The minimum required version of compilers are the following:

- GCC 6.3 or higher
- Clang 3.9.1 or higher

Right now, we support only the x86_x64 platform, but we can add other architectures to the next releases on request.

It is the first version for Linux, so there may be artifacts and differences in behavior from both the Windows version of Aspose.Words for C++ and Aspose.Words for .NET. We continue to work on improving the product and adding features from .NET

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- VbaReferenceCollection and related types are exposed publicly.
- Implemented rendering of metafiles with EMF+ containers.
- The FormField font formatting API was extended.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support the Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support advanced typography based on the HarfBuzz shaper.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ does not have a common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher and only for the x64 platform.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSCPP-865|Add support for Linux|New Feature|
|WORDSNET-522	|Allow applying font formatting to FormField as a whole|New Feature|
|WORDSNET-20289	|Passing correct border parameters through Words-HTML-Words roundtrip|New Feature|
|WORDSNET-13678	|Provide way to remove template reference from a Word document|New Feature|
|WORDSNET-20986	|'Keep with next' property is changed after RTF to DOCX conversion|Enhancement|
|WORDSNET-20868	|UnsupportedFileFormatException while loading RTF|Enhancement|
|WORDSCPP-995	|Aspose.Words for C++ causes STACK OVERFLOW|Bug|
|WORDSCPP-996	|Unable to reference Aspose.Words for C++ in Visual Studio|Bug|
|WORDSNET-14910	|Nesting a Continuous Section Break in a content control tag breaks Aspose?s tree traversal|Bug|
|WORDSNET-20585	|Infinite loop with a table in a footnote|Bug|
|WORDSNET-20996	|OutOfMemoryException when SaveAs document with charts as PNG|Bug|
|WORDSNET-9660	|Add tests for different row height rule/vertically merged cell combinations|Bug|
|WORDSNET-20399	|Image is lost after DOCX to PDF conversion|Bug|
|WORDSNET-20356	|Convert DOC to PDF - Bullets getting renumbered|Bug|
|WORDSNET-21014	|Position of rotated shapes with a relative size is incorrect|Bug|
|WORDSNET-14444	|Shape flip is missing after re-saving document|Bug|
|WORDSNET-20489	|Incorrect text flow for a paragraph wrapped around a floater|Bug|
|WORDSNET-21019	|Incorrect width of cells after import from RTF|Bug|
|WORDSNET-20496	|Some text in 'TestJira13969' aligned incorrectly|Bug|
|WORDSNET-20601	|Incorrect text wrapping for a line started with a sequence of spaces in compatibility mode|Bug|
|WORDSNET-17533	|Incorrect vertical position of the text in the cell|Bug|
|WORDSNET-18261	|DOCX to PDF conversion issue with table rendering|Bug|
|WORDSNET-5808	|Header format is lost after conversion|Bug|
|WORDSNET-17815	|Some Arabic characters are improperly rendered to another font|Bug|
|WORDSNET-11384	|Vertically merged cell contents is not broken correctly when the cell is broken in 2013 mode|Bug|
|WORDSNET-14369	|Relations between linked textbox are broken after re-saving document|Bug|
|WORDSNET-19094	|DOCX to EPUB convertion -> NCX-identifier does not match OPF identifier|Bug|
|WORDSNET-20258	|DOC to HTML throws System.InvalidOperationException|Bug|
|WORDSNET-20370	|Extra spaces are created after links when ODT is re-saved|Bug|
|WORDSNET-20727	|Text order changed when converting word to PDF using 20.6|Bug|
|WORDSNET-20744	|Chart data labels are lost after DOCX to PDF conversion|Bug|
|WORDSNET-20327	|DOCX to HTML - Single Table represented by 11 Tables in HTML|Bug|
|WORDSNET-20530	|Text and footnotes pushed to the next page - convert to PDF|Bug|
|WORDSNET-20823	|Insert and Delete Revisions appear against Image when Comparing similar Documents|Bug|
|WORDSNET-20771	|Numbers are reversed after DOCX to PDF conversion|Bug|
|WORDSNET-19889	|System.InvalidOperationException is thrown while saving HTML to DOCX|Bug|
|WORDSNET-20085	|HTML to DOCX throw exception|Bug|
|WORDSNET-20839	|FileCorruptedException occurs upon loading a DOCX - Unexpected ST_TrueFalse value|Bug|
|WORDSNET-20840	|Extra space created during Load and Save a DOC|Bug|
|WORDSNET-19942	|Conversion from RTF cutting off-page and losing data|Bug|
|WORDSNET-20845	|The document appears to be corrupted and cannot be loaded|Bug|
|WORDSNET-20662	|Incorrect breaking of a vertically merged cell when first cell content does not fit|Bug|
|WORDSNET-20847	|NullReferenceException when saving a document page as HTML|Bug|
|WORDSNET-20848	|System.ArgumentException when import node from another document|Bug|
|WORDSNET-20850	|System.ArgumentNullException throws when converting attached ODT document to TXT|Bug|
|WORDSNET-20579	|Incorrect numbering during Word to PDF conversion|Bug|
|WORDSNET-20804	|Footer text lost during open/save a DOCX|Bug|
|WORDSNET-20630	|Textbox's text does not move to next linked Textbox|Bug|
|WORDSNET-20862	|Text position changed after DOCX to PDF conversion|Bug|
|WORDSNET-20867	|System.InvalidCastException while loading RTF files|Bug|
|WORDSNET-20872	|Incorret rendering of the legend items|Bug|
|WORDSNET-20873	|Incorrect rendering of the data label markers|Bug|
|WORDSNET-20869	|Embedded Excel have dif. bits after extraction|Bug|
|WORDSNET-20674	|PDF Conversion causes double spacing in header and footer|Bug|
|WORDSNET-20481	|Vertical Chinese Text in Table Cell Lost during Rendering|Bug|
|WORDSNET-20883	|System.InvalidOperationException occurs upon DOC to RTF conversion|Bug|
|WORDSNET-20810	|Condition with removeif tag failed with Aspose.Words 20.7|Bug|
|WORDSNET-20887	|DOCX to PDF conversion issue with David font rendering|Bug|
|WORDSNET-20602	|Content Controls Lost during loading and saving a DOCX|Bug|
|WORDSNET-20914	|Aspose.Words.FileCorruptedException occurs upon HTML to PDF Conversion|Bug|
|WORDSNET-20918	|List item's formatting is incorrect after DOCX->HTML->DOCX round-trip|Bug|
|WORDSNET-20926	|System.NullReferenceException is thrown while saving RTF to PDF|Bug|
|WORDSNET-20928	|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Bug|
|WORDSNET-20932	|System.InvalidOperationException is thrown while saving DOC to DOCX|Bug|
|WORDSNET-20929	|Document.UpdateFields does not update the TOC correctly|Bug|
|WORDSNET-14743	|Content control is split into two once child document content is inserted|Bug|
|WORDSNET-20957	|Stack Overflow observed during processing a DOC|Bug|
|WORDSNET-20962	|Additional pages appear in output PDF|Bug|
|WORDSNET-18318	|Export correct styles for list items using Node.ToString|Bug|
|WORDSNET-20614	|Space between ?and ?Chinese charterers increased in PDF|Bug|
|WORDSNET-20637	|System.ArgumentOutOfRangeException is thrown by LINQ Reporting engine|Bug|
|WORDSNET-13509	|Incorrect breaking of vertically merged cell contents|Bug|
|WORDSNET-14951	|Content Controls lost during open/save a DOCX|Bug|
|WORDSNET-14742	|Content control is getting deleted while merging two document|Bug|
|WORDSNET-18284	|Content of nested table is not rendered correctly in output PDF|Bug|
|WORDSNET-18285	|Text of table's cell does not render correctly in output PDF|Bug|
|WORDSNET-5535	|Space characters take too little space in the rendered output|Bug|
|WORDSNET-20849	|UpdatePageLayout throws System.Runtime.InteropServices.ExternalException|Bug|
|WORDSNET-20194	|Layout API returns incorrect position for GroupShape and Shapes|Bug|
|WORDSNET-3493	|Checkboxes are rendered incorrectly|Bug|
|WORDSNET-4066	|Incorrect floating table position|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Changed the behavior of the FormField.Font property

Related issue: WORDSNET-522
Changed the behavior of the 'FormField.Font' property.
It is currently allowed to apply font formatting to the FormField as a whole.
When new Font properties are set, they take effect for the entire FormField, including the field value.

Use Case. Explains how to apply font formatting to the FormField as a whole:
{{< highlight csharp >}}
    Document doc = new Document("in.doc");
    doc.Range.FormFields[0].Font.Size = 20;
    doc.Range.FormFields[0].Font.Color = Color.Red;
    doc.Save("out.doc");
{{< /highlight >}}

### Deprecated find replace algorithm returned for compatibility reason

Related issue: WORDSNET-21018
The following member has been added to FindReplaceOptions class
{{< highlight csharp >}}
    /// <summary>
    /// Gets or sets a boolean value indicating that old find/replace algorithm is used.
    /// </summary>
    /// <remarks>
    /// Use this flag if you need exactly the same behavior as before advanced find/replace feature was introduced.
    /// Note that old algorithm does not support advanced features such as replace with breaks, apply formatting and so on.
    /// </remarks>
    public bool LegacyMode { get; set; }
{{< /highlight >}}

### VbaReferenceCollection and related types are exposed publicly

Related issue: WORDSNET-13678

Implemented a new VbaReferenceCollection class:
{{< highlight csharp >}}
/// <summary>
/// Represents a collection of <see cref="VbaReference"/> objects.
/// </summary>
public sealed class VbaReferenceCollection : IEnumerable<VbaReference>
{
	/// <summary>
	/// Removes the first occurrence of a specified VbaReference item from the collection. 
	/// </summary>
	public void Remove(VbaReference item)

	/// <summary>
	/// Removes the VbaReference element at the specified index of the collection. 
	/// </summary>
	public void RemoveAt(int index)

	/// <summary>
	/// Returns the number of VBA references in the collection.
	/// </summary>
	public int Count
}
{{< /highlight >}}

Implemented a new VbaReference class:
{{< highlight csharp >}}
/// <summary>
/// Implements a reference to an Automation type library or VBA project.
/// </summary>
public abstract class VbaReference
{
	/// <summary>
	/// Gets <see cref="VbaReferenceType"/> object that indicates the type of reference that a VbaReference object represents.
	/// </summary>
	public abstract VbaReferenceType Type { get; }

	/// <summary>
	/// Gets a string value containing the identifier of an Automation type library.
	/// </summary>
	/// <remarks>
	/// Depending on reference type, the value of this property can be:
	/// <list type="bullet">
	/// <item>a LibidReference specified at 2.1.1.8 LibidReference of [MS-OVBA]:
	/// >
	/// <item>a ProjectReference specified at 2.1.1.12 ProjectReference of [MS-OVBA]:
	/// >
	/// </list>
	/// </remarks>
	public abstract string LibId { get; }
}
{{< /highlight >}}

Implemented a new public enum VbaReferenceType:
{{< highlight csharp >}}
/// <summary>
/// Allows to specify the type of a <see cref="VbaReference"/> object.
/// </summary>
public enum VbaReferenceType
{{< /highlight >}}

Added a new public property into VbaProject class:
{{< highlight csharp >}}
/// <summary>
/// Gets a collection of VBA project references.
/// </summary>
public VbaReferenceCollection References
{{< /highlight >}}

Use Case. Explains how to remove some reference from the collection of references of VbaProject:
{{< highlight csharp >}}
public void Main()
{
    Document doc = new Document("test.doc");
 
    // Find and remove the reference with some LibId path.
    const string brokenPath = "brokenPath.dll";
    VbaReferenceCollection references = doc.VbaProject.References;
    for (int i = references.Count - 1; i >= 0; i--)
    {
        VbaReference reference = doc.VbaProject.References[i];
        string path = GetLibIdPath(reference);
        if (path == brokenPath)
            references.RemoveAt(i);
    }
 
    doc.Save("NoBrokenRef.doc"); 
}
 
/// <summary>
/// Returns string representing LibId path of a specified reference. 
/// </summary>
private static string GetLibIdPath(VbaReference reference)
{
    switch (reference.Type)
    {
        case VbaReferenceType.Registered:
        case VbaReferenceType.Original:
        case VbaReferenceType.Control:
            return GetLibIdReferencePath(reference.LibId);
        case VbaReferenceType.Project:
            return GetLibIdProjectPath(reference.LibId);
        default:
            throw new ArgumentOutOfRangeException();
    }
}
 
/// <summary>
/// Returns path from a specified identifier of an Automation type library.
/// </summary>
/// <remarks>
/// Please see details for the syntax at [MS-OVBA], 2.1.1.8 LibidReference. 
/// </remarks>
private static string GetLibIdReferencePath(string libIdReference)
{
    if (libIdReference != null)
    {
        string[] refParts = libIdReference.Split('#');
        if (refParts.Length > 3)
            return refParts[3];
    }
 
    return "";
}

/// <summary>
/// Returns path from a specified identifier of an Automation type library.
/// </summary>
/// <remarks>
/// Please see details for the syntax at [MS-OVBA], 2.1.1.12 ProjectReference. 
/// </remarks>
private static string GetLibIdProjectPath(string libIdProject)
{
    return (libIdProject != null) ? libIdProject.Substring(3) : "";
}
{{< /highlight >}}
