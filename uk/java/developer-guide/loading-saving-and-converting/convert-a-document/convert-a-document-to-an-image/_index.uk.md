---
title: Перетворення документа в зображення Java
second_title: Aspose.Words для Java
articleTitle: Перетворення документа в зображення
linktitle: Перетворення документа в зображення
type: docs
description: "Перетворення документа в формат зображення (JPG, PNG тощо). Створіть попередній перегляд документа або створіть сканування документів для відправки рахунку-фактури Javaй"
weight: 35
url: /uk/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Іноді необхідно отримати зображення замість документів в інших форматах, таких як DOCX або PDF. Наприклад, необхідно додати попередній перегляд будь-якої сторінки документа на Ваш сайт або додаток або створити "скан" документа для відправки рахунку-фактури. Це коли ви можете конвертувати документ у будь-який інший [підтримка](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) до образу, знову, в будь-якому [підтримка](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)й

## Перетворення в формат зображення

Як і всі приклади перетворення вже описані, потрібно створити новий документ або завантажити існуючий в будь-якому форматі підтримки, зробити необхідні зміни і зберегти його в будь-якому доступному форматі зображення, наприклад, JPEG, PNG або BMP.

Приклад коду показує, як перетворити DOCX в JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Вкажіть параметри збереження при перетворенні на зображення

Aspose.Words Ви з [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) клас, який надає більш контроль над тим, як зберігаються документи в різних форматах зображень. Деякі властивості цього класу успадкування або перевантаження властивостей базових класів, таких як [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) або [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), але є також варіанти, специфічні для збереження зображень.

Можна вказати сторінки, які будуть перетворені у формат зображення за допомогою [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) майно. Наприклад, можна застосувати, якщо вам потрібен тільки попередній перегляд для першої або на певну сторінку.

Також можна контролювати якість вихідного зображення та формат пікселя за допомогою наступних властивостей – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), а також налаштувати параметри кольору зображень, використовуючи такі властивості – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor)й

Є також властивості, які застосовуються до певного формату, наприклад, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) або [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)й

Приклад коду показує, як створити попередній перегляд першої сторінки документа з додаванням деяких додаткових налаштувань:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
