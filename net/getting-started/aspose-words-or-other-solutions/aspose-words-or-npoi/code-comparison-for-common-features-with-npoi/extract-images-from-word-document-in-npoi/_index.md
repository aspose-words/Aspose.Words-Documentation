---
title: Extract Images from Word Document in NPOI
type: docs
weight: 10
url: /net/extract-images-from-word-document-in-npoi/
---

## Aspose.Words - Extract Images from Document

To extract all images or images having specific type from the document, follow these steps:

- Use the **Document.GetChildNodes** method to select all **Shape** nodes.
- Iterate through resulting node collections.
- Check the **Shape.HasImage** boolean property.
- Extract image data using the **Shape.ImageData** property.
- Save image data to a file.

**C#**

{{< highlight csharp >}}
 Document wordDocument = new Document("Extract Images from Word Document.doc");
 NodeCollection pictures = wordDocument.GetChildNodes(NodeType.Shape, true);
 int imageindex = 0;
 foreach (Shape shape in pictures)
 {
    if (shape.HasImage)
    {
       string imageFileName = "data/Aspose_" + (imageindex++).ToString() + "_" + shape.Name;
       shape.ImageData.Save(imageFileName);
    }
  }
{{< /highlight >}}

## NPOI HWPF XWPF - Extract Images from Document

Below is the code for extracting images from word document:

**C#**

{{< highlight csharp >}}
 XWPFDocument doc = new XWPFDocument(new FileStream("data/Extract Images from Word Document.doc",FileMode.Open));
 IList<XWPFPictureData> pics = doc.AllPictures;
 foreach (XWPFPictureData pic in pics)
 {
    FileStream outputStream = new FileStream("data/NPOI_" + pic.FileName,FileMode.OpenOrCreate);
    byte[] picData= pic.Data;
    outputStream.Write(picData, 0, picData.Length);
    outputStream.Close();
 }
{{< /highlight >}}

## Download Running Code

Download **Extract Images from Document** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Extract%20Images%20from%20Word%20Document)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-vs-NPOI-HWPF-1ac73164/view/SourceCode#content)

## Download Sample Code

Download **Extract Images from Document** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-vs-NPOI-HWPF-1ac73164/view/SourceCode#content)
