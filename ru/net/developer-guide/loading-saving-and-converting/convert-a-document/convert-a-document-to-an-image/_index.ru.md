---
title: Преобразование документа в изображение в C#
second_title: Aspose.Words для .NET
articleTitle: Преобразование документа в изображение
linktitle: Преобразование документа в изображение
type: docs
description: "Конвертируйте документ в формат изображения (JPG, PNG и т.д.). Создайте предварительный просмотр документа или создайте скан документа, чтобы отправить счет, используя номер C#."
weight: 43
url: /ru/net/convert-a-document-to-an-image/
---

Иногда требуется получить изображение вместо документов в других форматах, например DOCX или PDF. Например, вам нужно добавить предварительный просмотр любой страницы документа на свой сайт или в приложение или создать "скан" документа для отправки счета. Вот тогда может возникнуть необходимость конвертировать документ в любой [поддерживаемый формат загрузки](https://reference.aspose.com/words/ru/net/aspose.words/loadformat/) в изображение, опять же в любой [поддерживаемый формат сохранения](https://reference.aspose.com/words/ru/net/aspose.words/saveformat/).

## Конвертировать в изображение {#convert-to-image-format}

Как и во всех уже описанных примерах конвертации, вам необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном формате изображения, например, JPEG, PNG или BMP.

В следующем примере кода показано, как преобразовать PDF в JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Укажите параметры сохранения при преобразовании в изображение {#specify-save-options-when-converting-to-an-image}

Aspose.Words предоставляет вам класс [ImageSaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/), который дает больше контроля над сохранением документов в различных форматах изображений. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов, таких как [FixedPageSaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/saveoptions/), но существуют также параметры, специфичные для сохранения изображений.

Указать страницы, которые необходимо преобразовать в формат изображения, можно с помощью свойства [PageSet](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/pageset/). Например, его можно применить, если вам нужен предварительный просмотр только первой или определенной страницы.

Также возможно контролировать качество выходного изображения и формат пикселей с помощью следующих свойств – [HorizontalResolution](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/pixelformat/), а также настраивать параметры цвета изображения, используя следующие свойства – [ImageBrightness](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/papercolor/).

Также есть свойства, применимые к определенному формату, например, [JpegQuality](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/jpegquality/) или [TiffCompression](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

В следующем примере кода показано, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
