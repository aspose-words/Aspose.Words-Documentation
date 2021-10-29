---
title: Public API Changes in Aspose.Words 14.12.0
type: docs
weight: 120
url: /net/public-api-changes-in-aspose-words-14-12-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.12.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## PageHorizontalAlignment and PageMargins Properties Added to HtmlFixedSaveOptions Class

**PageHorizontalAlignment**

{{< highlight csharp >}}
/// <summary>
/// Specifies the horizontal alignment of pages in an HTML document.
/// Default value is <c>HtmlFixedHorizontalPageAlignment.Center</c>.
/// </summary>
public HtmlFixedPageHorizontalAlignment PageHorizontalAlignment
{
    get { return mPageHorizontalAlignment; }
    set { mPageHorizontalAlignment = value; }
}
{{< /highlight >}}

**HtmlFixedPageHorizontalAlignment**

{{< highlight csharp >}}
/// <summary>
/// Specifies the horizontal alignment for pages in output HTML document.
/// </summary>
public enum HtmlFixedPageHorizontalAlignment
{
    /// <summary>
    /// Align pages to the left.
    /// </summary>
    Left,
    /// <summary>
    /// Center pages. This is the default value.
    /// </summary>
    Center,
    /// <summary>
    /// Align pages to the right.
    /// </summary>
    Right
}
{{< /highlight >}}

**PageMargins**

{{< highlight csharp >}}
/// <summary>
/// Specifies the margins around pages in an HTML document.
/// The margins value is measured in points and should be equal to or greater than 0.
/// Default value is 10 points.
/// </summary>
/// <remarks>
/// <para>Depends on the value of <see cref="PageHorizontalAlignment"/> property:</para>
/// <list type="bullet">
/// <item>
/// Defines top, bottom and left page margins if the value is <see cref="HtmlFixedPageHorizontalAlignment.Left"/>.
/// </item>
/// <item>
/// Defines top, bottom and right page margins if the value is <see cref="HtmlFixedPageHorizontalAlignment.Right"/>.
/// </item>
/// <item>
/// Defines top and bottom page margins if the value is <see cref="HtmlFixedPageHorizontalAlignment.Center"/>.
/// </item>
/// </list>
/// </remarks>
public double PageMargins
{
    get { return mPageMargins; }
    set
    {
        if (value < 0)
            throw new ArgumentException("value");
        mPageMargins = value;
    }
}
{{< /highlight >}}

To remove the margin declaration, set PageHorizontalAlignment to HtmlFixedPageHorizontalAlignment.Left and PageMargins to 0.

## AllowTrailingWhitespaceForListItems Property Added to LoadOptions Class

**AllowTrailingWhitespaceForListItems**

{{< highlight csharp >}}
/// <summary>
/// Allows to specify how numbered list items are recognized when document is imported from plain text format.
/// The default value is true.</summary>
/// <remarks>
/// <para>This property is used only when loading plain text documents.</para>
/// <para> If set to true,  lists recognition algorithm allows list numbers to end with either dot or whitespace character.</para>
/// <para>If this option is set to false then the list item is only recognized as such if the leading number is ending with dot "." symbol.</para>
/// </remarks>
public bool AllowTrailingWhitespaceForListItems
{
    get { return mAllowTrailingWhitespaceForListItems; }
    set { mAllowTrailingWhitespaceForListItems = value; }
}
{{< /highlight >}}

## New Mode of Handling Styles during Import via Public ImportFormatMode.KeepDifferentStyles

**KeepDifferentStyles**

{{< highlight csharp >}}
/// <p>Using <b>KeepDifferentStyles</b> option allows to reuse destination styles
/// if the formatting they provide is identical to the styles in the source document.
/// If the style in destination document is different from the source then it is imported.</p>
KeepDifferentStyles
{{< /highlight >}}

**Usage**

{{< highlight csharp >}}
Document dst = new Document("src.docx"); 
Document src = new Document("dst.docx");

// Upon appending with KeepDifferentStyles, only styles that have differences in formatting (as compared to their identically named counterparts in the source doc) will be copied to the destination document. 
dst.AppendDocument(src, ImportFormatMode.KeepDifferentStyles);
dst.Save("out.docx");
{{< /highlight >}}

## Saving to OpenDocument (ODT) Version 1.2 Supported

For output ODT documents, Aspose.Words now supports the following versions:

- 'office:version = "1.1"' is specified when ' OdtSaveOptions.IsStrictSchema11 = true'
- 'office:version = "1.2"' is specified when ' OdtSaveOptions.IsStrictSchema11 = false'

## Public API for Specifying Text Effects for Revisions during Rendering to Fixed Page Formats

The following public entities exposed:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify decoration effect for revisions of document text.
/// </summary>
public enum RevisionTextEffect
The following public properties with getters/setters added to RevisionOptions class :
public RevisionTextEffect InsertedTextEffect
public RevisionTextEffect DeletedTextEffect
public RevisionTextEffect MovedFromTextEffect
public RevisionTextEffect MovedToTextEffect
public RevisionTextEffect RevisedPropertiesEffect
{{< /highlight >}}
