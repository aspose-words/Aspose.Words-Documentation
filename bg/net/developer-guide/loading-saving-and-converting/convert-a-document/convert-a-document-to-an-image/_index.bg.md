---
title: Преобразуване на документ в изображение C#
second_title: Aspose.Words вместо .NET
articleTitle: Преобразуване на документ в изображение
linktitle: Преобразуване на документ в изображение
type: docs
description: "Конвертиране на документ във формат на изображението (JPG, PNG и др.). Създаване на преглед на документ или създаване на сканиране на документ за изпращане на фактура с помощта на C#."
weight: 43
url: /bg/net/convert-a-document-to-an-image/
---

Понякога е необходимо да се получи изображение вместо документи в други формати, като DOCX или PDF. Например, трябва да добавите преглед на всяка страница с документи към вашия сайт или приложение, или да създадете "сканиране" на документ, за да изпратите фактура. Това е, когато може да се наложи да конвертирате документ във всеки [поддържан формат на товара](https://reference.aspose.com/words/net/aspose.words/loadformat/) на изображение, отново, във всяко [поддържан формат за запис](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Конвертиране в изображение {#convert-to-image-format}

Както при всички вече описани примери за преобразуване, трябва да създадете нов документ или да заредите съществуващ във всеки поддържан формат, да направите необходимите промени и да го запазите във всеки наличен формат на изображението, например JPEG, PNG или BMP.

Следният пример с код показва как да конвертирате PDF в JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Посочване на настройките при преобразуване в изображение {#specify-save-options-when-converting-to-an-image}

Aspose.Words Ви осигурява [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) клас, който дава по-голям контрол върху това как документите се съхраняват в различни формати на изображения. Някои свойства на този клас наследяват или претоварване свойства на базови класове като [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), но има и опции, специфични за запис на изображения.

Възможно е да се определят страниците, които да се преобразуват във формат на изображението с помощта на [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) собственост. Например, тя може да се приложи, ако се нуждаете само от предварителен преглед за първата или за определена страница.

Също така е възможно да се контролира качеството на изходните изображения и формата на пикселите, като се използват следните интелигентни свойства [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), както и настройките на цветовете на изображението, като се използват следните свойства [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Съществуват и свойства, които се отнасят за определен формат, например, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) или [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Следният пример с код показва как да се създаде предварителен преглед на първата страница с прилагане на някои допълнителни настройки:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
