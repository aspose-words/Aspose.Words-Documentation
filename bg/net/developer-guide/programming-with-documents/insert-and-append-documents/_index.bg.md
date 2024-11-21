---
title: Вмъкване и добавяне на документи в C#
second_title: Aspose.Words вместо .NET
articleTitle: Вмъкване и добавяне на документи
linktitle: Вмъкване и добавяне на документи
description: "Комбиниране на документи в едно: вмъкване или добавяне на документ в нов или съществуващ такъв с помощта на намиране и замяна, сливане на поле, отметки, или просто в документа завършва в C#."
type: docs
weight: 80
url: /bg/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Понякога е необходимо да се комбинират няколко документа в един. Можете да направите това ръчно или можете да използвате Aspose.Words вмъкване или добавяне на функция.

Операцията за вмъкване ви позволява да въведете съдържанието на предварително създадените документи в нов или съществуващ.

От своя страна, функцията за добавяне ви позволява да добавяте документ само в края на друг документ.

Тази статия обяснява как да се вмъкне или да се добави документ към друг по различни начини и описва общите свойства, които можете да приложите, докато вмъквате или добавяте документи.

## Вмъкване на документ {#insert-a-document}

Както бе споменато по- горе, в Aspose.Words документ е представен като дърво от възли, а действието на поставянето на един документ в друг е копиране на възли от първото дърво на документа до второто.

Можете да поставите документи по различни начини. Например, можете да поставите документ чрез замяна операция, сливане поле по време на сливане операция, или чрез отметки.

Можете също така да използвате [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) или [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) метод, който е подобен на въвеждането на документ в Microsoft Word, да се въведе цял документ в текущата позиция на курсора без никакъв предишен внос.

Следният пример с код показва как да се вмъкне документ с помощта на **InsertDocument** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Следният пример с код показва как да се вмъкне документ с помощта на **InsertDocumentInline** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Следните подраздели описват опциите, по време на които можете да поставите един документ в друг.

### Вмъкване на документ по време на операция за намиране и замяна {#insert-a-document-during-find-and-replace-operation}

Можете да вмъквате документи при извършване на намиране и замяна на операции. Например документът може да съдържа параграфи с текста [INTROUCTION] и [CONCLUSION]. Но в окончателния документ трябва да замените тези параграфи със съдържанието, получено от друг външен документ. За да постигнете това, ще трябва да създадете наставник за заместващото събитие.

Следният пример за код показва как да се създаде наставник за заместващото събитие да го използва по-късно в процеса на вмъкване:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Следният пример за код показва как се вмъква съдържанието на един документ в друг по време на операция за намиране и замяна:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Вмъкване на документ по време на Mail Merge Операция {#insert-a-document-during-mail-merge-operation}

Можете да поставите документ в сливане поле по време на mail merge операция. Например, mail merge шаблонът може да съдържа сливащо се поле като [Summary]. Но в последния документ трябва да вмъкнете съдържание, получено от друг външен документ в това поле за сливане. За да постигнете това, ще трябва да създадете наставник за сливането.

Следният пример за код показва как да се създаде наставник за сливането събитие да го използва по-късно в процеса на вмъкване:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Следният пример за код показва как да се вмъкне документ в сливащото поле, като се използва създаденият наставник:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Вмъкване на документ в отметките {#insert-a-document-at-bookmark}

Можете да импортирате текстов файл в документ и да го поставите веднага след отметките, които сте определили в документа. За да направите това, създайте отметки, където искате да бъде поставен документът.

Следният пример за кодиране показва как да се вмъкне съдържанието на един документ в отметки в друг документ:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Имайте предвид, че отметките не трябва да съдържат няколко абзаца или текст, които искате да бъдат включени във Вашия окончателен резултатен документ.

{{% /alert %}}

## Добавяне на документ {#append-a-document}

Може да имате случай на използване, когато трябва да включите допълнителни страници от документ до края на съществуващ документ. За да направите това, просто трябва да се обадите на [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) метод за добавяне на документ към края на друг.

{{% alert color="primary" %}}

Имайте предвид, че [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) е метод на ниво възел в рамките на документ. Например, можете да създадете параграф, да зададете форматиращи свойства, и след това да го добавите като дете към тялото с помощта на **AppendChild** метод.

{{% /alert %}}

Следният пример за код показва как да се добави документ към края на друг документ:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Импортиране и въвеждане на възли ръчно {#import-and-insert-nodes-manually}

Aspose.Words позволява автоматично въвеждане и добавяне на документи без никакви предишни изисквания за внос. Въпреки това, ако трябва да въведете или да добавите конкретен възел на вашия документ, като например раздел или параграф, тогава първо трябва да внесете този възел ръчно.

Когато трябва да вмъкнете или да добавите един раздел или параграф в друг, по същество трябва да внесете възлите на първото дърво на документния възел във втория с помощта на [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) метод. След внос на възлите, трябва да използвате [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) метод за поставяне на нов възел след/преди референтния възел. Това ви позволява да персонализирате процеса на вмъкване чрез внос на възли от документ и поставянето му на дадени позиции.

Можете също така да използвате [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) метод за добавяне на нов определен възел към края на списъка на възлите на деца, например, ако искате да добавите съдържание на ниво параграф вместо на ниво раздел.

Следният пример с код показва как ръчно да се внасят възли и да се поставят след определен възел с помощта на **InsertAfter** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Импортирането създава нов възел, който е копие на оригиналния възел и подходящ за въвеждане в документа за местоназначение.

{{% /alert %}}

Съдържание се внася в раздела по раздел на документа на местоназначението, което означава, че настройките, като например настройка на страниците, заглавни части или подметки, се запазват по време на вноса. Също така е полезно да се отбележи, че можете да дефинирате настройките за форматиране, когато вкарвате или добавяте документ, за да уточните как се свързват два документа.

## Общи свойства за вмъкване и добавяне на документи {#common-properties-for-insert-and-append-documents}

И двете. [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) както и [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) методите се приемат [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) както и [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) като входящи параметри. На **ImportFormatMode** позволява да контролирате как се слива форматирането на документи, когато внасяте съдържание от един документ в друг, като избирате различни режими на форматиране като [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), както и [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). На **ImportFormatOptions** ви позволява да изберете различни опции за внос като [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), както и [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words ви позволява да коригирате визуализацията на получения документ, когато два документа се добавят заедно в дадена вложка или операция, като използвате [Section](https://reference.aspose.com/words/net/aspose.words/section/) както и [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) имоти. На **PageSetup** имот съдържа всички атрибути на раздел като [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), и други. Най- често използваният случай е да се определи **SectionStart** свойство за определяне дали добавеното съдържание ще се появи на същата страница или ще се раздели на нова.

{{% alert color="primary" %}}

Имайте предвид, че **Section** както и **PageSetup** свойствата не контролират как два документа се вкарват/прилагат заедно. Позволяват ви само да променяте външния вид на документа с резултатите.

{{% /alert %}}

Следният пример за код показва как да се добави един документ към друг, като същевременно се запази съдържанието от разделяне на две страници:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
