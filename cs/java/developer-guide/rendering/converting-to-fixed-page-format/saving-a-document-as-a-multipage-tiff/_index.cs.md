---
title: Uložení dokumentu jako multipage TIFF v Java
second_title: Aspose.Words místo Java
articleTitle: Uložení dokumentu jako multistránkového TIFF
linktitle: Uložení dokumentu jako multistránkového TIFF
description: "Převést dokument na rastrový obraz, který je diskutován na příkladu formátu TIFF. Chcete-li určit, jak se TIFF zobrazí, musíte zadat další možnosti: rozlišení, počet stránek, binární zobrazení obrazu, atd. pomocí Java."
type: docs
weight: 30
url: /cs/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Při práci s dokumenty často potřebujete převést svůj dokument na rastrový soubor s obrazem. To je zvláště důležité, pokud musíte předložit svůj dokument v čitelném a tiskitelném formátu, ale ne editovatelném. Například můžete použít rastrový obrázek první stránky vašeho dokumentu jako náhled. Tento článek popisuje, jak převést dokument do rastrového obrazu pomocí příkladu formátu TIFF? jeden z populárnějších formátů obrázku.

## Převod DOC na Multi-Page TIFF

In Aspose.Words, převod z DOC na TIFF lze provést s jedním řádkem kódu tak, že jednoduše přejde na cestu a příslušnou příponu souboru [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metoda. The **Save** Metoda automaticky odvozuje `SaveFormat` z přípony názvu souboru uvedené v cestě. Následující příklad ukazuje, jak převést dokument do formátu TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Upřesnění dodatečných možností při předávání TIFF

Často je třeba upřesnit další možnosti, které ovlivňují výsledek renderování. Pro tento účel použijte [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) třída, která obsahuje vlastnosti, které určují, jak je dokument zobrazen na obrázku. Můžete upřesnit následující:

- Uložit formát pro určení seznamu dostupných možností ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Usnesení ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Počet stran ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Nastavení barev a osvětlení ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Kvalita obrazu ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Metoda použitá k binarizování obrázku ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Pixel formát pro generované obrázky ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows Metafily manipulace Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Další možnosti, které můžete vidět v **ImageSaveOptions** třída

Následující příklad ukazuje, jak převést DOC na TIFF s nakonfigurovanými volbami:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Práh pro binarizaci TIFF

TIFF obrázek lze uložit ve formátu 1bpp b/w nastavením [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) vlastnost do formátu Format1bppIndexed typ formátu pixelů a [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) nemovitosti buď Ccitt3 nebo Ccitt4.

Pro segmentaci obrazu, Aspose.Words používá nejjednodušší metodu Tato metoda převádí šedivý TIFF obraz na binární obraz s použitím prahové hodnoty. Proto, pokud je třeba dokument převést na formát TIFF souboru, je možné získat nebo nastavit prahovou hodnotu pro TIFF binarisation prostřednictvím [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) majetek. Výchozí hodnota této vlastnosti je nastavena na 128, a čím vyšší tato hodnota, tím tmavší obraz.

Následující příklad ukazuje, jak provést TIFF binárizaci se stanovenou prahovou hodnotou:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Níže můžete porovnat obrázky, na kterých byla provedena binárizace TIFF při různých prahových hodnotách:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
