---
title: Работа с абзацами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с пунктами
linktitle: Работа с пунктами
description: "Включить пункт в документ C#. Установите стили абзаца в C#. Работа с разделителем стиля параграфа C#. Манипулирование узлом абзаца с помощью C#."
type: docs
weight: 210
url: /ru/net/working-with-paragraphs/
---

Параграф - это набор символов, объединенных в логический блок и заканчивающихся специальным персонажем - разрывом параграфа. в Aspose.Words, пункт представлен в виде [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) класс.

## Включить пункт

Чтобы вставить в документ новый абзац, на самом деле нужно вставить в него пункт разбивки. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) Вставляет в документ не только строку текста, но и добавляет абзац перерыва.

Текущее форматирование шрифта также определяется [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) свойство, а форматирование текущего абзаца определяется [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) собственность. В следующем разделе мы рассмотрим более подробно форматирование абзаца.

Следующий пример кода показывает, как вставить абзац в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Пункт формата

Текущее форматирование абзаца представлено [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) объект, который возвращается [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) собственность. Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко сбросить форматирование абзаца до его по умолчанию - Нормальный стиль, выровненный слева, без отступов, без интервалов, без границ, без затенения - позвонив [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Следующий пример кода показывает, как установить форматирование абзаца:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Применяйте стиль параграфа

Некоторые форматирующие объекты, такие как **Font** или **ParagraphFormat**, Стили поддержки. Один встроенный или определяемый пользователем стиль представлен [Style](https://reference.aspose.com/words/net/aspose.words/style/) объект, который содержит соответствующие свойства стиля, такие как имя, базовый стиль, шрифт, форматирование абзаца стиля и так далее.

Кроме того, **Style** Объект раскрывает [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) свойство, возвращающее локально-независимый идентификатор стиля, представленный [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) перечислительная стоимость. Дело в том, что названия встроенных стилей в Microsoft Word Они локализованы для разных языков. С помощью идентификатора стиля можно найти правильный стиль независимо от языка документа. Значения перечня соответствуют встроенным Microsoft Word стилей, таких как *Normal*, *Голова 1*, *Голова 2* и так далее. Все пользовательские стили устанавливаются на **StyleIdentifier.User** перечислительная стоимость.

Следующий пример кода показывает, как применять стиль абзаца:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Вставить разделитель стилей, чтобы поместить различные стили абзацев

Сепаратор стилей может быть добавлен в конец абзаца с помощью сочетания клавиш Ctrl + Alt + Enter in Microsoft Word. Эта функция позволяет использовать два разных стиля абзацев в одном и том же логическом печатном абзаце. Если вы хотите, чтобы какой-то текст с начала конкретного заголовка появлялся в таблице содержимого, но не хотите, чтобы весь заголовок отображался в таблице содержимого, вы можете использовать эту функцию.

Следующий пример кода показывает, как вставить разделитель стилей для размещения различных стилей абзацев:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Определить пункт Разделитель стилей

Aspose.Words разоблачает [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) государственной собственности на `Paragraph` класс для идентификации абзаца с разделителем стилей, как показано в примере ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Применять границы и переход к абзацу

Границы в Aspose.Words представлены в виде [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) Класс – это коллекция [Border](https://reference.aspose.com/words/net/aspose.words/border/) объекты, к которым осуществляется доступ по индексу или по пограничному типу. Граница, в свою очередь, представлена [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) перечисление. Некоторые значения перечисления относятся к множеству или только к одному элементу документа. Например, **BorderType.Bottom** относится к абзацу или столовой ячейке, в то время как **BorderType.DiagonalDown** Указывает диагональную границу только в столовой ячейке.

И пограничная коллекция, и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и дополнительная тень. Они представлены свойствами того же названия. Вы можете получить различные типы границ, объединив стоимость недвижимости. Кроме того, **BorderCollection** и **Border** объекты позволяют вам сбросить эти значения до их значений по умолчанию, вызывая [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) метод.

{{% alert color="primary" %}}

Обратите внимание, что когда пограничные свойства сбрасываются до значений по умолчанию, граница становится невидимой.

{{% /alert %}}

Aspose.Words также имеет [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) класс, который содержит затеняющие атрибуты для элементов документа. Вы можете установить желаемую текстуру затенения и цвета, которые наносятся на фон и передний план элемента, используя [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) перечислительная стоимость. **TextureIndex** Также позволяет применять различные шаблоны к **Shading** объект. Например, чтобы установить цвет фона для элемента документа, используйте **TextureIndex.TextureSolid** Значение и установить передний план затенения цвета, как это уместно.

Следующий пример кода показывает, как применять границы и затенение к абзацу:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Пункты графа

Если вы хотите подсчитать количество строк в абзаце для любого документа Word, можно использовать следующий образец кода:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}