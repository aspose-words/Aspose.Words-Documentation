---
title: Работа с изображениями в Java
second_title: Aspose.Words для Java
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
type: docs
description: "Форма изображения в деталях и расширенные функции, предоставляемые Aspose.Words для Java."
weight: 300
url: /ru/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Это позволяет пользователям работать с изображениями очень гибко. В этой статье вы можете изучить только некоторые возможности работы с изображениями.

## Как извлечь изображения из документа {#how-to-extract-images-from-a-document}

Все изображения хранятся внутри **Shape** Узлы в документе. Чтобы извлечь из документа все изображения или изображения определенного типа, выполните следующие действия:

- Используйте [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) Способ выбора всех узлов формы.
- Итерировать через результирующие коллекции узлов.
- Проверьте. [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) Булева собственность.
- Извлекать данные изображения с помощью [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) собственность.
- Сохранить данные изображения в файл.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Как вставить штрих-код на каждой странице документа {#how-to-insert-barcode-on-each-documen-page}

Этот пример позволяет добавлять одинаковые или разные штрих-коды на всех или конкретных страницах документа Word. Нет прямого способа добавить штрих-коды на всех страницах документа, но вы можете использовать его. [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) и [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) способы перемещения в любой раздел или заголовки/футеры и вставки изображений штрих-кода, как вы можете видеть в следующем коде

Следующий пример кода показывает, как вставить изображение штрих-кода на каждую страницу документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Соотношение сторон изображения {#lock-aspect-ratio-of-image}

Соотношение сторон геометрической формы - это отношение ее размеров в разных размерах. Вы можете заблокировать соотношение сторон изображения с помощью [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Значение по умолчанию отношения сторон формы зависит от [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Это true для `ShapeType.Image` и false для других типов форм.

Следующий пример кода показывает, как работать с соотношением сторон:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Как получить реальные границы формы в точках {#how-to-get-actual-bounds-of-shape-in-points}

Если вы хотите, чтобы фактическая ограничительная коробка формы отображалась на странице, вы можете достичь этого, используя [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) собственность.

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Изображения Crop

Обрезка изображения обычно относится к удалению нежелательных внешних частей изображения, чтобы помочь улучшить обрамление. Он также используется для удаления некоторых частей изображения, чтобы увеличить фокус на определенной области.

Следующий пример кода показывает, как достичь этого с помощью Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Сохранение изображений как WMF

Aspose.Words обеспечивает функциональность для сохранения всех доступных изображений в документе [WMF](https://docs.fileformat.com/image/wmf/)Преобразование DOCX в RTF.

Следующий пример кода показывает, как сохранить изображения как WMF с опциями сохранения RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
