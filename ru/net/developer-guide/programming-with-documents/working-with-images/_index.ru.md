---
title: Работа с изображениями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
description: "Форма изображения в деталях и расширенные функции, предоставляемые Aspose.Words для .NET."
type: docs
weight: 300
url: /ru/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words Это позволяет пользователям работать с изображениями очень гибко. В этой статье вы можете изучить только некоторые возможности работы с изображениями.

## Как вставить изображение {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Это приводит к нескольким перегрузкам [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) Способ, позволяющий вставить входящее или плавающее изображение. Если изображение является метафайлом EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут храниться в формате PNG. The **InsertImage** Метод может использовать изображения из разных источников:

- из файла или `URL` проходя мимо `String` параметр [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- из ручья, проходя мимо `Stream` параметр **InsertImage**
- от объекта изображения путем прохождения параметра изображения **InsertImage**
- из байтового массива путем пропускания параметра байтового массива **InsertImage**

Для каждого из них **InsertImage** Есть дополнительные перегрузки, которые позволяют вставить изображение со следующими опциями:
- наклонные или плавающие в определенном положении, например, **InsertImage**
- Процентная шкала или пользовательский размер, например, **InsertImage**Более того, **InsertImage** Способ возвращает [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) объект, который был только что создан и вставлен, чтобы вы могли дополнительно изменять свойства формы

### Как вставить встроенное изображение {#insert-an-inline-image}

Передайте одну строку, представляющую файл, который содержит изображение для **InsertImage** вставить изображение в документ в виде встроенной графики

Следующий пример кода показывает, как вставить встроенное изображение в положение курсора в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Как вставить плавающее изображение {#insert-a-floating-image}

Следующий пример кода показывает, как вставить плавающее изображение из файла или `URL` в определенном положении и размере:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Как извлечь изображения из документа {#how-to-extract-images-from-a-document}

Все изображения хранятся внутри **Shape** узлы в [Document](https://reference.aspose.com/words/net/aspose.words/document/). Чтобы извлечь из документа все изображения или изображения определенного типа, выполните следующие действия:

- Используйте [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) Способ выбрать все **Shape** Узлы.
- Итерировать через результирующие коллекции узлов.
- Проверьте. [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) Булева собственность.
- Извлекать данные изображения с помощью [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) собственность.
- Сохранить данные изображения в файл.

Следующий пример кода показывает, как извлечь изображения из документа и сохранить их в виде файлов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как вставить штрих-код на каждой странице документа {#how-to-insert-barcode-on-each-documen-page}

Этот пример показывает, что вы добавляете одинаковые или разные штрих-коды на все или конкретные страницы документа Word. Нет прямого способа добавить штрих-коды на всех страницах документа, но вы можете использовать штрих-коды. **MoveToSection**, **MoveToHeaderFooter** и **InsertImage** Способы перемещения в любой раздел или заголовки/футеры и вставки изображений штрих-кода, как вы можете видеть в следующем коде.

Следующий пример кода показывает, как вставить изображение штрих-кода на каждую страницу документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Соотношение сторон изображения {#lock-aspect-ratio-of-image}

Соотношение сторон геометрической формы - это отношение ее размеров в разных размерах. Вы можете заблокировать соотношение сторон изображения с помощью [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). Значение по умолчанию отношения сторон формы зависит от [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Это *true* для `ShapeType.Image` и *false* для других типов форм.

Следующий пример кода показывает, как работать с соотношением сторон:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Как получить реальные границы формы в точках {#how-to-get-actual-bounds-of-shape-in-points}

Если вы хотите, чтобы фактическая ограничительная коробка формы отображалась на странице, вы можете достичь этого, используя [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) собственность.

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Изображения Crop {#crop-images}

Обрезка изображения обычно относится к удалению нежелательных внешних частей изображения, чтобы помочь улучшить обрамление. Он также используется для удаления некоторых частей изображения, чтобы увеличить фокус на определенной области.

Следующий пример кода показывает, как достичь этого с помощью Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Сохранить изображения как WMF {#save-images-as-wmf}

Aspose.Words обеспечивает функциональность для сохранения всех доступных изображений в документе [WMF](https://docs.fileformat.com/image/wmf/)Преобразование DOCX в RTF.

Следующий пример кода показывает, как сохранить изображения как WMF с опциями сохранения RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
