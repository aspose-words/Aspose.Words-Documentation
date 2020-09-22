---
title: Public API Changes in Aspose.Words 15.5.0
type: docs
weight: 50
url: /net/public-api-changes-in-aspose-words-15-5-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.5.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

### **PageSetup.TextOrientation Public Property Added**

We have added new public property TextOrientation to PageSetup class:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Allows to specify <see cref="TextOrientation"/> for the whole page.
/// Default value is <see cref="Aspose.Words.TextOrientation.Horizontal"/>
/// </summary>
public TextOrientation TextOrientation
{{< /highlight >}}

It allows to specify TextOrientation for the whole page. Default value is Horizontal. This property is only supported for MS Word native formats such as DOCX, WML, RTF and DOC.

### **SaveOptions.ColorMode Public Property Added**

We have added new public property ColorMode to SaveOptions class. While rendering to fixed page formats such as PDF, XPS and images, the documents can be rendered in two color modes now

- ColorMode.Normal - an ordinary way with unmodified colors and
- ColorMode.Grayscale - with colors in a range of gray shades from white to black.

**C#**

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

**C#**

{{< highlight csharp >}}
Document doc = new Document(MyDir + "in.docx");
PdfSaveOptions options = new PdfSaveOptions();

// Save the document "doc" in grayscale mode PDF.
options.ColorMode = ColorMode.Grayscale;
doc.Save(MyDir + "out.pdf", options);
{{< /highlight >}}

### **Conditional Blocks for LINQ Reporting Engine Supported**

The new functionality of conditional blocks is described in the following sections of the documentation:

- [Using Conditional Blocks](/words/net/template-syntax/#templatesyntax-usingconditionalblocks)
- [Working with Common Conditional Blocks](/words/net/template-syntax/#templatesyntax-workingwithcommonconditionalblocks)
- [Working with Table-Row Conditional Blocks](/words/net/template-syntax/#templatesyntax-workingwithtable-rowconditionalblocks)
- [Multicolored Numbered List Template (Appendix C)](/words/net/typical-templates/#typicaltemplates-multicolorednumberedlisttemplate)
- [In-Table List Template with Highlighted Rows (Appendix C)](/words/net/typical-templates/#typicaltemplates-in-tablelisttemplatewithhighlightedrows)
- [In-Table List Template with Alternate Content (Appendix C)](/words/net/typical-templates/#typicaltemplates-in-tablelisttemplatewithalternatecontent)
