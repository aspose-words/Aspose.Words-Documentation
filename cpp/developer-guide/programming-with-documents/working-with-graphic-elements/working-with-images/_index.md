---
title: Working with Images
type: docs
weight: 150
url: /cpp/working-with-images/
---

## How to Extract Images from a Document

All images are stored inside Shape nodes in a Document. To extract all images or images having a specific type from the document, follow these steps:

- Use the Document.GetChildNodes method to select all **Shape** nodes.
- Iterate through resulting node collections.
- Check the Shape.HasImage boolean property.
- Extract image data using the Shape.ImageData property.
- Save image data to a file.

The code example given below shows how to extract images from a document and save them as files. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Saving Images as WMF

Aspose.Words provides functionality to save all the available images in a document to [WMF ](https://wiki.fileformat.com/image/wmf/)format while converting DOCX to RTF. The following code example demonstrates how to save images as WMF with RTF save options.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
