---
title: Превод Markdown до DOM
second_title: Aspose.Words вместо Java
articleTitle: Превод Markdown до Document Object Model (DOM)
linktitle: Превод Markdown до Document Object Model (DOM)
type: docs
description: "Тарнслат а Markdown документ към Document Object Model и обратно. Така че можете да работите със сложни съществуващи Markdown и programmically създаване на Markdown документ от нулата използване Java."
weight: 20
url: /bg/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

За да четете, манипулирате и променяте съдържанието и форматирането на документ, трябва да го преведете на Aspose.Words Document Object Model (DOM).

За разлика от Word документи, Markdown не съответства на DOM описани в [Aspose.Words Document Object Model (DOM)](/words/bg/java/aspose-words-document-object-model/) статия. Обаче, Aspose.Words осигурява свой собствен механизъм за превод Markdown документи за DOM и обратно, за да можем успешно да работим с техните елементи като форматиране на текст, таблици, заглавни части и други.

Тази статия обяснява как различните markdown функции могат да бъдат преведени в Aspose.Words DOM и обратно към Markdown форматиране.

## Сложност на превода Markdown - Да. DOM - Да. Markdown

Основната трудност на този механизъм е не само да превежда Markdown до DOM, но също така да направи обратната трансформация за да запази документа обратно към Markdown формат с минимална загуба. Има елементи, като многостепенни цитати, за които обратната трансформация не е тривиална.

Нашият превод двигател позволява на потребителите не само да работят със сложни елементи в съществуващи Markdown документ, но също така и за създаване на свой собствен документ в Markdown формат с оригиналната структура от нулата. За да създадете различни елементи, трябва да използвате стилове със специфични имена съгласно определени правила, описани по-късно в тази статия. Такива стилове могат да бъдат създадени програмно.

## Общ превод Принципи

Ние използваме [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) форматиране за вътрешни блокове. Когато няма пряка кореспонденция за Markdown функция в Aspose.Words DOM, използваме стил на характер с име, което започва от някои специални думи.

За контейнери блокове, ние използваме стил наследство, за да означаваме гнездо Markdown особености. В този случай, дори когато няма скрити черти, ние също използваме стилове на параграфа с име, което започва от някои специални думи.

Куршуми и поръчани списъци са контейнери блокове в Markdown Както добре. Тяхното гнездо е представено в DOM по същия начин, както за всички други контейнери блокове, използвайки стил наследство. Въпреки това, допълнително, списъци в DOM са отговаряли на форматиране на номера в стил на списъка или в форматиране на параграф.

## Входни блокове

Ние използваме [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) форматиране при превод **Bold**, *Italic* или ~ ~ Strikethrough ~ ~ inline markdown особености.

|  Markdown функция |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Използваме стил на героя с име, което започва от думата <span notrans="<span notrans=" `InlineCode`"=""></span>,"> последвано от незадължителна точка `(.)` и редица подпори ```(`)``` за `InlineCode` функция. Ако се пропусне редица backticks, тогава един backtick ще се използва по подразбиране.

|  Markdown функция |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  На [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Клас |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  На [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Клас |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  На [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Клас |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Блокове за контейнери

Документът е поредица от контейнери блокове като заглавия, параграфи, списъци, кавички и други. Контейнерните блокове могат да бъдат разделени на 2 класа: Листни блокове и комплексни контейнери. Листните блокове могат да съдържат само в линия съдържание. Комплексните контейнери, от своя страна, могат да съдържат други контейнери блокове, включително Листни блокове.

### Листни блокове

Таблицата по- долу показва примери за използване Markdown Листни блокове в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Това е прост параграф със съответстваща хоризонтална форма на правило:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, където (1 <= N <= 9).<br/>Това се превежда в вграден стил и трябва да бъде точно на посочения модел (не са позволени наставки или представки).<br/>В противен случай това ще бъде просто обикновен параграф със съответния стил |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (ако е посочено ниво 1),<br/>`---` (ако е определено ниво 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, въз основа на `“Heading N”` стил.<br/>Ако (N >= 2) тогава `“Heading 2”` ще се използва, в противен случай `“Heading 1”`.<br/>Всяка наставка е позволена, но Aspose.Words Вносителят използва съответно номерата год |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>На `[.]` както и `[info string]` са по избор |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Комплексни контейнери

Таблицата по- долу показва примери за използване Markdown Комплексни контейнери в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Наставката със стилно име е по избор, но Aspose.Words Вносителят използва поръчаните номера 1, 2, 3 .... в случай на гнездени кавички.<br/>Гнезденето се определя чрез наследените стилове |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Списък с куршуми се представя чрез номериране на параграф:<br/>`ListFormat.ApplyBulletDefault()`<br/>Може да има 3 вида списъци с куршуми. Те са само diff в номерационен формат на първото ниво. Това са: `‘-’`, `‘+’` или `‘*’` съответно |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Поръчаните списъци се представят чрез номериране на параграф:<br/>`ListFormat.ApplyNumberDefault()`<br/>Може да има 2 маркери формат номер: гот. и) Подразбиращият се маркер е.. |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Таблици

Aspose.Words също така позволява да превежда таблици в DOM, както е показано по-долу:

|  Markdown функция |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/> год | b`<br />`-|-`<br />`c|d - Да |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) както и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Класове |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Вижте също

* [Работа с Markdown Характеристики](/words/bg/java/working-with-markdown-features/)

