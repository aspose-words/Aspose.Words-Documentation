---
title: Преобразовать Markdown в DOM
second_title: Aspose.Words для Java
articleTitle: Преобразовать Markdown в объектную модель документа (DOM)
linktitle: Преобразовать Markdown в объектную модель документа (DOM)
type: docs
description: "Преобразуйте документ Markdown в объектную модель документа и обратно. Таким образом, вы можете работать со сложными существующими Markdown и программно создавать документ Markdown с нуля, используя Java."
weight: 20
url: /ru/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Чтобы программно считывать содержимое и форматирование документа, манипулировать им и изменять их, вам необходимо преобразовать его в объектную модель документа Aspose.Words (DOM).

В отличие от документов Word, Markdown не соответствует DOM, описанному в объектной модели документа [Aspose.Words (DOM).](/words/java/aspose-words-document-object-model/) статья. Однако Aspose.Words предоставляет свой собственный механизм для перевода документов Markdown в документы DOM и обратно, так что мы можем успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные функции markdown могут быть переведены в формат Aspose.Words DOM и обратно в формат Markdown.

## Сложность перевода Markdown – DOM – Markdown

Основная сложность этого механизма заключается не только в преобразовании Markdown в DOM, но и в выполнении обратного преобразования – сохранении документа обратно в формат Markdown с минимальными потерями. Существуют элементы, такие как многоуровневые кавычки, для которых обратное преобразование нетривиально.

Наш механизм перевода позволяет пользователям не только работать со сложными элементами в существующем документе Markdown, но и создавать свой собственный документ в формате Markdown с оригинальной структурой с нуля. Для создания различных элементов вам необходимо использовать стили с определенными названиями в соответствии с определенными правилами, описанными далее в этой статье. Такие стили могут быть созданы программно.

## Общие принципы перевода

Мы используем форматирование [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) для встроенных блоков. Когда нет прямого соответствия для элемента Markdown в Aspose.Words DOM, мы используем стиль символов с названием, которое начинается с некоторых специальных слов.

Для контейнерных блоков мы используем наследование стилей для обозначения вложенных объектов Markdown. В этом случае, даже если вложенных объектов нет, мы также используем стили абзацев с именами, которые начинаются с некоторых специальных слов.

Маркированные и упорядоченные списки также являются контейнерными блоками в Markdown. Их вложенность в DOM представлена таким же образом, как и для всех других контейнерных блоков, с использованием наследования стиля. Однако, кроме того, списки в DOM имеют соответствующее числовое оформление либо в виде списка, либо в виде абзаца.

## Встроенные блоки

Мы используем форматирование [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) при переводе **Bold**, *Italic* или ~~Strikethrough~~ встроенных функций markdown.

| Markdown особенность | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Мы используем стиль символов с именем, начинающимся со слова `InlineCode`, за которым следует необязательная точка `(.)` и несколько обратных меток ```(`)``` для элемента `InlineCode`. Если пропущено несколько обратных меток, то по умолчанию будет использоваться одна обратная метка.

| Markdown особенность | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Класс [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[текст ссылки](url)`<br />`[текст ссылки](<url>"title")`<br />`[текст ссылки](url 'title')`<br />`[текст ссылки](url (title))` | Класс [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![альтернативный текст](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![альтернативный текст](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![альтернативный текст](/words/java/translate-markdown-to-document-object-model/url (title))` | Класс [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Контейнерные блоки

Документ представляет собой последовательность блоков-контейнеров, таких как заголовки, абзацы, списки, цитаты и другие. Блоки-контейнеры можно разделить на 2 класса: конечные блоки и сложные контейнеры. Конечные блоки могут содержать только встроенное содержимое. Сложные контейнеры, в свою очередь, могут содержать другие блоки контейнеров, включая конечные блоки.

### Листовые блоки

В таблице ниже приведены примеры использования конечных блоков Markdown в Aspose.Words:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Это простой абзац с соответствующей формой HorizontalRule:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, где (1<= N <= 9).<br />Это переводится во встроенный стиль и должно точно соответствовать указанному шаблону (суффиксы и префиксы не допускаются).<br />В противном случае это будет просто обычный абзац с соответствующим стилем. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, основанный на стиле "Заголовок N".<br />Если (N >= 2), то будет использоваться "Heading 2", в противном случае "Heading 1".<br />Допускается использование любого суффикса, но Aspose.Words импортер использует цифры "1" и "2" соответственно. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Сложные контейнеры

В таблице ниже приведены примеры использования Markdown сложных контейнеров в Aspose.Words:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br /> Суффикс в названии стиля необязателен, но Aspose.Words импортер использует упорядоченные номера 1, 2, 3, .... в случае вложенных кавычек.<br />Вложенность определяется с помощью унаследованных стилей. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Маркированные списки представлены с использованием нумерации абзацев:<br />`ListFormat.ApplyBulletDefault()`<br />Маркированные списки могут быть трех типов. Они различаются только в формате нумерации самого первого уровня. Это: `‘-’`, `‘+’` или `‘*’` соответственно. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Упорядоченные списки представлены с использованием нумерации абзацев:<br />`ListFormat.ApplyNumberDefault()`<br /> Может быть 2 маркера числового формата: ‘.’ и ‘)’. По умолчанию используется маркер ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Таблицы

Aspose.Words также позволяет преобразовать таблицы в DOM, как показано ниже:

| Markdown особенность | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | классы [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Смотрите также

* [Работа с Markdown функциями](/words/java/working-with-markdown-features/)

