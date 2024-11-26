---
title: Економія документів як мультисторінковий ТМКФ C#
second_title: Aspose.Words для .NET
articleTitle: Економія документу як багатосторінковий TIFF
linktitle: Економія документу як багатосторінковий TIFF
description: "Перетворення документа в багатосторінковий TIFF за допомогою C#й Щоб визначити, як відображається документ на зображення, потрібно вказати додаткові параметри: дозвіл, кількість сторінок, бінаризація зображень тощо."
type: docs
weight: 30
url: /uk/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

При роботі з документами, вам часто потрібно конвертувати документ на файл растрового зображення (s). Це особливо актуально, якщо ви повинні представити свій документ у читабельному та друкованому форматі, але не редагувати формат. Наприклад, ви можете використовувати растрове зображення першої сторінки вашого документа як попередній перегляд. У статті описано, як перетворити документ на растрове зображення за допомогою прикладу формату TIFF – одного з найпопулярніших форматів зображень.

## Перетворення DOC в Multi-Page TIFF

У Aspose.Words, Перетворення з DOC до TIFF може бути виконано з одним рядком коду, просто проходячи шлях "Зберегти до" і відповідне розширення файлу до [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) метод. Про нас **Save** метод автоматично використовується `SaveFormat` від розширення імені файлу, зазначеного в шляху. Наступний приклад показує, як перетворити документ у формат TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Вкажіть додаткові параметри при рендерингу TIFF

Часто потрібно вказати додаткові параметри, які впливають на результат рендерингу. Для цього використовуйте [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) клас, який містить властивості, які визначають, як відображається документ на зображенні. Ви можете вказати:

- Збережіть формат для визначення списку доступних варіантів[SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat)й
- Постанова[HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution)й
- Кількість сторінок[PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)й
- Параметри кольору та освітлення[PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast)й
- Якість зображення[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions)й
- Метод, який використовується для знезараження зображення ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering)й
- Формат пікселя для створених зображень[PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat)й
- до Windows обробка метафілів Aspose.Words (Українська)[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer)й
- Додаткові параметри, які можна побачити в **ImageSaveOptions** клас

Наступний приклад показує, як конвертувати DOC в TIFF з налаштованими опціями:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Пороги для бінаризації ТМК

Зображення TIFF може бути збережений у форматі 1bpp b/w, настройивши параметр [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) нерухомість в Формат1bppIndexed тип пікселів, і тип [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) власності на Ccitt3 або Ccitt4.

Для сегментації зображень, Aspose.Words використовує найпростіший метод - поріг. Цей метод перетворює сіро-масштабний TIFF зображення в бінарний образ, використовуючи поріг значення. Тому, коли документ необхідно перетворювати у формат файлів TIFF, можна отримати або встановити поріг для бінаризації ТМКФ через [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) майно. Вартість за замовчуванням для цього майна встановлюється до 128, і вище цього значення, темніше зображення.

Наступний приклад показує, як виконати двонаралізація ТМК з вказаним порогом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Нижче ви можете порівняти зображення, на яких виконано бінаризація ТМК у різних значеннях порогу:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
