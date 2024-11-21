---
title: Работа с раздели в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с раздели
linktitle: Работа с раздели
description: "Концепция и манипулативни практики в раздела за разбиране на документи Java. Вмъкване на раздел в документ Java. Премахване на раздел Java. Копирайте раздели между документи."
type: docs
weight: 120
url: /bg/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Понякога искате документ, който няма един и същ формат във всички страници. Например, може да се наложи да промените форматите на номера на страниците, да имате различен размер и ориентация на страниците, или да имате първата страница с документи като корица без номерация. Можете да постигнете това с секции.

Раздели са нива възли, които контролират заглавни части и подножици, ориентация, колони, маржове, форматиране на страница номер и други.

Aspose.Words ви позволява да управлявате секции, да разделяте документ на секции и да правите промени във форматирането, които се прилагат само към определен раздел. Aspose.Words съхранява информация за раздел форматиране като заглавни части и подметки, настройка на страница, и настройките на колона в раздел пробив.

Тази статия обяснява как да работите с раздели и раздел прекъсвания.

## Какво е раздел и раздел почивка е

Разделите на документите са представени от [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) както и [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) Класове. Предмети на раздел са незабавни деца на [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Възел и може да бъде достъпен чрез [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) собственост. Можете да управлявате тези възли чрез използване на някои методи като [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), и други.

Пробив на раздел е опция, която разделя страниците на документи в раздели с персонализирани оформление.

## Видове прекъсване на раздел

Aspose.Words позволява да разделите и форматирате документи с помощта на различни прекъсвания на раздел [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) Изброяване:

- CreakBreakContinulous
- Раздел BreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Можете също така да използвате [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) изброяване за избор на вид пробив, който се прилага само за първия раздел като NewColumn, NewPage, EvenPage и OddPage.

## Управление на раздел

Тъй като секцията е нормален композитен възел, цялата манипулация на възела API може да се използва за манипулиране на секции: за добавяне, премахване и други операции на секции. Можете да прочетете повече за възлите в статията [Aspose.Words Document Object Model (DOM)](/words/bg/java/aspose-words-document-object-model/).

От друга страна, можете да използвате `DocumentBuilder` API да работи с секции. В тази статия ще се съсредоточим върху този конкретен начин на работа с разделите.

## Вмъкване или премахване на прекъсване на раздел

Aspose.Words позволява да вмъкнете раздел за прекъсване на текста с помощта на [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) метод.

Следният пример с код показва как да се вмъкне раздел, който да проникне в документ:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Използвайте [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) метод за изтриване на прекъсване на раздел. Ако не е необходимо да премахнете конкретен раздел пробив и вместо да изтриете съдържанието на този раздел, можете да използвате [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) метод.

Следният пример с код показва как се премахват разделите:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Имайте предвид, че раздел пробив има информация за секцията, която отива преди него, а не раздел, който отива след него. Така че, ако премахнете раздел почивка, текстът преди премахнатата пауза ще получите свойствата на раздел почивка след него. Това може да накара целия документ да се превърне в пейзаж, или заглавни части и кракери да се промени или напълно да изчезне.

{{% /alert %}}

## Преместване на раздел

Ако искате да преместите раздел от една позиция в друга във вашия документ, трябва да получите индекса на този раздел. Aspose.Words позволява да получите позиция раздел от а [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Можеш да използваш [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) собственост, за да получите всички раздели в документа си. Но ако искате да получите само първата част, можете да използвате [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) собственост.

Следният пример за код показва как да се влезе в първата секция и да се итерат чрез децата на композитен възел:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Посочете подреждане на раздел

Понякога искате документът ви да изглежда по-добре, като правите творчески макети за различни раздели от документи. Ако искате да посочите вида на текущата мрежа на раздел, можете да изберете режим на оформление на раздел с помощта на [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) Изброяване:

- По подразбиране
- Мрежа
- LineGrid
- SnapToChars

Следният пример за код показва как да се ограничи броят на редовете, които всяка страница може да има:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Редактиране на раздел

Когато добавите нов раздел към вашия документ, няма да има орган или параграф, който можете да редактирате. Aspose.Words ви позволява да гарантира, че раздел съдържа орган с най-малко един параграф, като се използва [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) метод го добавя автоматично Body (или HeaderFooter) възел към документа и след това добавя § към него.

Следният пример за код показва как да се подготви нов възел раздел използване **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Добавяне или предварително използване на съдържание

Ако искате да начертаете някаква форма или да добавите текст или изображение в началото/ края на раздел, можете да използвате [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) както и [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) методи на [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Клас.

Следният пример за код показва как да се добави съдържание в съществуващ раздел:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Клониране на раздел

Aspose.Words ви позволява да дублирате раздел чрез създаване на пълно копие от него с помощта на [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) метод.

Следният пример за код показва как да клонирате първия раздел във вашия документ:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Копиране на раздели между документи

В някои случаи може да имате големи документи с много раздели и искате да копирате съдържанието на раздел от един документ в друг.

Aspose.Words ви позволява да копирате раздели между документи с помощта на [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) метод.

Следният пример за код показва как да копирате раздели между документи:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Работа с раздел Header и Footer

Основните правила за показване на заглавна част или стъпало за всеки раздел са доста прости:

1. Ако секцията няма собствени заглавни части/футови части от определен тип, тогава тя се взема от предишния раздел.
2. Видът на заглавната част/футъра, показан на страницата, се контролира от "Различните първа страница" и "Различните страници на Odd & Even" в раздел "Ако те са изключени, тогава собствените заглавия на секцията се игнорират.

Следният пример за код показва как се създават 2 секции с различни заглавни части:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Ако искате да премахнете текста на заглавните части и подметките, без да премахвате [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) обекти в документа, можете да използвате [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) метод. В допълнение, можете да използвате [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) метод за премахване на всички форми от заглавните части и подметките във вашия документ.

Следният пример за код показва как да изчистите съдържанието на всички заглавни части и подметки в раздел:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Следният пример за код как да премахнете всички форми от всички заглавни части в раздел:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Настройки на страницата в раздел

Преди да отпечатате страница или документ, може да искате да персонализирате и модифицирате размера и оформлението на една страница или целия документ. С настройката на страницата можете да промените настройките на страниците с документи като полета, ориентация и размер за отпечатване на различни първи страници или нечетни страници.

Aspose.Words позволява да персонализирате свойствата на страницата и секцията с помощта на [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Клас.

Следният пример за код показва как да зададете такива свойства като размер на страница и ориентация за текущия раздел:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Следният пример за код показва как да промените свойствата на страницата във всички раздели:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Вижте също

- [Логически нива на възлите в документ](/words/bg/java/logical-levels-of-nodes-in-a-document/)
- [Вмъкване и добавяне на документи](/words/bg/java/insert-and-append-documents/)
