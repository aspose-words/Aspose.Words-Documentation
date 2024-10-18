---
title: Преобразование документа в изображение на C++
second_title: Aspose.Words для C++
articleTitle: Преобразование документа в изображение
linktitle: Преобразование документа в изображение
type: docs
description: "Преобразуйте документ в графический формат (JPG, PNG и т.д.). Создайте предварительный просмотр документа или скан документа для отправки счета."
weight: 43
url: /ru/cpp/convert-a-document-to-an-image/
---

Иногда требуется получить изображение вместо документов в других форматах, таких как DOCX или PDF. Например, вам нужно добавить предварительный просмотр какой-либо страницы документа на свой веб-сайт или в приложение или создать "скан" документа для отправки счета. Именно тогда вам может понадобиться преобразовать документ в любом формате [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) в изображение, опять же, в любом формате [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Преобразование в формат изображения

Как и во всех уже описанных примерах преобразования, вам необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном графическом формате, например, JPEG, PNG или BMP.

В следующем примере кода показано, как преобразовать DOCX в JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Укажите параметры сохранения при преобразовании в изображение

Aspose.Words предоставляет вам класс [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), который обеспечивает больший контроль над сохранением документов в различных графических форматах. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов, таких как [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), но есть также параметры, специфичные для сохранения изображений.

Можно указать страницы, которые будут преобразованы в формат изображения, используя свойство [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Например, его можно применить, если вам нужен предварительный просмотр только первой страницы или определенной страницы.

Также можно управлять качеством выходного изображения и форматом в пикселях, используя следующие свойства – [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/),, а также настраивать параметры цвета изображения, используя следующие свойства – [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Существуют также свойства, которые применяются к определенному формату, например, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) или [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

В следующем примере кода показано, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
