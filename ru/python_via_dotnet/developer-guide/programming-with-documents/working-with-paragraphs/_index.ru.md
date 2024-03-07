---
title: Работа с абзацами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с абзацами
linktitle: Работа с абзацами
description: "Вставьте абзац и укажите его форматирование в документе, используя Python."
type: docs
weight: 210
url: /ru/python-net/working-with-paragraphs/
---

Абзац — это набор символов, объединенный в логический блок и заканчивающийся специальным символом — *разрывом абзаца*. В Aspose.Words абзац представлен классом [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Вставить абзац

Фактически, чтобы вставить в документ новый абзац, в него нужно вставить символ разрыва абзаца. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) также вставляет в документ текстовую строку, но, кроме того, добавляет разрыв абзаца.

Текущее форматирование шрифта также определяется свойством [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), а текущее форматирование абзаца определяется свойством [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

В следующем примере кода показано, как вставить абзац в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Форматировать абзац

Текущее форматирование абзаца представлено объектом [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), который возвращается свойством [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко сбросить форматирование абзаца к стандартному стилю, с выравниванием по левому краю, без отступов, без интервалов, без границ и без заливки, позвонив по номеру [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

В следующем примере кода показано, как задать форматирование абзаца:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Применить стиль абзаца

Некоторые объекты форматирования, такие как [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) или [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), поддерживают стили. Один встроенный или определяемый пользователем стиль представлен объектом [Style](https://reference.aspose.com/words/python-net/aspose.words/style/), который содержит соответствующие свойства стиля, такие как имя, базовый стиль, шрифт и форматирование абзаца стиля и т.д.

Кроме того, объект [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) предоставляет свойство [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/), которое возвращает независимый от локали идентификатор стиля, представленный значением перечисления [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Дело в том, что названия встроенных стилей в Microsoft Word локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют встроенным стилям Microsoft Word, таким как "Обычный", "Заголовок 1", "Заголовок 2" и т.д. Всем пользовательским стилям присваивается значение [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

В следующем примере кода показано, как применить стиль абзаца:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Вставьте разделитель стилей для размещения разных стилей абзацев

Разделитель стилей можно добавить в конец абзаца, используя сочетание клавиш Ctrl + Alt + Enter в MS Word. Эта функция позволяет использовать два разных стиля абзаца в одном логическом печатном абзаце. Если вы хотите, чтобы некоторый текст из начала определенного заголовка отображался в оглавлении, но не хотите, чтобы весь заголовок отображался в оглавлении, вы можете использовать эту функцию

В следующем примере кода показано, как вставить разделитель стилей для соответствия различным стилям абзацев:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Определить разделитель стилей абзацев

Aspose.Words предоставляет общедоступное свойство [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) в класс [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), позволяющее идентифицировать абзац-разделитель стилей, как показано в примере, приведенном ниже:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Применение границ и заливки к абзацу

Границы представлены номером [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Это коллекция из [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) объектов, доступ к которым осуществляется по индексу или по типу границы. Тип границы представлен перечислением [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Некоторые значения перечисления применимы к нескольким или только одному элементу документа. Например, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) применимо к абзацу или ячейке таблицы, а [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) указывает только диагональную границу в ячейке таблицы.

И коллекция границ, и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и необязательная тень. Они представлены одноименными свойствами. Вы можете получить разные типы границ, комбинируя значения свойств. Кроме того, объекты [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) и [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) позволяют сбросить эти значения к значениям по умолчанию, вызвав метод [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Обратите внимание: когда свойства границы сбрасываются до значений по умолчанию, граница становится невидимой.

{{% /alert %}}

Aspose.Words также имеет класс [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/), содержащий атрибуты затенения для элементов документа. Вы можете установить желаемую текстуру затенения и цвета, которые применяются к фону и переднему плану элемента.

Текстуре затенения присвоено значение перечисления [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/), которое позволяет применять различные шаблоны к объекту [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Например, чтобы установить цвет фона для элемента документа, используйте значение [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) и установите соответствующий цвет заливки переднего плана. В примере ниже показано, как применить границы и заливку к абзацу.

В следующем примере кода показано, как применить границы и заливку к абзацу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
