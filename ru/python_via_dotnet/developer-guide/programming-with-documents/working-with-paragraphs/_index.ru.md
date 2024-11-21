---
title: Работа с абзацами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с пунктами
linktitle: Работа с пунктами
description: "Включить пункт и указать его форматирование в документе с использованием Python."
type: docs
weight: 210
url: /ru/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Параграф - это набор символов, объединенных в логический блок и заканчивающихся специальным персонажем - разрывом параграфа. в Aspose.Words, пункт представлен в виде [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) класс.

## Включить пункт

Чтобы вставить в документ новый абзац, на самом деле нужно вставить в него пункт разбивки. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) В документ также вставляется строка текста, но в дополнение к этому добавляется перерыв в абзаце.

Текущее форматирование шрифта также определяется [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) свойство и текущее форматирование абзаца определяется [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) собственность.

Следующий пример кода показывает, как вставить абзац в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Пункт формата

Текущее форматирование абзаца представлено [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) объект, который возвращается [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) собственность. Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко сбросить форматирование абзаца по умолчанию до нормального стиля, выровненного слева, без отступов, без интервала, без границ и затенения, позвонив по телефону. [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Следующий пример кода показывает, как установить форматирование абзаца:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Применяйте стиль параграфа

Некоторые форматирующие объекты, такие как [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) или [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) Стили поддержки. Единый встроенный или пользовательский стиль представлен [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) объект, который содержит соответствующие свойства стиля, такие как имя, базовый стиль, шрифт и форматирование абзаца стиля и так далее.

Кроме того, a [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) Объект обеспечивает [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) свойство, возвращающее идентификатор локально-независимого стиля, представленный [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) перечислительная стоимость. Дело в том, что названия встроенных стилей в Microsoft Word Они локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют Microsoft Word Встроенные стили, такие как Normal, Heading 1, Heading 2 и т.д. Все пользовательские стили присваиваются [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) ценность

Следующий пример кода показывает, как применять стиль абзаца:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Вставить разделитель стилей, чтобы поместить различные стили абзацев

Разделитель стилей может быть добавлен в конец абзаца с помощью Ctrl + Alt + Введите ярлык клавиатуры в MS Word Эта функция позволяет использовать два разных стиля абзацев в одном логическом печатном абзаце. Если вы хотите, чтобы какой-то текст с начала определенного заголовка отображался в таблице содержимого, но не хотите, чтобы весь заголовок в таблице содержимого, вы можете использовать эту функцию

Следующий пример кода показывает, как вставить разделитель стилей для размещения различных стилей абзацев:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Определить пункт Разделитель стилей

Aspose.Words предоставляет государственную собственность [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) входить в [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Класс позволяет идентифицировать разделитель стиля, как показано в примере, приведенном ниже:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Применять границы и переход к абзацу

Границы представляют собой [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Это коллекция [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) объекты, к которым осуществляется доступ по индексу или по пограничному типу. Пограничный тип обозначается [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) перечисление. Некоторые значения перечисления применимы к нескольким или только одному элементу документа. Например, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) применимо к абзацу или столовой ячейке, если [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) Указывает диагональную границу только в столовой ячейке.

И пограничная коллекция, и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и дополнительная тень. Они представлены свойствами того же названия. Вы можете достичь различных типов границ, объединив стоимость недвижимости. Кроме того, оба [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) и [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) объекты позволяют вам сбросить эти значения по умолчанию, вызывая [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) метод.

{{% alert color="primary" %}}

Обратите внимание, что когда пограничные свойства сбрасываются до значений по умолчанию, граница становится невидимой.

{{% /alert %}}

Aspose.Words также имеет [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) Класс содержит затеняющие атрибуты для элементов документа. Вы можете установить желаемую текстуру затенения и цвета, которые наносятся на фон и передний план элемента.

Затенение текстуры устанавливается с помощью [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) значение перечисления, которое позволяет применять различные шаблоны к [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) объект. Например, чтобы установить цвет фона для элемента документа, используйте [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) Значение и установить передний план затенения цвета в зависимости от случая. Ниже пример показывает, как применять границы и затенение к абзацу.

Следующий пример кода показывает, как применять границы и затенение к абзацу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
