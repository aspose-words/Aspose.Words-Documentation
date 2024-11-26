---
title: Перетворення документа в зображення C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення документа в зображення
linktitle: Перетворення документа в зображення
type: docs
description: "Перетворення документа в формат зображення (JPG, PNG тощо). Створити попередній перегляд документа або створити сканування документів, щоб надіслати рахунок-фактуру, використовуючи C#й"
weight: 43
url: /uk/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

Іноді необхідно отримати зображення замість документів в інших форматах, таких як DOCX або PDF. Наприклад, необхідно додати попередній перегляд будь-якої сторінки документа на Ваш сайт або додаток, або створити "скан" документа для надсилання рахунку-фактури. Це коли ви можете конвертувати документ у будь-який інший [Формат завантаження](https://reference.aspose.com/words/net/aspose.words/loadformat/) до образу, знову, в будь-якому [підтримка](https://reference.aspose.com/words/net/aspose.words/saveformat/)й

## Перетворення в зображення {#convert-to-image-format}

Як і всі приклади перетворення вже описані, потрібно створити новий документ або завантажити існуючий в будь-якому форматі підтримки, зробити необхідні зміни і зберегти його в будь-якому доступному форматі зображення, наприклад, JPEG, PNG або BMP.

Приклад наступного коду показує, як конвертувати PDF в JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Вказати параметри збереження при перетворенні на зображення {#specify-save-options-when-converting-to-an-image}

Aspose.Words Ви з [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) клас, який надає більш контроль над тим, як зберігаються документи в різних форматах зображень. Деякі властивості цього класу успадкування або перевантаження властивостей базових класів, таких як [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) або [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), але є також варіанти, специфічні для збереження зображень.

Можна вказати сторінки, які будуть перетворені у формат зображення за допомогою [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) майно. Наприклад, можна застосувати, якщо вам потрібно лише попередній перегляд для першої або на певну сторінку.

Також можна контролювати якість вихідного зображення та формат пікселя за допомогою наступних властивостей – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), а також налаштувати налаштування кольору зображень, використовуючи такі властивості – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)й

Є також властивості, які застосовуються до певного формату, наприклад, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) або [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)й

Приклад коду показує, як створити попередній перегляд першої сторінки документа з додаванням деяких додаткових налаштувань:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
