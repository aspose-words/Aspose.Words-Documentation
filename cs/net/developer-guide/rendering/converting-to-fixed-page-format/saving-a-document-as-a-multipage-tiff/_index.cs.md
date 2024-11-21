---
title: Uložení dokumentu jako multipage TIFF v C#
second_title: Aspose.Words místo .NET
articleTitle: Uložení dokumentu jako multistránkového TIFF
linktitle: Uložení dokumentu jako multistránkového TIFF
description: "Převést dokument na vícestránkový TIFF pomocí C#. Chcete-li určit, jak je dokument zobrazen na obrázku, musíte zadat další možnosti: rozlišení, počet stránek, binarizování obrazu, atd."
type: docs
weight: 30
url: /cs/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Při práci s dokumenty často potřebujete převést svůj dokument na rastrový soubor s obrazem. To je zvláště důležité, pokud musíte předložit svůj dokument v čitelném a tiskovatelném formátu, ale ne editovatelném. Například můžete použít rastrový obrázek první stránky vašeho dokumentu jako náhled. Tento článek popisuje, jak převést dokument do rastrového obrazu pomocí příkladu formátu TIFF? jeden z populárnějších formátů obrázku.

## Převod DOC na Multi-Page TIFF

In Aspose.Words, převod z DOC na TIFF lze provést s jedním řádkem kódu tak, že jednoduše přejde na cestu a příslušnou příponu souboru [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) metoda. • **Save** Metoda automaticky odvozuje `SaveFormat` z přípony názvu souboru uvedené v cestě. Následující příklad ukazuje, jak převést dokument do formátu TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Upřesnění dodatečných možností při předávání TIFF

Často je třeba upřesnit další možnosti, které ovlivňují výsledek renderování. Pro tento účel použijte [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) třída, která obsahuje vlastnosti, které určují, jak je dokument zobrazen na obrázku. Můžete upřesnit následující:

- Uložit formát pro určení seznamu dostupných možností ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Usnesení ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Počet stran ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Nastavení barev a osvětlení ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Kvalita obrazu ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Metoda použitá k binarizování obrázku ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Pixel formát pro generované obrázky ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows Metafily manipulace Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Další možnosti, které můžete vidět v **ImageSaveOptions** třída

Následující příklad ukazuje, jak převést DOC na TIFF s nakonfigurovanými volbami:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Práh pro binarizaci TIFF

TIFF obrázek lze uložit ve formátu 1bpp b/w nastavením [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) vlastnost do formátu Format1bppIndexed typ formátu pixelů a [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) vlastnictví buď Ccitt3 nebo Ccitt4.

Pro segmentaci obrazu, Aspose.Words používá nejjednodušší metodu Tato metoda převádí šedý TIFF obraz na binární obraz s použitím prahové hodnoty. Proto, pokud je třeba dokument převést na formát TIFF souboru, je možné získat nebo nastavit práh pro TIFF binarisation prostřednictvím [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) majetek. Výchozí hodnota pro tuto vlastnost je nastavena na 128 a čím vyšší tato hodnota, tím tmavší obraz.

Následující příklad ukazuje, jak provést TIFF binárizaci se stanovenou prahovou hodnotou:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Níže můžete porovnat obrázky, na kterých byla provedena binárizace TIFF při různých prahových hodnotách:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
