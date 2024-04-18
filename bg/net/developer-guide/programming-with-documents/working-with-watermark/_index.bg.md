---
title: Работа с воден знак в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с воден знак
linktitle: Работа с воден знак
description: "Манипулация на воден знак с документ C#."
type: docs
weight: 340
url: /bg/net/working-with-watermark/
---

Тази тема обсъжда как да се работи програмично с воден знак използване Aspose.Words. Воден знак е фоново изображение, което показва зад текста в документ. Воден знак може да съдържа текст или изображение, представено от [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) Клас.

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн документ воден знак](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Добавяне на воден знак към документ

В Microsoft Word, може лесно да се постави воден знак в документ, като се използва командата "Вмъкни воден знак." Aspose.Words осигурява [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) клас за добавяне или премахване на воден знак в документи. Aspose.Words осигурява [Воден знак Тип](https://reference.aspose.com/words/net/aspose.words/watermark/type/)изброяване, определящо три възможни вида водни знаци (Текст, Имидж и Никой) с които да се работи

### Добавяне на текстов воден знак

Следният пример за код показва как да се постави текстов воден знак в документ чрез определяне [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) с помощта на [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Добавяне на изображение воден знак

Следният пример за код показва как да се постави изображение воден знак в документ чрез определяне [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) с помощта на [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Водният знак може да бъде поставен и с помощта на клас форма. Много е лесно да вмъкнете всяка форма или изображение в заглавна част или стъпало и по този начин да създадете воден знак от всеки въображаем тип.

Следният пример за код вмъква воден знак в Word документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Премахване на воден знак от документ

На [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) клас осигурява метода за премахване на водния знак от документ.

Следният пример с код показва как да се премахне воден знак от документите:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Ако водните знаци се добавят с помощта на [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) обект клас след това, за да премахнете водния знак от документ, трябва да зададете само името на формата на воден знак по време на вмъкване и след това да премахнете формата на воден знак с определено име.

Следният пример с код ви показва как да зададете името на формата на водния знак и да го премахнете от документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Добавяне на воден знак в клетка на таблицата

Понякога трябва да поставите воден знак / изображение в клетка на масата и да го покажете извън масата, можете да използвате [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) собственост. Това свойство получава или поставя флаг, показващ дали формата се показва в таблица или извън нея. Имайте предвид, че този имот работи само когато оптимизирате документа за Microsoft Word 2010 с помощта на [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) метод.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
