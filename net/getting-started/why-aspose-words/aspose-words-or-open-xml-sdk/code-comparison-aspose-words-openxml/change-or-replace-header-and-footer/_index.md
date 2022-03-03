---
title: Change or Replace Header and Footer
second_title: Aspose.Words for .NET
articleTitle: Change or Replace Header and Footer
linktitle: Change or Replace Header and Footer
description: "Change or replace header or footer easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 60
url: /net/change-or-replace-header-and-footer/
---

On this page we will look at how to change or replace header or footer using Aspose.Words or Open XML SDK.

{{< nosnippet >}}
{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}
{{< tab tabNum="1" >}}

In Aspose.Words a header or footer is normally changed using [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder). Use its method [MoveToHeaderFooter](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/movetoheaderfooter) to update a header or footer.

The following code example shows how to replace header or footer:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
// Create header and specify header title for the first page.
builder.MoveToHeaderFooter(HeaderFooterType.HeaderPrimary);
builder.Write("Aspose.Words Header");
// Create footer for pages other than first and specify Footer text.
builder.MoveToHeaderFooter(HeaderFooterType.FooterPrimary);
builder.Write("Aspose.Words Footer");
// Save the resulting document.
doc.Save("ChangeHeadersAndFooters.docx");
{{< /highlight >}}

