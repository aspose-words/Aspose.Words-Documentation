---
title: Работа с изображения в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с изображения
linktitle: Работа с изображения
type: docs
description: "Изображение форми в детайли и напреднали функции, предоставени от Aspose.Words вместо Java."
weight: 300
url: /bg/java/working-with-images/
---

Aspose.Words позволява на потребителите да работят с изображения по много гъвкав начин. В тази статия можете да разгледате само някои от възможностите за работа с изображения.

## Как да извлечете изображения от документ {#how-to-extract-images-from-a-document}

Всички изображения се съхраняват вътре **Shape** Възел в документ. За да извлечете всички изображения или изображения с конкретен тип от документа, следвайте следните стъпки:

- Използвайте [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) метод за избор на всички формални възли.
- Итерат чрез получени възли колекции.
- Проверете [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) Булеанска собственост.
- Извличане на изображения с помощта на [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) собственост.
- Запис на данните от изображението във файл.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Как да въведете баркод на всяка страница с документи {#how-to-insert-barcode-on-each-documen-page}

Този пример ви позволява да добавите същите или различни баркоди на всички или конкретни страници на Word документ. Няма директен начин за добавяне на баркоди на всички страници на документ, но можете да използвате [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) както и [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) методи за преминаване към някоя секция или заглавни части/футове и вмъкване на баркод изображения, както можете да видите в следния код

Следният пример за код показва как да се постави изображение на баркод на всяка страница на документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Lock Aspect Съотношение на изображението {#lock-aspect-ratio-of-image}

Съотношението на аспекта на геометрична форма е съотношението на неговите размери в различни размери. Можете да заключите съотношението на аспекта на изображение с помощта на [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Стойността по подразбиране на съотношението на аспекта на формата зависи от [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Така е. true вместо `ShapeType.Image` както и false за други видове форми.

Следният пример за код показва как да се работи с отношението на аспекта:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Как да получите действително границите на форма в точки {#how-to-get-actual-bounds-of-shape-in-points}

Ако искате действително свързваща кутия на формата, както е преведено на страницата, можете да постигнете това чрез използване на [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) собственост.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Житните изображения

Изрязването на изображение обикновено се отнася до отстраняване на нежелани външни части на изображението, за да се подобри рамката. Използва се и за премахване на някои части от изображението, за да се увеличи фокусът върху определена област.

Следният пример за код показва как да се постигне това използване Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Запис на изображения като WMF

Aspose.Words осигурява функционалност за запис на всички налични изображения в документ [WMF](https://docs.fileformat.com/image/wmf/)формат при преобразуване на DOCX в RTF.

Следният пример за код показва как да запишете изображения като WMF с RTF опции за запис:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
