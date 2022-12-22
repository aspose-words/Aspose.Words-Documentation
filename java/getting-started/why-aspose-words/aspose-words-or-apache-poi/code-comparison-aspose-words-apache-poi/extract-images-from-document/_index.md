---
title: Extract Images from Document
second_title: Aspose.Words for Java
articleTitle: Extract Images from Document
linktitle: Extract Images from Document
description: "Extract images from a document easily and fast instead of using Apache POI."
type: docs
weight: 30
url: /java/extract-images-from-document/
---

## Aspose.Words - Extract Images from Document

To extract all images or images having specific type from the document, follow these steps:

- Use the Document.GetChildNodes method to select all Shape nodes.
- Iterate through resulting node collections.
- Check the Shape.HasImage boolean property.
- Extract image data using the Shape.ImageData property.
- Save image data to a file.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeExtractImages.class);

Document doc = new Document(dataDir + "document.doc");

NodeCollection shapes = doc.getChildNodes(NodeType.SHAPE, true);
int imageIndex = 0;
for (Shape shape : (Iterable<Shape>) shapes)
{
    if (shape.hasImage())
    {
        String imageFileName = java.text.MessageFormat.format(
                        "Aspose.Images.{0}{1}", imageIndex, FileFormatUtil
                                        .imageTypeToExtension(shape.getImageData()
                                                        .getImageType()));
        shape.getImageData().save(dataDir + imageFileName);

        imageIndex++;
    }
}
{{< /highlight >}}

## Apache POI HWPF XWPF - Extract Images from Document

getAllPictures is used to extract images from the document.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheExtractImages.class);

HWPFDocument doc = new HWPFDocument(new FileInputStream(dataDir + "document.doc"));
List<Picture> pics = doc.getPicturesTable().getAllPictures();

for (int i = 0; i < pics.size(); i++)
{
    Picture pic = (Picture) pics.get(i);

    FileOutputStream outputStream = new FileOutputStream(dataDir + "Apache_" + pic.suggestFullFileName());
    outputStream.write(pic.getContent());
    outputStream.close();
}
{{< /highlight >}}

## Download Running Code

Download Extract Images from Document form any of the below mentioned social coding sites:
- [SourceForge](https://sourceforge.net/projects/asposeforapachepoi/files/Aspose.Words%20vs%20Apache%20POI%20WP/Extract%20Images%20%28Aspose.Words%20vs%20Apache%20POI%20WP%29.zip/download)
- [GitHub](https://github.com/asposemarketplace/Aspose_for_Apache_POI/releases/download/Words-vs-WP-1.2/Extract.Images.Aspose.Words.vs.Apache.POI.WP.zip)

{{% alert color="primary" %}}

For more details, visit [How to Extract Images from a Document](/words/java/working-with-images/#WorkingwithImages-HowtoExtractImagesfromaDocument).

{{% /alert %}}
