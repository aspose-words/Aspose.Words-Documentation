---
title: Resize Image in Word Document
type: docs
weight: 30
url: /net/resize-image-in-word-document/
---

In Aspose.Words the [**DocumentBuilder.InsertImage**](http://www.aspose.com/api/net/words/aspose.words.documentbuilder/insertimage/methods/9) (**String**) method is used to insert an image from a file or URL into the document. It allows different [methods ](http://www.aspose.com/api/net/words/aspose.words/documentbuilder/methods/insertimage/index)to insert an image.

Using [Shape ](http://www.aspose.com/api/net/words/aspose.words.drawing/shape)class you can create or modify shapes in a Microsoft Word document. ([ConvertUtil ](http://www.aspose.com/api/net/words/aspose.words/convertutil)Provides helper functions to convert between various measurement units, like Convert [inches to points](http://www.aspose.com/api/net/words/aspose.words/convertutil/methods/inchtopoint))
##### **Example**
**C#**

{{< highlight csharp >}}
Document doc = new Document();

// Create New Document
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Image Before Resize");
//insert image from disk
Shape shape = builder.InsertImage(@"../../data/aspose_Words-for-net.jpg");

// write text in document
builder.Write("ReSize image ");
shape = builder.InsertImage(@"../../data/aspose_Words-for-net.jpg");

// Chaging image size.(ConvertUtil Provides helper functions to convert between various measurement units. like Converts inches to points.)
shape.Width = ConvertUtil.InchToPoint(0.5);
shape.Height = ConvertUtil.InchToPoint(0.5);

// save document on file location
builder.Document.Save("ImageReSize.doc");
{{< /highlight >}}
## **Download Sample Code**
- [CodePlex](https://asposewordsnpoi.codeplex.com/downloads/get/1556914)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19)
## **Download Running Code**
- [CodePlex](https://asposewordsnpoi.codeplex.com/SourceControl/latest#Missing Features of NPOI HWPF and XWPF/Aspose.Words/08-WorkingWithImages/08.03-ImageReSize/)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/08.03-ImageReSize.zip)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)

{{% alert color="primary" %}} 

For more details, visit [Inserting Image into a Document](https://docs.aspose.com/words/net/working-with-images/#inserting-an-image).

{{% /alert %}}
