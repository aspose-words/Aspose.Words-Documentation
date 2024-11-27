---
title: Запазване на документ като многослойна страница TIFF в C++
second_title: Aspose.Words за C++
articleTitle: Запазване на документ като многослойна страница TIFF
linktitle: Запазване на документ като многослойна страница TIFF
description: "Конвертирайте документ в няколко страници TIFF, като използвате C++. За да определите как документът се показва на изображението, трябва да зададете допълнителни опции: резолюция, брой страници, бинаризация на изображението и т.н."
type: docs
weight: 40
url: /bg/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Когато работите с документи, често трябва да конвертирате вашия документ в растерен(и) файл (ове) с изображения. Това е особено важно, ако трябва да представите документа си в четлив и печатен, но не и редактируем формат. Например можете да използвате растерно изображение на първата страница на документа като визуализация. Тази статия описва как да конвертирате документ в растерно изображение, като използвате примера на формат TIFF – един от най-популярните формати на изображения.

## Конвертиране на DOC в много страници TIFF

В Aspose.Words преобразуването от DOC в TIFF може да се извърши с един ред код, като просто се премине пътят "Запиши до" и съответното разширение на файла към метода [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Методът **Save** автоматично извлича `SaveFormat` от разширението на името на файла, посочено в пътя. Следващият пример показва как да конвертирате документ във формат TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Задаване На Допълнителни Опции При Рендиране TIFF

Често трябва да посочите допълнителни опции, които влияят върху резултата от рендирането. За тази цел използвайте клас [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), който съдържа свойства, които определят как документът да се показва на изображението. Можете да зададете следното:

- Запазване на формат за определяне на списъка с налични опции ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Резолюция ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Брой страници ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Настройки за цвят и осветление ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Качество на изображението ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Метод, използван за бинаризиране на изображението ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Пикселен формат за генерирани изображения ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows Работа с метафили от Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Допълнителни опции, които можете да видите в клас **ImageSaveOptions**

Следващият пример показва как да конвертирате DOC в TIFF С конфигурирани опции:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Праг за TIFF Бинаризация

Изображение TIFF може да бъде запазено в 1bpp ч/б формат, като зададете свойството [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) на Format1bppIndexed пикселен формат, а свойството `TiffCompression` или Ccitt3, или Ccitt4.

За сегментиране на изображения Aspose.Words използва най - простия метод-прагова стойност. Този метод преобразува сиво изображение TIFF в двоично изображение, като използва прагова стойност. Следователно, когато даден документ трябва да бъде конвертиран във файлов формат TIFF, е възможно да се получи или зададе праг за TIFF бинаризация чрез свойството [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Стойността по подразбиране за това свойство е зададена на 128 и колкото по-висока е тази стойност, толкова по-тъмно е изображението.

Следващият пример показва как да извършите TIFF бинаризация с определен праг:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

По-долу можете да сравните изображения, на които е извършена бинаризация TIFF при различни прагови стойности:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
