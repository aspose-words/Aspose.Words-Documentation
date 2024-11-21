---
title: Запис на документ като Multipage TIFF в C#
second_title: Aspose.Words вместо .NET
articleTitle: Запис на документ като Multipage TIFF
linktitle: Запис на документ като Multipage TIFF
description: "Конвертиране на документ в много страници TIFF, използвайки C#. За да определите как документът се показва на изображението, трябва да посочите допълнителни опции: резолюция, брой страници, бинаризация на изображения и др."
type: docs
weight: 30
url: /bg/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Когато работите с документи, често трябва да конвертирате документа си в образен файл на Raster ("s). Това е особено важно, ако трябва да представите вашия документ в четем и печатен формат, но не може да бъде редактиран. Например, можете да използвате образ на първата страница от вашия документ за преглед. Тази статия описва как да конвертирате документ в образ на Raster, като използвате примера на формат TIFF, един от най-популярните формати на изображения.

## Конвертиране на DOC към Multi- Page TIFF

В Aspose.Words, Преобразуването от DOC към TIFF може да се извърши с един ред код, като просто се премине към пътя на гонката и съответното разширение на файла към [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) метод. На **Save** метод автоматично получава `SaveFormat` от разширението на файла, посочено в пътя. Следният пример показва как да се превърне документ във формат TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Посочване на допълнителни настройки при предаване на TIFF

Често трябва да посочите допълнителни опции, които влияят на резултата от предаването. За тази цел използвайте [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) клас, който съдържа свойства, които определят как документът се показва на изображението. Можете да посочите следното:

- Запис на формат за определяне на списъка на наличните опции ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Резолюция ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Брой страници ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Цветни и осветителни настройки ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Качество на изображението ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Метод, използван за бинаризиране на изображението ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Пикселов формат за генерирани изображения ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows metafiles обработка чрез Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Допълнителни опции, които можете да видите в **ImageSaveOptions** клас

Следният пример показва как да се превърне DOC да TIFF с конфигурирани опции:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Праг за бинаризация на TIFF

Изображение на TIFF може да бъде записано във формат 1bpp b/w чрез настройка на [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) Имотът да Format1bppIndexed пиксел формат тип, и [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) собственост на Cciitt3 или Cciitt4.

За сегментация на изображението, Aspose.Words използва най-простия метод за прагиране. Този метод превръща сиво-мащабно TIFF изображение в двоично изображение, използвайки гранична стойност. Следователно, когато документът трябва да бъде преобразуван във формат TIFF файл, е възможно да се получи или определи прагът за TIFF бинаризиране чрез [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) собственост. Стойността по подразбиране за този имот е настроена на 128, а колкото по-висока е тази стойност, толкова по-тъмно е изображението.

Следният пример показва как се извършва бинаризация на TIFF с определен праг:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

По-долу можете да сравните изображенията, на които е извършена бинаризация TIFF при различни гранични стойности:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
