---
title: Преведи Markdown в модел на обект на документ (DOM)
second_title: Aspose.Words за C++
articleTitle: Преведи Markdown в модел на обект на документ (DOM)
linktitle: Преведи Markdown в модел на обект на документ (DOM)
type: docs
description: "Потъмняване на документ Markdown, за да документирате обектен модел и обратно, като използвате C++. Така че можете да работите със сложни съществуващи Markdown и програмно да създадете Markdown документ от самото начало."
weight: 20
url: /bg/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

За да четете програмно, манипулирате и променяте съдържанието и форматирането на документ, трябва да го преведете в Aspose.Words обектен модел на документ (DOM).

За разлика от Word документи, Markdown не отговаря на DOM, описани в [Aspose.Words Документ Обектен Модел (DOM)](/words/cpp/aspose-words-document-object-model/) статия. Въпреки това, Aspose.Words осигурява собствен механизъм за превод на Markdown документи до DOM и обратно, така че да можем успешно да работим с техните елементи като форматиране на текст, таблици, заглавки и други.

Тази статия обяснява как различните markdown функции могат да бъдат преведени на Aspose.Words DOM и обратно на Markdown формат.

## Сложност на превода Markdown – DOM – Markdown

Основната трудност на този механизъм е не само да преведе Markdown до DOM, но и да направи обратната трансформация – да запази документа обратно във формат Markdown с минимална загуба. Има елементи, като например многостепенни котировки, за които обратната трансформация не е тривиална.

Нашата преводаческа машина позволява на потребителите не само да работят със сложни елементи в съществуващ Markdown документ, но и да създават свой собствен документ във формат Markdown с оригиналната структура от самото начало. За да създадете различни елементи, трябва да използвате стилове с конкретни имена според определени правила, описани по-нататък в тази статия. Такива стилове могат да бъдат създадени програмно.

## Общи Принципи На Превода

Ние използваме [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) форматиране за вградени блокове. Когато няма пряка кореспонденция за функция Markdown във Aspose.Words DOM, Ние използваме стил на характер с име, което започва от някои специални думи.

За контейнерни блокове използваме наследяване на стил, за да обозначим вложени Markdown функции. В този случай, дори когато няма вложени функции, ние също използваме стилове на абзаци с име, което започва от някои специални думи.

Списъци с водещи символи и подредени списъци са контейнерни блокове в Markdown, както добре. Тяхното влагане е представено в DOM по същия начин, както за всички други контейнерни блокове, използващи наследяване на стил. Освен това списъците в DOM имат съответстващо форматиране на числа в стил на списък или форматиране на абзац.

## Вградени Блокове

Ние използваме [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) форматиране, когато превеждаме **Bold**, *Italic* или ~~Strikethrough~~ инлайн markdown функции.

| Markdown функция | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Използваме символен стил с име, което започва от думата `InlineCode`, последвано от незадължителна точка `(.)` и няколко бекстека ```(`)``` за функцията `InlineCode`. Ако се пропуснат няколко беклека, тогава по подразбиране ще се използва един беклик.

| Markdown функция | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) клас. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) клас. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) клас. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Контейнерни Блокове

Документът е поредица от контейнерни блокове, като например заглавия, параграфи, списъци, цитати и други. Контейнерните блокове могат да бъдат разделени на 2 класа: листни блокове и сложни контейнери. Листните блокове могат да съдържат само вградено съдържание. Сложните контейнери, от своя страна, могат да съдържат други контейнерни блокове, включително листни блокове.

### Блокове Листа

Таблицата по-долу показва примери за използване на Markdown листни блокове в Aspose.Words:

| Markdown функция | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Това е прост абзац със съответстваща форма HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, където (1<= Н <= 9).<br />Това е преведено във вграден стил и трябва да бъде точно на посочения модел (не се допускат наставки или представки).<br />В противен случай това ще бъде просто обикновен параграф със съответен стил. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, въз основа на 'заглавие и' стил.<br />Ако (Н > = 2), тогава ще се използваHeading 2', в противен случай' Heading 1'.<br />Допуска се всяка наставка, но Aspose.Words вносителят използва съответно номера "1" и "2". |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> `[.]` и `[info string]` са незадължителни. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Комплексни Контейнери

Таблицата по-долу показва примери за използване на Markdown сложни контейнери в Aspose.Words:

| Markdown функция | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />наставката в името на стила не е задължителна, но Aspose.Words вносителят използва поръчаните номера 1, 2, 3, .... в случай на вложени цитати.<br />Гнезденето се определя чрез наследените стилове. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Списъците с водещи символи са представени с номериране на абзаци:<br />`get_ListFormat()->ApplyBulletDefault()`<br />може да има 3 вида списъци с водещи символи. Те са само различие в номериращ формат на първото ниво. Те са: `‘-’`, `‘+’` или `‘*’` съответно. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Подредените списъци се представят с номериране на абзаци:<br />`get_ListFormat()->ApplyNumberDefault()`<br />може да има 2 числови формат маркери: ‘.’ и ‘)’. Маркерът по подразбиране е ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Маси

Aspose.Words също така позволява да се преведат таблици в DOM, както е показано по-долу:

| Markdown функция | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | Класове [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Вижте Също

* [Работа с Markdown функции](/words/cpp/working-with-markdown-features/)

