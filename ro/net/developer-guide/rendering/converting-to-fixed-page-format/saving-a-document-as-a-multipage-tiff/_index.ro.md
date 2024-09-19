---
title: Salvarea unui document ca un fișier TIFF cu pagini multiple în C#
second_title: Aspose.Words pentru .NET
articleTitle: Salvarea unui document ca un multipag TIFF
linktitle: Salvarea unui document ca un multipag TIFF
description: "Convertaţi un document într-un fișier TIFF cu mai multe pagini folosind C#. Pentru a determina modul în care documentul este afișat pe imagine aveți nevoie să specificați opțiuni suplimentare: rezoluție, număr de pagini, binarizare a imaginii, etc."
type: docs
weight: 30
url: /ro/net/saving-a-document-as-a-multipage-tiff/
---

Când lucrezi cu documente, ai adesea nevoie să convertești documentul tău într-un fișier de imagine raster. Acest lucru este deosebit de important dacă trebuie să prezinți documentul într-un format care să fie citibil și imprimabil, dar nu editabil. De exemplu poți folosi o imagine raster cu prima pagină a documentului tău ca o previzualizare. Acest articol descrie modul de conversie a unui document într-o imagine raster folosind exemplul formatului TIFF - unul dintre cele mai populare formate de imagini.

## Conversia din DOC în Multi-Page TIFF

În Aspose.Words, conversia de la DOC la TIFF poate fi efectuată cu o linie de cod, prin simpla trecere a căii "salvează în" și a extensiei relevante de fișier către metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save)". Metoda **Save** derivă automat atributul `SaveFormat` din extensia numelui fișierului indicat în calea fișierului. Exemplul de mai jos demonstrează cum se convertește un document în format TIFF:

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "save-as-tiff.cs" >}}

## Specificarea Opțiunilor suplimentare la redarea TIFF-urilor

De multe ori trebuie să specifici opţiuni suplimentare care afectează rezultatul redării. Pentru acest scop, utilizați clasa [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), care conține proprietăți care determină modul în care documentul este afișat pe imagine. Puteți specifica următoarele:

- Salvați formatul pentru a determina lista opțiunilor disponibile ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Rezoluție ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
Numărul de pagini ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))"
- Setări de culoare și iluminare ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Calitatea imaginii ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Metoda utilizată pentru a binaire imagine ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Format pixel pentru imagini generate ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows gestionarea metafilelor de către Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Opțiuni suplimentare pe care le puteți vedea în clasa **ImageSaveOptions**

Exemplul următor arată cum să converţi DOC în TIFF cu opţiunile configurate:

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "get-tiff-page-range.cs" >}}

## Prag pentru binarizarea TIFF-ului

O imagine TIFF poate fi salvată în format 1BPP B/W setând proprietatea [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) la tipul de format pixelului indexat Format1bpp și proprietatea [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) la fie Ccitt3 fie Ccitt4.

Pentru segmentarea imaginii, Aspose.Words folosește cea mai simplă metodă - pragurile. Acest metod convertează o imagine monocromatică TIFF într-o imagine binară folosind o valoare de prag. Prin urmare, atunci când un document trebuie convertit în formatul de fișier TIFF, este posibil să se obțină sau să se stabilească pragul pentru TIFF binarizare prin proprietatea [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). Valoarea implicită pentru această proprietate este setată la 128, iar cu cât valoarea este mai mare, cu atât imaginea va fi mai întunecată.

Exemplul de mai jos arată cum se efectuează binarizarea TIFF cu un prag specificat:

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "expose-threshold-control.cs" >}}

Aici poți compara imaginile la care a fost aplicată binarizarea TIFF la diferite valori de prag:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
