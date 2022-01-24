---
title: Specify Default Fonts
description: "Aspose.Words for .NET allows to specify default fonts. NPOI does not provide an opportunity to specify default fonts."
type: docs
weight: 25
url: /net/specify-default-fonts/
---

{{% alert color="primary" %}} 

See more details in the ["Manipulating and Substitution TrueType Fonts"](/words/net/manipulating-and-substitution-truetype-fonts/) article.

{{% /alert %}}

We have a simple program which allows to convert a Word document to PDF. This is achieved by loading the document into the [Aspose.Words document model (DOM)](/words/net/aspose-words-document-object-model/) and calling the [Save](https://apireference.aspose.com/net/words/aspose.words/document/methods/save/index) method with a “.PDF” extension.

You can specify the default font by calling the [DefaultFontName](https://apireference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/properties/defaultfontname) property before the document is rendered.

The following code example shows how to specify default fonts:

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");

// If the default font defined here cannot be found during rendering then the closest font on the machine is used instead.
FontSettings.DefaultInstance.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial Unicode MS";

// Now the set default font is used in place of any missing fonts during any rendering calls.
doc.Save("Rendering.SetDefaultFont_Out.pdf");
doc.Save("Rendering.SetDefaultFont_Out.xps");
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Specify.Default.Fonts.Aspose.Words.zip) for running code


