---
title: Перетворення документа в зображення
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення документа в зображення
linktitle: Перетворення документа в зображення
type: docs
description: "Перетворення документа в формат зображення (JPG, PNG тощо). Створити попередній перегляд документа або створити сканування документів, щоб надіслати рахунок-фактуру, використовуючи Pythonй"
weight: 43
url: /uk/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно отримати зображення замість документів в інших форматах, таких як DOCX або PDF. Наприклад, необхідно додати попередній перегляд будь-якої сторінки документа на Ваш сайт або додаток, або створити "скан" документа для надсилання рахунку-фактури. Це коли ви можете конвертувати документ у будь-який інший [Формат завантаження](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) до образу, знову, в будь-якому [підтримка](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)й

## Перетворення в формат зображення {#convert-to-image-format}

Як і всі приклади перетворення вже описані, потрібно створити новий документ або завантажити існуючий в будь-якому форматі підтримки, зробити необхідні зміни і зберегти його в будь-якому доступному форматі зображення, наприклад, JPEG, PNG або BMP.

Приклад наступного коду показує, як конвертувати PDF в JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Вкажіть параметри збереження при перетворенні на зображення {#specify-save-options-when-converting-to-an-image}

Aspose.Words Ви з [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас, який надає більш контроль над тим, як зберігаються документи в різних форматах зображень. Деякі властивості цього класу успадкування або перевантаження властивостей базових класів, таких як [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) або [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), але є також варіанти, специфічні для збереження зображень.

Можна вказати сторінки, які будуть перетворені у формат зображення за допомогою [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) майно. Наприклад, можна застосувати, якщо вам потрібно лише попередній перегляд для першої або на певну сторінку.

Також можна контролювати якість вихідного зображення та формат пікселя за допомогою наступних властивостей – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), а також налаштувати налаштування кольору зображень, використовуючи такі властивості – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)й

Є також властивості, які застосовуються до певного формату, наприклад, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) або [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)й

Приклад коду показує, як створити попередній перегляд першої сторінки документа з додаванням деяких додаткових налаштувань:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
