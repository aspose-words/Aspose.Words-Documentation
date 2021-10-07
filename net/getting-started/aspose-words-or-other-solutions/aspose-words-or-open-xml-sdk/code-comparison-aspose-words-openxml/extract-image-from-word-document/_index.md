---
title: Extract Image from Word Document
type: docs
weight: 200
url: /net/extract-image-from-word-document/
---

## OpenXML

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string File = FilePath + "Extract Image - OpenXML.docx";
  using (WordprocessingDocument doc = WordprocessingDocument.Open(fileName, false))
  {
     int imgCount = doc.MainDocumentPart.GetPartsCountOfType<ImagePart>();
     if (imgCount > 0)
     {
        List<ImagePart> imgParts = new List<ImagePart>(doc.MainDocumentPart.ImageParts);
        foreach (ImagePart imgPart in imgParts)
        {
          Image img = Image.FromStream(imgPart.GetStream());
          string ImgfileName = imgPart.Uri.OriginalString.Substring(imgPart.Uri.OriginalString.LastIndexOf("/") + 1);
          img.Save(FilePath+ImgfileName);
        }
      }
   }
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string File = FilePath + "Extract Image - Aspose.docx";
  Document doc = new Document(fileName);

  // Save document as DOC in memory
  MemoryStream stream = new MemoryStream();
  doc.Save(stream, SaveFormat.Doc);

  // Reload document as DOC to extract images.
  Document doc2 = new Document(stream);
  NodeCollection shapes = doc2.GetChildNodes(NodeType.Shape, true);
  int imageIndex = 0;
  foreach (Shape shape in shapes)
  {
    if (shape.HasImage)
    {
       string imageFileName = string.Format("Image.ExportImages.{0}_out_{1}", imageIndex, FileFormatUtil.ImageTypeToExtension(shape.ImageData.ImageType));
       shape.ImageData.Save(FilePath + imageFileName);
       imageIndex++;
    }
  }
{{< /highlight >}}

## Download Running Example

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)


## Download Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml#Aspose.Words%20VS%20OpenXML/Extract%20Image/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML/Extract%20Image)

{{% alert color="primary" %}} 

For more information about Aspose.Words features please visit [How to Extract Images from a Document](https://docs.aspose.com/words/net/working-with-images/#how-to-extract-images-from-a-document)

{{% /alert %}}
