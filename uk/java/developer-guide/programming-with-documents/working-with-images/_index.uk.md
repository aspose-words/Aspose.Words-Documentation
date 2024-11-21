---
title: Робота з зображеннями в Java
second_title: Aspose.Words для Java
articleTitle: Робота з зображеннями
linktitle: Робота з зображеннями
type: docs
description: "Зображення форм у деталях та розширених функцій, що надаються Aspose.Words для Javaй"
weight: 300
url: /uk/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words дозволяє користувачам працювати з зображеннями в дуже гнучкому режимі. У статті ви можете вивчити лише деякі можливості роботи з зображеннями.

## Як витягти зображення з документа {#how-to-extract-images-from-a-document}

Всі зображення зберігаються всередині **Shape** вершини в Документі. Щоб витягти всі зображення або зображення, які мають конкретний тип з документа, слідуйте за цими кроками:

- Використовуйте [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) спосіб вибрати всі вершини форми.
- Зберігати за допомогою отриманих вершин.
- Перевірити [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) оленя майна.
- Вилучення даних зображень за допомогою [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) майно.
- Збережіть дані зображень в файл.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Як вставити штрих-код на кожній сторінці документів {#how-to-insert-barcode-on-each-documen-page}

Цей приклад дозволяє вам додати однакові або різні штрих-коди на всіх або специфічних сторінках документа Word. Немає прямого способу додавання штрих-кодів на всіх сторінках документа, але ви можете використовувати [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) і [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) методи переміщення в будь-який розділ або заголовки / нижній колонтитул і вставити зображення штрих-коду, як ви можете побачити в наступному коді

Приклад коду показує, як вставити зображення штрих-коду на кожній сторінці документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Lock Aspect Ratio Зображень {#lock-aspect-ratio-of-image}

Співвідношення геометричної форми – співвідношення його розмірів в різних розмірах. Ви можете заблокувати співвідношення сторін зображення [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)й Значення за замовчуванням співвідношення сторін форми залежить від [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)й Він true для `ShapeType.Image` і false для інших типів форми.

Приклад коду показує, як працювати з співвідношенням сторін:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Як отримати реальні зв’язки форми в точках {#how-to-get-actual-bounds-of-shape-in-points}

Якщо ви хочете, щоб фактична обмежена коробка форми, як надана на сторінці, ви можете досягти цього, використовуючи [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) майно.

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop Зображення

Вирощування зображення зазвичай відноситься до видалення небажаних зовнішніх частин зображення, щоб допомогти поліпшити обрамлення. Також використовується для видалення деяких порцій зображення для збільшення фокусу на певній області.

Приклад коду показує, як досягти цього за допомогою Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Збереження зображень як WMF

Aspose.Words забезпечує функціональність для збереження всіх доступних зображень в документі [ВМФ](https://docs.fileformat.com/image/wmf/)Формат при перетворенні DOCX в RTF.

Приклад коду показує, як зберегти зображення як WMF з параметрами збереження RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
