---
title: Работа с абзацами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с пунктами
linktitle: Работа с пунктами
description: "Методы манипулирования узлами параграфов Java."
type: docs
weight: 210
url: /ru/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Параграф - это набор символов, объединенных в логический блок и заканчивающихся специальным персонажем - разрывом параграфа. в Aspose.Words, пункт представлен в виде [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) класс.

## Включить пункт

Чтобы вставить в документ новый абзац, на самом деле нужно вставить в него пункт разбивки. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) Вставляет в документ не только строку текста, но и добавляет абзац перерыва.

Текущее форматирование шрифта также определяется [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) собственности, а форматирование текущего пункта определяется [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) собственность. В следующем разделе мы рассмотрим более подробно форматирование абзаца.

Следующий пример кода показывает, как вставить абзац в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Пункт формата

Текущее форматирование абзаца представлено [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) объект, который возвращается [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) собственность. Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко сбросить форматирование абзаца до его по умолчанию - Нормальный стиль, выровненный слева, без отступов, без интервалов, без границ, без затенения - позвонив [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Следующий пример кода показывает, как установить форматирование абзаца:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Применяйте стиль параграфа

Некоторые форматирующие объекты, такие как Font или ParactFormat, поддерживают стили. Единый встроенный или определяемый пользователем стиль представлен [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) объект, который содержит соответствующие свойства стиля, такие как имя, базовый стиль, шрифт и форматирование абзаца стиля и так далее.

Кроме того, a **Style** Объект обеспечивает [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) свойство, возвращающее идентификатор локально-независимого стиля, представленный **StyleIdentifier** Перечислительная стоимость. Дело в том, что названия встроенных стилей в Microsoft Word Они локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют Microsoft Word Встроенные стили, такие как *Normal*, *Голова 1*, *Голова 2* и т.д. Все пользовательские стили присваиваются **Идентификатор стиля. Пользовательская ценность**.

Следующий пример кода показывает, как применять стиль абзаца:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Вставить разделитель стилей, чтобы поместить различные стили абзацев

Разделитель стилей может быть добавлен в конец абзаца с помощью Ctrl + Alt + Enter Keyboard Shortcut в MS Word. Эта функция позволяет использовать два разных стиля абзацев в одном логическом печатном абзаце. Если вы хотите, чтобы какой-то текст с начала определенного заголовка отображался в таблице содержимого, но не хотите, чтобы весь заголовок в таблице содержимого, вы можете использовать эту функцию.

Следующий пример кода показывает, как вставить разделитель стилей для размещения различных стилей абзацев:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Применять границы и оттенки к абзацу

Границы в Aspose.Words представлены в виде [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) Класс – это коллекция [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) объекты, к которым осуществляется доступ по индексу или по пограничному типу. The `Border` Тип представлен в виде [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) перечисление. Некоторые значения перечисления применимы к нескольким или только одному элементу документа. Например, **BorderType.Bottom** применимо к абзацу или столовой ячейке, если **BorderType.DiagonalDown** Указывает диагональную границу только в столовой ячейке.

И пограничная коллекция, и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и дополнительная тень. Они представлены свойствами того же названия. Вы можете достичь различных типов границ, объединив стоимость недвижимости. Кроме того, оба **BorderCollection** и **Border** объекты позволяют вам сбросить эти значения по умолчанию, вызывая [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) метод.

{{% alert color="primary" %}}

Обратите внимание, что когда пограничные свойства сбрасываются на значения по умолчанию, граница невидима.

{{% /alert %}}

Aspose.Words также имеет [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) Класс содержит затеняющие атрибуты для элементов документа. Вы можете установить желаемую текстуру затенения и цвета, которые наносятся на фон и передний план элемента.

Текстура затенения устанавливается вместе с [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) значение перечисления, которое позволяет применять различные шаблоны к **Shading** объект. Например, чтобы установить цвет фона для элемента документа, используйте `TextureIndex.TextureSolid` Значение и установить передний план затенения цвета, как это уместно. Приведенный ниже пример кода показывает, как применять границы и затенение к абзацу.

Следующий пример кода показывает, как применять границы и затенение к абзацу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