{{< /tab >}}
{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.Collections.Generic;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to replace header or footer:

{{< highlight csharp >}}
public void ChangeOrReplaceHeaderAndFooterFeature()
{
// Replace header in target document with header of source document.
using (WordprocessingDocument document =
  ArtifactsDir + "Change or replace header and footer - OpenXML.docx",
    WordprocessingDocumentType.Document))
  {
    // Get the main document part
    MainDocumentPart mainDocumentPart = document.MainDocumentPart;
    // Delete the existing header and footer parts
    mainDocumentPart.DeleteParts(mainDocumentPart.HeaderParts);
    mainDocumentPart.DeleteParts(mainDocumentPart.FooterParts);
    // Create a new header and footer part
    HeaderPart headerPart = mainDocumentPart.AddNewPart<HeaderPart>();
    FooterPart footerPart = mainDocumentPart.AddNewPart<FooterPart>();
    // Get Id of the headerPart and footer parts
    string headerPartId = mainDocumentPart.GetIdOfPart(headerPart);
    string footerPartId = mainDocumentPart.GetIdOfPart(footerPart);
    GenerateHeaderPartContent(headerPart);
    GenerateFooterPartContent(footerPart);
    // Get SectionProperties and Replace HeaderReference and FooterRefernce with new Id
    IEnumerable<SectionProperties> sections = mainDocumentPart.Document.Body.Elements<SectionProperties>();
    foreach (var section in sections)
    {
        // Delete existing references to headers and footers
        section.RemoveAllChildren<HeaderReference>();
        section.RemoveAllChildren<FooterReference>();
        // Create the new header and footer reference node
        section.PrependChild<HeaderReference>(new HeaderReference() { Id = headerPartId });
        section.PrependChild<FooterReference>(new FooterReference() { Id = footerPartId });
    }
  }
}
private void GenerateHeaderPartContent(HeaderPart part)
{
  Header header1 = new Header() { MCAttributes = new MarkupCompatibilityAttributes() { Ignorable = "w14 wp14" } };
  header1.AddNamespaceDeclaration("wpc",   "https://schemas.microsoft.com/office/word/2010/wordprocessingCanvas");
  header1.AddNamespaceDeclaration("mc", "https://schemas.openxmlformats.org/markup-compatibility/2006");
  header1.AddNamespaceDeclaration("o", "urn:schemas-microsoft-com:office:office");
  header1.AddNamespaceDeclaration("r", "https://schemas.openxmlformats.org/officeDocument/2006/relationships");
  header1.AddNamespaceDeclaration("m", "https://schemas.openxmlformats.org/officeDocument/2006/math");
  header1.AddNamespaceDeclaration("v", "urn:schemas-microsoft-com:vml");
  header1.AddNamespaceDeclaration("wp14", "https://schemas.microsoft.com/office/word/2010/wordprocessingDrawing");
  header1.AddNamespaceDeclaration("wp", "https://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing");
  header1.AddNamespaceDeclaration("w10", "urn:schemas-microsoft-com:office:word");
  header1.AddNamespaceDeclaration("w", "https://schemas.openxmlformats.org/wordprocessingml/2006/main");
  header1.AddNamespaceDeclaration("w14", "https://schemas.microsoft.com/office/word/2010/wordml");
  header1.AddNamespaceDeclaration("wpg", "https://schemas.microsoft.com/office/word/2010/wordprocessingGroup");
  header1.AddNamespaceDeclaration("wpi", "https://schemas.microsoft.com/office/word/2010/wordprocessingInk");
  header1.AddNamespaceDeclaration("wne", "https://schemas.microsoft.com/office/word/2006/wordml");
  header1.AddNamespaceDeclaration("wps", "https://schemas.microsoft.com/office/word/2010/wordprocessingShape");
  Paragraph paragraph1 = new Paragraph() { RsidParagraphAddition = "00164C17", RsidRunAdditionDefault = "00164C17" };
  ParagraphProperties paragraphProperties1 = new ParagraphProperties();
  ParagraphStyleId paragraphStyleId1 = new ParagraphStyleId() { Val = "Header" };
  paragraphProperties1.Append(paragraphStyleId1);
  Run run1 = new Run();
  Text text1 = new Text();
  text1.Text = "Header";
  run1.Append(text1);
  paragraph1.Append(paragraphProperties1);
  paragraph1.Append(run1);
  header1.Append(paragraph1);
  part.Header = header1;
}
public static void GenerateFooterPartContent(FooterPart part)
{
  Footer footer1 = new Footer() { MCAttributes = new MarkupCompatibilityAttributes() { Ignorable = "w14 wp14" } };
  footer1.AddNamespaceDeclaration("wpc", "https://schemas.microsoft.com/office/word/2010/wordprocessingCanvas");
  footer1.AddNamespaceDeclaration("mc", "https://schemas.openxmlformats.org/markup-compatibility/2006");
  footer1.AddNamespaceDeclaration("o", "urn:schemas-microsoft-com:office:office");
  footer1.AddNamespaceDeclaration("r", "https://schemas.openxmlformats.org/officeDocument/2006/relationships");
  footer1.AddNamespaceDeclaration("m", "https://schemas.openxmlformats.org/officeDocument/2006/math");
  footer1.AddNamespaceDeclaration("v", "urn:schemas-microsoft-com:vml");
  footer1.AddNamespaceDeclaration("wp14", "https://schemas.microsoft.com/office/word/2010/wordprocessingDrawing");
  footer1.AddNamespaceDeclaration("wp", "https://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing");
  footer1.AddNamespaceDeclaration("w10", "urn:schemas-microsoft-com:office:word");
  footer1.AddNamespaceDeclaration("w", "https://schemas.openxmlformats.org/wordprocessingml/2006/main");
  footer1.AddNamespaceDeclaration("w14", "https://schemas.microsoft.com/office/word/2010/wordml");
  footer1.AddNamespaceDeclaration("wpg", "https://schemas.microsoft.com/office/word/2010/wordprocessingGroup");
  footer1.AddNamespaceDeclaration("wpi", "https://schemas.microsoft.com/office/word/2010/wordprocessingInk");
  footer1.AddNamespaceDeclaration("wne", "https://schemas.microsoft.com/office/word/2006/wordml");
  footer1.AddNamespaceDeclaration("wps", "https://schemas.microsoft.com/office/word/2010/wordprocessingShape");
  Paragraph paragraph1 = new Paragraph() { RsidParagraphAddition = "00164C17", RsidRunAdditionDefault = "00164C17" };
  ParagraphProperties paragraphProperties1 = new ParagraphProperties();
  ParagraphStyleId paragraphStyleId1 = new ParagraphStyleId() { Val = "Footer" };
  paragraphProperties1.Append(paragraphStyleId1);
  Run run1 = new Run();
  Text text1 = new Text();
  text1.Text = "Footer";
  run1.Append(text1);
  paragraph1.Append(paragraphProperties1);
  paragraph1.Append(run1);
  footer1.Append(paragraph1);
  part.Footer = footer1;
}
{{< /highlight >}}

{{< /tab >}}
{{< /tabs >}}
{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}

{{% alert color="primary" %}}

For more information about Aspose.Words features please visit [Working with Headers and Footers](/words/net/working-with-headers-and-footers/).

{{% /alert %}}
