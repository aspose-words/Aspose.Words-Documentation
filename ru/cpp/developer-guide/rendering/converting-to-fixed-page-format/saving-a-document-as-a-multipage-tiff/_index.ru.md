---
title: Сохранение документа в формате многостраничного TIFF на C++
second_title: Aspose.Words для C++
articleTitle: Сохранение документа в формате многостраничного TIFF
linktitle: Сохранение документа в формате многостраничного TIFF
description: "Преобразуйте документ в многостраничный формат TIFF с помощью C++. Чтобы определить, как документ будет отображаться на изображении, вам необходимо указать дополнительные параметры: разрешение, количество страниц, бинаризацию изображения и т.д."
type: docs
weight: 40
url: /ru/cpp/saving-a-document-as-a-multipage-tiff/
---

При работе с документами часто возникает необходимость преобразовать документ в файл(ы) растровых изображений. Это особенно актуально, если вам необходимо представить документ в удобном для чтения и печати, но недоступном для редактирования формате. Например, вы можете использовать растровое изображение первой страницы вашего документа в качестве предварительного просмотра. В этой статье описано, как преобразовать документ в растровое изображение на примере формата TIFF – одного из наиболее популярных графических форматов.

## Преобразование DOC в многостраничный TIFF

В Aspose.Words преобразование из DOC в TIFF может быть выполнено с помощью одной строки кода, просто передав путь "сохранить в" и соответствующее расширение файла методу [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Метод **Save** автоматически выводит значение `SaveFormat` из расширения имени файла, указанного в пути. В следующем примере показано, как преобразовать документ в формат TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Указание дополнительных Параметров При Рендеринге TIFF

Часто возникает необходимость указать дополнительные параметры, влияющие на результат рендеринга. Для этой цели используйте класс [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), который содержит свойства, определяющие способ отображения документа на изображении. Вы можете указать следующее:

- Сохраните формат, чтобы определить список доступных опций ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Разрешение ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Количество страниц ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Настройки цвета и освещения ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Качество изображения ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Метод, используемый для бинаризации изображения ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Пиксельный формат для сгенерированных изображений ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Обработка метафайлов Windows с помощью Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Дополнительные параметры, которые вы можете увидеть в классе **ImageSaveOptions**

В следующем примере показано, как преобразовать DOC в TIFF с помощью настроенных параметров:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Порог для бинаризации TIFF

Изображение в формате TIFF можно сохранить в черно-белом формате 1bpp, установив для свойства [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) значение Формат1bppIndexed пикселей, а для свойства `TiffCompression` - значение Ccitt3 или Ccitt4.

Для сегментации изображений в Aspose.Words используется простейший метод - пороговая обработка. Этот метод преобразует изображение в формате TIFF в двоичном формате с использованием порогового значения. Таким образом, когда документ необходимо преобразовать в формат файла TIFF, можно получить или установить пороговое значение для бинаризации в формате TIFF с помощью свойства [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Значение по умолчанию для этого свойства равно 128, и чем выше это значение, тем темнее изображение.

В следующем примере показано, как выполнить бинаризацию TIFF с заданным пороговым значением:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Ниже вы можете сравнить изображения, на которых была выполнена бинаризация в формате TIFF при различных пороговых значениях:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
