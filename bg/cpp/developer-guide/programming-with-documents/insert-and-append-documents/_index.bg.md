---
title: Вмъкване и добавяне на документи в C++
second_title: Aspose.Words за C++
articleTitle: Вмъкване и добавяне на документи
linktitle: Вмъкване и добавяне на документи
description: "Комбиниране на документи в един: вмъкване или добавяне на документ в нов или съществуващ с помощта на търсене и заместване, обединяване на поле, показалец или просто в края на документа."
type: docs
weight: 80
url: /bg/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Понякога е необходимо да се комбинират няколко документа в един. Можете да направите това ръчно или можете да използвате Aspose.Words вмъкване или добавяне на функция.

Операцията Вмъкване ви позволява да вмъкнете съдържанието на предварително създадени документи В нов или съществуващ.

На свой ред функцията за добавяне ви позволява да добавите документ само в края на друг документ.

Тази статия обяснява как да вмъквате или добавяте документ към друг документ по различни начини и описва общите свойства, които можете да приложите, докато вмъквате или добавяте документи.

## Вмъкване на документ

Както бе споменато по-горе, в Aspose.Words документ е представен като дърво от възли, а операцията по вмъкване на един документ в друг е копиране на възли от първото дърво на документа във второто.

Можете да вмъквате документи в различни местоположения по различни начини. Например можете да вмъкнете документ чрез операция за заместване, поле за обединяване по време на операция за обединяване или чрез отметка.

Можете също да използвате метода [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), който е подобен на вмъкване на документ в Microsoft Word, За да вмъкнете цял документ в текущата позиция на курсора без предишно импортиране.

Следващият пример за код показва как да вмъкнете документ, като използвате метода `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Следващите подраздели описват опциите, по време на които можете да вмъкнете един документ в друг.

### Вмъкване на документ по време на операция търсене и замяна {#insert-a-document-during-find-and-replace-operation}

Можете да вмъквате документи, докато извършвате операции за търсене и заместване. Например един документ може да съдържа параграфи с текст [INTRODUCTION] и [CONCLUSION]. Но в окончателния документ трябва да замените тези абзаци със съдържанието, получено от друг външен документ. За да постигнете това, ще трябва да създадете манипулатор за заместващото събитие.

Следващият пример за код показва как да създадете манипулатор за заместващото събитие, за да го използвате по-късно в процеса на вмъкване:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Следният пример за код показва как вмъкване на съдържание от един документ в друг по време на операция търсене и заместване:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Вмъкване на документ по време на операция Mail Merge {#insert-a-document-during-mail-merge-operation}

Можете да вмъкнете документ в поле за обединяване по време на операция Mail Merge. Например шаблон Mail Merge може да съдържа поле за обединяване, като например [резюме]. Но в окончателния документ трябва да вмъкнете съдържание, получено от друг външен документ в това поле на циркулярен документ. За да постигнете това, ще трябва да създадете манипулатор за събитието на сливането.

Следващият пример за код показва как да създадете манипулатор за събитието на обединяване, за да го използвате по-късно в процеса на вмъкване:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Следващият пример за код показва как да вмъкнете документ в полето за обединяване с помощта на създадения манипулатор:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Вмъкване на документ в Отметка

Можете да импортирате текстов файл в документ и да го вмъкнете веднага след отметка, която сте дефинирали в документа. За да направите това, създайте маркиран абзац, в който искате да бъде вмъкнат документът.

Следващият пример за кодиране показва как да вмъкнете съдържанието на един документ в отметка в друг документ:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Обърнете внимание, че показалецът не трябва да съдържа множество абзаци или текст, които искате да се показват във вашия окончателен документ.

{{% /alert %}}

## Добавяне на документ

Може да имате случай на използване, в който трябва да включите допълнителни страници от документ до края на съществуващ документ. За да направите това, просто трябва да извикате метода [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/), за да добавите документ в края на друг.

{{% alert color="primary" %}}

Обърнете внимание, че [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) е метод на ниво възел в документ. Например можете да създадете абзац, да зададете свойства за форматиране и след това да го добавите като дете към тялото, като използвате метода **AppendChild**.

{{% /alert %}}

Следният пример за код показва как да добавите документ към края на друг документ:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Импортиране и вмъкване на възли ръчно {#import-and-insert-nodes-manually}

Aspose.Words Позволява ви да вмъквате и добавяте документи автоматично без никакви предишни изисквания за импортиране. Ако обаче трябва да вмъкнете или добавите конкретен възел на вашия документ, като например раздел или абзац, първо трябва да импортирате този възел ръчно.

Когато трябва да вмъкнете или добавите един раздел или абзац към друг, по същество трябва да импортирате възлите от дървото с възли на първия документ във второто, като използвате метода [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). След импортиране на вашите възли, трябва да използвате метода [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/), за да вмъкнете нов възел след/преди референтния възел. Това ви позволява да персонализирате процеса на вмъкване, като импортирате възли от документ и го вмъквате на определени позиции.

Можете също да използвате метода [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/), за да добавите нов зададен възел в края на списъка на дъщерни възли, например ако искате да добавите съдържание на ниво абзац, вместо на ниво секция.

Следващият пример за код показва как ръчно да импортирате възли и да ги вмъквате след конкретен възел, като използвате метода **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Импортирането създава нов възел, който е копие на първоначалния възел и е подходящ за вмъкване в документа местоназначение.

{{% /alert %}}

Съдържанието се импортира в раздела местоназначение документ по раздел, което означава, че настройките, като например настройка на страници и горни или долни колонтитули, се запазват по време на импортирането. Също така е полезно да се отбележи, че можете да дефинирате настройки за форматиране, когато вмъквате или добавяте документ, за да зададете как да се свържат два документа.

## Общи свойства за вмъкване и добавяне на документи {#common-properties-for-insert-and-append-documents}

[InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) и [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) методите приемат [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) като входни параметри. **ImportFormatMode** ви позволява да контролирате как се обединява форматирането на документи, когато импортирате съдържание от един документ в друг, като изберете различни режими на форматиране, като например [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) и [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). **ImportFormatOptions** ви позволява да изберете различни опции за импортиране, като например[IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), и [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words Позволява ви да регулирате визуализацията на получения документ, когато два документа се добавят заедно в операция вмъкване или Добавяне, като използвате свойствата [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). **PageSetup** собственост съдържа всички атрибути на раздел като [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), и други. Най-често използваният случай е да зададете свойството **SectionStart**, за да определите дали добавеното съдържание ще се показва на същата страница или ще се раздели на нова.

{{% alert color="primary" %}}

Обърнете внимание, че **Section** и **PageSetup** свойствата не контролират как два документа се вмъкват/добавят заедно. Те ви позволяват само да промените облика на вашия документ с резултати.

{{% /alert %}}

Следващият пример за код показва как да добавите един документ към друг, като същевременно не разделяте съдържанието на две страници:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
