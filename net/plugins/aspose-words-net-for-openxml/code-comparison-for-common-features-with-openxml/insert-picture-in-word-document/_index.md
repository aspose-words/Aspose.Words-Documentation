---
title: Insert picture in Word document
type: docs
weight: 20
url: /net/insert-picture-in-word-document/
---

## OpenXML Word

Following are the namespaces we need to add:

{{< highlight csharp >}}
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using A = DocumentFormat.OpenXml.Drawing;
using DW = DocumentFormat.OpenXml.Drawing.Wordprocessing;
using PIC = DocumentFormat.OpenXml.Drawing.Pictures;
{{< /highlight >}}

In below code main function is **InsertAPicture** then a sub function **AddImageToBody** is use to insert image in body part of Word document.

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Insert picture - OpenXML.docx";
InsertAPicture(File, FilePath + "Aspose.Words.png");
public static void InsertAPicture(string document, string fileName)
{
    using (WordprocessingDocument wordprocessingDocument =
        WordprocessingDocument.Open(document, true))
    {
        MainDocumentPart mainPart = wordprocessingDocument.MainDocumentPart;
        ImagePart imagePart = mainPart.AddImagePart(ImagePartType.Jpeg);
        using (FileStream stream = new FileStream(fileName, FileMode.Open))
        {
            imagePart.FeedData(stream);
        }
        AddImageToBody(wordprocessingDocument, mainPart.GetIdOfPart(imagePart));
    }
}
private static void AddImageToBody(WordprocessingDocument wordDoc, string relationshipId)
{
    // Define the reference of the image.
    var element =
         new Drawing(
             new DW.Inline(
                 new DW.Extent() { Cx = 990000L, Cy = 792000L },
                 new DW.EffectExtent()
                 {
                     LeftEdge = 0L,
                     TopEdge = 0L,
                     RightEdge = 0L,
                     BottomEdge = 0L
                 },
                 new DW.DocProperties()
                 {
                     Id = (UInt32Value)1U,
                     Name = "Picture 1"
                 },
                 new DW.NonVisualGraphicFrameDrawingProperties(
                     new A.GraphicFrameLocks() { NoChangeAspect = true }),
                 new A.Graphic(
                     new A.GraphicData(
                         new PIC.Picture(
                             new PIC.NonVisualPictureProperties(
                                 new PIC.NonVisualDrawingProperties()
                                 {
                                     Id = (UInt32Value)0U,
                                     Name = "New Bitmap Image.jpg"
                                 },
                                 new PIC.NonVisualPictureDrawingProperties()),
                             new PIC.BlipFill(
                                 new A.Blip(
                                     new A.BlipExtensionList(
                                         new A.BlipExtension()
                                         {
                                             Uri =
                                               "{28A0092B-C50C-407E-A947-70E740481C1C}"
                                         })
                                 )
                                 {
                                     Embed = relationshipId,
                                     CompressionState =
                                     A.BlipCompressionValues.Print
                                 },
                                 new A.Stretch(
                                     new A.FillRectangle())),
                             new PIC.ShapeProperties(
                                 new A.Transform2D(
                                     new A.Offset() { X = 0L, Y = 0L },
                                     new A.Extents() { Cx = 990000L, Cy = 792000L }),
                                 new A.PresetGeometry(
                                     new A.AdjustValueList()
                                 ) { Preset = A.ShapeTypeValues.Rectangle }))
                     ) { Uri = "http://schemas.openxmlformats.org/drawingml/2006/picture" })
             )
             {
                 DistanceFromTop = (UInt32Value)0U,
                 DistanceFromBottom = (UInt32Value)0U,
                 DistanceFromLeft = (UInt32Value)0U,
                 DistanceFromRight = (UInt32Value)0U,
                 EditId = "50D07946"
             });

    // Append the reference to body, the element should be in a Run.
    wordDoc.MainDocumentPart.Document.Body.AppendChild(new Paragraph(new Run(element)));
}
{{< /highlight >}}

### Aspose.Words

**DocumentBuilder** is a powerful class that is associated with a **Document** and allows dynamic document building from scratch or the addition of new elements to an existing document. It provides methods to insert text, paragraphs, lists, tables, images and other contents, specification of font, paragraph, and section formatting, and other things. Using **DocumentBuilder** is somewhat similar in concept to using the **StringBuilder** class of the .NET Framework.

**DocumentBuilder** complements classes and methods available in the Aspose.Words **Document Object Model** by simplifying most common document building tasks, such as inserting text, tables, fields and hyperlinks.

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Insert picture - Aspose.docx";
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertImage(FilePath + "Aspose.Words.png",
    RelativeHorizontalPosition.Margin,
    100,
    RelativeVerticalPosition.Margin,
    100,
    200,
    100,
    WrapType.Square);
doc.Save(File);
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Insert%20picture%20in%20Word%20document%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/Insert%20picture%20in%20Word%20document%20\(Aspose.Words\).zip)
