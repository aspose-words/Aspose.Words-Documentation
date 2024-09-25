---
title: Работа с раздели в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с раздели
linktitle: Работа с раздели
description: "Създаване и управление на раздели и раздел прекъсвания в документ, използвайки Python. Вмъкване на раздел в документ Python. Премахване на раздел Python. Копиране секции между документи."
type: docs
weight: 120
url: /bg/python-net/working-with-sections/
---

Понякога искате документ, който няма един и същ формат във всички страници. Например, може да се наложи да промените форматите на номера на страниците, да имате различен размер и ориентация на страниците, или да имате първата страница на документа като страница за корицата без номерация. Можете да постигнете това с секции.

Раздели са нива възли, които контролират заглавни части и подножици, ориентация, колони, маржове, форматиране на страница номер и други.

Aspose.Words ви позволява да управлявате секции, да разделяте документ на раздели и да правите промени във форматирането, които се прилагат само към определен раздел. Aspose.Words съхранява информация за раздел форматиране като заглавни части и подметки, настройка на страница, и настройките на колона в раздел пробив.

Тази статия обяснява как да работите с раздели и раздели прекъсвания.

## Какво е раздел и раздел почивка е

Разделите на документите са представени от [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) както и [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) Класове. Обекти на раздел са незабавни деца на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Възел и може да бъде достъпен чрез [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) собственост. Можете да управлявате тези възли, като използвате някои методи като [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), и други.

Пробив на раздел е опция, която разделя страниците на документи в раздели с персонализирани оформление.

## Видове прекъсване на раздел

Aspose.Words позволява да разделите и форматирате документи с помощта на различни прекъсвания на раздел [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) Изброяване:

- SpartageBreakContinulous
- SectionBreakNewColumn
- SectionBreakNewPage
- Раздел BreakEvenPage
- SectionBreakOddPage

Можете също така да използвате [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) изброяване за избор на вид пробив, който се прилага само за първия раздел като NewColumn, NewPage, EvenPage и OddPage.

## Управление на раздел

Тъй като секцията е нормален композитен възел, цялата манипулация на възела API може да се използва за манипулиране на секции: за добавяне, премахване и други операции на секции. Можете да прочетете повече за възлите в статията [Aspose.Words Document Object Model (DOM)](/words/bg/python-net/aspose-words-document-object-model/).

От друга страна, можете да използвате `DocumentBuilder` API да работя с секции. В тази статия ще се съсредоточим върху този конкретен начин на работа с разделите.

## Вмъкване или премахване на прекъсване на раздел

Aspose.Words позволява да вмъкнете раздел за прекъсване на текста с помощта на [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) метод.

Следният пример с код показва как да се вмъкне раздел, който да пробие в документ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Използвайте [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) метод за изтриване на прекъсване на раздел. Ако не е необходимо да премахнете конкретен раздел пробив и вместо това изтрийте съдържанието на този раздел, можете да използвате [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) метод.

Следният пример за код показва как се премахват разделите:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Имайте предвид, че раздел пробив има информация за секцията, която отива преди него, а не частта, която отива след него. Така че, ако премахнете раздел почивка, текстът преди премахнатата пауза ще получите свойствата на раздел почивка след него. Това може да накара целия документ да се превърне в пейзаж, или заглавни части и подножици да се промени или напълно да изчезне.

{{% /alert %}}

## Преместване на раздел

Ако искате да преместите раздел от една позиция в друга във вашия документ, трябва да получите индекса на този раздел. Aspose.Words ви позволява да получите позиция раздел от а [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Можеш да използваш [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) собственост, за да получите всички раздели в документа си. Но ако искате да получите само първата част, можете да използвате [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) собственост.

Следният пример за код показва как да се влезе в първата секция и да се итерат през децата на композитен възел:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Посочете подреждане на раздел

Понякога искате документът ви да изглежда по-добре, като направите творчески макети за различни раздели от документи. Ако искате да посочите вида на текущата мрежа на раздел, можете да изберете режим на оформление на раздел с помощта на [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) Изброяване:

- По подразбиране
- Мрежа
- LineGrid
- SnapToChars

Следният пример за код показва как да се ограничи броят на редовете, които всяка страница може да има:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Редактиране на раздел

Когато добавите нов раздел към вашия документ, няма да има тяло или параграф, който можете да редактирате. Aspose.Words ви позволява да гарантирате, че даден раздел съдържа орган с най-малко един параграф, като използвате [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) метод го добавя автоматично Body (или HeaderFooter) възел към документа и след това добавя § към него.

Следният пример за код показва как да се подготви нов възел раздел използване **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Добавяне или предварително използване на съдържание

Ако искате да начертаете някаква форма или да добавите текст или изображение в началото/ края на раздел, можете да използвате [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) както и [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) методи на [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) Клас.

Следният пример за код показва как да се добави съдържание в съществуващ раздел:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Клониране на раздел

Aspose.Words ви позволява да дублирате раздел чрез създаване на пълно копие от него с помощта на [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) метод.

Следният пример за код показва как да клонирате първия раздел във вашия документ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Копиране на раздели между документи

В някои случаи може да имате големи документи с много раздели и искате да копирате съдържанието на раздел от един документ в друг.

Aspose.Words позволява да копирате раздели между документи, използвайки [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) метод.

Следният пример за код показва как да копирате раздели между документи:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Работа с раздел Header и Footer

Основните правила за показване на заглавна част или стъпало за всеки раздел са доста прости:

1. Ако секцията няма собствени заглавни части/футови части от определен тип, тогава тя се взема от предишния раздел.
2. Видът на заглавната част/футъра, показан на страницата, се контролира от "Различните първа страница" и "Различните страници на Odd & Even" в раздел.

Следният пример за код показва как да се създадат 2 секции с различни заглавни части:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Ако искате да премахнете текста на заглавните части и подметките, без да премахвате [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) обекти в документа, можете да използвате [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) метод. В допълнение, можете да използвате [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) метод за премахване на всички форми от заглавните части и подметките във вашия документ.

Следният пример за код показва как да изчистите съдържанието на всички заглавни части и подметки в раздел:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Следният пример за код как да премахнете всички форми от всички заглавни ленти в раздел:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Настройки на страницата в раздел

Преди да отпечатате страница или документ, може да искате да персонализирате и модифицирате размера и оформлението на една страница или целия документ. С настройката на страницата можете да промените настройките на страниците с документи като полета, ориентация и размер за отпечатване на различни първи страници или нечетни страници.

Aspose.Words позволява да персонализирате свойствата на страницата и секцията с помощта на [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) Клас.

Следният пример за код показва как да зададете такива свойства като размер на страница и ориентация за текущата секция:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Следният пример за код показва как да се променят свойствата на страницата във всички раздели:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Вижте също

- [Логически нива на възли в документ](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Вмъкване и добавяне на документи](/words/bg/python-net/insert-and-append-documents/)
