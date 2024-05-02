---
title: Сохранение документа в качестве многостраничного TIFF Java
second_title: Aspose.Words для Java
articleTitle: Сохранение документа как многостраничный TIFF
linktitle: Сохранение документа как многостраничный TIFF
description: "Преобразовать документ в растровое изображение, которое обсуждается на примере формата TIFF. Чтобы определить, как отображается TIFF, необходимо указать дополнительные параметры: разрешение, количество страниц, бинаризацию изображений и т.д. Java."
type: docs
weight: 30
url: /ru/java/saving-a-document-as-a-multipage-tiff/
---

При работе с документами вам часто нужно конвертировать ваш документ в растровый файл изображения. Это особенно актуально, если вы должны представить свой документ в читаемом и распечатываемом, но не редактируемом формате. Например, вы можете использовать растровое изображение первой страницы вашего документа в качестве предварительного просмотра. В данной статье описано, как преобразовать документ в растровое изображение на примере формата TIFF – одного из наиболее популярных форматов изображения.

## Преобразование DOC в Multi-Page TIFF

В Aspose.Words, Преобразование из DOC в TIFF может быть выполнено с помощью одной строки кода, просто пройдя путь "сохранить в" и соответствующее расширение файла к коду. [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. The **Save** Метод автоматически выводит `SaveFormat` от расширения имени файла, указанного в пути. Следующий пример показывает, как конвертировать документ в формат TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Определение дополнительных опций при оформлении TIFF

Часто нужно указать дополнительные опции, которые влияют на результат рендеринга. Для этой цели используйте [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) класс, который содержит свойства, определяющие, как документ отображается на изображении. Вы можете указать следующее:

- Сохранить формат для определения списка доступных вариантов ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Резолюция[HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Количество страниц ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Цветовые и световые параметры ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Качество изображения[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Метод, используемый для бинаризации изображения ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Формат пикселей для генерируемых изображений ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows обработка метафайлов посредством Aspose.Words ()[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Дополнительные опции, которые вы можете увидеть в **ImageSaveOptions** класс

Следующий пример показывает, как конвертировать DOC в TIFF с настроенными опциями:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Порог бинаризации TIFF

Изображение TIFF можно сохранить в формате 1bpp b/w, установив [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) свойство формата формата Format1bppIndexed и [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) Свойства Ccitt3 или Ccitt4.

Для сегментации изображений, Aspose.Words Используется самый простой метод - пороговое. Этот метод преобразует изображение TIFF серого масштаба в двоичное изображение, используя пороговое значение. Поэтому, когда документ должен быть преобразован в формат файла TIFF, можно получить или установить порог для TIFF-бинаризации. [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) собственность. Значение по умолчанию для этого свойства установлено на 128, и чем выше это значение, тем темнее изображение.

Следующий пример показывает, как выполнить TIFF бинаризацию с заданным порогом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Ниже вы можете сравнить изображения, на которых бинаризация TIFF выполнялась при различных пороговых значениях:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
