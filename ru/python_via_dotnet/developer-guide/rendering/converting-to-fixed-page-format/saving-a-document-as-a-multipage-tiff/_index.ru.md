---
title: Сохранение документа как многостраничный TIFF
second_title: Aspose.Words для Python via .NET
articleTitle: Сохранение документа как многостраничный TIFF
linktitle: Сохранение документа как многостраничный TIFF
description: "Преобразовать документ в многостраничный TIFF Python. Чтобы определить, как документ отображается на изображении, нужно указать дополнительные опции: разрешение, количество страниц, бинаризацию изображения и т.д."
type: docs
weight: 30
url: /ru/python-net/saving-a-document-as-a-multipage-tiff/
---

При работе с документами вам часто нужно конвертировать ваш документ в растровый файл изображения. Это особенно актуально, если вы должны представить свой документ в читаемом и распечатываемом, но не редактируемом формате. Например, вы можете использовать растровое изображение первой страницы вашего документа в качестве предварительного просмотра. В данной статье описано, как преобразовать документ в растровое изображение на примере формата TIFF – одного из наиболее популярных форматов изображения.

## Преобразование DOC в Multi-Page TIFF

В Aspose.Words, Преобразование из DOC в TIFF может быть выполнено с помощью одной строки кода, просто пройдя путь "сохранить в" и соответствующее расширение файла к коду. [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. The [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) Метод автоматически выводит [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) от расширения имени файла, указанного в пути. Следующий пример показывает, как конвертировать документ в формат TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Определение дополнительных опций при оформлении TIFF

Часто нужно указать дополнительные опции, которые влияют на результат рендеринга. Для этой цели используйте [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) класс, который содержит свойства, определяющие, как документ отображается на изображении. Вы можете указать следующее:

- Сохранить формат для определения списка доступных вариантов ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Резолюция[horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Количество страниц ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Цветовые и световые параметры ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Качество изображения[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Метод, используемый для бинаризации изображения ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Формат пикселей для генерируемых изображений ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows обработка метафайлов посредством Aspose.Words ()[metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Дополнительные опции, которые вы можете увидеть в [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) класс

Следующий пример показывает, как конвертировать DOC в TIFF с настроенными опциями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Порог для бинаризации TIFF

Изображение TIFF можно сохранить в формате 1bpp b/w, установив [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) имущество [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) Тип формата пикселя и [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) собственности на любой [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) или [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Для сегментации изображений, Aspose.Words Используется самый простой метод - пороговое. Этот метод преобразует изображение TIFF серого масштаба в двоичное изображение, используя пороговое значение. Поэтому, когда документ должен быть преобразован в формат файла TIFF, можно получить или установить порог для TIFF-бинаризации. [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) собственность. Значение по умолчанию для этого свойства установлено на 128, и чем выше это значение, тем темнее изображение.

Следующий пример показывает, как выполнить TIFF бинаризацию с заданным порогом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Ниже вы можете сравнить изображения, на которых бинаризация TIFF выполнялась при различных пороговых значениях:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
