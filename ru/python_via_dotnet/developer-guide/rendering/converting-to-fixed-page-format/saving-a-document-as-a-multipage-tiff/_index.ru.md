---
title: Сохранение многостраничного документа TIFF
second_title: Aspose.Words для Python via .NET
articleTitle: Сохранение многостраничного документа TIFF
linktitle: Сохранение многостраничного документа TIFF
description: "Преобразуйте документ в многостраничный TIFF с помощью Python. Чтобы определить, как документ будет отображаться на изображении, вам необходимо указать дополнительные параметры: разрешение, количество страниц, бинаризацию изображения и т.д."
type: docs
weight: 30
url: /ru/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

При работе с документами часто возникает необходимость преобразовать документ в файл(ы) растровых изображений. Это особенно актуально, если вам необходимо представить документ в удобном для чтения и печати, но недоступном для редактирования формате. Например, вы можете использовать растровое изображение первой страницы вашего документа в качестве предварительного просмотра. В этой статье описано, как преобразовать документ в растровое изображение на примере формата TIFF – одного из наиболее популярных графических форматов.

## Преобразование DOC в многостраничный TIFF

В Aspose.Words преобразование из DOC в TIFF может быть выполнено с помощью одной строки кода, просто передав путь "сохранить в" и соответствующее расширение файла методу [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Метод [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) автоматически выводит значение [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) из расширения имени файла, указанного в пути. В следующем примере показано, как преобразовать документ в формат TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Указание дополнительных Параметров При Рендеринге TIFF

Часто возникает необходимость указать дополнительные параметры, влияющие на результат рендеринга. Для этой цели используйте класс [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), который содержит свойства, определяющие способ отображения документа на изображении. Вы можете указать следующее:

- Сохраните формат, чтобы определить список доступных опций ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Разрешение ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Количество страниц ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Настройки цвета и освещения ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Качество изображения ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Метод, используемый для бинаризации изображения ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Пиксельный формат для сгенерированных изображений ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows обработка метафайлов с помощью Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Дополнительные параметры, которые вы можете увидеть в классе [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

В следующем примере показано, как преобразовать DOC в TIFF с помощью настроенных параметров:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Порог для TIFF Бинаризации

Изображение TIFF можно сохранить в черно-белом формате 1 бит/с, установив для свойства [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) значение [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) пиксельный формат, а для свойства [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) - значение [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) или [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Для сегментации изображений Aspose.Words использует простейший метод - пороговое значение. Этот метод преобразует изображение в масштабе серого TIFF в двоичное изображение, используя пороговое значение. Таким образом, когда документ необходимо преобразовать в формат файла TIFF, можно получить или установить пороговое значение для бинаризации TIFF с помощью свойства [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Значение по умолчанию для этого свойства равно 128, и чем выше это значение, тем темнее изображение.

В следующем примере показано, как выполнить бинаризацию TIFF с заданным пороговым значением:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Ниже вы можете сравнить изображения, на которых была выполнена бинаризация TIFF при различных пороговых значениях:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
