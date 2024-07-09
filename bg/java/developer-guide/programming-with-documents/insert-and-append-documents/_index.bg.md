---
title: Вмъкване и добавяне на документи в Java
second_title: Aspose.Words вместо Java
articleTitle: Вмъкване и добавяне на документи
linktitle: Вмъкване и добавяне на документи
description: "Комбиниране на документи в един: вмъкване или добавяне на документ в нов или съществуващ такъв чрез намиране и замяна, сливане на поле, отметки, или просто в документа завършва в Java."
type: docs
weight: 80
url: /bg/java/insert-and-append-documents/
---

Понякога е необходимо да се комбинират няколко документа в един. Можете да направите това ръчно или можете да използвате Aspose.Words вмъкване или добавяне на функция.

Операцията за вмъкване ви позволява да въведете съдържанието на предварително създадените документи в нов или съществуващ.

От своя страна, функцията за добавяне ви позволява да добавяте документ само в края на друг документ.

Тази статия обяснява как да вмъкнете или да добавите документ към друг по различни начини и описва общите свойства, които можете да приложите, докато въвеждате или добавяте документи.

## Вмъкване на документ

Както бе споменато по- горе, в Aspose.Words документ е представен като дърво от възли, а действието на поставянето на един документ в друг е копиране на възли от първото дърво на документа до второто.

Можете да поставите документи в различни места по различни начини. Например, можете да вмъкнете документ чрез замяна операция, сливане поле по време на сливане операция, или чрез отметки.

Можете също така да използвате [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) или [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) метод, който е подобен на въвеждането на документ в Microsoft Word, да вмъкне цял документ в текущата позиция на курсора без никакъв предишен внос.

Следният пример за код показва как да се въведе документ с помощта на **InsertDocument** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Следният пример за код показва как да се въведе документ с помощта на **InsertDocumentInline** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Следните подраздели описват опциите, по време на които можете да поставите един документ в друг.

### Вмъкване на документ по време на операция за намиране и замяна {#insert-a-document-during-find-and-replace-operation}

Можете да поставите документи при извършване на намиране и замяна на операции. Например документът може да съдържа параграфи с текста [INTRODUCTION] и [CONCLUSION]. Но в окончателния документ трябва да замените тези параграфи със съдържанието, получено от друг външен документ. За да постигнете това, ще трябва да създадете наставник за заместващото събитие.

Следният пример за код показва как да се създаде наставник за заместващото събитие да го използва по-късно в процеса на вмъкване:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Следният пример за код показва как се вмъква съдържанието на един документ в друг по време на операция за намиране и замяна:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Вмъкване на документ по време на Mail Merge Операция {#insert-a-document-during-mail-merge-operation}

Можете да поставите документ в сливане поле по време на mail merge операция. Например, mail merge шаблонът може да съдържа сливащо се поле като [Summary]. Но в последния документ трябва да вмъкнете съдържание, получено от друг външен документ в това поле за сливане. За да постигнете това, ще трябва да създадете отговорник за сливането.

Следният пример за код показва как да се създаде наставник за сливането събитие да го използва по-късно в процеса на вмъкване:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Следният пример за код показва как да се вмъкне документ в сливащото поле, като се използва създаденият свръзка:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Вмъкване на документ в отметките

Можете да импортирате текстов файл в документ и да го поставите веднага след отметките, които сте определили в документа. За да направите това, създайте отметки, където искате да бъде поставен документът.

Следният пример за кодиране показва как да се вмъкне съдържанието на един документ в отметки в друг документ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Имайте предвид, че отметките не трябва да съдържат няколко абзаца или текст, които искате те да бъдат включени във Вашия окончателен резултатен документ.

{{% /alert %}}

## Добавяне на документ

Може да имате случай на използване, в който трябва да включите допълнителни страници от документ до края на съществуващ документ. За да направите това, просто трябва да се обадите на [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) метод за добавяне на документ към края на друг.

{{% alert color="primary" %}}

Имайте предвид, че [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) е метод на ниво възел в документ. Например, можете да създадете параграф, да зададете форматиращи свойства и след това да го добавите като дете към тялото с помощта на **AppendChild** метод.

{{% /alert %}}

Следният пример с код показва как да се добави документ към края на друг документ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Импортиране и вмъкване на възлите ръчно {#import-and-insert-nodes-manually}

Aspose.Words позволява автоматично въвеждане и добавяне на документи без никакви предишни изисквания за внос. Въпреки това, ако трябва да въведете или да добавите конкретен възел на вашия документ, като например раздел или параграф, тогава първо трябва да внесете този възел ръчно.

Когато трябва да вмъкнете или да добавите един раздел или параграф в друг, по същество трябва да внесете възлите на първото дърво документно възел във втория, като използвате [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) метод. След внос на възлите, трябва да използвате [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) метод за поставяне на нов възел след/преди референтния възел. Това ви позволява да персонализирате процеса на вмъкване чрез внос на възли от документ и поставяне му на дадени позиции.

Можете също така да използвате [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) метод за добавяне на нов определен възел към края на списъка на възлите за деца, например, ако искате да добавите съдържание на ниво параграф вместо на ниво раздел.

Следният пример с код показва как ръчно да се внасят възли и да се поставят след определен възел с помощта на **InsertAfter** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Импортирането създава нов възел, който е копие на оригиналния възел и подходящ за въвеждане в документа за местоназначение.

{{% /alert %}}

Съдържание се внася в раздела по раздел на документа за местоназначение, което означава, че настройките, като например настройката на страниците, заглавните части или подметките, се запазват по време на вноса. Също така е полезно да се отбележи, че можете да дефинирате форматиране на настройките, когато вмъквате или добавяте документ, за да се уточни как се свързват два документа.

## Общи свойства за вмъкване и добавяне на документи {#common-properties-for-insert-and-append-documents}

И двете. [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) както и [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) методите се приемат [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) както и [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) като входящи параметри. На **ImportFormatMode** позволява да контролирате как форматирането на документи се слива, когато внасяте съдържание от един документ в друг, като избирате различни режими на форматиране като [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), както и [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). На **ImportFormatOptions** позволява да изберете различни опции за внос като [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), както и [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words ви позволява да коригирате визуализацията на получения документ, когато два документа се добавят заедно в дадена вложка или операция, като използвате [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) както и [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) имоти. На **PageSetup** имот съдържа всички атрибути на раздел като [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), и други. Най- често използваният случай е да се определи **SectionStart** свойство за определяне дали добавеното съдържание ще се появи на същата страница или ще се раздели на нова.

{{% alert color="primary" %}}

Имайте предвид, че **Section** както и **PageSetup** свойствата не контролират начина, по който се добавят/прилагат два документа заедно. Те ви позволяват само да промените външния вид на Вашия документ за резултата.

{{% /alert %}}

Следният пример за код показва как да се добави един документ към друг, като същевременно съдържанието не се разделя на две страници:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
