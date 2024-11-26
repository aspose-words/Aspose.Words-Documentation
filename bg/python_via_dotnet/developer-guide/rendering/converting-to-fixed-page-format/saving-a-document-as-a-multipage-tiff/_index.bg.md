---
title: Запис на документ като Multipage TIFF
second_title: Aspose.Words вместо Python via .NET
articleTitle: Запис на документ като Multipage TIFF
linktitle: Запис на документ като Multipage TIFF
description: "Конвертиране на документ в много страници TIFF, използвайки Python. За да определите как документът се показва на изображението, трябва да посочите допълнителни опции: резолюция, брой страници, бинаризация на изображения и др."
type: docs
weight: 30
url: /bg/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Когато работите с документи, често трябва да конвертирате документа си в образен файл на Raster ("s). Това е особено важно, ако трябва да представите вашия документ в четем и печатен формат, но не може да бъде редактиран. Например, можете да използвате образ на първата страница от вашия документ за преглед. Тази статия описва как да конвертирате документ в образ на Raster, като използвате примера на формат TIFF, един от най-популярните формати на изображения.

## Конвертиране на DOC към Multi- Page TIFF

В Aspose.Words, Преобразуването от DOC към TIFF може да се извърши с един ред код, като просто се премине към пътя на гонката и съответното разширение на файла към [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. На [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод автоматично получава [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) от разширението на файла, посочено в пътя. Следният пример показва как да се превърне документ във формат TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Посочване на допълнителни настройки при предаване на TIFF

Често трябва да посочите допълнителни опции, които влияят на резултата от предаването. За тази цел използвайте [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас, който съдържа свойства, които определят как документът се показва на изображението. Можете да посочите следното:

- Запис на формат за определяне на списъка на наличните опции ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Резолюция ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Брой страници ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Цветни и осветителни настройки ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Качество на изображението ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Метод, използван за бинаризиране на изображението ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Пикселов формат за генерирани изображения ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows metafiles обработка чрез Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Допълнителни опции, които можете да видите в [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас

Следният пример показва как да се превърне DOC да TIFF с конфигурирани опции:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Праг за бинаризация на TIFF

Изображение на TIFF може да бъде записано във формат 1bpp b/w чрез настройка на [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) собственост на [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) вид формат на пиксела и [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) собственост на или [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) или [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

За сегментация на изображението, Aspose.Words използва най-простия метод за прагиране. Този метод превръща сиво-мащабно TIFF изображение в двоично изображение, използвайки гранична стойност. Следователно, когато документът трябва да бъде преобразуван във формат TIFF файл, е възможно да се получи или определи прагът за TIFF бинаризиране чрез [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) собственост. Стойността по подразбиране за този имот е настроена на 128, а колкото по-висока е тази стойност, толкова по-тъмно е изображението.

Следният пример показва как се извършва бинаризация на TIFF с определен праг:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

По-долу можете да сравните изображенията, на които е извършена бинаризация TIFF при различни гранични стойности:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
