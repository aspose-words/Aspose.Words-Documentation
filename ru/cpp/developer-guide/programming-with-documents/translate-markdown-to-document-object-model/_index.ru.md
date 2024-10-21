---
title: Перевести Markdown в объектную модель документа (DOM)
second_title: Aspose.Words для C++
articleTitle: Перевести Markdown в объектную модель документа (DOM)
linktitle: Перевести Markdown в объектную модель документа (DOM)
type: docs
description: "Преобразуйте документ Markdown в объектную модель документа и обратно, используя C++. Таким образом, вы можете работать со сложными существующими Markdown и программно создавать документ Markdown с нуля."
weight: 20
url: /ru/cpp/translate-markdown-to-document-object-model/
---

Чтобы программно считывать содержимое и форматирование документа, манипулировать им и изменять их, вам необходимо преобразовать его в объектную модель документа Aspose.Words (DOM).

В отличие от документов Word, Markdown не соответствует DOM, описанному в статье [Aspose.Words Объектной модели документа (DOM)](/words/cpp/aspose-words-document-object-model/). Однако Aspose.Words предоставляет свой собственный механизм для перевода Markdown документов в DOM и обратно, так что мы можем успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные функции markdown могут быть переведены в формат Aspose.Words DOM и обратно в формат Markdown.

## Сложность перевода Markdown – DOM – Markdown

Основная сложность этого механизма заключается не только в переводе Markdown в DOM, но и в выполнении обратного преобразования – сохранении документа обратно в формат Markdown с минимальными потерями. Существуют элементы, такие как многоуровневые кавычки, для которых обратное преобразование нетривиально.

Наш механизм перевода позволяет пользователям не только работать со сложными элементами в существующем документе Markdown, но и создавать свой собственный документ в формате Markdown с оригинальной структурой с нуля. Для создания различных элементов вам необходимо использовать стили с определенными названиями в соответствии с определенными правилами, описанными далее в этой статье. Такие стили могут быть созданы программно.

## Общие принципы перевода

Мы используем форматирование [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) для встроенных блоков. Когда нет прямого соответствия для объекта Markdown в Aspose.Words DOM, мы используем символьный стиль с названием, которое начинается с некоторых специальных слов.

Для контейнерных блоков мы используем наследование стилей для обозначения вложенных объектов Markdown. В этом случае, даже если вложенных объектов нет, мы также используем стили абзацев с именами, которые начинаются с некоторых специальных слов.

Маркированные и упорядоченные списки также являются контейнерными блоками в Markdown. Их вложенность представлена в DOM таким же образом, как и для всех других контейнерных блоков, с использованием наследования стилей. Однако, кроме того, списки в DOM имеют соответствующее числовое оформление либо в виде списка, либо в виде абзаца.

## Встроенные блоки

Мы используем форматирование [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) при переводе **Bold**, *Italic* или ~~Зачеркнутых~~ встроенных функций markdown.

| Markdown особенность | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |

Мы используем стиль символов с названием, которое начинается со слова `InlineCode`, за которым следует необязательная точка `(.)` и несколько обратных знаков ```(`)``` for the ` Функция встроенного кода. Если пропущено несколько обратных ссылок, то по умолчанию будет использоваться одна обратная ссылка.

| Markdown особенность | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Класс [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Класс [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Класс [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |

## Контейнерные блоки

Документ представляет собой последовательность блоков-контейнеров, таких как заголовки, абзацы, списки, цитаты и другие. Блоки-контейнеры можно разделить на классы 2: Конечные блоки и сложные контейнеры. Конечные блоки могут содержать только встроенное содержимое. Сложные контейнеры, в свою очередь, могут содержать другие блоки контейнеров, включая конечные блоки.

### Листовые блоки

В таблице ниже приведены примеры использования конечных блоков Markdown в Aspose.Words:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Это простой абзац с соответствующей формой HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, где (1<= N <= 9).<br />Это переводится во встроенный стиль и должно точно соответствовать указанному шаблону (суффиксы и префиксы не допускаются).<br />В противном случае это будет просто обычный абзац с соответствующим стилем. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, основанный на стиле `"Heading N"`.<br />Если (N >= 2), то будет использовано `"Heading 2"`, в противном случае `"Heading 1"`.<br />Допускается использование любого суффикса, но импортер Aspose.Words использует цифры "1" и "2" соответственно. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}} c#
if ()
then
else
{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> Значения `[.]` и `[info string]` являются необязательными. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Сложные контейнеры

В таблице ниже приведены примеры использования Markdown сложных контейнеров в Aspose.Words:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br /> Суффикс в названии стиля необязателен, но Aspose.Words импортер использует упорядоченные номера 1, 2, 3, .... в случае вложенных кавычек.<br />Вложенность определяется с помощью унаследованных стилей. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Маркированные списки представлены с использованием нумерации абзацев:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Маркированных списков может быть 3 типов. Они различаются только в формате нумерации самого первого уровня. Это: `‘-’`, `‘+’` или `‘*’` соответственно. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Упорядоченные списки представлены с использованием нумерации абзацев:<br />`get_ListFormat()->ApplyNumberDefault()`<br /> Могут быть маркеры числового формата 2: ‘.’ и ‘)’. По умолчанию используется маркер ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Таблицы

Aspose.Words также позволяет переводить таблицы в DOM, как показано ниже:

| Markdown особенность | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | классы [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Смотрите также

* [Работа с Markdown функциями](/words/cpp/working-with-markdown-features/)

