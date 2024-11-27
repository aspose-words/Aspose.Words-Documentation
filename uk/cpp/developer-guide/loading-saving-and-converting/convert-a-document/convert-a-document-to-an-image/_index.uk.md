---
title: Перетворіть документ на зображення для C++
second_title: Aspose.Words для C++
articleTitle: Перетворення документа в зображення
linktitle: Перетворення документа в зображення
type: docs
description: "Перетворіть документ в графічний формат (JPG, PNG і т.д.). Створіть попередній перегляд документа або сканування документа для надсилання рахунку-фактури."
weight: 43
url: /uk/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Іноді потрібно отримати зображення замість документів в інших форматах, таких як DOCX або PDF. Наприклад, вам потрібно додати попередній перегляд будь-якої сторінки документа на свій веб-сайт або в додаток або створити "скан" документа для відправки рахунку. Саме тоді вам може знадобитися перетворити документ у будь-якому форматі [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) на зображення, знову ж таки, у будь-якому форматі [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Перетворення у формат зображення

Як і у всіх вже описаних прикладах перетворення, вам потрібно створити новий документ або завантажити існуючий у будь-якому підтримуваному форматі, внести необхідні зміни та зберегти його у будь-якому доступному графічному форматі, наприклад JPEG, PNG або BMP.

Наступний приклад коду показує, як перетворити DOCX на JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Вкажіть параметри збереження при перетворенні в зображення

Aspose.Words надає вам клас [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), який забезпечує більший контроль над збереженням документів у різних графічних форматах. Деякі властивості цього класу успадковують або перевантажують властивості базових класів, таких як [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) або [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), але є також параметри, специфічні для збереження зображень.

Можна вказати сторінки, які будуть перетворені у формат зображення, використовуючи властивість [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Наприклад, його можна застосувати, якщо вам потрібен попередній перегляд лише першої сторінки або певної сторінки.

Також можна управляти якістю вихідного зображення і форматом в пікселях, використовуючи наступні властивості– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/),, а також налаштовувати параметри кольору зображення, використовуючи наступні властивості– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Існують також властивості, які застосовуються до певного формату, наприклад, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) або [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

У наступному прикладі коду показано, як створити попередній перегляд першої сторінки документа із застосуванням деяких додаткових налаштувань:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
