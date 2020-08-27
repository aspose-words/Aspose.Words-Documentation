---
title: Specify Default Fonts
type: docs
weight: 40
url: /net/specify-default-fonts/
---

## **Aspose.Words - Specify Default Fonts**
We have a simple program which takes a word document and converts it to PDF. This is achieved by loading the document into the Aspose.Words document class and calling the Document.save method with a “.pdf” extension.

We can specify the default font to use by calling the **FontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName** property before the document is rendered.

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");

// If the default font defined here cannot be found during rendering then the closest font on the machine is used instead.
FontSettings.DefaultInstance.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial Unicode MS";

// Now the set default font is used in place of any missing fonts during any rendering calls.
doc.Save("Rendering.SetDefaultFont_Out.pdf");
doc.Save("Rendering.SetDefaultFont_Out.xps");
{{< /highlight >}}
## **Download Running Code**
Download **Specify Default Fonts** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475289)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Specify.Default.Fonts.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [How to Specify the Default Font to use when Rendering](http://www.aspose.com/docs/display/wordsnet/How+to+Specify+the+Default+Font+to+use+when+Rendering).

{{% /alert %}}
