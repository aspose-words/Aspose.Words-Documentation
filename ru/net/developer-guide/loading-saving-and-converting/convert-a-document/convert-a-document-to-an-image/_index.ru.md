---
title: Преобразовать документ в изображение в C#
second_title: Aspose.Words для .NET
articleTitle: Преобразовать документ в изображение
linktitle: Преобразовать документ в изображение
type: docs
description: "Преобразовать документ в формат изображения (JPG, PNG и т.д.). Создайте предварительный просмотр документа или создайте сканирование документа для отправки счета с использованием C#."
weight: 43
url: /ru/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

Иногда требуется получить изображение вместо документов в других форматах, таких как DOCX или PDF. Например, вам нужно добавить предварительный просмотр любой страницы документа на свой сайт или приложение или создать "скан" документа для отправки счета-фактуры. Это когда вам может понадобиться конвертировать документ в любой [Поддерживаемый формат загрузки](https://reference.aspose.com/words/net/aspose.words/loadformat/) Опять же, изображение в любой [Поддерживаемый формат Save](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Преобразовать в изображение {#convert-to-image-format}

Как и во всех уже описанных примерах преобразования, необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном формате изображения, например, JPEG, PNG или BMP.

Следующий пример кода показывает, как конвертировать PDF в JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Укажите параметры сохранения при преобразовании в изображение {#specify-save-options-when-converting-to-an-image}

Aspose.Words Предоставляет вам [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) Класс, который дает больший контроль над тем, как документы сохраняются в различных форматах изображений. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов. [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), Но есть также варианты, специфичные для сохранения изображений.

Можно указать страницы, которые будут преобразованы в формат изображения с помощью [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) собственность. Например, он может быть применен, если вам нужен только предварительный просмотр для первой или для определенной страницы.

Также можно контролировать качество изображения на выходе и формат пикселей, используя следующие свойства: [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), а также настроить настройки цвета изображения, используя следующие свойства – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Существуют также свойства, которые применяются к определенному формату, например, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) или [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Следующий пример кода показывает, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
