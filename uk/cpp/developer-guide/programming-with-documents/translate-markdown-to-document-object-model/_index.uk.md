---
title: Перетворити Markdown в об'єктну модель документа (DOM)
second_title: Aspose.Words для C++
articleTitle: Перетворити Markdown в об'єктну модель документа (DOM)
linktitle: Перетворити Markdown в об'єктну модель документа (DOM)
type: docs
description: "Перетворіть документ Markdown в об'єктну модель документа і назад, використовуючи C++. Таким чином, ви можете працювати зі складними існуючими Markdown і програмно створювати документ Markdown з нуля."
weight: 20
url: /uk/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Щоб програмно зчитувати вміст і форматування документа, маніпулювати ним і змінювати їх, Вам необхідно перетворити його в об'єктну модель документа Aspose.Words (DOM).

На відміну від документів Word, Markdown не відповідає DOM, описаним в об'єктній моделі документа [Aspose.Words (DOM)](/words/cpp/aspose-words-document-object-model/) стаття. Однак Aspose.Words надає власний механізм перекладу документів Markdown в документи DOM і назад, щоб ми могли успішно працювати з їх елементами, такими як форматування тексту, таблиці, заголовки та інші.

У цій статті пояснюється, як різні функції markdown можуть бути переведені у формат Aspose.Words DOM і назад у формат Markdown.

## Складність перекладу Markdown – DOM – Markdown

Основна складність цього механізму полягає не тільки в перетворенні Markdown в DOM, але і у виконанні зворотного перетворення – збереженні документа назад в формат Markdown з мінімальними втратами. Існують такі елементи, як багаторівневі лапки, для яких зворотне перетворення нетривіальне.

Наш механізм перекладу дозволяє користувачам не тільки працювати зі складними елементами в існуючому документі Markdown, але й створювати власний документ у форматі Markdown з оригінальною структурою з нуля. Для створення різних елементів вам потрібно використовувати стилі з певними назвами відповідно до певних правил, описаних далі в цій статті. Такі стилі можуть бути створені програмно.

## Загальні принципи перекладу

Ми використовуємо форматування [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) для вбудованих блоків. Коли немає прямого збігу для елемента Markdown у Aspose.Words DOM, ми використовуємо стиль символів із заголовком, який починається з деяких спеціальних слів.

Для контейнерних блоків ми використовуємо успадкування стилів для позначення вкладених об'єктів Markdown. У цьому випадку, навіть якщо вкладених об'єктів немає, ми також використовуємо стилі абзаців з іменами, які починаються з деяких спеціальних слів.

Марковані та впорядковані списки також є контейнерними блоками в Markdown. Їх вкладеність в DOM представлена таким же чином, як і для всіх інших контейнерних блоків, з використанням успадкування стилю. Однак, крім того, списки в DOM мають відповідне Числове оформлення або у вигляді списку, або у вигляді абзацу.

## Вбудовані блоки

Ми використовуємо форматування [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) при перекладі **Bold**, *Italic* або ~~Strikethrough~~ вбудованих функцій markdown.

| Markdown особливість | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Ми використовуємо стиль символів з іменем, яке починається зі слова `InlineCode`, за яким слідує необов'язкова точка `(.)` та кілька зворотних міток ```(`)``` для елемента `InlineCode`. Якщо пропущено кілька зворотних міток, то за замовчуванням буде використовуватися одна зворотна мітка.

| Markdown особливість | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Клас [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Клас [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Клас [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Контейнерні блоки

Документ являє собою послідовність блоків-контейнерів, таких як заголовки, абзаци, списки, цитати та інші. Блоки-контейнери можна розділити на 2 класи: кінцеві блоки і складні контейнери. Кінцеві блоки можуть містити лише вбудований вміст. Складні контейнери, у свою чергу, можуть містити інші блоки контейнерів, включаючи кінцеві блоки.

### Листові блоки

У таблиці нижче наведено приклади використання кінцевих блоків Markdown в Aspose.Words:

| Markdown особливість | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Це простий абзац із відповідною формою HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, де (1< = N < = 9).<br />Це перекладається у вбудований стиль і має точно відповідати вказаному шаблону (суфікси та префікси заборонені).<br />В іншому випадку це буде просто звичайний абзац із відповідним стилем. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, заснований на стилі "Заголовок N".<br />Якщо (N > = 2), то буде використано "Heading 2", інакше "Heading 1".<br />Допускається використання будь-якого суфікса, але Aspose.Words імпортер використовує цифри "1" і "2" відповідно. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> значення `[.]` та `[info string]` є необов'язковими. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Складні контейнери

У таблиці нижче наведено приклади використання Markdown складних контейнерів у Aspose.Words:

| Markdown особливість | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br /> суфікс у назві стилю необов'язковий, але Aspose.Words імпортер використовує впорядковані номери 1, 2, 3,.... у разі вкладених лапок.<br />Вкладеність визначається за допомогою успадкованих стилів. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Марковані списки представлені з використанням нумерації абзаців:<br />`get_ListFormat()->ApplyBulletDefault()`<br />марковані списки можуть бути трьох типів. Вони розрізняються тільки в форматі нумерації самого першого рівня. Це: `‘-’`, `‘+’` або `‘*’` відповідно. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Упорядковані списки представлені за допомогою нумерації абзаців:<br />`get_ListFormat()->ApplyNumberDefault()`<br /> може бути 2 маркери числового формату: ‘.’ і ‘)’. За замовчуванням використовується маркер ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Таблиця

Aspose.Words також дозволяє перетворити таблиці на DOM, Як показано нижче:

| Markdown особливість | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | класи [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) і [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Дивіться також

* [Робота з Markdown функціями](/words/cpp/working-with-markdown-features/)

