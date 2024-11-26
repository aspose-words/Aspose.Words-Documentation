---
title: Работа с точки в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с абзаци
linktitle: Работа с абзаци
description: "Вмъкване на параграф в документ C#. Задаване стиловете на параграфа C#. Работа с разделител на стила на параграфа C#. Манипулиране на възела на параграфа C#."
type: docs
weight: 210
url: /bg/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

А параграф е набор от символи, комбинирани в логически блок и завършващи със специален характер, * параграф почивка*. В Aspose.Words, параграф е представен от [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) Клас.

## Вмъкване на параграф

За да вмъкнете нов параграф в документа, всъщност, трябва да вмъкнете един параграф, който да разбие характера му. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) вмъква не само низ от текст в документа, но добавя и прекъсване на параграфа.

Текущото форматиране на шрифта също е посочено от [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) собствеността и форматирането на текущия параграф се определят от [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) собственост. В следващия раздел ще разгледаме по-подробно формата на параграфа.

Следният пример за код показва как да се въведе параграф в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Форматен параграф

Форматирането на текущия параграф се представя от [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) обект, който се връща от [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) собственост. Този обект капсулира различни свойства в параграф форматиране Microsoft Word. Можете лесно да рестартирате форматирането на параграфа в неговия по подразбиране . Нормален стил, ляво подравняване, без вдлъбнатина, без разстояние, без граници, без сянка. [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Следният пример с код показва как да се зададе форматиране на параграфа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Прилагане на стил на §

Някои форматиращи обекти, като **Font** или **ParagraphFormat**, поддържа стилове. Един вграден или определен от потребителя стил е представен от [Style](https://reference.aspose.com/words/net/aspose.words/style/) обект, който съдържа подходящи стилови свойства като име, базов стил, шрифт, стил параграф форматиране, и така нататък.

В допълнение, **Style** обект излага [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) собственост, която връща локалния независим идентификатор на стила, представен от [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) стойност на изброяването. Факт е, че имената на вградените стилове в Microsoft Word са локализирани за различни езици. Използвайки идентификатора на стила, можете да намерите правилния стил, независимо от езика на документа. Стойностите на изброяването съответстват на вградените Microsoft Word стилове като *Normal*, * Heading 1*, * Heading 2* и така нататък. Всички потребителски стилове са настроени към **StyleIdentifier.User** стойност на изброяването.

Следният пример за код показва как да се приложи стил на параграфа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Вмъкване на разделител на стила за поставяне на различни стилове

Към края на параграфа може да се добави разделител на стила, като се използва клавишният пряк път Ctrl+Alt+ Enter в Microsoft Word. Тази функция ви позволява да използвате два различни стила на параграфа в един и същ логически отпечатан абзац. Ако искате някакъв текст от началото на определена функция да се появи в съдържанието, но не искате цялата функция да се покаже в съдържанието, можете да използвате тази функция.

Следният пример за код показва как да се вмъкне разделител на стила, за да се поберат различни стилове параграф:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Идентифициране на параграф Разделител на стила

Aspose.Words показва [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) публична собственост върху `Paragraph` клас за идентифициране на параграф с разделител на стила, както е показано в примера по-долу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Прилагане на граници и оформяне на абзац

Граници в Aspose.Words са представени от [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) Клас ... това е колекция от [Border](https://reference.aspose.com/words/net/aspose.words/border/) обекти, които са достъпни по индекс или по граничен вид. Типът граница на свой ред е представен от [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) Изброяване. Някои стойности за изброяване се прилагат за множество или само един документен елемент. Например, **BorderType.Bottom** се прилага за параграф или таблица, докато **BorderType.DiagonalDown** определя диагонална граница само в таблица.

Както събирането на границите, така и всяка отделна граница имат сходни атрибути като цвят, стил на линия, ширина на линията, разстояние от текста, и по избор сянка. Те са представени от свойства на едно и също име. Можете да получите различни типове граници чрез комбиниране на имоти ценности. В допълнение, **BorderCollection** както и **Border** обекти ви позволяват да рестартирате тези стойности към техните стойности по подразбиране, като се обадите на [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) метод.

{{% alert color="primary" %}}

Имайте предвид, че когато граничните свойства бъдат рестартирани към техните стойности по подразбиране, границата става невидима.

{{% /alert %}}

Aspose.Words също има [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) клас, който съдържа сенчести атрибути за документи елементи. Можете да зададете желаната сянка текстура и цветове, които се прилагат на фона и преден план на елемент с помощта на [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) стойност на изброяването. **TextureIndex** също така ви позволява да се прилагат различни модели към **Shading** Възразявам. Например, за да зададете фонов цвят за елемент на документ, използвайте **TextureIndex.TextureSolid** стойност и настройте цвета на засенчване на преден план според случая.

Следният пример за код показва как да се прилагат граници и да се засенчва параграф:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Редове на преброяването

Ако искате да преброите броя на редовете в параграф за всеки документ на Word, може да се използва следната извадка от кодове:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
