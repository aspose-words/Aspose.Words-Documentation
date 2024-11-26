---
title: Работа със стилове и теми
second_title: Aspose.Words вместо Java
articleTitle: Работа със стилове и теми
linktitle: Работа със стилове и теми
description: "Засилено Microsoft Word форматиране на функции, работа със стилове и теми, използващи Java."
type: docs
weight: 110
url: /bg/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

На [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) класът се използва за управление на вградени и прилагане на потребителски настройки в стилове.

## Как да извлечете съдържание въз основа на стилове

На просто ниво, извличането на съдържанието въз основа на стилове от документ на Word може да бъде полезно за идентифициране, изброяване и преброяване на абзаци и редове от текст, форматирани със специфичен стил. Например, може да се наложи да идентифицирате определени видове съдържание в документа, като например примери, заглавия, препратки, ключови думи, имена на фигури и казуси.

За да направите това няколко стъпки по-нататък, това може да се използва и за използване на структурата на документа, дефиниран от стиловете, които използва, за да пренасочи документа към друг изход, като HTML. Това е всъщност начина, по който се изгражда документацията Aspose, поставяйки Aspose.Words на теста. Инструмент, построен с помощта на Aspose.Words взема документите на източника Word и ги разделя на теми на определени нива. Name Aspose.Words която се използва за изграждане на навигационното дърво, което можете да видите отляво. И тогава... Aspose.Words превръща всяка тема в HTML. Решението за извличане на текст, форматиран със специфични стилове в документ на Word, обикновено е икономично и лесно използване Aspose.Words.

За да илюстрирам колко лесно Aspose.Words дръжки извличане на съдържание въз основа на стилове, нека да разгледаме един пример. В този пример ние ще изтеглим текст, обозначен с определен стил на параграфа и стил на характера от примерен документ на Word.

На високо ниво това ще включва:

1. Отваряне на Word документ с помощта на [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Клас.
1. Получаване на колекции от всички параграфи и всички работи в документа.
1. Избор само на необходимите точки и работи.

По-точно, ще набавим текст под формата на надпис с настоящето 1 по-горе стил и стила на характер от тази извадка Word документ

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

В този примерен документ, текстът, на който се нарежда стилът на нареждане на 1 и т. н., е по-голям от този на "Интензивен" стил.

Изпълнението на стилова заявка е доста проста в Aspose.Words документ обект модел, тъй като тя просто използва инструменти, които вече са в сила. За това решение се прилагат два метода от клас:

1. **ParagraphsByStyleName** - Да. Този метод извлича масив от тези параграфи в документа, който има специфично име на стила.
1. **RunsByStyleName** - Да. Този метод извлича масив от тези работи в документа, който има специфично име стил.

И двата метода са много сходни, единствените разлики са типовете възли и представянето на информацията за стила в рамките на параграфа и се движат възли. Това е прилагането на §sByStyleName, показано в примера с кода, даден по-долу, за да намерите всички параграфи, форматирани с посочения стил.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Това изпълнение също използва [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) метод на `Document` Клас, който връща колекция от всички незабавни детски възли.

Също така си струва да се отбележи, че събирането на точки не създава незабавни режийни разходи, защото параграфи са натоварени в тази колекция само когато имате достъп до елементи в тях. След това, всичко, което трябва да направите, е да преминете през колекцията, използвайки стандарта за всеки оператор и да добавите точки, които имат посочения стил към параграфите Със Стайл Ред. На `Paragraph` име на стила можете да намерите в [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) собственост на [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) Възразявам.

Изпълнението на RunsByStyleName е почти същото, въпреки че очевидно използваме `NodeType.Run` за да си върнем възлите. На [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) собственост на a [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) обект се използва за достъп до информация стил в **Run** Възли

Следният пример за код намира всички работи, форматирани с посочения стил.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Когато и двете заявки се изпълняват, всичко, което трябва да направите, е да преминете към обект документ и да уточните имената на стила на съдържанието, което искате да изтеглите:

{{% /alert %}}

Следният пример за код стартира заявки и показва резултатите.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Когато всичко е готово, стартирането на пробата ще покаже следния изход:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Както можете да видите, това е много прост пример, който показва номера и текста на събраните точки и работи в образеца Word документ.

## Вмъкване на разделител на стила за поставяне на различни стилове

Разделителят на стила може да бъде добавен в края на параграф, като се използва Ctrl + Alt + Enter Keyboard Shortcut в MS Word. Тази функция позволява два различни стила на параграфа, използвани в един логически отпечатан абзац. Ако искате някой текст от началото на определена функция да се появи в Съдържание, но не искате цялата функция в Съдържание, можете да използвате тази функция

Следният пример за код показва как да се въведе разделител на стила, за да се поставят различни стилове на параграф

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Копиране на всички стилове от шаблона

Има случаи, когато искате да копирате всички стилове от един документ в друг. Можеш да използваш `Document.CopyStylesFromTemplate` метод за копиране на стилове от посочения шаблон в документ. Когато стиловете се копират от шаблон в документ, подобни стилове в документа се променят, за да съответстват на описанието на стила в шаблона. Уникалните стилове от шаблона се копират в документа. Уникалните стилове в документа остават непокътнати

Следният пример за код показва как да копирате стилове от един документ в друг.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Как да манипулирате Настройки на темата

Ние добавихме основни API в Aspose.Words за достъп до тематичните свойства на документа. За сега, това API включва следните обществени обекти:

- Тема
- ThemeFonts
- ThemeColors

Ето как можете да получите тематични свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

И ето как можете да зададете тема:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
