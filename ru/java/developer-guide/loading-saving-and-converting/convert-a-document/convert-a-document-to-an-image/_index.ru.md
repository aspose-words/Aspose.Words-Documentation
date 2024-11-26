---
title: Преобразуйте документ в изображение за Java
second_title: Aspose.Words для Java
articleTitle: Преобразование документа в изображение
linktitle: Преобразование документа в изображение
type: docs
description: "Преобразуйте документ в графический формат (JPG, PNG и т.д.). Создайте предварительный просмотр документа или скан документа, чтобы отправить счет-фактуру с помощью Java."
weight: 35
url: /ru/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Иногда требуется получить изображение вместо документов в других форматах, таких как DOCX или PDF. Например, вам нужно добавить предварительный просмотр какой-либо страницы документа на свой веб-сайт или в приложение или создать "скан" документа для отправки счета. Именно тогда вам может понадобиться преобразовать документ в любом формате [поддерживаемый формат загрузки](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) в изображение, опять же, в любом формате [поддерживаемый формат сохранения](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Преобразование в формат изображения

Как и во всех уже описанных примерах преобразования, вам необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном графическом формате, например, JPEG, PNG или BMP.

В следующем примере кода показано, как преобразовать DOCX в JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Укажите параметры сохранения при преобразовании в изображение

Aspose.Words предоставляет вам класс [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), который обеспечивает больший контроль над сохранением документов в различных графических форматах. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов, таких как [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), но есть также параметры, специфичные для сохранения изображений.

Можно указать страницы, которые будут преобразованы в формат изображения, используя свойство [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). Например, его можно применить, если вам нужен предварительный просмотр только первой страницы или определенной страницы.

Также можно управлять качеством выходного изображения и форматом в пикселях, используя следующие свойства – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat),, а также настраивать параметры цвета изображения, используя следующие свойства – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Существуют также свойства, которые применяются к определенному формату, например, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) или [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

В следующем примере кода показано, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
