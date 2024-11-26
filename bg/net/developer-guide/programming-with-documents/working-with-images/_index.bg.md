---
title: Работа с изображения в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с изображения
linktitle: Работа с изображения
description: "Изображение форми в детайли и напреднали функции, предоставени от Aspose.Words вместо .NET."
type: docs
weight: 300
url: /bg/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words позволява на потребителите да работят с изображения по много гъвкав начин. В тази статия можете да разгледате само някои от възможностите за работа с изображения.

## Как да въведете изображение {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) осигурява няколко претоварване на [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) метод, който ви позволява да вмъкнете в линия или плаващо изображение. Ако изображението е метафайл EMF или WMF, то ще бъде вмъкнато в документа във формат metafile. Всички останали изображения ще се съхраняват във формат PNG. На **InsertImage** метод може да използва изображения от различни източници:

- От файл или `URL` чрез преминаване на `String` параметър [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- От поток преминавайки `Stream` параметър **InsertImage**
- От обект на изображение чрез преминаване на параметър на изображението **InsertImage**
- От байт масив чрез преминаване на параметър байт масив **InsertImage**

За всяка от **InsertImage** методи, има допълнителни претоварване, които ви позволяват да въведете изображение със следните опции:
- Inline или плаващи в определена позиция, например, **InsertImage**
- Процент мащаб или потребителски размер, например, **InsertImage**; освен това, **InsertImage** метод връща a [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) обект, който току-що е създаден и поставен, така че можете допълнително да промените свойствата на формата

### Как да въведете в линия изображение {#insert-an-inline-image}

Подай един низ, представляващ файл, който съдържа изображението **InsertImage** да вкарате изображението в документа като графична линия

Следният пример за код показва как да се вкара в документ изображение в полето на курсора:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Как да въведете плаващо изображение {#insert-a-floating-image}

Следният пример с код показва как да се постави плаващо изображение от файл или `URL` в определено положение и размер:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Как да извлечете изображения от документ {#how-to-extract-images-from-a-document}

Всички изображения се съхраняват вътре **Shape** Възли в а [Document](https://reference.aspose.com/words/net/aspose.words/document/). За да извлечете всички изображения или изображения със специфичен тип от документа, следвайте следните стъпки:

- Използвайте [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) метод за избор на всички **Shape** Възли.
- Итерат чрез получени възли колекции.
- Проверете [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) Булеанска собственост.
- Извличане на изображения с помощта на [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) собственост.
- Запис на данните от изображението във файл.

Следният пример с код показва как да извлечете изображения от документ и да ги запишете като файлове:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как да въведете баркод на всяка страница с документи {#how-to-insert-barcode-on-each-documen-page}

Този пример показва, че трябва да добавите същите или различни баркоди на всички или конкретни страници на Word документ. Няма директен начин за добавяне на баркоди на всички страници на документ, но можете да използвате **MoveToSection**, **MoveToHeaderFooter** както и **InsertImage** методи за преминаване към някоя секция или заглавни части/краки и вмъкване на баркод изображения, както можете да видите в следния код.

Следният пример за код показва как да се постави изображение на баркод на всяка страница на документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Lock Aspect Съотношение на изображението {#lock-aspect-ratio-of-image}

Съотношението на аспекта на геометрична форма е съотношението на размерите му в различни размери. Можете да заключите съотношението на изображението [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). По подразбиране стойността на съотношението на аспекта на формата зависи от [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Така е. *true* вместо `ShapeType.Image` както и *false* за други типове форми.

Следният пример за код показва как да се работи с отношението на аспекта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Как да получите действително границите на форма в точки {#how-to-get-actual-bounds-of-shape-in-points}

Ако искате действително вързана кутия на формата, както е преведено на страницата, можете да постигнете това чрез използване на [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) собственост.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Житните изображения {#crop-images}

Изрязването на изображение обикновено се отнася до премахването на нежеланите външни части на изображението, за да се подобри рамката. Използва се и за премахване на някои части от изображението за увеличаване на фокуса върху определена област.

Следният пример за код показва как да се постигне това използване Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Запис на изображения като WMF {#save-images-as-wmf}

Aspose.Words осигурява функционалност за запис на всички налични изображения в документ [WMF](https://docs.fileformat.com/image/wmf/)формат при преобразуване на DOCX в RTF.

Следният пример за код показва как да запишете изображения като WMF с RTF опции за запис:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
