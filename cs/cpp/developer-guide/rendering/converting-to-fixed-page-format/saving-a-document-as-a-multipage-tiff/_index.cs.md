---
title: Uložení dokumentu jako vícestránkové TIFF v C++
second_title: Aspose.Words pro C++
articleTitle: Uložení dokumentu jako vícestránkové TIFF
linktitle: Uložení dokumentu jako vícestránkové TIFF
description: "Převeďte dokument na vícestránkový TIFF pomocí C++. Chcete-li zjistit, jak je dokument zobrazen na obrázku, musíte zadat další možnosti: rozlišení, počet stránek, binarizace obrázků atd."
type: docs
weight: 40
url: /cs/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Při práci s dokumenty často potřebujete převést dokument na rastrový obrazový soubor(y). To je zvláště důležité, pokud musíte dokument prezentovat ve čitelném a tisknutelném, ale ne upravitelném formátu. Jako náhled můžete například použít rastrový obrázek první stránky dokumentu. Tento článek popisuje, jak převést dokument na rastrový obrázek pomocí příkladu formátu TIFF – jednoho z nejpopulárnějších formátů obrázků.

## Převod DOC na vícestránkový TIFF

V Aspose.Words lze převod z DOC na TIFF provést jedním řádkem kódu jednoduchým předáním cesty "uložit do" a příslušné přípony souboru metodě [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Metoda **Save** automaticky odvozuje `SaveFormat` z přípony názvu souboru uvedené v cestě. Následující příklad ukazuje, jak převést dokument do formátu TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Zadání Dalších Možností Při Vykreslování TIFF

Často je třeba zadat další možnosti, které ovlivňují výsledek Vykreslování. K tomuto účelu použijte třídu [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), která obsahuje vlastnosti, které určují, jak je dokument zobrazen na obrázku. Můžete zadat následující:

- Uložte formát pro určení seznamu dostupných možností ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Usnesení ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Počet stránek ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Nastavení barev a osvětlení([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Kvalita obrazu([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Metoda použitá k binarizaci obrazu ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Formát pixelů pro generované obrázky ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows zpracování metasouborů pomocí Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Další možnosti, které můžete vidět ve třídě **ImageSaveOptions**

Následující příklad ukazuje, jak převést DOC na TIFF s nakonfigurovanými možnostmi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Prahová hodnota pro Binarizaci TIFF

Obrázek TIFF lze uložit v černobílém formátu 1bpp nastavením vlastnosti [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) na typ formátu Format1bppIndexed pixelů a vlastnosti `TiffCompression` na Ccitt3 nebo Ccitt4.

Pro segmentaci obrazu používá Aspose.Words nejjednodušší metodu-prahování. Tato metoda převádí obrázek šedé stupnice TIFF na binární obrázek pomocí prahové hodnoty. Proto, když je třeba dokument převést do formátu souboru TIFF, je možné získat nebo nastavit práh pro binarizaci TIFF pomocí vlastnosti [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Výchozí hodnota této vlastnosti je nastavena na 128 a čím vyšší je tato hodnota, tím tmavší je obrázek.

Následující příklad ukazuje, jak provést binarizaci TIFF se zadanou prahovou hodnotou:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Níže můžete porovnat obrázky, na kterých byla binarizace TIFF provedena při různých prahových hodnotách:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
