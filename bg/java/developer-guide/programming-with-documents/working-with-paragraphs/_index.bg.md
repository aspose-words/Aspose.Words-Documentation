---
title: Работа с точки в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с параграфи
linktitle: Работа с параграфи
description: "Практики за манипулиране на възли по параграф Java."
type: docs
weight: 210
url: /bg/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

А параграф е набор от символи, комбинирани в логически блок и завършващи със специален характер, * параграф почивка*. В Aspose.Words, параграф е представен от [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Клас.

## Вмъкване на параграф

За да вмъкнете нов параграф в документа, всъщност трябва да въведете параграф, който да разбие характера му. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) вмъква не само низ от текст в документа, но добавя и прекъсване на параграфа.

Текущото форматиране на шрифта също е посочено от [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) собствеността и форматирането на текущия параграф се определят от [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) собственост. В следващия раздел ще разгледаме по-подробно формата на параграфа.

Следният пример за код показва как да се въведе параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Форматен параграф

Форматирането на текущия параграф се представя от [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) обект, който се връща от [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) собственост. Този обект капсулира различни свойства в параграф форматиране Microsoft Word. Можете лесно да рестартирате форматирането на параграфа към неговия по подразбиране. [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Следният пример с код показва как да се зададе форматиране на параграфа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Прилагане на стила на §

Някои форматиращи обекти като шрифт или § Format поддръжка стилове. Един вграден или определен от потребителя стил е представен от [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) обект, който съдържа съответните стилови свойства като име, базов стил, шрифт и параграф форматиране на стила, и така нататък.

Освен това, **Style** обект осигурява [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) имот, който връща локален независим идентификатор на стила, представен от a **StyleIdentifier** стойност на изброяването. Въпросът е, че имената на вградените стилове в Microsoft Word са локализирани за различни езици. С помощта на идентификатор на стил, можете да намерите правилния стил, независимо от езика на документа. Стойностите на изброяване съответстват на Microsoft Word вградени стилове като *Normal*, * Heading 1*, * Heading 2*, etc. Всички потребителски стилове са възложени **StyleIdentifier. Стойност на потребителя**.

Следният пример за код показва как се прилага стил на параграфа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Вмъкване на разделител на стила за поставяне на различни стилове

Разделителят на стила може да бъде добавен в края на параграф, като се използва Ctrl + Alt + Enter Keyboard Shortcut в MS Word. Тази функция позволява два различни стила на параграфа, използвани в един логически отпечатан абзац. Ако искате някакъв текст от началото на определена функция да се появи в таблица на съдържанието, но не искате цялата функция в Таблицата на съдържанието, можете да използвате тази функция.

Следният пример за код показва как да се постави разделител на стила, за да се настанят различни стилове на параграфа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Прилагане на граници и оформяне на абзац

Граници в Aspose.Words са представени от [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) Клас ... това е колекция от [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) обекти, които са достъпни по индекс или по граничен тип. На `Border` типът е представен от [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) Изброяване. Някои стойности на изброяването са приложими за няколко или само един документен елемент. Например, **BorderType.Bottom** се прилага за параграф или таблица, докато **BorderType.DiagonalDown** определя диагоналната граница само в таблица.

Както събирането на границите, така и всяка отделна граница имат сходни атрибути като цвят, стил на линия, ширина на линията, разстояние от текста, и опционална сянка. Те са представени от свойства на едно и също име. Можете да постигнете различни типове граници чрез комбиниране на ценностните стойности. В допълнение, и двете **BorderCollection** както и **Border** обекти ви позволяват да рестартирате тези стойности по подразбиране чрез повикване на [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) метод.

{{% alert color="primary" %}}

Имайте предвид, че когато граничните свойства се рестартират до стойности по подразбиране, границата е невидима.

{{% /alert %}}

Aspose.Words също има [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) класът съдържа сенчести атрибути за елементи на документ. Можете да зададете желаната сенчеста текстура и цветовете, които се прилагат на фона и преден план на елемента.

Сенчестата текстура е настроена с [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) стойност на изброяване, която позволява прилагането на различни модели към **Shading** Възразявам. Например, за да зададете фонов цвят за елемент на документ, използвайте `TextureIndex.TextureSolid` стойност и задаване на преден план сянка цвят, според случая. Примерът с кода, даден по-долу, показва как да се прилагат граници и да се засенчва параграф.

Следният пример за код показва как да се прилагат граници и да се засенчва параграф:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
