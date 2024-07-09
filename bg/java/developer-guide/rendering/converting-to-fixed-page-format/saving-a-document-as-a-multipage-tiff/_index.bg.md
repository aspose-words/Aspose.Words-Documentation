---
title: Запис на документ като Multipage TIFF в Java
second_title: Aspose.Words вместо Java
articleTitle: Запис на документ като Multipage TIFF
linktitle: Запис на документ като Multipage TIFF
description: "Конвертиране на документ в образ на растер, който се обсъжда на примера на TIFF формат. За да определите как се показва TIFF, трябва да посочите допълнителни опции: резолюция, брой страници, бинаризация на изображенията и т.н. Java."
type: docs
weight: 30
url: /bg/java/saving-a-document-as-a-multipage-tiff/
---

Когато работите с документи, често трябва да конвертирате вашия документ в образен файл на Raster(s). Това е особено важно, ако трябва да представите документа си в четем и печатен формат, но не може да бъде редактиран. Например, можете да използвате изображение на първия лист на вашия документ за преглед. Тази статия описва как да конвертирате документ в Raster изображение с помощта на примера на TIFF формат го един от най-популярните формати на изображения.

## Конвертиране на DOC в Multi- Page TIFF

В Aspose.Words, Преобразуването от DOC към TIFF може да се извърши с един ред код, като просто се премине към по-долу и съответното разширение на файла към [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. На **Save** метод автоматично получава `SaveFormat` от разширението на файла, посочено в пътя. Следният пример показва как да се превърне документ във формат TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Посочване на допълнителни настройки при предаване на TIFF

Често трябва да посочите допълнителни опции, които влияят на резултата от предаването. За тази цел използвайте [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) клас, който съдържа свойства, които определят как документът се показва на изображението. Можете да посочите следното:

- Запис на формат за определяне на списъка с наличните опции ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Резолюция ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Брой страници ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Цветни и осветителни настройки ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Качество на изображението ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Методът, използван за бинаризиране на изображението ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Пикселов формат за генерирани изображения ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows metafiles working by Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Допълнителни опции, които можете да видите в **ImageSaveOptions** клас

Следният пример показва как да конвертирате DOC да TIFF с конфигурирани опции:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Праг за бинаризация на TIFF

TIFF изображение може да бъде запаметено във формат 1bpp b/w чрез задаване на [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) Имотът да Format1bppIndexed пиксел формат тип, както и [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) собственост на Cciitt3 или Cciitt4.

За сегментация на изображенията, Aspose.Words използва най-простия метод за прагиране. Този метод преобразува сиво-мащабно TIFF изображение в двоично изображение, използвайки гранична стойност. Следователно, когато документът трябва да бъде преобразуван във формат TIFF файл, е възможно да се получи или определи прагът за TIFF бинаризация чрез [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) собственост. Стойността по подразбиране за този имот е зададена на 128, а колкото по-висока е тази стойност, толкова по-тъмно е изображението.

Следният пример показва как да се извърши бинаризация на TIFF с определен праг:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

По-долу можете да сравните изображенията, на които е извършена бинаризация TIFF при различни гранични стойности:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
