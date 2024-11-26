---
title: Работа с изображениями в Java
second_title: Aspose.Words для Java
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
type: docs
description: "Детализированные формы изображений и расширенные возможности, предоставляемые Aspose.Words для Java."
weight: 300
url: /ru/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет пользователям работать с изображениями очень гибким способом. В этой статье вы можете рассмотреть лишь некоторые возможности работы с изображениями.

## Как извлечь изображения из документа {#how-to-extract-images-from-a-document}

Все изображения хранятся в **Shape** узлах документа. Чтобы извлечь из документа все изображения или картинки определенного типа, выполните следующие действия:

- Используйте метод [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes), чтобы выбрать все узлы фигуры.
- Выполните итерацию по результирующим наборам узлов.
- Проверьте логическое свойство [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Извлеките данные изображения, используя свойство [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Сохраните данные изображения в файл.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Как вставить штрих-код на каждую страницу документа {#how-to-insert-barcode-on-each-documen-page}

В этом примере вы можете добавить одинаковые или разные штрих-коды на все или определенные страницы документа Word. Прямого способа добавить штрих-коды на все страницы документа не существует, но вы можете использовать методы [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) и [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) для перехода к любому разделу или верхним/нижним колонтитулам и вставки изображений штрих-кодов, как вы можете видеть в следующем коде.

В следующем примере кода показано, как вставить изображение штрих-кода на каждую страницу документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Зафиксировать соотношение сторон изображения {#lock-aspect-ratio-of-image}

Соотношение сторон геометрической фигуры - это соотношение ее размеров в разных измерениях. Вы можете настроить соотношение сторон изображения, используя [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Значение соотношения сторон фигуры по умолчанию зависит от [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Это значение истинно для `ShapeType.Image` и ложно для других типов фигур.

В следующем примере кода показано, как работать с соотношением сторон:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Как получить фактические границы формы в точках {#how-to-get-actual-bounds-of-shape-in-points}

Если вы хотите, чтобы фактическая ограничивающая рамка фигуры отображалась на странице, вы можете добиться этого с помощью свойства [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Обрезка изображений

Обрезка изображения обычно означает удаление нежелательных внешних частей изображения, чтобы улучшить качество кадрирования. Она также используется для удаления некоторых частей изображения, чтобы увеличить фокусировку на определенной области.

В следующем примере кода показано, как этого добиться, используя Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Сохранение изображений как WMF

Aspose.Words предоставляет функциональные возможности для сохранения всех доступных изображений в документе в [WMF](https://docs.fileformat.com/image/wmf/)форматируйте при преобразовании DOCX в RTF.

В следующем примере кода показано, как сохранять изображения как WMF с параметрами сохранения RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
