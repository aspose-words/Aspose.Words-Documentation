---
title: Salvarea unui Document ca pagină multiplă TIFF în C++
second_title: Aspose.Words pentru C++
articleTitle: Salvarea unui Document ca pagină multiplă TIFF
linktitle: Salvarea unui Document ca pagină multiplă TIFF
description: "Convertiți un document într-o pagină multiplă TIFF folosind C++. Pentru a determina modul în care documentul este afișat pe imagine, trebuie să specificați opțiuni suplimentare: rezoluție, număr de pagini, binarizare a imaginii etc."
type: docs
weight: 40
url: /ro/cpp/saving-a-document-as-a-multipage-tiff/
---

Când lucrați cu documente, de multe ori trebuie să vă convertiți documentul într-un fișier(E) imagine raster. Acest lucru este relevant mai ales dacă trebuie să vă prezentați documentul într-un format lizibil și imprimabil, dar nu editabil. De exemplu, puteți utiliza o imagine raster a primei pagini a documentului dvs. ca previzualizare. Acest articol descrie modul de conversie a unui document într – o imagine raster folosind exemplul formatului TIFF - unul dintre cele mai populare formate de imagine.

## Conversia DOC în mai multe pagini TIFF

În Aspose.Words, Conversia de la DOC la TIFF poate fi efectuată cu o singură linie de cod, prin simpla trecere a căii "salvați în" și a extensiei de fișier relevante la metoda [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Metoda **Save** derivă automat `SaveFormat` din extensia de nume de fișier specificată în cale. Următorul exemplu demonstrează cum se convertește un document în formatul TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Specificarea Opțiunilor Suplimentare La Redarea TIFF

De multe ori trebuie să specificați opțiuni suplimentare, care afectează rezultatul randării. În acest scop, utilizați clasa [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), care conține proprietăți care determină modul în care documentul este afișat pe imagine. Puteți specifica următoarele:

- Salvați formatul pentru a determina lista de opțiuni disponibile ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Rezoluție ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Număr de pagini ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Setări de culoare și iluminare ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Calitatea imaginii ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Metoda utilizată pentru binarizarea imaginii ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Formatul pixelilor pentru imaginile generate ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows Manipularea metafilelor de către Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Opțiuni suplimentare pe care le puteți vedea în clasa **ImageSaveOptions**

Următorul exemplu arată cum să convertiți DOC în TIFF cu opțiuni configurate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Prag pentru binarizarea TIFF

O imagine TIFF poate fi salvată în format 1bpp b / w setând proprietatea [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) la tipul de format pixel Format1bppIndexed și proprietatea `TiffCompression` fie la Ccitt3, fie la Ccitt4.

Pentru segmentarea imaginii, Aspose.Words folosește cea mai simplă metodă - prag. Această metodă convertește o imagine TIFF la scară gri într-o imagine binară, folosind o valoare de prag. Prin urmare, atunci când un document trebuie convertit în formatul de fișier TIFF, este posibil să obțineți sau să setați pragul pentru binarizarea TIFF prin proprietatea [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Valoarea implicită pentru această proprietate este setată la 128, iar cu cât această valoare este mai mare, cu atât imaginea este mai întunecată.

Următorul exemplu arată cum se efectuează binarizarea TIFF cu un prag specificat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Mai jos puteți compara imaginile pe care TIFF binarizarea a fost efectuată la diferite valori de prag:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
