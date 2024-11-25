---
title: Работа с абзацами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с абзацами
linktitle: Работа с абзацами
description: "Методы манипулирования узлами абзаца выполняются с использованием Java."
type: docs
weight: 210
url: /ru/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Абзац – это набор символов, объединенных в логический блок и заканчивающихся специальным символом *paragraph break*. В Aspose.Words абзац представлен классом [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

## Вставка абзаца

Чтобы вставить в документ новый абзац, на самом деле, вам нужно вставить в него символ разрыва абзаца. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) вставляет в документ не только строку текста, но и добавляет разрыв абзаца.

Текущее форматирование шрифта также определяется свойством [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont), а текущее форматирование абзаца определяется свойством [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). В следующем разделе мы более подробно рассмотрим форматирование абзаца.

В следующем примере кода показано, как вставить абзац в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Форматировать абзац

Текущее форматирование абзаца представлено объектом [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/), который возвращается свойством [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Этот объект инкапсулирует различные свойства форматирования абзаца, доступные в Microsoft Word. Вы можете легко изменить форматирование абзаца на стандартное – обычный стиль, выравнивание по левому краю, без отступов, без интервалов, без границ, без затенения - с помощью команды [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

В следующем примере кода показано, как задать форматирование абзаца:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Применить стиль абзаца

Некоторые объекты форматирования, такие как шрифт или ParagraphFormat, поддерживают стили. Отдельный встроенный или определяемый пользователем стиль представлен объектом [Style](https://reference.aspose.com/words/java/com.aspose.words/style/), который содержит соответствующие свойства стиля, такие как название, базовый стиль, форматирование шрифта и абзаца стиля и так далее.

Кроме того, объект **Style** предоставляет свойство [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier), которое возвращает идентификатор стиля, не зависящий от языка, представленный значением перечисления **StyleIdentifier**. Дело в том, что названия встроенных стилей в Microsoft Word локализованы для разных языков. Используя идентификатор стиля, вы можете найти правильный стиль независимо от языка документа. Значения перечисления соответствуют встроенным стилям Microsoft Word, таким как *Normal*, *Heading 1*, *Heading 2*, и т.д. Всем пользовательским стилям присваивается значение **StyleIdentifier.User value**.

В следующем примере кода показано, как применить стиль абзаца:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Вставьте разделитель стилей для размещения различных стилей абзацев

Разделитель стилей можно добавить в конец абзаца, используя сочетание клавиш Ctrl + Alt + Enter в MS Word. Эта функция позволяет использовать два разных стиля абзаца в одном логичном печатном абзаце. Если вы хотите, чтобы какой-то текст из начала определенного заголовка отображался в оглавлении, но не весь заголовок целиком, вы можете воспользоваться этой функцией.

В следующем примере кода показано, как вставить разделитель стилей для соответствия различным стилям абзацев:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Примените границы и затенение к абзацу

Границы в Aspose.Words представлены классом [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) – это коллекция объектов [Border](https://reference.aspose.com/words/java/com.aspose.words/border/), доступ к которым осуществляется по индексу или по типу границы. Тип `Border` представлен перечислением [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/). Некоторые значения перечисления применимы к нескольким или только к одному элементу документа. Например, **BorderType.Bottom** применимо к абзацу или ячейке таблицы, в то время как **BorderType.DiagonalDown** определяет диагональную границу только в ячейке таблицы.

Как коллекция рамок, так и каждая отдельная граница имеют схожие атрибуты, такие как цвет, стиль линии, ширина линии, расстояние от текста и необязательная тень. Они представлены одноименными свойствами. Комбинируя значения свойств, вы можете создавать различные типы границ. Кроме того, оба объекта **BorderCollection** и **Border** позволяют вам сбросить эти значения до значений по умолчанию, вызвав метод [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting).

{{% alert color="primary" %}}

Обратите внимание, что когда свойства границы сбрасываются к значениям по умолчанию, граница становится невидимой.

{{% /alert %}}

Aspose.Words также содержит класс [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/), содержащий атрибуты затенения для элементов документа. Вы можете задать желаемую текстуру затенения и цвета, которые будут применяться к фону и переднему плану элемента.

Текстура затенения задается значением перечисления [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/), которое позволяет применять различные узоры к объекту **Shading**. Например, чтобы задать цвет фона для элемента документа, используйте значение `TextureIndex.TextureSolid` и соответствующим образом задайте цвет затенения переднего плана. В примере кода, приведенном ниже, показано, как применить границы и затенение к абзацу.

В следующем примере кода показано, как применить границы и затенение к абзацу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
