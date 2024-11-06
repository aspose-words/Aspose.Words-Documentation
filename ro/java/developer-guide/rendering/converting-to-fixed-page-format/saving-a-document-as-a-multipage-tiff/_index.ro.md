---
title: Salvarea unui Document ca pagină multiplă TIFF în Java
second_title: Aspose.Words pentru Java
articleTitle: Salvarea unui Document ca pagină multiplă TIFF
linktitle: Salvarea unui Document ca pagină multiplă TIFF
description: "Convertiți un document într-o imagine raster, care este discutată pe exemplul formatului TIFF. Pentru a determina modul în care este afișat TIFF, trebuie să specificați opțiuni suplimentare: rezoluție, număr de pagini, binarizare imagine etc. folosind Java."
type: docs
weight: 30
url: /ro/java/saving-a-document-as-a-multipage-tiff/
---

Când lucrați cu documente, de multe ori trebuie să vă convertiți documentul într-un fișier(E) imagine raster. Acest lucru este relevant mai ales dacă trebuie să vă prezentați documentul într-un format lizibil și imprimabil, dar nu editabil. De exemplu, puteți utiliza o imagine raster a primei pagini a documentului dvs. ca previzualizare. Acest articol descrie modul de conversie a unui document într – o imagine raster folosind exemplul formatului TIFF - unul dintre cele mai populare formate de imagine.

## Conversia DOC în mai multe pagini TIFF

În Aspose.Words, Conversia de la DOC la TIFF poate fi efectuată cu o singură linie de cod, prin simpla trecere a căii "salvați în" și a extensiei de fișier relevante la metoda [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Metoda **Save** derivă automat `SaveFormat` din extensia de nume de fișier specificată în cale. Următorul exemplu demonstrează cum se convertește un document în formatul TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Specificarea Opțiunilor Suplimentare La Redarea TIFF

De multe ori trebuie să specificați opțiuni suplimentare, care afectează rezultatul randării. În acest scop, utilizați clasa [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), care conține proprietăți care determină modul în care documentul este afișat pe imagine. Puteți specifica următoarele:

- Salvați formatul pentru a determina lista de opțiuni disponibile ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Rezoluție ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Număr de pagini ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Setări de culoare și iluminare ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Calitatea imaginii ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Metoda utilizată pentru binarizarea imaginii ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formatul pixelilor pentru imaginile generate ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows Manipularea metafilelor de către Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opțiuni suplimentare pe care le puteți vedea în clasa **ImageSaveOptions**

Următorul exemplu arată cum să convertiți DOC în TIFF cu opțiuni configurate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Prag pentru binarizarea TIFF

O imagine TIFF poate fi salvată în format 1bpp b / w setând proprietatea [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) la tipul de format pixel Format1bppIndexed și proprietatea [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) fie la Ccitt3, fie la Ccitt4.

Pentru segmentarea imaginii, Aspose.Words folosește cea mai simplă metodă - prag. Această metodă convertește o imagine TIFF la scară gri într-o imagine binară, folosind o valoare de prag. Prin urmare, atunci când un document trebuie convertit în formatul de fișier TIFF, este posibil să obțineți sau să setați pragul pentru binarizarea TIFF prin proprietatea [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). Valoarea implicită pentru această proprietate este setată la 128, iar cu cât această valoare este mai mare, cu atât imaginea este mai întunecată.

Următorul exemplu arată cum se efectuează binarizarea TIFF cu un prag specificat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Mai jos puteți compara imaginile pe care TIFF binarizarea a fost efectuată la diferite valori de prag:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
