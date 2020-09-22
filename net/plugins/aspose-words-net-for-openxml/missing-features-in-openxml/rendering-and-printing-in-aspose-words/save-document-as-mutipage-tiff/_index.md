---
title: Save Document as MutiPage TIFF
type: docs
weight: 40
url: /net/save-document-as-mutipage-tiff/
---

One of the useful things you may need to do with your document is a conversion to image file(s). For example if you have to present your document in a readable and printable but not editable format (e.g. for publication on the Web). One of the simple approaches you could use is a conversion to a multipage **TIFF** file.

**Solution: Converting DOC to Multipage TIFF** 
In **Aspose.Words** such task can be performed literally by one line of code by simply passing the path of where to save including the file extension to the Document.Save method. The Document.Save method automatically derives the SaveFormat from the extension specified in the filename passed to it.

Converting single document to tiff rendered all pages together instead of on different pages.

Often you may also require specifying certain options with regards to how documents are rendered to image. The Document.Save method has overloads that accept an object of a class derived from the SaveOptions class. In this case we should pass an object which derives from the ImageSaveOptions class in order to control the options used for rendering. This class contains the properties which define the how a document is rendered to an image.

1. Create a new instance of the ImageSaveOptions class and pass the SaveFormat type of the image type to be rendered. In this case we pass SaveFormat.Tiff to produce an TIFF image.
1. Set the options that control how the document will be rendered, such as ImageSaveOptions.PaperColor .
1. Pass the ImageSaveOptions object to one of the several Document.Save overloads that accept a SaveOptions object.

{{< highlight csharp >}}

// Sample infrastructure.
string exeDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + Path.DirectorySeparatorChar;
string dataDir = new Uri(new Uri(exeDir), @"../../Data/").LocalPath;

// Open the document.
Document doc = new Document(dataDir + "SaveAsMutiPageTiff.doc");
//ExStart
//ExId:SaveAsMultipageTiff_save
//ExSummary:Convert document to TIFF.

// Save the document as multipage TIFF.
doc.Save(dataDir + "SaveAsMutiPageTiff Out.tiff");
//ExEnd
//ExStart
//ExId:SaveAsMultipageTiff_SaveWithOptions
//ExSummary:Convert to TIFF using customized options        
//Create an ImageSaveOptions object to pass to the Save method
ImageSaveOptions options = new ImageSaveOptions(SaveFormat.Tiff);
options.PageIndex = 0;
options.PageCount = doc.PageCount;
options.TiffCompression = TiffCompression.Ccitt4;
options.Resolution = 160;
doc.Save(dataDir + "TiffFileWithOptions Out.tiff", options);
//ExEnd
{{< /highlight >}}

There are many properties available in the ImageSaveOptions class which allows control over how the image is rendered. The ones that appear in this sample are discussed in detail below.

- The **ImageSaveOptions.PageIndex** property can be set to specify the start page to be rendered using the 0-base number format. For instance, in a three page document the first page would be referenced by the index “0” while the last page would be referenced by the index “2”. By default this property is set to “0”
- The **ImageSaveOptions.PageCount** property specifies the number of pages to convert. If you save a TIFF file and this parameter is greater than 1 then a multipage TIFF file will be created. If you save multiple pages in a format other than TIFF, i.e in JPEG format, then only the first page will be rendered. By default this is set to the total number of pages in the document.
- The **ImageSaveOptions.Resolution** property can be set to specify which resolution the document is rendered to. This setting affects any image format being rendered to. By default this is set to 96.
- The **ImageSaveOptions.TiffCompression** properly sets which compression method to apply when saving to the TIFF format. By default this is set as **TiffCompression.Lzw**

## **Download Sample Code**

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
