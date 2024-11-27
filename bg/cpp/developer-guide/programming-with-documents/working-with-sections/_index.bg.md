---
title: Работа със секции в C++
second_title: Aspose.Words за C++
articleTitle: Работа със секции
linktitle: Работа със секции
description: "Разбиране на понятията в раздел Документи и манипулационни практики, като се използва C++. Вмъкване на раздел в документ C++. Премахнете раздел C++. Копиране на раздели между документи."
type: docs
weight: 120
url: /bg/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Понякога искате документ, който няма едно и също форматиране на всички страници. Например може да се наложи да промените числовите формати на страниците, да имате различен размер на страницата и ориентация или да имате първата страница на документа като титулна страница без никакво номериране. Това може да се постигне с раздели.

Секциите са възли на ниво, които контролират горни и долни колонтитули, ориентация, колони, полета, форматиране на номера на страници и други.

Aspose.Words Позволява ви да управлявате секции, да разделяте документ на секции и да правите промени във форматирането, които се прилагат само към определена секция. Aspose.Words съхранява информация за форматирането на секции, като горни и долни колонтитули, настройка на страници и настройки на колони в знак за нов знак за раздел.

Тази статия обяснява как да работите с раздели и раздели.

## Какво е раздел и прекъсване на Раздел

Разделите на документа са представени от класовете [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) и [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Обектите на секцията са непосредствени деца на възела [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) и могат да бъдат достъпни чрез собствеността [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Можете да управлявате тези възли, като използвате някои методи като [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), и други.

Нов раздел е опция, която разделя страниците на документа на секции с персонализируеми оформления.

## Типове на прекъсване на секция

Aspose.Words Позволява ви да разделяте и форматирате документи, като използвате различни прекъсвания на секциите на [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/) изброяване:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Можете също да използвате изброяването [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/), за да изберете тип прекъсване, което се отнася само за първия раздел, като например NewColumn, NewPage, EvenPage, и OddPage.

## Управление на секция

Тъй като дадена секция е нормален композитен възел, цялата манипулация на възел API може да се използва за манипулиране на секции: за добавяне, премахване и други операции върху секции. Можете да прочетете повече за възлите в статията [Aspose.Words Документ Обектен Модел (DOM)](/words/cpp/aspose-words-document-object-model/).

От друга страна, можете да използвате `DocumentBuilder` API за работа със секции. В тази статия ще се съсредоточим върху този конкретен начин на работа с раздели.

## Вмъкване или премахване на нов раздел

Aspose.Words ви позволява да вмъкнете раздел в текста, като използвате метода [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Следващият пример за код показва как да вмъкнете нов раздел в документ:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Използвайте метода [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/), за да изтриете нов раздел. Ако не е необходимо да премахвате определен знак за нов раздел, а вместо това да изтриете съдържанието на този раздел, можете да използвате метода [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Следващият пример за код показва как да премахнете прекъсванията на секциите:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Обърнете внимание, че нов раздел има информация за секцията, която върви преди него, а не секцията, която върви след него. Така че ако премахнете знак за нов раздел, текстът преди знака за нов раздел ще получи свойствата на знака за нов раздел след него. Това може да накара целия документ да стане пейзажен или горни и долни колонтитули да се променят или напълно да изчезнат.

{{% /alert %}}

## Преместване на секция

Ако искате да преместите секция от една позиция в друга във вашия документ, трябва да получите индекса на тази секция. Aspose.Words ви позволява да получите позиция на секция от [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Можете да използвате свойството [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), за да получите всички раздели във вашия документ. Но ако искате да получите само първата секция, можете да използвате свойството [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Следващият пример за код показва как да получите достъп до първата секция и да итерирате чрез децата на съставен възел:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Задаване на оформление на секция

Понякога искате документът ви да изглежда по-добре, като създавате творчески оформления за различни секции на документа. Ако искате да зададете типа на текущата мрежа на секцията, можете да изберете режим на оформление на секцията, като използвате изброяването [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- По подразбиране
- Мрежа
- LineGrid
- SnapToChars

Следващият пример за код показва как да ограничите броя на редовете, които всяка страница може да има:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Редактиране на секция

Когато добавите нова секция към вашия документ, няма да има тяло или абзац, които можете да редактирате. Aspose.Words ви позволява да гарантирате, че даден раздел съдържа тяло с поне един абзац, като използвате метода [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – той автоматично ще добави тяло (или HeaderFooter) възел към документа и след това ще добави абзац към него.

Следващият пример за код показва как да подготвите нов възел на секция, като използвате **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Добавяне или предплащане на съдържание

Ако искате да нарисувате някаква фигура или да добавите текст или изображение в началото/края на секция, можете да използвате методите [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) и [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) от класа [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Следният пример за код показва как да добавите съдържание на съществуващ раздел:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Клон А секция

Aspose.Words ви позволява да дублирате секция, като създадете пълно копие от нея, като използвате метода [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Следващият пример за код показва как да клонирате първата секция във вашия документ:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Копиране на раздели между документи

В някои случаи може да имате големи документи с много секции и искате да копирате съдържанието на секция от един документ в друг.

Aspose.Words ви позволява да копирате раздели между документи, като използвате метода [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Следващият пример за код показва как да копирате раздели между документи:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Работа с горен и Долен колонтитул на секция

Основните правила за показване на горен или долен колонтитул за всеки раздел са доста прости.:

1. Ако секцията няма собствени горни / долни колонтитули от определен тип, тогава тя е взета от предишния раздел.
2. Типът на горния / долния колонтитул, показан на страницата, се контролира от настройките на секцията "различни първи страници" и "различни четни и нечетни страници" – ако са деактивирани, собствените заглавия на секцията се игнорират.

Следващият пример за код показва как да създадете 2 секции с различни заглавки:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Ако искате да премахнете текста на горни и долни колонтитули, без да премахвате [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) обекти във вашия документ, можете да използвате метода [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Освен това можете да използвате метода [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/), за да премахнете всички фигури от горни и долни колонтитули във вашия документ.

Следващият пример за код показва как да изчистите съдържанието на всички горни и долни колонтитули в секция:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Следният пример код как да премахнете всички фигури от всички горни колонтитули в секция:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Персонализиране на свойствата на страницата в секция

Преди да отпечатате страница или документ, може да искате да персонализирате и промените размера и оформлението на една страница или целия документ. С настройката на страниците можете да промените настройките на страниците на документа, като полета, ориентация и размер за отпечатване на различни първи страници или нечетни страници.

Aspose.Words Позволява ви да персонализирате свойствата на страница и секция, като използвате класа [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

Следващият пример за код показва как да зададете свойства като размер на страница и ориентация за текущата секция:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Следният пример за код показва как да промените свойствата на страницата във всички раздели:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Вижте Също

- [Логически нива на възли в документ](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Вмъкване и добавяне на документи](/words/cpp/insert-and-append-documents/)
