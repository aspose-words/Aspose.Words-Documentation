---
title: Переклад Markdown до DOM
second_title: Aspose.Words для Java
articleTitle: Переклад Markdown до Document Object Model (Українська)DOMй
linktitle: Переклад Markdown до Document Object Model (Українська)DOMй
type: docs
description: "Тарнслат Markdown документ до Document Object Model і назад. Так ви можете працювати з комплексними існуючими Markdown і программатично створюють Markdown документ з нуля за допомогою Javaй"
weight: 20
url: /uk/java/translate-markdown-to-document-object-model/
---

Щоб программатично читати, маніпулювати і змінювати зміст і форматування документа, потрібно перевести його до Aspose.Words Document Object Model (Українська)DOM).

На відміну від документів Word, Markdown не відповідає DOM описано в [Aspose.Words Document Object Model (DOM)](/words/uk/java/aspose-words-document-object-model/) стаття. Однак Aspose.Words забезпечує власний механізм перетягування Markdown документи DOM і назад, так що ми можемо успішно працювати з елементами, такими як форматування тексту, таблиці, заголовки та інші.

Ця стаття пояснює, як різні markdown функції можна перекласти в Aspose.Words DOM і назад Markdown Формат.

## Складність перекладу Markdown до DOM до Markdown

Основна складність цього механізму не тільки для перекладу Markdown до DOM, але також зробити зворотну трансформацію – зберегти документ назад до Markdown формат з мінімальною втратою. Є елементи, такі як багаторівневі котирування, для яких зворотна трансформація не тривіально.

Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів. Markdown документ, але також створити власний документ у Markdown формат з оригінальною структурою з нуля. Щоб створити різні елементи, потрібно використовувати стилі з певними назвами відповідно до певних правил, описаних пізніше в цій статті. Такі стилі можуть бути створені тематично.

## Переклад Принципи

Ми використовуємо [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) форматування вбудованих блоків. Коли немає прямого листування Markdown в наявності Aspose.Words DOM, Ми використовуємо стиль персонажа з назвою, яка починається з деяких спеціальних слів.

Для контейнерних блоків ми використовуємо стиль спадкування, щоб викинути Markdown особливості. У цьому випадку, навіть якщо немає ніяких непристойних функцій, ми також використовуємо абзац стилі з назвою, яка починається з деяких спеціальних слів.

Булетні та замовлені списки є контейнерними блоками в Markdown й Їх гніздування представлена в DOM так само, як і для всіх інших контейнерних блоків з використанням стильного спадкування. Тим не менш, додатково, списки в DOM відповідати формату номеру в стилі список або форматування абзаців.

## Внутрішні блоки

Ми використовуємо [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) форматування при перекладі **Bold**, *Italic* або ~ ~ Просування ~ ~ inline markdown особливості.

|  Markdown Головна |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Ми використовуємо стиль персонажа з назвою, яка починається з слова <span notrans="<span notrans=" `InlineCode`"=""></span>, > далі за бажанням `(.)` і ряд задніх ```(`)``` для `InlineCode` функція. Якщо пропущено ряд спинок, то один задняк буде використовуватися за замовчуванням.

|  Markdown Головна |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  Про нас [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) клас |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Про нас [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) клас |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Про нас [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) клас |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Блоки контейнерів

Документ є послідовністю контейнерних блоків, таких як заголовки, абзаци, списки, котирування та інші. Контейнерні блоки можна розділити на 2 класи: Листові блоки та складні контейнери. Блоки Leaf можуть містити лише інлайн. Комплексні контейнери, в свою чергу, можуть містити інші контейнерні блоки, в тому числі блоки Leaf.

### Листові блоки

Таблиця нижче показує приклади використання Markdown Листові блоки в Aspose.Words:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Це простий абзац з відповідною формою HorizontalRule:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, де (1<= N <=9).<br/>Це перекладається в вбудований стиль і має бути саме з зазначеного шаблону (не суфікси або префікси допускаються).<br/>В іншому випадку це буде просто звичайний абзац з відповідним стилем |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (якщо рівень заголовка 1),<br/>`---` (якщо рівень заголовка 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, на основі `“Heading N”` стиль.<br/>Якщо (N >= 2), то `“Heading 2”` буде використовуватися, інакше `“Heading 1”`й<br/>Допускається будь-який suffix, але Aspose.Words імпортер використовує номери "1" та "2" відповідно |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>Про нас `[.]` і `[info string]` необов'язково |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Комплексні контейнери

Таблиця нижче показує приклади використання Markdown Комплексні контейнери в Aspose.Words:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Суфікс в назві стилю необов'язково, але Aspose.Words імпортер використовує замовлені номери 1, 2, 3, .... в разі необрізних котирування.<br/>Ведуться веслування через спадкові стилі |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Списки буклетів представлені за допомогою абзацу:<br/>`ListFormat.ApplyBulletDefault()`<br/>Ви можете бути 3 види бюлетенів. Вони розрізняються лише в форматі нумерації першого рівня. Це: `‘-’`, `‘+’` або `‘*’` відповідно |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Замовлені списки представлені за допомогою абзаців:<br/>`ListFormat.ApplyNumberDefault()`<br/>Відмітки формату 2: "." та ")". Маркувальник за замовчуванням "." |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Столи

Aspose.Words також дозволяє перевести таблиці в DOM, як показано нижче:

|  Markdown Головна |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>й | б`<br />`до | -до`<br />`з | й й |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) і [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) класи |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Дивитися ще

* [Робота з Markdown Особливості](/words/uk/java/working-with-markdown-features/)

