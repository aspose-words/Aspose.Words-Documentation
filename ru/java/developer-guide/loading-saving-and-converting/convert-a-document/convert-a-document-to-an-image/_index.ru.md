---
title: Преобразовать документ в изображение в Java
second_title: Aspose.Words для Java
articleTitle: Преобразовать документ в изображение
linktitle: Преобразовать документ в изображение
type: docs
description: "Преобразовать документ в формат изображения (JPG, PNG и т.д.). Создайте предварительный просмотр документа или создайте сканирование документа, чтобы отправить счет с помощью Java."
weight: 35
url: /ru/java/convert-a-document-to-an-image/
---

Иногда требуется получить изображение вместо документов в других форматах, таких как DOCX или PDF. Например, вам нужно добавить предварительный просмотр любой страницы документа на ваш сайт или приложение или создать "скан" документа для отправки счета-фактуры. Это когда вам может понадобиться конвертировать документ в любой [Поддерживаемый формат загрузки](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Опять же, изображение в любой [Поддерживаемый формат Save](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Преобразование в формат изображения

Как и во всех уже описанных примерах преобразования, необходимо создать новый документ или загрузить существующий в любом поддерживаемом формате, внести необходимые изменения и сохранить его в любом доступном формате изображения, например, JPEG, PNG или BMP.

Следующий пример кода показывает, как преобразовать DOCX в JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Укажите параметры сохранения при преобразовании в изображение

Aspose.Words Предоставляет вам [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) Класс, который дает больший контроль над тем, как документы сохраняются в различных форматах изображений. Некоторые свойства этого класса наследуют или перегружают свойства базовых классов. [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), Но есть также варианты, специфичные для сохранения изображений.

Можно указать страницы, которые будут преобразованы в формат изображения с помощью [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) собственность. Например, он может быть применен, если вам нужен только предварительный просмотр для первой или для определенной страницы.

Также можно контролировать качество изображения на выходе и формат пикселей, используя следующие свойства: [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), а также настроить настройки цвета изображения, используя следующие свойства – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Существуют также свойства, которые применяются к определенному формату, например, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) или [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Следующий пример кода показывает, как создать предварительный просмотр первой страницы документа с применением некоторых дополнительных настроек:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
