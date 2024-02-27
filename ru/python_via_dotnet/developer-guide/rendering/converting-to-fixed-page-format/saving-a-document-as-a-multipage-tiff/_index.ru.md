---
title: Сохранение документа в формате многостраничного TIFF
second_title: Aspose.Words для Python via .NET
articleTitle: Сохранение документа в формате многостраничного TIFF
linktitle: Сохранение документа в формате многостраничного TIFF
description: "Конвертируйте документ в многостраничный TIFF с помощью Python. Чтобы определить, как документ отображается на изображении, необходимо указать дополнительные параметры: разрешение, количество страниц, бинаризацию изображения и т.д."
type: docs
weight: 30
url: /ru/python-net/saving-a-document-as-a-multipage-tiff/
---

При работе с документами вам часто необходимо преобразовать документ в файл(ы) растрового изображения. Это особенно актуально, если вам необходимо представить документ в читаемом и распечатанном, но не редактируемом формате. Например, в качестве предварительного просмотра вы можете использовать растровое изображение первой страницы вашего документа. В этой статье описывается, как преобразовать документ в растровое изображение на примере формата TIFF — одного из наиболее популярных форматов изображений.

## Преобразование DOC в многостраничный TIFF

В Aspose.Words преобразование из DOC в TIFF можно выполнить с помощью одной строки кода, просто передав путь "Сохранить в" и соответствующее расширение файла методу [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Метод [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) автоматически извлекает [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) из расширения имени файла, указанного в пути. В следующем примере показано, как преобразовать документ в формат TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Указание дополнительных параметров при рендеринге TIFF

Часто требуется указать дополнительные параметры, влияющие на результат рендеринга. Для этого используйте класс [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), который содержит свойства, определяющие способ отображения документа на изображении. Вы можете указать следующее:

- Формат сохранения для определения списка доступных опций ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Резолюция ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Количество страниц ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Настройки цвета и освещения ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Качество изображения ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Метод, используемый для бинаризации изображения ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Формат пикселей для генерируемых изображений ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Обработка Windows метафайлов на Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Дополнительные опции, которые вы можете увидеть в классе [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

В следующем примере показано, как преобразовать DOC в TIFF с настроенными параметрами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Порог для бинаризации TIFF

Изображение TIFF можно сохранить в черно-белом формате 1bpp, установив для свойства [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) значение типа формата [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) пикселей, а для свойства [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) — значение [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) или [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Для сегментации изображений Aspose.Words использует самый простой метод — пороговую обработку. Этот метод преобразует изображение TIFF в оттенках серого в двоичное изображение, используя пороговое значение. Поэтому, когда документ необходимо преобразовать в формат файла TIFF, можно получить или установить порог бинаризации TIFF с помощью свойства [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Значение по умолчанию для этого свойства установлено на 128, и чем выше это значение, тем темнее изображение.

В следующем примере показано, как выполнить бинаризацию TIFF с указанным порогом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Ниже вы можете сравнить изображения, на которых была выполнена бинаризация TIFF при различных пороговых значениях:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="сохранение-документа-как-многостраничного-tiff-aspose-words-net" style="width:800px"/>
