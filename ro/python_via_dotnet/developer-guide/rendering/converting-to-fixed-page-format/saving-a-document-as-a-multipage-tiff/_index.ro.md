---
title: Salvarea unui Document ca pagină multiplă TIFF
second_title: Aspose.Words pentru Python via .NET
articleTitle: Salvarea unui Document ca pagină multiplă TIFF
linktitle: Salvarea unui Document ca pagină multiplă TIFF
description: "Convertiți un document într-o pagină multiplă TIFF Folosind Python. Pentru a determina modul în care documentul este afișat pe imagine, trebuie să specificați opțiuni suplimentare: rezoluție, număr de pagini, binarizare a imaginii etc."
type: docs
weight: 30
url: /ro/python-net/saving-a-document-as-a-multipage-tiff/
---

Când lucrați cu documente, de multe ori trebuie să vă convertiți documentul într-un fișier(E) imagine raster. Acest lucru este relevant mai ales dacă trebuie să vă prezentați documentul într-un format lizibil și imprimabil, dar nu editabil. De exemplu, puteți utiliza o imagine raster a primei pagini a documentului dvs. ca previzualizare. Acest articol descrie modul de conversie a unui document într – o imagine raster folosind exemplul formatului TIFF - unul dintre cele mai populare formate de imagine.

## Conversia DOC în mai multe pagini TIFF

În Aspose.Words, Conversia de la DOC la TIFF poate fi efectuată cu o singură linie de cod, prin simpla trecere a căii "salvați în" și a extensiei de fișier relevante la metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) derivă automat [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Din extensia de nume de fișier specificată în cale. Următorul exemplu demonstrează cum se convertește un document în formatul TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Specificarea Opțiunilor Suplimentare La Redarea TIFF

De multe ori trebuie să specificați opțiuni suplimentare, care afectează rezultatul randării. În acest scop, utilizați clasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), care conține proprietăți care determină modul în care documentul este afișat pe imagine. Puteți specifica următoarele:

- Salvați formatul pentru a determina lista de opțiuni disponibile ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Rezoluție ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Număr de pagini ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Setări de culoare și iluminare ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Calitatea imaginii ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Metoda utilizată pentru binarizarea imaginii ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Formatul pixelilor pentru imaginile generate ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows Manipularea metafilelor de către Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Opțiuni suplimentare pe care le puteți vedea în clasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

Următorul exemplu arată cum să convertiți DOC în TIFF cu opțiuni configurate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Prag pentru binarizarea TIFF

O imagine TIFF poate fi salvată în format 1bpp b / w setând proprietatea [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) la tipul de format pixel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) și proprietatea [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) fie la [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3), fie la [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Pentru segmentarea imaginii, Aspose.Words folosește cea mai simplă metodă - prag. Această metodă convertește o imagine TIFF la scară gri într-o imagine binară, folosind o valoare de prag. Prin urmare, atunci când un document trebuie convertit în formatul de fișier TIFF, este posibil să obțineți sau să setați pragul pentru binarizarea TIFF prin proprietatea [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Valoarea implicită pentru această proprietate este setată la 128, iar cu cât această valoare este mai mare, cu atât imaginea este mai întunecată.

Următorul exemplu arată cum se efectuează binarizarea TIFF cu un prag specificat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Mai jos puteți compara imaginile pe care TIFF binarizarea a fost efectuată la diferite valori de prag:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
