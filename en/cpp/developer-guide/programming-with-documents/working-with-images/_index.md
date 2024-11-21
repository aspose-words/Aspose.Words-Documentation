---
title: Working with Images in C++
second_title: Aspose.Words for C++
articleTitle: Working with Images
linktitle: Working with Images
type: docs
description: "Introduction to Image feature, how to create and manipulate image using C++."
weight: 300
url: /cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words allows users to work with images in a very flexible way. In this article, you can explore only some of the possibilities of working with images.

## How to Extract Images from a Document

All images are stored inside **Shape** nodes in a [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). To extract all images or images having a specific type from the document, follow these steps:

- Use the [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) method to select all **Shape** nodes.
- Iterate through resulting node collections.
- Check the [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) boolean property.
- Extract image data using the [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) property.
- Save image data to a file.

The following code example shows how to extract images from a document and save them as files:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Saving Images as WMF

Aspose.Words provides functionality to save all the available images in a document to [WMF ](https://docs.fileformat.com/image/wmf/)format while converting DOCX to RTF.

The following code example shows how to save images as WMF with RTF save options:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
