---
title: Преобразование документа в изображение
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование документа в изображение
linktitle: Преобразование документа в изображение
type: docs
description: "Преобразуйте документ в графический формат (JPG, PNG и т.д.). Создайте предварительный просмотр документа или скан документа, чтобы отправить счет-фактуру с помощью Python."
weight: 43
url: /ru/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Иногда требуется получить изображение вместо документов в других форматах, таких как DOCX или PDF. Например, вам нужно добавить предварительный просмотр какой-либо страницы документа на свой веб-сайт или в приложение или создать "скан" документа для отправки счета. Именно тогда вам может понадобиться преобразовать документ в любом формате [supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) в изображение, опять же, в любом формате [supported save format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Преобразовать в формат изображения {#convert-to-image-format}

Как и во всех уже описанных примерах преобразования, вам необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном графическом формате, например, JPEG, PNG или BMP.

В следующем примере кода показано, как преобразовать PDF в JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Укажите параметры сохранения при преобразовании в изображение {#specify-save-options-when-converting-to-an-image}

Aspose.Words предоставляет вам класс [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), который обеспечивает больший контроль над сохранением документов в различных графических форматах. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов, таких как [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), но есть также параметры, специфичные для сохранения изображений.

Можно указать страницы, которые будут преобразованы в графический формат, используя свойство [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Например, его можно применить, если вам нужен предварительный просмотр только для первой или для определенной страницы.

Также можно управлять качеством выходного изображения и форматом в пикселях, используя следующие свойства – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/),, а также настраивать параметры цвета изображения, используя следующие свойства – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Существуют также свойства, которые применяются к определенному формату, например, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) или [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

В следующем примере кода показано, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
