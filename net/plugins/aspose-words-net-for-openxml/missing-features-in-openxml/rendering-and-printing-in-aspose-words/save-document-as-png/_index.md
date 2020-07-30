---
title: Save Document as PNG
type: docs
weight: 30
url: /net/save-document-as-png/
---

This will save all pages in separate PNG files.

{{< highlight csharp >}}

 // Sample infrastructure.

string exeDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + Path.DirectorySeparatorChar;

string dataDir = new Uri(new Uri(exeDir), @"../../Data/").LocalPath;

// Open the document.

Document doc = new Document(dataDir + "SaveAsPNG.doc");

//Create an ImageSaveOptions object to pass to the Save method

ImageSaveOptions options = new ImageSaveOptions(SaveFormat.Png);

options.Resolution = 160;

// Save each page of the document as Png.

for (int i = 0; i < doc.PageCount; i++)

{

    options.PageIndex = i;

    doc.Save(string.Format(dataDir + i + "SaveAsPNG out.Png", i), options);

}

{{< /highlight >}}
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
