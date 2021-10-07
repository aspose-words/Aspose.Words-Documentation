---
title: Change or Replace Header and Footer
type: docs
weight: 70
url: /net/change-or-replace-header-and-footer/
---

## OpenXML SDK

{{< highlight csharp >}}

// Replace header in target document with header of source document.
using (WordprocessingDocument document = WordprocessingDocument.Open(documentPath, true))
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
public static void GenerateHeaderPartContent(HeaderPart part)
{
Header header1 = new Header() { MCAttributes = new MarkupCompatibilityAttributes() { Ignorable = "w14 wp14" } };
header1.AddNamespaceDeclaration("wpc", "http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas");
header1.AddNamespaceDeclaration("mc", "http://schemas.openxmlformats.org/markup-compatibility/2006");
header1.AddNamespaceDeclaration("o", "urn:schemas-microsoft-com:office:office");
header1.AddNamespaceDeclaration("r", "http://schemas.openxmlformats.org/officeDocument/2006/relationships");
header1.AddNamespaceDeclaration("m", "http://schemas.openxmlformats.org/officeDocument/2006/math");
header1.AddNamespaceDeclaration("v", "urn:schemas-microsoft-com:vml");
header1.AddNamespaceDeclaration("wp14", "http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing");
header1.AddNamespaceDeclaration("wp", "http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing");
header1.AddNamespaceDeclaration("w10", "urn:schemas-microsoft-com:office:word");
header1.AddNamespaceDeclaration("w", "http://schemas.openxmlformats.org/wordprocessingml/2006/main");
header1.AddNamespaceDeclaration("w14", "http://schemas.microsoft.com/office/word/2010/wordml");
header1.AddNamespaceDeclaration("wpg", "http://schemas.microsoft.com/office/word/2010/wordprocessingGroup");
header1.AddNamespaceDeclaration("wpi", "http://schemas.microsoft.com/office/word/2010/wordprocessingInk");
header1.AddNamespaceDeclaration("wne", "http://schemas.microsoft.com/office/word/2006/wordml");
header1.AddNamespaceDeclaration("wps", "http://schemas.microsoft.com/office/word/2010/wordprocessingShape");
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
footer1.AddNamespaceDeclaration("wpc", "http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas");
footer1.AddNamespaceDeclaration("mc", "http://schemas.openxmlformats.org/markup-compatibility/2006");
footer1.AddNamespaceDeclaration("o", "urn:schemas-microsoft-com:office:office");
footer1.AddNamespaceDeclaration("r", "http://schemas.openxmlformats.org/officeDocument/2006/relationships");
footer1.AddNamespaceDeclaration("m", "http://schemas.openxmlformats.org/officeDocument/2006/math");
footer1.AddNamespaceDeclaration("v", "urn:schemas-microsoft-com:vml");
footer1.AddNamespaceDeclaration("wp14", "http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing");
footer1.AddNamespaceDeclaration("wp", "http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing");
footer1.AddNamespaceDeclaration("w10", "urn:schemas-microsoft-com:office:word");
footer1.AddNamespaceDeclaration("w", "http://schemas.openxmlformats.org/wordprocessingml/2006/main");
footer1.AddNamespaceDeclaration("w14", "http://schemas.microsoft.com/office/word/2010/wordml");
footer1.AddNamespaceDeclaration("wpg", "http://schemas.microsoft.com/office/word/2010/wordprocessingGroup");
footer1.AddNamespaceDeclaration("wpi", "http://schemas.microsoft.com/office/word/2010/wordprocessingInk");
footer1.AddNamespaceDeclaration("wne", "http://schemas.microsoft.com/office/word/2006/wordml");
footer1.AddNamespaceDeclaration("wps", "http://schemas.microsoft.com/office/word/2010/wordprocessingShape");
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

## Aspose.Words

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string path = FilePath + "Change or Replace Header and footer - Aspose.docx";
ChangeHeader(path);
}
public static void ChangeHeader(string documentPath)
{
    Document doc = new Document(documentPath);
    DocumentBuilder builder = new DocumentBuilder(doc);

    // --- Create header ---
    builder.MoveToHeaderFooter(HeaderFooterType.HeaderPrimary);
    
    // Specify header title for the first page.
    builder.Write("Aspose.Words Header");
    
    // --- Create footer for pages other than first. ---
    builder.MoveToHeaderFooter(HeaderFooterType.FooterPrimary);
    
    // Specify Footer text.
    builder.Write("Aspose.Words Footer");
    
    // Save the resulting document.
    doc.Save(documentPath);
}
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)- 
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Change%20or%20Replace%20Header%20and%20footer%20in%20Word%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/wiki/Change%20or%20Replace%20Header%20and%20footer)
