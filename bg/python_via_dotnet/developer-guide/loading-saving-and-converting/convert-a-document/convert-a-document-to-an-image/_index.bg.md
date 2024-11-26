---
title: Преобразуване на документ в изображение
second_title: Aspose.Words вместо Python via .NET
articleTitle: Преобразуване на документ в изображение
linktitle: Преобразуване на документ в изображение
type: docs
description: "Конвертиране на документ във формат на изображението (JPG, PNG и др.). Създаване на преглед на документ или създаване на сканиране на документ за изпращане на фактура с помощта на Python."
weight: 43
url: /bg/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Понякога е необходимо да се получи изображение вместо документи в други формати, като DOCX или PDF. Например, трябва да добавите преглед на всяка страница с документи към вашия сайт или приложение, или да създадете "сканиране" на документ, за да изпратите фактура. Това е, когато може да се наложи да конвертирате документ във всеки [поддържан формат на товара](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) на изображение, отново, във всяко [поддържан формат за запис](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Преобразуване в формат на изображението {#convert-to-image-format}

Както при всички вече описани примери за преобразуване, трябва да създадете нов документ или да заредите съществуващ във всеки поддържан формат, да направите необходимите промени и да го запазите във всеки наличен формат на изображението, например JPEG, PNG или BMP.

Следният пример с код показва как да конвертирате PDF в JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Посочване на настройките при преобразуване в изображение {#specify-save-options-when-converting-to-an-image}

Aspose.Words Ви осигурява [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас, който дава по-голям контрол върху това как документите се съхраняват в различни формати на изображения. Някои свойства на този клас наследяват или претоварване свойства на базови класове като [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), но има и опции, специфични за запис на изображения.

Възможно е да се определят страниците, които да се преобразуват във формат на изображението с помощта на [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) собственост. Например, тя може да се приложи, ако се нуждаете само от предварителен преглед за първата или за определена страница.

Също така е възможно да се контролира качеството на изходните изображения и формата на пикселите, като се използват следните интелигентни свойства [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), както и настройките на цветовете на изображението, като се използват следните свойства [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Съществуват и свойства, които се отнасят за определен формат, например, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) или [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Следният пример с код показва как да се създаде предварителен преглед на първата страница с прилагане на някои допълнителни настройки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
