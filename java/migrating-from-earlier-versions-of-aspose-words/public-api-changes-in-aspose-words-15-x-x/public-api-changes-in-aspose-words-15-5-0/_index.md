---
title: Public API Changes in Aspose.Words 15.5.0
type: docs
weight: 50
url: /java/public-api-changes-in-aspose-words-15-5-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.5.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## PageSetup.TextOrientation Public Property Added

We have added new public property TextOrientation to PageSetup class:

**Java**

{{< highlight csharp >}}
/**
Allows to specify <see cref="TextOrientation"/> for the whole page.
Default value is <see cref="Aspose.Words.TextOrientation.Horizontal"/>
*/
public TextOrientation TextOrientation
{{< /highlight >}}

It allows to specify TextOrientation for the whole page. Default value is Horizontal. This property is only supported for MS Word native formats such as DOCX, WML, RTF and DOC.

## SaveOptions.ColorMode Public Property Added

We have added new public property ColorMode to SaveOptions class. While rendering to fixed page formats such as PDF, XPS and images, the documents can be rendered in two color modes now

- ColorMode.Normal - an ordinary way with unmodified colors and
- ColorMode.Grayscale - with colors in a range of gray shades from white to black.

**Java**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining how colors are rendered.
/// </summary>
/// <remarks>The default value is <see cref="Aspose.Words.Saving.ColorMode.Normal"/>
/// <para>This property is used when the document is exported to fixed page formats.</para>
/// </remarks>
public ColorMode ColorMode { get; set; }
{{< /highlight >}}

Sample code is as follows:

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "in.docx");
PdfSaveOptions options = new PdfSaveOptions();

// Save the document "doc" in grayscale mode PDF.
options.setColorMode(ColorMode.GRAYSCALE);
doc.save(getMyDir() + "out.pdf", options);
{{< /highlight >}}

## Conditional Blocks for LINQ Reporting Engine Supported

New functionality of conditional blocks is described in the following sections of the documentation:

- [Using Conditional Blocks](/words/java/using-conditional-blocks/)
- [Working with Common Conditional Blocks](/words/java/working-with-common-conditional-blocks/)
- [Working with Table-Row Conditional Blocks](/words/java/working-with-table-row-conditional-blocks/)
- [Multicolored Numbered List Template (Appendix C)](/words/java/appendix-c-typical-templates/#multicolored-numbered-list-template)
- [In-Table List Template with Highlighted Rows (Appendix C)](/words/java/appendix-c-typical-templates/#in-table-list-template-with-highlighted-rows)
- [In-Table List Template with Alternate Content (Appendix C)](/words/java/appendix-c-typical-templates/#in-table-list-template-with-alternate-content)
