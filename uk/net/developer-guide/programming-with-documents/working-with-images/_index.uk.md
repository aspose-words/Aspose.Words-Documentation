---
title: Робота з зображеннями в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з зображеннями
linktitle: Робота з зображеннями
description: "Зображення форм у деталях та розширених функцій, що надаються Aspose.Words для .NETй"
type: docs
weight: 300
url: /uk/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words дозволяє користувачам працювати з зображеннями в дуже гнучкому режимі. У статті ви можете вивчити лише деякі можливості роботи з зображеннями.

## Як вставити зображення {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) надає кілька перевантаженнях [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) метод, який дозволяє вставляти вбудований або плаваючий образ. Якщо зображення є метафілом EMF або WMF, він буде вставлятися в документ у форматі метафайлу. Всі інші зображення будуть зберігатися в форматі PNG. Про нас **InsertImage** метод може використовувати зображення з різних джерел:

- Від файлу або `URL` шляхом проходження `String` параметр [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- Від потоку шляхом проходження `Stream` параметр **InsertImage**
- Від об'єкта зображень шляхом проходження параметра Зображення **InsertImage**
- Від байтного масиву шляхом проходження параметра байтного масиву **InsertImage**

Для кожного **InsertImage** методи, є подальші перевантаження, які дозволяють вставляти зображення з такими опціями:
- Інлайн або плавлення на певній позиції, наприклад, **InsertImage**
- Процентна вага або користувацький розмір, наприклад, **InsertImage**; далі, **InsertImage** метод повертає [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) об'єкт, який був просто створений і вставлений таким чином, ви можете додатково змінювати властивості Форма

### Як вставити вбудований зображення {#insert-an-inline-image}

Пройдіть один рядок, що представляє файл, який містить зображення **InsertImage** вставити зображення в документ як вбудована графіка

Приклад наступного коду показує, як вставити образ в рядку в позицію курсора в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Як вставити зображення Floating {#insert-a-floating-image}

Приклад наступного коду показує, як вставити плаваючу зображення з файлу або `URL` в зазначеному положенні і розмір:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Як витягти зображення з документа {#how-to-extract-images-from-a-document}

Всі зображення зберігаються всередині **Shape** вершини в [Document](https://reference.aspose.com/words/net/aspose.words/document/)й Щоб витягти всі зображення або зображення, які мають специфічний тип з документа, слідуйте за цими кроками:

- Використовуйте [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) спосіб вибрати всі **Shape** вершини.
- Зберігати за допомогою отриманих вершин.
- Перевірити [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) оленя майна.
- Вилучення даних зображень за допомогою [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) майно.
- Збережіть дані зображень в файл.

Приклад коду показує, як витягти зображення з документа і зберегти їх як файли:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx)й

{{% /alert %}}

## Як вставити штрих-код на кожній сторінці документів {#how-to-insert-barcode-on-each-documen-page}

Цей приклад показує вам, щоб додати однакові або різні штрих-коди на всіх або специфічних сторінках документа Word. Немає прямого способу додавання штрих-кодів на всіх сторінках документа, але ви можете використовувати **MoveToSection**, **MoveToHeaderFooter** і **InsertImage** методи переміщення в будь-який розділ або заголовки / нижній колонтитул і вставити зображення штрих-коду, як ви можете бачити в наступному коді.

Приклад коду показує, як вставити зображення штрих-коду на кожній сторінці документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Lock Aspect Ratio Зображень {#lock-aspect-ratio-of-image}

Співвідношення геометричної форми – співвідношення його розмірів в різних розмірах. Ви можете заблокувати співвідношення сторін зображення [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/)й Значення за замовчуванням співвідношення сторін форми залежить від [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)й Він *true* для `ShapeType.Image` і *false* для інших типів форми.

Приклад коду показує, як працювати з співвідношенням сторін:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Як отримати реальні зв’язки форми в точках {#how-to-get-actual-bounds-of-shape-in-points}

Якщо ви хочете, щоб фактична обмежена коробка форми, як надана на сторінці, ви можете досягти цього, використовуючи [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) майно.

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Crop Зображення {#crop-images}

Вирощування зображення зазвичай відноситься до видалення небажаних зовнішніх частин зображення, щоб допомогти поліпшити обрамлення. Також використовується для видалення деяких порцій зображення для збільшення фокусу на певній області.

Приклад коду показує, як досягти цього за допомогою Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Зберегти зображення як WMF {#save-images-as-wmf}

Aspose.Words забезпечує функціональність для збереження всіх доступних зображень в документі [ВМФ](https://docs.fileformat.com/image/wmf/)Формат при перетворенні DOCX в RTF.

Приклад коду показує, як зберегти зображення як WMF з параметрами збереження RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
