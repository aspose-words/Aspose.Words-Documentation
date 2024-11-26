---
title: Работа с абзацами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с абзацами
linktitle: Работа с абзацами
description: "Вставьте абзац и укажите его формат в документе, используя Python."
type: docs
weight: 210
url: /ru/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Абзац – это набор символов, объединенных в логический блок и заканчивающихся специальным символом *paragraph break*. В Aspose.Words абзац представлен классом [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Вставить абзац

Чтобы вставить новый абзац в документ, на самом деле, вам нужно вставить в него символ разрыва абзаца. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) также вставляет строку текста в документ, но, кроме того, добавляет разрыв абзаца.

Текущее форматирование шрифта также определяется свойством [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), а текущее форматирование абзаца определяется свойством [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

В следующем примере кода показано, как вставить абзац в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Форматировать абзац

Текущее форматирование абзаца представлено объектом [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), который возвращается свойством [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко изменить форматирование абзаца по умолчанию на обычный стиль, выровненный по левому краю, без отступов, без интервалов, без границ и без затенения, вызвав команду [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

В следующем примере кода показано, как задать форматирование абзаца:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Применение стиля абзаца

Некоторые объекты форматирования, такие как [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) или [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), поддерживают стили. Отдельный встроенный или определяемый пользователем стиль представлен объектом [Style](https://reference.aspose.com/words/python-net/aspose.words/style/), который содержит соответствующие свойства стиля, такие как название, базовый стиль, форматирование шрифта и абзаца стиля и так далее.

Кроме того, объект [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) предоставляет свойство [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/), которое возвращает идентификатор стиля, не зависящий от языка, представленный значением перечисления [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Дело в том, что названия встроенных стилей в Microsoft Word локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют встроенным стилям Microsoft Word, таким как обычный, Heading 1, Heading 2 и т.д. Всем пользовательским стилям присваивается значение [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user).

В следующем примере кода показано, как применить стиль абзаца:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Вставьте разделитель стилей для размещения различных стилей абзацев

Разделитель стилей можно добавить в конец абзаца, используя сочетание клавиш Ctrl + Alt + Enter в MS Word. Эта функция позволяет использовать два разных стиля абзаца в одном логичном печатном абзаце. Если вы хотите, чтобы какой-то текст из начала определенного заголовка отображался в оглавлении, но не весь заголовок целиком, вы можете воспользоваться этой функцией.

В следующем примере кода показано, как вставить разделитель стилей для соответствия различным стилям абзацев:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Определить разделитель стилей абзацев

Aspose.Words предоставляет общедоступное свойство [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) классу [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), позволяющее идентифицировать абзац-разделитель стилей, как показано в примере, приведенном ниже:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Примените границы и затенение к абзацу

Границы представлены символом [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Это набор из [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) объектов, доступ к которым осуществляется по индексу или по типу границы. Тип границы представлен перечислением [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Некоторые значения перечисления применимы к нескольким или только к одному элементу документа. Например, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) применимо к абзацу или ячейке таблицы, в то время как [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) определяет диагональную границу только в ячейке таблицы.

Как коллекция границ, так и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и необязательная тень. Они представлены одноименными свойствами. Комбинируя значения свойств, вы можете создавать различные типы границ. Кроме того, оба объекта [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) и [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) позволяют вам сбросить эти значения до значений по умолчанию, вызвав метод [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Обратите внимание, что когда свойства границы сбрасываются к значениям по умолчанию, граница становится невидимой.

{{% /alert %}}

Aspose.Words также содержит класс [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/), содержащий атрибуты затенения для элементов документа. Вы можете задать желаемую текстуру затенения и цвета, которые будут применяться к фону и переднему плану элемента.

Текстура затенения задается значением перечисления [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/), которое позволяет применять различные узоры к объекту [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Например, чтобы задать цвет фона для элемента документа, используйте значение [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) и соответствующим образом задайте цвет затенения переднего плана. В приведенном ниже примере показано, как применить границы и затенение к абзацу.

В следующем примере кода показано, как применить границы и затенение к абзацу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
