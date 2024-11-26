---
title: Конвертиране на документ в изображение в C++
second_title: Aspose.Words за C++
articleTitle: Конвертиране на документ в изображение
linktitle: Конвертиране на документ в изображение
type: docs
description: "Конвертиране на документ във формат на изображение (JPG, PNG и т.н.). Създайте визуализация на документ или създайте сканиране на документ, за да изпратите фактура."
weight: 43
url: /bg/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Понякога се изисква да се получи изображение вместо документи в други формати, като DOCX или PDF. Например трябва да добавите визуализация на всяка страница на документ към Уебсайта или приложението си или да създадете "сканиране" на документ, за да изпратите фактура. Това е, когато може да се наложи да конвертирате документ във всеки [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) в изображение, отново във всеки [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Конвертиране във формат на изображение

Както при всички примери за преобразуване, които вече са описани, трябва да създадете нов документ или да заредите съществуващ във всеки поддържан формат, да направите необходимите промени и да го запишете във всеки наличен формат на изображението, например JPEG, PNG или BMP.

Следващият пример за код показва как да конвертирате DOCX в JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Задаване на опции за записване при конвертиране в изображение

Aspose.Words ви предоставя клас [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), който ви дава повече контрол върху това как документите се записват в различни формати на изображения. Някои свойства на този клас наследяват или претоварват свойства на базови класове, като [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), но има и опции, специфични за записване на изображения.

Възможно е да се определят страниците, които да бъдат преобразувани във формат на изображение, като се използва свойството [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Например може да се приложи, ако имате нужда само от визуализация за първата или за определена страница.

Също така е възможно да се контролира качеството на изходното изображение и формата на пикселите, като се използват следните свойства:– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), както и да настроите настройките за цвят на изображението, като използвате следните свойства:– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Има и свойства, които се отнасят за определен формат, например [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) или [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Следващият пример за код показва как да създадете визуализация на първата страница на документа с прилагане на някои допълнителни настройки:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
