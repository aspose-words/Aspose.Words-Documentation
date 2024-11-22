---
title: Переводить Markdown то DOM
second_title: Aspose.Words для Java
articleTitle: Переводить Markdown то Document Object Model ()DOM)
linktitle: Переводить Markdown то Document Object Model ()DOM)
type: docs
description: "Тарнслат Markdown документировать Document Object Model и обратно. Вы можете работать со сложными существующими Markdown программным путем создать Markdown Документ с нуля с использованием Java."
weight: 20
url: /ru/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Чтобы программно читать, манипулировать и изменять содержание и форматирование документа, вам нужно перевести его на веб-сайт. Aspose.Words Document Object Model ()DOM).

В отличие от текстов, Markdown не соответствует требованиям DOM описанный в [Aspose.Words Document Object Model (DOM)](/words/ru/java/aspose-words-document-object-model/) Статья. Однако, Aspose.Words Создает собственный механизм перевода Markdown документы для DOM и обратно, чтобы мы могли успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные markdown Функции могут быть переведены в Aspose.Words DOM и обратно в Markdown Формат.

## Сложность перевода Markdown - DOM - Markdown

Основная сложность этого механизма заключается не только в переводе. Markdown то DOM, но и сделать обратную трансформацию – сохранить документ обратно в исходное состояние. Markdown Формат с минимальными потерями. Есть элементы, такие как многоуровневые котировки, для которых обратное преобразование не тривиально.

Наш движок перевода позволяет пользователям не только работать со сложными элементами в существующем Markdown документ, а также для создания собственного документа в Markdown Формат с оригинальной структурой с нуля. Для создания различных элементов необходимо использовать стили с конкретными названиями по определенным правилам, описанным ниже в этой статье. Такие стили можно создавать программно.

## Общий перевод Принципы

Мы используем [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Форматирование для встроенных блоков. Если нет прямой корреспонденции для Markdown особенность в Aspose.Words DOM, Мы используем стиль персонажа с именем, которое начинается с некоторых специальных слов.

Для контейнерных блоков мы используем наследование стиля для обозначения вложенных Markdown особенности. В этом случае, даже когда нет вложенных функций, мы также используем стили абзацев с именем, которое начинается с некоторых специальных слов.

Бюллетени и упорядоченные списки представляют собой контейнерные блоки. Markdown Тоже самое. Их гнездование представлено в DOM Так же, как и для всех остальных контейнерных блоков, использующих стиль наследования. Кроме того, списки в DOM соответствовали форматированию номеров в стиле списка или в формате абзаца.

## Встроенные блоки

Мы используем [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) Форматирование при переводе **Bold**, *Italic* или ~~Strikethrough~~inline markdown особенности.

|  Markdown особенность |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Мы используем стиль персонажа с именем, начинающимся от слова. `InlineCode`> с последующей факультативной точкой `(.)` и ряд задних ходов ```(`)``` для `InlineCode` особенность. Если пропущено несколько бэктиков, то по умолчанию будет использоваться один бэктик.

|  Markdown особенность |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) класс |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) класс |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) класс |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Контейнерные блоки

Документ представляет собой последовательность контейнерных блоков, таких как заголовки, абзацы, списки, цитаты и другие. Блоки контейнеров можно разделить на 2 класса: Блоки листьев и сложные контейнеры. Блоки листьев могут содержать только встроенный контент. Сложные контейнеры, в свою очередь, могут содержать другие контейнерные блоки, в том числе блоки Leaf.

### Блоки листьев

В приведенной ниже таблице приведены примеры использования Markdown Блоки листьев внутри Aspose.Words:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Это простой абзац с соответствующей формой горизонтального правила:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, где (1<= N <= 9).<br/>Это переводится во встроенный стиль и должно быть точно по указанному шаблону (никаких суффиксов или префиксов не допускается).<br/>В противном случае это будет обычный абзац с соответствующим стилем |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (если уровень 1),<br/>`---` (если уровень 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, основанный на `“Heading N”` стиль.<br/>Если (N > 2), то `“Heading 2”` будет использоваться, в противном случае `“Heading 1”`.<br/>Допускается любой суффикс, но Aspose.Words Импортер использует цифры "1" и "2" соответственно |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The `[.]` и `[info string]` являются необязательными |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Комплексные контейнеры

В приведенной ниже таблице приведены примеры использования Markdown Сложные контейнеры в Aspose.Words:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Суффикс в названии стиля необязателен, но Aspose.Words Импортер использует упорядоченные номера 1, 2, 3, .... в случае вложенных котировок.<br/>Гнездо определяется через унаследованные стили |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Бюллетени представлены с использованием нумерации пунктов:<br/>`ListFormat.ApplyBulletDefault()`<br/>Могут быть 3 типа списков. Они диффундируют только в формате нумерации самого первого уровня. Это: `‘-’`, `‘+’` или `‘*’` соответственно |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Упорядоченные списки представлены с использованием нумерации пунктов:<br/>`ListFormat.ApplyNumberDefault()`<br/>Может быть 2 символа формата: "." и "." Маркер по умолчанию - "..." |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Таблицы

Aspose.Words позволяет переводить таблицы в DOM, Как показано ниже:

|  Markdown особенность |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>а) | b`<br />`-|-`<br />`c|d пункт |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) классы |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Смотрите также

* [Работать с Markdown Особенности](/words/ru/java/working-with-markdown-features/)

