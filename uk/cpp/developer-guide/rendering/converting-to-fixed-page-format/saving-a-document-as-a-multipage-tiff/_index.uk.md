---
title: Збереження документа як багатосторінкового TIFF в C++
second_title: Aspose.Words для C++
articleTitle: Збереження багатосторінкового документа TIFF
linktitle: Збереження багатосторінкового документа TIFF
description: "Перетворіть документ на багатосторінковий TIFF за допомогою C++. Щоб визначити, як документ відображається на зображенні, вам необхідно вказати додаткові параметри: дозвіл, кількість сторінок, бінаризацію зображення і т. д."
type: docs
weight: 40
url: /uk/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

При роботі з документами часто виникає необхідність перетворити документ в файл (и) растрових зображень. Це особливо актуально, якщо вам потрібно представити документ у зручному для читання та друку, але недоступному для редагування форматі. Наприклад, ви можете використовувати растрове зображення першої сторінки документа як попередній перегляд. У цій статті описано, як перетворити документ в растрове зображення на прикладі формату TIFF – одного з найбільш популярних графічних форматів.

## Перетворення DOC на багатосторінковий TIFF

У Aspose.Words перетворення з DOC на TIFF можна здійснити за допомогою одного рядка коду, просто передавши шлях "зберегти в" та відповідне розширення файлу методу [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Метод **Save** автоматично виводить значення `SaveFormat` із розширення імені файлу, зазначеного у шляху. Наступний приклад показує, як перетворити документ у формат TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Вказівка додаткових параметрів при рендерингу TIFF

Часто виникає необхідність вказати додаткові параметри, що впливають на результат рендеринга. Для цієї мети використовуйте клас [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), який містить властивості, що визначають спосіб відображення документа на зображенні. Ви можете вказати наступне:

- Збережіть формат, щоб визначити список доступних опцій ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Дозвіл ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Кількість сторінок ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Налаштування кольору та освітлення ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Якість зображення ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Метод, що використовується для бінаризації зображення ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Піксельний формат для згенерованих зображень ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows обробка метафайлів за допомогою Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Додаткові параметри, які ви можете побачити в класі **ImageSaveOptions**

Наступний приклад показує, як перетворити DOC на TIFF за допомогою налаштованих параметрів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Поріг для TIFF Бінаризації

Зображення TIFF можна зберегти в чорно-білому форматі 1 біт/сек, встановивши для властивості [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) значення Format1bppIndexed піксельний формат, а для властивості `TiffCompression` - Значення Ccitt3 або Ccitt4.

Для сегментації зображення Aspose.Words використовує найпростіший метод - порогове значення. Цей метод перетворює зображення масштабу сірого TIFF у двійкове зображення, використовуючи порогове значення. Таким чином, коли документ потрібно перетворити у формат файлу TIFF, можна отримати або встановити порогове значення для бінаризації TIFF за допомогою властивості [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Значення за замовчуванням для цієї властивості дорівнює 128, і чим вище це значення, тим темніше зображення.

Наступний приклад показує, як виконати бінаризацію TIFF із заданим пороговим значенням:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Нижче ви можете порівняти зображення, на яких була виконана бінаризація TIFF при різних порогових значеннях:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
