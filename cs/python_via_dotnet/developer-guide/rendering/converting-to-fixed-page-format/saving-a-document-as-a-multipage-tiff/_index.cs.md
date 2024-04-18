---
title: Uložení dokumentu jako multistránkového TIFF
second_title: Aspose.Words místo Python via .NET
articleTitle: Uložení dokumentu jako multistránkového TIFF
linktitle: Uložení dokumentu jako multistránkového TIFF
description: "Převést dokument na vícestránkový TIFF pomocí Python. Chcete-li určit, jak je dokument zobrazen na obrázku, musíte zadat další možnosti: rozlišení, počet stránek, binarizování obrazu, atd."
type: docs
weight: 30
url: /cs/python-net/saving-a-document-as-a-multipage-tiff/
---

Při práci s dokumenty často potřebujete převést svůj dokument na rastrový soubor s obrazem. To je zvláště důležité, pokud musíte předložit svůj dokument v čitelném a tiskovatelném formátu, ale ne editovatelném. Například můžete použít rastrový obrázek první stránky vašeho dokumentu jako náhled. Tento článek popisuje, jak převést dokument do rastrového obrazu pomocí příkladu formátu TIFF? jeden z populárnějších formátů obrázku.

## Převod DOC na Multi-Page TIFF

In Aspose.Words, převod z DOC na TIFF lze provést s jedním řádkem kódu tak, že jednoduše přejde na cestu a příslušnou příponu souboru [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda. • [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) Metoda automaticky odvozuje [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) z přípony názvu souboru uvedené v cestě. Následující příklad ukazuje, jak převést dokument do formátu TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Upřesnění dodatečných možností při předávání TIFF

Často je třeba upřesnit další možnosti, které ovlivňují výsledek renderování. Pro tento účel použijte [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) třída, která obsahuje vlastnosti, které určují, jak je dokument zobrazen na obrázku. Můžete upřesnit následující:

- Uložit formát pro určení seznamu dostupných možností ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Usnesení ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Počet stran ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Nastavení barev a osvětlení ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Kvalita obrazu ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Metoda použitá k binarizování obrázku ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Pixel formát pro generované obrázky ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows Metafily manipulace Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Další možnosti, které můžete vidět v [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) třída

Následující příklad ukazuje, jak převést DOC na TIFF s nakonfigurovanými volbami:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Práh pro binarizaci TIFF

TIFF obrázek lze uložit ve formátu 1bpp b/w nastavením [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) majetek [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) typ formátu pixelů a [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) vlastnictví buď [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) nebo [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Pro segmentaci obrazu, Aspose.Words používá nejjednodušší metodu Tato metoda převádí šedý TIFF obraz na binární obraz s použitím prahové hodnoty. Proto, pokud je třeba dokument převést na formát TIFF souboru, je možné získat nebo nastavit práh pro TIFF binarisation prostřednictvím [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) majetek. Výchozí hodnota pro tuto vlastnost je nastavena na 128 a čím vyšší tato hodnota, tím tmavší obraz.

Následující příklad ukazuje, jak provést TIFF binárizaci se stanovenou prahovou hodnotou:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Níže můžete porovnat obrázky, na kterých byla provedena binárizace TIFF při různých prahových hodnotách:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
