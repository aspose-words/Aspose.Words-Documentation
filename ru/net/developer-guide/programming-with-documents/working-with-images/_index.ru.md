---
title: Работа с изображениями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
description: "Формы изображений в деталях и расширенные функции предоставлены Aspose.Words для .NET."
type: docs
weight: 300
url: /ru/net/working-with-images/
---

Aspose.Words позволяет пользователям очень гибко работать с изображениями. В этой статье вы сможете изучить лишь некоторые возможности работы с изображениями.

## Как вставить изображение {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) предоставляет несколько перегрузок метода [InsertImage](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertimage/), которые позволяют вставлять встроенное или плавающее изображение. Если изображение представляет собой метафайл EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут храниться в формате PNG. Метод **InsertImage** может использовать изображения из разных источников:

- Из файла или `URL`, передав параметр `String` [InsertImage](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertimage/)
- Из потока, передав параметр `Stream` **InsertImage**
- Из объекта Image путем передачи параметра Image **InsertImage**
- Из массива байтов путем передачи параметра массива байтов **InsertImage**

Для каждого из **InsertImage** методов существуют дополнительные перегрузки, которые позволяют вставлять изображение со следующими параметрами:
- Встроенное или плавающее в определенной позиции, например, **InsertImage**
- Процентная шкала или нестандартный размер, например, **InsertImage**; кроме того, метод **InsertImage** возвращает объект [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/), который был только что создан и вставлен, поэтому вы можете дополнительно изменять свойства формы

### Как вставить встроенное изображение {#insert-an-inline-image}

Передайте одну строку, представляющую файл, содержащий изображение, в **InsertImage**, чтобы вставить изображение в документ как встроенную графику

В следующем примере кода показано, как вставить в документ встроенное изображение в позиции курсора:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Как вставить плавающее изображение {#insert-a-floating-image}

В следующем примере кода показано, как вставить плавающее изображение из файла или `URL` в указанную позицию и размер:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Как извлечь изображения из документа {#how-to-extract-images-from-a-document}

Все изображения хранятся в узлах **Shape** в [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/). Чтобы извлечь из документа все изображения или изображения определенного типа, выполните следующие действия:

— Используйте метод [GetChildNodes](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/getchildnodes/), чтобы выбрать все **Shape** узла.
- Перебирать полученные коллекции узлов.
- Проверьте логическое свойство [HasImage](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/hasimage/).
- Извлеките данные изображения, используя свойство [ImageData](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/imagedata/).
- Сохранение данных изображения в файл.

В следующем примере кода показано, как извлечь изображения из документа и сохранить их в виде файлов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как вставить штрих-код на каждую страницу документа {#how-to-insert-barcode-on-each-documen-page}

В этом примере показано, как добавить одинаковые или разные штрих-коды на все или определенные страницы документа Word. Не существует прямого способа добавления штрих-кодов на все страницы документа, но вы можете использовать методы **MoveToSection**, **MoveToHeaderFooter** и **InsertImage**, чтобы перейти к любому разделу или верхним/нижним колонтитулам и вставить изображения штрих-кода, как вы можете видеть в следующем коде.

В следующем примере кода показано, как вставить изображение штрих-кода на каждую страницу документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Заблокировать соотношение сторон изображения {#lock-aspect-ratio-of-image}

Соотношение сторон геометрической фигуры — это соотношение ее размеров в разных измерениях. Вы можете заблокировать соотношение сторон изображения, используя [AspectRatioLocked](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapebase/aspectratiolocked/). Значение соотношения сторон фигуры по умолчанию зависит от [ShapeType](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapetype/). Оно составляет *true* для `ShapeType.Image` и *false* для других типов фигур.

В следующем примере кода показано, как работать с соотношением сторон:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Как получить фактические границы формы в точках {#how-to-get-actual-bounds-of-shape-in-points}

Если вы хотите, чтобы фактическая ограничивающая рамка фигуры отображалась на странице, вы можете добиться этого, используя свойство [BoundsInPoints](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Обрезать изображения {#crop-images}

Под обрезкой изображения обычно подразумевают удаление ненужных внешних частей изображения для улучшения кадрирования. Он также используется для удаления некоторых частей изображения, чтобы сосредоточить внимание на определенной области.

В следующем примере кода показано, как этого добиться, используя Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Сохранить изображения в формате WMF {#save-images-as-wmf}

Aspose.Words предоставляет функцию сохранения всех доступных изображений в документе в формате [ВМФ](https://docs.fileformat.com/image/wmf/) при преобразовании DOCX в RTF.

В следующем примере кода показано, как сохранить изображения в формате WMF с параметрами сохранения RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
