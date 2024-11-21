---
title: Сохранение документа в качестве многостраничного TIFF C#
second_title: Aspose.Words для .NET
articleTitle: Сохранение документа как многостраничный TIFF
linktitle: Сохранение документа как многостраничный TIFF
description: "Преобразовать документ в многостраничный TIFF C#. Чтобы определить, как документ отображается на изображении, нужно указать дополнительные опции: разрешение, количество страниц, бинаризацию изображения и т.д."
type: docs
weight: 30
url: /ru/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

При работе с документами вам часто нужно конвертировать ваш документ в растровый файл изображения. Это особенно актуально, если вы должны представить свой документ в читаемом и распечатываемом, но не редактируемом формате. Например, вы можете использовать растровое изображение первой страницы вашего документа в качестве предварительного просмотра. В данной статье описано, как преобразовать документ в растровое изображение на примере формата TIFF – одного из наиболее популярных форматов изображения.

## Преобразование DOC в Multi-Page TIFF

В Aspose.Words, Преобразование из DOC в TIFF может быть выполнено с помощью одной строки кода, просто пройдя путь "сохранить в" и соответствующее расширение файла к коду. [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) метод. The **Save** Метод автоматически выводит `SaveFormat` от расширения имени файла, указанного в пути. Следующий пример показывает, как конвертировать документ в формат TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Определение дополнительных опций при оформлении TIFF

Часто нужно указать дополнительные опции, которые влияют на результат рендеринга. Для этой цели используйте [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) класс, который содержит свойства, определяющие, как документ отображается на изображении. Вы можете указать следующее:

- Сохранить формат для определения списка доступных вариантов ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Резолюция[HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Количество страниц ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Цветовые и световые параметры ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Качество изображения[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Метод, используемый для бинаризации изображения ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Формат пикселей для генерируемых изображений ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows обработка метафайлов посредством Aspose.Words ()[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Дополнительные опции, которые вы можете увидеть в **ImageSaveOptions** класс

Следующий пример показывает, как конвертировать DOC в TIFF с настроенными опциями:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Порог для бинаризации TIFF

Изображение TIFF можно сохранить в формате 1bpp b/w, установив [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) свойство формата формата Format1bppIndexed и [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) Свойства Ccitt3 или Ccitt4.

Для сегментации изображений, Aspose.Words Используется самый простой метод - пороговое. Этот метод преобразует изображение TIFF серого масштаба в двоичное изображение, используя пороговое значение. Поэтому, когда документ должен быть преобразован в формат файла TIFF, можно получить или установить порог для TIFF-бинаризации. [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) собственность. Значение по умолчанию для этого свойства установлено на 128, и чем выше это значение, тем темнее изображение.

Следующий пример показывает, как выполнить TIFF бинаризацию с заданным порогом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Ниже вы можете сравнить изображения, на которых бинаризация TIFF выполнялась при различных пороговых значениях:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
