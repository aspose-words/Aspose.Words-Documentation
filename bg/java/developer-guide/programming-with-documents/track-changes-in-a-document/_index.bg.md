---
title: Запис на промените в документ в Java
second_title: Aspose.Words вместо Java
articleTitle: Запис на промените в документ
linktitle: Запис на промените в документ
description: "Проследете промените в съдържанието и форматирането, направени от вас или други. Достъп до индивидуални ревизии в документ и прилагане на различни свойства за тях използване Java."
type: docs
weight: 270
url: /bg/java/track-changes-in-a-document/
---

Функционалността на промените в коловозите, известни също като преглед, ви позволява да следите промените в съдържанието и форматирането, направени от вас или други потребители. Функция за промяна на песента с Aspose.Words поддържа промените в песента Microsoft Word. С тази функционалност можете да получите достъп до индивидуални ревизии във вашия документ и да приложите различни свойства към тях.

Когато активирате функцията за промяна на песента, всички вкарани, изтрити и променени елементи на документа ще бъдат визуално подчертани с информация за кого, кога и какво е променено. Обекти, които носят информация за това, което е било променено, се наричат "проследяващи промени." Например, да предположим, че искате да прегледате документ и да направите важни промени, това може да означава, че трябва да направите ревизии. Също така, може да се наложи да вмъкнете коментари, за да обсъдите някои от промените. Тук идват промените в документите.

Тази статия обяснява как да се управляват и проследяват промените, създадени от много рецензенти на същия документ, както и свойствата за проследяване на промените.

{{% alert color="primary" %}}

Имайте предвид, че коментарът в Aspose.Words, както и в Microsoft Word, могат да бъдат свързани с проследяване на промени. Не забравяй обаче, че коментарите са напълно независими от проследяването на промените.

{{% /alert %}}

## Какво представлява преразглеждането

Преди да се потопиш в ревизии, нека да обясним значението на ревизиите. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) е промяна, която настъпва в един възел на документ, докато група за преразглеждане, представена от [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) клас, е група последователни ревизии, които се появяват в много възли на документ. Ревизията е инструмент за проследяване на промените.

Преработките се използват в функцията за проследяване на промените и в рамките на функцията за сравнение на документите, когато ревизиите се появяват в резултат на сравнението. Така че ревизиите в функцията за проследяване на промените показват от кого и какво е променено.

{{% alert color="primary" %}}

Имайте предвид, че Microsoft Word не ви позволява да разглеждате индивидуални ревизии, то ви позволява само да разглеждате последователни ревизии като едно цяло. Но... Aspose.Words решава това ограничение с **RevisionGroup** Клас.

{{% /alert %}}

Aspose.Words подкрепя различни видове преразглеждане, както и в Microsoft Word, като вмъкване, изтриване, формат Промяна, StyleDefinition Промяна и движение. Всички видове ревизия са представени с [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) Изброяване.

{{% alert color="primary" %}}

Обърнете внимание, че ревизиите имат резултат подобен на Microsoft Word но Aspose.Words не открива форматиране по време на проследяване на промените.

{{% /alert %}}

## Начало и спиране на проследяването на промените

Редактирането на документ обикновено не се брои за ревизия, докато не започнете да го проследявате. Aspose.Words позволява автоматично проследяване на всички промени във вашия документ с прости стъпки. Можете лесно да започнете процеса на проследяване на промените с помощта на [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) метод. Ако трябва да спрете процеса на проследяване на промените, така че всички бъдещи редактирания да не се считат за ревизии, ще трябва да използвате [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) метод.

{{% alert color="primary" %}}

Имайте предвид, че `StartTrackingRevisions` методът не променя състоянието на [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) собственост и не използва стойността си за целите на проследяване на преразглеждането. Освен това, ако възелът е бил преместен от едно място на друго вътре в проследявания документ, тогава ще бъдат създадени промени в движението, включително преместване от и преминаване към обхват.

{{% /alert %}}

В края на процеса на проследяване на промените във вашия документ, ще имате възможността дори да приемете всички ревизии или да ги отхвърлите, за да върнете документа в първоначалния му вид. Това може да се постигне с помощта на [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) или [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) метод. Освен това, можете да приемете или отхвърлите всяко преразглеждане отделно, като използвате [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) или [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) метод.

Всички промени ще бъдат проследени за една итерация от момента, в който започнете процеса до момента, в който го спрете. Връзката между различните итерация е представена като следния сценарий: завършвате процеса на проследяване, след това правите някои промени и отново започвате проследяване на промените. При този сценарий всички промени, които не сте приели или отхвърлили, ще бъдат показани отново.

{{% alert color="primary" %}}

Имайте предвид, че `AcceptAllRevisions` метод е подобен на год. Microsoft Word.

{{% /alert %}}

Следният пример за код показва как да се работи с проследяване на промените:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Следният пример за код показва как се генерират ревизии при преместване на възел в проследяван документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Управление и магазин промени като ревизия

С предишната функция за проследяване на промените можете да разберете кои промени са направени във вашия документ и кой е направил тези промени. Докато с [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) функция, принуждавате всички промени в документа да се съхраняват като ревизии.

Aspose.Words позволява да проверите дали документът има ревизия или не чрез използване на [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) собственост. Ако не е необходимо автоматично да следите промените във вашия документ чрез StartTrackRevisions и StopTrackRevisions методи, тогава можете да използвате `TrackRevisions` имот за проверка дали промените са следени при редактиране на документ в Microsoft Word и се съхранява като ревизии.

На `TrackRevisions` функцията прави ревизии вместо истински DOM промени. Но самите ревизии са отделни. Например, Ако изтриете параграф, Aspose.Words Направете го като ревизия, маркирайте го като изтриване, вместо да го изтривате.

Освен това, Aspose.Words позволява да проверите дали даден обект е бил поставен, изтрит или променен форматиращ с помощта на [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), както и [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) имоти.

{{% alert color="primary" %}}

Имайте предвид, че няма връзка между самите ревизии и `TrackRevisions` собственост. В допълнение, можете да приемете/отменете ревизиите независимо от функцията за проследяване на промените.

{{% /alert %}}

Следният пример за код показва как да се прилагат различни свойства с ревизии:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
