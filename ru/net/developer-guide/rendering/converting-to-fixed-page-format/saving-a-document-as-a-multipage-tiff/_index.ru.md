---
title: Сохранение документа в формате многостраничного TIFF в C#
second_title: Aspose.Words для .NET
articleTitle: Сохранение документа в формате многостраничного TIFF
linktitle: Сохранение документа в формате многостраничного TIFF
description: "Конвертируйте документ в многостраничный TIFF с помощью C#. Чтобы определить, как документ отображается на изображении, необходимо указать дополнительные параметры: разрешение, количество страниц, бинаризацию изображения и т.д."
type: docs
weight: 30
url: /ru/net/saving-a-document-as-a-multipage-tiff/
---

При работе с документами вам часто необходимо преобразовать документ в файл(ы) растрового изображения. Это особенно актуально, если вам необходимо представить документ в читаемом и распечатанном, но не редактируемом формате. Например, в качестве предварительного просмотра вы можете использовать растровое изображение первой страницы вашего документа. В этой статье описывается, как преобразовать документ в растровое изображение на примере формата TIFF — одного из наиболее популярных форматов изображений.

## Преобразование DOC в многостраничный TIFF

В Aspose.Words преобразование из DOC в TIFF можно выполнить с помощью одной строки кода, просто передав путь "Сохранить в" и соответствующее расширение файла методу [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Метод **Save** автоматически извлекает `SaveFormat` из расширения имени файла, указанного в пути. В следующем примере показано, как преобразовать документ в формат TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Указание дополнительных параметров при рендеринге TIFF

Часто требуется указать дополнительные параметры, влияющие на результат рендеринга. Для этого используйте класс [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), который содержит свойства, определяющие способ отображения документа на изображении. Вы можете указать следующее:

- Формат сохранения для определения списка доступных опций ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Разрешение ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Количество страниц ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Настройки цвета и освещения ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Качество изображения ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Метод, используемый для бинаризации изображения ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Формат пикселей для генерируемых изображений ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Обработка Windows метафайлов Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Дополнительные опции, которые вы можете увидеть в классе **ImageSaveOptions**

В следующем примере показано, как преобразовать DOC в TIFF с настроенными параметрами:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Порог для бинаризации TIFF

Изображение TIFF можно сохранить в ч/б формате 1bpp, задав для свойства [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) значение формата пикселя Format1bppIndexed, а для свойства [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) — значение Ccitt3 или Ccitt4.

Для сегментации изображений Aspose.Words использует самый простой метод — пороговую обработку. Этот метод преобразует изображение TIFF в оттенках серого в двоичное изображение, используя пороговое значение. Поэтому, когда документ необходимо преобразовать в формат файла TIFF, можно получить или установить порог бинаризации TIFF с помощью свойства [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). Значение по умолчанию для этого свойства установлено на 128, и чем выше это значение, тем темнее изображение.

В следующем примере показано, как выполнить бинаризацию TIFF с указанным порогом:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Ниже вы можете сравнить изображения, на которых была выполнена бинаризация TIFF при различных пороговых значениях:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="сохранение-документа-как-многостраничного-tiff-aspose-words-net" style="width:800px"/>
