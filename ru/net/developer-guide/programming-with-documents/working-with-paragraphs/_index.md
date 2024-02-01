---
title: Работа с абзацами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с абзацами
linktitle: Работа с абзацами
description: "Вставьте абзац в документ C#. Установите стили абзаца в C#. Работайте с разделителем стилей абзаца C#. Управляйте узлом абзаца, используя C#."
type: docs
weight: 210
url: /ru/net/working-with-paragraphs/
---

Абзац — это набор символов, объединенный в логический блок и заканчивающийся специальным символом — *разрывом абзаца*. В Aspose.Words абзац представлен классом [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Вставить абзац

Фактически, чтобы вставить в документ новый абзац, в него нужно вставить символ разрыва абзаца. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) вставляет в документ не только строку текста, но и добавляет разрыв абзаца.

Текущее форматирование шрифта также определяется свойством [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/), а текущее форматирование абзаца определяется свойством [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). В следующем разделе мы более подробно остановимся на форматировании абзацев.

В следующем примере кода показано, как вставить абзац в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Форматировать абзац

Текущее форматирование абзаца представлено объектом [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/), который возвращается свойством [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко сбросить форматирование абзаца до значения по умолчанию — обычный стиль, выравнивание по левому краю, без отступов, без интервалов, без границ, без заливки — позвонив по номеру [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

В следующем примере кода показано, как задать форматирование абзаца:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Применить стиль абзаца

Некоторые объекты форматирования, например **Font** или **ParagraphFormat**, поддерживают стили. Один встроенный или определяемый пользователем стиль представлен объектом [Style](https://reference.aspose.com/words/net/aspose.words/style/), который содержит соответствующие свойства стиля, такие как имя, базовый стиль, шрифт, форматирование абзаца стиля и т.д.

Кроме того, объект **Style** предоставляет свойство [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), которое возвращает независимый от локали идентификатор стиля, представленный значением перечисления [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). Дело в том, что названия встроенных стилей в Microsoft Word локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют встроенным стилям Microsoft Word, таким как *Normal*, *Заголовок 1*, *Заголовок 2* и т.д. Для всех пользовательских стилей установлено значение перечисления **StyleIdentifier.User**.

В следующем примере кода показано, как применить стиль абзаца:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Вставьте разделитель стилей для размещения разных стилей абзацев

Разделитель стилей можно добавить в конец абзаца с помощью сочетания клавиш Ctrl+Alt+Enter в Microsoft Word. Эта функция позволяет использовать два разных стиля абзаца в одном логическом печатном абзаце. Если вы хотите, чтобы некоторый текст из начала определенного заголовка отображался в оглавлении, но не хотите, чтобы весь заголовок отображался в оглавлении, вы можете использовать эту функцию.

В следующем примере кода показано, как вставить разделитель стилей для соответствия различным стилям абзацев:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Определить разделитель стилей абзацев

Aspose.Words предоставляет общедоступное свойство [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) класса `Paragraph` для идентификации абзаца с разделителем стилей, как показано в примере ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Применение границ и заливки к абзацу

Границы в Aspose.Words представлены классом [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) — это коллекция из [Border](https://reference.aspose.com/words/net/aspose.words/border/) объектов, доступ к которым осуществляется по индексу или по типу границы. Тип границы, в свою очередь, представлен перечислением [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Некоторые значения перечисления применяются к нескольким или только одному элементу документа. Например, **BorderType.Bottom** применяется к абзацу или ячейке таблицы, а **BorderType.DiagonalDown** определяет диагональную границу только в ячейке таблицы.

И коллекция границ, и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и необязательная тень. Они представлены одноименными свойствами. Вы можете получить разные типы границ, комбинируя значения свойств. Кроме того, объекты **BorderCollection** и **Border** позволяют сбросить эти значения к значениям по умолчанию, вызвав метод [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Обратите внимание: когда свойства границы сбрасываются до значений по умолчанию, граница становится невидимой.

{{% /alert %}}

Aspose.Words также имеет класс [Shading](https://reference.aspose.com/words/net/aspose.words/shading/), который содержит атрибуты затенения для элементов документа. Вы можете установить желаемую текстуру затенения и цвета, которые применяются к фону и переднему плану элемента, используя значение перечисления [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** также позволяет применять к объекту **Shading** различные узоры. Например, чтобы установить цвет фона для элемента документа, используйте значение **TextureIndex.TextureSolid** и установите соответствующий цвет заливки переднего плана.

В следующем примере кода показано, как применить границы и заливку к абзацу:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Подсчитайте строки абзаца

Если вы хотите подсчитать количество строк в абзаце любого документа Word, можно использовать следующий пример кода:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}