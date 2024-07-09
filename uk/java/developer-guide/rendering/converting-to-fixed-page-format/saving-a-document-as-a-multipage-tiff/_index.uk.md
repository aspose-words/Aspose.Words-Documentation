---
title: Економія документів як мультисторінковий ТМКФ Java
second_title: Aspose.Words для Java
articleTitle: Економія документу як багатосторінковий TIFF
linktitle: Економія документу як багатосторінковий TIFF
description: "Перетворення документа в растрове зображення, яке обговорюється на прикладі формату TIFF. Щоб визначити, як TIFF виводиться, потрібно вказати додаткові параметри: роздільна здатність, кількість сторінок, бінаризація зображень та ін. Javaй"
type: docs
weight: 30
url: /uk/java/saving-a-document-as-a-multipage-tiff/
---

При роботі з документами, вам часто потрібно конвертувати документ на файл растрового зображення (s). Це особливо актуально, якщо ви повинні представити свій документ у читабельному та друкованому форматі, але не редагувати формат. Наприклад, ви можете використовувати растрове зображення першої сторінки вашого документа як попередній перегляд. У статті описано, як перетворити документ на растрове зображення за допомогою прикладу формату TIFF – одного з найпопулярніших форматів зображень.

## Перетворення DOC в Multi-Page TIFF

У Aspose.Words, Перетворення з DOC до TIFF може бути виконано з одним рядком коду, просто проходячи шлях "Зберегти до" і відповідне розширення файлів до [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. Про нас **Save** метод автоматично занурюється `SaveFormat` від розширення імені файлу, зазначеного в шляху. Наступний приклад показує, як перетворити документ у формат TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Вкажіть додаткові параметри при рендерингу TIFF

Часто потрібно вказати додаткові параметри, які впливають на результат рендерингу. Для цього використовуйте [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) клас, який містить властивості, які визначають, як відображається документ на зображенні. Ви можете вказати:

- Збережіть формат для визначення списку доступних варіантів[SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/)й
- Постанова[HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution)й
- Кількість сторінок[PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount)й
- Параметри кольору та освітлення[PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast)й
- Якість зображення[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions)й
- Метод, який використовується для знезаражування зображення ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering)й
- Формат пікселя для створених зображень[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat)й
- до Windows обробка метафілів Aspose.Words (Українська)[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer)й
- Додаткові параметри, які можна побачити в **ImageSaveOptions** клас

Наступний приклад показує, як конвертувати DOC в TIFF з налаштованими опціями:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Пороги для бінаризації ТМК

Зображення TIFF може бути збережений у форматі 1bpp b/w, встановивши налаштування [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) власності на формат1bppIndexed pixel формат типу, і [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) власності на Ccitt3 або Ccitt4.

Для сегментації зображень, Aspose.Words використовує найпростіший метод - поріг. Цей метод перетворює сіро-масштабний TIFF зображення в бінарний образ, використовуючи поріг значення. Таким чином, коли документ необхідно перетворювати у формат файлів TIFF, можна отримати або встановити поріг для бінаризації ТМКФ через [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) майно. Вартість за замовчуванням для цього майна встановлюється до 128, і вище цього значення, темніше зображення.

Наступний приклад показує, як виконати двонаралізація ТМК з вказаним порогом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Нижче ви можете порівняти зображення, на які виконується бінаризація ТМК у різних значеннях порогу:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
