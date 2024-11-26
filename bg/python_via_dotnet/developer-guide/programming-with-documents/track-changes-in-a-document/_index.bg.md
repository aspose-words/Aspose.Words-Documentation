---
title: Запис на промените в документ
second_title: Aspose.Words вместо Python via .NET
articleTitle: Запис на промените в документ
linktitle: Запис на промените в документ
description: "Проследяване на промените в съдържанието и форматирането, направени от вас или други, използвайки Python. Достъп до индивидуални ревизии в документ и прилагане на различни свойства за тях."
type: docs
weight: 270
url: /bg/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Функционалността на промените в релсите, известни също като преглед, ви позволява да следите промените в съдържанието и форматирането, направени от вас или други потребители. Функция за промяна на песента с Aspose.Words поддържа промените в следите Microsoft Word. С тази функционалност можете да получите достъп до индивидуални ревизии във вашия документ и да приложите различни свойства към тях.

Когато активирате функцията за промяна на песента, всички въведени, изтрити и променени елементи на документа ще бъдат визуално подчертани с информация за това от кого, кога и какво е променено. Обекти, които носят информация за това, което е било променено, се наричат "проследяване на промените." Например, да предположим, че искате да прегледате документ и да направите важни промени, това може да означава, че трябва да направите ревизии. Също така може да се наложи да вмъкнете коментари, за да обсъдите някои от промените. Тук идват промените в документите.

Тази статия обяснява как да се управляват и проследяват промените, създадени от много рецензенти на същия документ, както и свойствата за проследяване на промените.

{{% alert color="primary" %}}

Имайте предвид, че коментарът в Aspose.Words, както и в Microsoft Word, могат да бъдат свързани с проследяване на промени. Не забравяйте обаче, че коментарите са напълно независими от проследяването на промените.

{{% /alert %}}

## Какво представлява преразглеждането

Преди да се потопиш в ревизиите, нека да обясним значението на ревизиите. A [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) е промяна, която настъпва в един възел на документ по време на група за преразглеждане, представена от [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) клас, е група от последователни ревизии, които се появяват в много възли на документ. По принцип преразглеждането е средство за проследяване на промените.

Преработките се използват в функцията за проследяване на промените и в рамките на функцията за сравнение на документите, където ревизиите се появяват в резултат на сравнение. Така че ревизиите в функцията за проследяване на промените показват от кого и какво е променено.

{{% alert color="primary" %}}

Имайте предвид, че Microsoft Word не ви позволява да разглеждате индивидуални ревизии, а само да разглеждате последователни ревизии като едно цяло. Но... Aspose.Words решава това ограничение с [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) Клас.

{{% /alert %}}

Aspose.Words подкрепя различни видове преразглеждане, както и в Microsoft Word, като вмъкване, изтриване, формат Промяна, styleDefinition Промяна и движение. Всички видове ревизия са представени с [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/) Изброяване.

{{% alert color="primary" %}}

Обърнете внимание, че ревизиите имат резултат подобен на Microsoft Word но Aspose.Words не открива форматиране по време на проследяване на промените.

{{% /alert %}}

## Начало и спиране на проследяването на промените

Редактирането на документ обикновено не се брои за ревизия, докато не започнете да го проследявате. Aspose.Words позволява автоматично проследяване на всички промени във вашия документ с прости стъпки. Можете лесно да започнете процеса на проследяване на промените с помощта на [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) метод. Ако трябва да спрете процеса на проследяване на промените, така че всички бъдещи редактирания да не се считат за ревизии, ще трябва да използвате [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/) метод.

{{% alert color="primary" %}}

Имайте предвид, че [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) метод не променя състоянието на [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) собственост и не използва стойността си за целите на проследяване на преразглеждането. Освен това, ако възел е бил преместен от едно място на друго вътре в проследявания документ, тогава ще бъдат създадени промени в движението, включително преместване от и преминаване към обхват.

{{% /alert %}}

В края на процеса на проследяване на промените във вашия документ, ще имате възможността дори да приемете всички ревизии или да ги отхвърлите, за да върнете документа в първоначалния му вид. Това може да се постигне с помощта на [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) или [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) метод. В допълнение, можете да приемете или отхвърлите всяко преразглеждане отделно чрез използване на [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) или [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/) метод.

Всички промени ще бъдат проследени за една итерация от момента, в който започнете процеса до момента, в който го спрете. Връзката между различните итерации е представена като следния сценарий: завършвате процеса на проследяване, след това правите някои промени и започвате проследяване на промените отново. С този сценарий всички промени, които не сте приели или отхвърлили, ще бъдат показани отново.

{{% alert color="primary" %}}

Имайте предвид, че [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) метод е подобен на ... Microsoft Word.

{{% /alert %}}

Следният пример за код показва как да се работи с промените в проследяването:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Следният пример за код показва как се генерират ревизии при преместване на възел в проследяван документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Управление и магазин промени като ревизия

С предишната функция за проследяване на промените можете да разберете кои промени са направени във вашия документ и кой е направил тези промени. Докато с [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) функция, принуждавате всички промени в документа си да се съхраняват като ревизии.

Aspose.Words позволява да проверите дали документът има ревизия или не чрез използване на [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) собственост. Ако не е необходимо автоматично да следите промените във вашия документ чрез start_track_revisions и stop_track_revisions методи, тогава можете да използвате [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) Имот за проверка дали промените се проследяват при редактиране на документ в Microsoft Word и се съхранява като ревизии.

На [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) функцията прави ревизии вместо истински DOM промени. Но самите ревизии са отделни. Например, Ако изтриете параграф, Aspose.Words Направете го като ревизия, маркирайте го като изтриване, вместо да го изтривате.

Освен това, Aspose.Words позволява да проверите дали даден обект е бил поставен, изтрит или променен форматиращ с помощта на [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), както и [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) имоти.

{{% alert color="primary" %}}

Имайте предвид, че няма връзка между самите ревизии и [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) собственост. В допълнение, можете да приемете/отменете ревизиите независимо от функцията за проследяване на промените.

{{% /alert %}}

Следният пример за код показва как да се прилагат различни свойства с ревизии:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
