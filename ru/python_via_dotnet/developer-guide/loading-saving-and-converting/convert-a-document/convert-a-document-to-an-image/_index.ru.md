---
title: Преобразовать документ в изображение
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать документ в изображение
linktitle: Преобразовать документ в изображение
type: docs
description: "Преобразовать документ в формат изображения (JPG, PNG и т.д.). Создайте предварительный просмотр документа или создайте сканирование документа для отправки счета с использованием Python."
weight: 43
url: /ru/python-net/convert-a-document-to-an-image/
---

Иногда требуется получить изображение вместо документов в других форматах, таких как DOCX или PDF. Например, вам нужно добавить предварительный просмотр любой страницы документа на свой сайт или приложение или создать "скан" документа для отправки счета-фактуры. Это когда вам может понадобиться конвертировать документ в любой [Поддерживаемый формат загрузки](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) Опять же, изображение в любой [Поддерживаемый формат Save](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Преобразование в формат изображения {#convert-to-image-format}

Как и во всех уже описанных примерах преобразования, необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном формате изображения, например, JPEG, PNG или BMP.

Следующий пример кода показывает, как конвертировать PDF в JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Укажите параметры сохранения при преобразовании в изображение {#specify-save-options-when-converting-to-an-image}

Aspose.Words Предоставляет вам [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) Класс, который дает больший контроль над тем, как документы сохраняются в различных форматах изображений. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов. [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), Но есть также варианты, специфичные для сохранения изображений.

Можно указать страницы, которые будут преобразованы в формат изображения с помощью [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) собственность. Например, он может быть применен, если вам нужен только предварительный просмотр для первой или для определенной страницы.

Также можно контролировать качество изображения на выходе и формат пикселей, используя следующие свойства: [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), а также настроить настройки цвета изображения, используя следующие свойства – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Существуют также свойства, которые применяются к определенному формату, например, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) или [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Следующий пример кода показывает, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
