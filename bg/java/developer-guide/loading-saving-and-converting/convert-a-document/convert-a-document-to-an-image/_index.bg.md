---
title: Преобразуване на документ в изображение в Java
second_title: Aspose.Words вместо Java
articleTitle: Преобразуване на документ в изображение
linktitle: Преобразуване на документ в изображение
type: docs
description: "Конвертиране на документ във формат на изображение (JPG, PNG и др.). Създаване на преглед на документ или създаване на сканиране на документ, за да изпрати фактура, използвайки Java."
weight: 35
url: /bg/java/convert-a-document-to-an-image/
---

Понякога е необходимо да получите изображение вместо документи в други формати, като DOCX или PDF. Например, трябва да добавите преглед на всяка страница с документи към вашия сайт или приложение или да създадете "сканиране" на документ, за да изпратите фактура. Това е, когато може да се наложи да конвертирате документ във всеки [поддържан формат на товара](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) отново, във всеки [поддържан формат за запис](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Конвертиране във формат на изображението

Както при всички вече описани примери за преобразуване, трябва да създадете нов документ или да заредите съществуващ във всеки поддържан формат, да направите необходимите промени и да го запазите във всеки наличен формат на изображението, например JPEG, PNG или BMP.

Следният пример за код показва как да конвертирате DOCX да JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Посочване на настройките при преобразуване в изображение

Aspose.Words Ви осигурява [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) клас, който дава по-голям контрол върху това как документите се съхраняват в различни формати на изображения. Някои свойства на този клас наследяват или претоварване свойства на базови класове като [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) или [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), но има и опции, специфични за запазване на изображения.

Възможно е да се определят страниците, които да се преобразуват във формат на изображението с помощта на [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) собственост. Например, тя може да бъде приложена, ако се нуждаете само от преглед за първата или за определена страница.

Също така е възможно да се контролира качеството на изходните изображения и формата на пикселите, като се използват следните кътчета [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), както и настройките на цветовете на изображението, като се използват следните свойства [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Съществуват и свойства, които важат за определен формат, например, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) или [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Следният пример за код показва как да се създаде предварителен преглед на първата страница на документа с прилагане на някои допълнителни настройки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
