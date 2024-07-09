---
title: Зміни відстеження в документі Java
second_title: Aspose.Words для Java
articleTitle: Зміни відстеження в документі
linktitle: Зміни відстеження в документі
description: "Відстежуйте зміни вмісту та форматування, зроблені вами або іншими. Доступ до індивідуальних ревізій в документі та застосувати різні властивості до них за допомогою Javaй"
type: docs
weight: 270
url: /uk/java/track-changes-in-a-document/
---

Функціональність зміни треків, також відомий як перегляд, дозволяє відстежувати зміни контенту та форматування, внесені вами або іншими користувачами. Ця функція зміни доріжки з Aspose.Words підтримує зміни треків Microsoft Wordй З цією функціональністю ви можете отримати доступ до індивідуальних джерел у вашому документі та застосувати різні властивості до них.

Коли ви ввімкнете функцію зміни треку, всі вставлені, видалені та модифіковані елементи документа будуть візуально висвітлені інформацією про тих, хто, коли, і що було змінено. Об’єкти, які здійснюють інформацію про те, що було змінено, називаються "відстеження змін". Наприклад, припустимо, що ви хочете переглянути документ і зробити важливі зміни – це може означати, що вам потрібно зробити версії. Також можна вставити коментарі для обговорення деяких змін. Що таке зміна документів.

Ця стаття пояснює, як керувати та відстежувати зміни, створені багатьма рецензентами на одному документі, а також властивості для зміни відстеження.

{{% alert color="primary" %}}

Зверніть увагу, що функція коментаря в Aspose.Words, і в Microsoft Word, може бути пов'язано з змінами відстеження. Однак, пам'ятайте, що коментарі повністю залежать від зміни відстеження.

{{% /alert %}}

## Що таке версія

Перед тим як дайвінг в ревізії, пояснимо значення ревізій. Р [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) є зміною, яка виникає в одному вершині документа, в той час як група ревізій, представлена групою [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) клас є групою послідовних версій, які відбуваються в багатьох вузлах документа. Ревізити - інструмент для зміни відстеження.

Ревізії використовуються в функції відстеження і в межах функції порівняння документів, де з'являються ревізії в результаті порівняння. Таким чином, ревізії в межах функції відстеження показують, ким і що було змінено.

{{% alert color="primary" %}}

Примітка Microsoft Word не дозволяє переглядати індивідуальні версії, це лише дозволяє переглядати послідовні версії як однієї особи. Але Aspose.Words вирішує це обмеження з **RevisionGroup** клас.

{{% /alert %}}

Aspose.Words підтримує різні типи версій, а також у Microsoft Word, такі як введення, видалення, формат Зміна, StyleDefinition Зміна та переміщення. Всі типи редакцій представлені з [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) заохочення.

{{% alert color="primary" %}}

Зверніть увагу, що ревізії мають результат схожий на Microsoft Word але Aspose.Words не виявляти форматування при зміні відстеження.

{{% /alert %}}

## Почати і Зупинити відстежити зміни

Редагування документа, як правило, не рахує як редакція, доки ви починаєте його відстеження. Aspose.Words дозволяє автоматично відстежувати всі зміни вашого документа простими кроками. Ви можете легко почати процес зміни відстеження за допомогою [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) метод. Якщо вам необхідно зупинити процес зміни відстеження, щоб будь-які майбутні редагування не розглядалися ревізії, вам потрібно буде використовувати [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) метод.

{{% alert color="primary" %}}

Зверніть увагу, що `StartTrackingRevisions` метод не змінює статус [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) майно та не використовувати його значення для відстеження відправлень. Крім того, якщо вершина була перенесена з одного місця в інший всередині трекованого документа, то буде створено переадресацію, в тому числі пересуватися і перемістити діапазон.

{{% /alert %}}

В кінці процесу зміни відстеження у вашому документі ви зможете навіть прийняти всі версії або відхилити їх, щоб перевернути документ до початкової форми. Це може бути досягнуто шляхом використання [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) або [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) метод. Крім того, ви можете прийняти або відхилити кожну версію окремо, використовуючи [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) або [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) метод.

Всі зміни будуть відслідковуватися для однієї ітерації з моменту, коли ви починаєте процес до моменту його зупинки. З'єднання між різними ітераціями представлена наступним сценарієм: ви завершите процес відстеження, після чого зробіть деякі зміни, і знову запустіть зміни відстеження. З цим сценарієм всі зміни, які ви не прийняли або відхилятимуться знову.

{{% alert color="primary" %}}

Зверніть увагу, що `AcceptAllRevisions` метод схожий на "приймання всіх змін" Microsoft Wordй

{{% /alert %}}

Приклад коду показує, як працювати з змінами відстеження:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Приклад наступного коду показує, як генеруються версії, коли вузол переміщається в межах довіреного документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Управління та зміна магазинів як версії

З попередньою функцією відстеження можна зрозуміти, які зміни були внесені в документ, і які зробили ці зміни. Під час [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) Функція, ви змусите будь-які зміни у вашому документі, щоб зберігатися як версії.

Aspose.Words дозволяє перевірити, чи має документоообіг або не за допомогою [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) майно. Якщо вам не потрібно автоматично відстежити зміни у вашому документі через методи StartTrackRevisions та StopTrackRevisions, то ви можете використовувати `TrackRevisions` Можливість перевірити, чи слідуються зміни під час редагування документа Microsoft Word і зберігаються в якості ревізій.

Про нас `TrackRevisions` функція робить ревізії замість реальних DOM зміни. Але самі ревізії окремі. Наприклад, Якщо ви ви видалите будь-який пункт, Aspose.Words зробити його як ревізію, розмітивши її як видалення, замість його видалення.

Додатково Aspose.Words дозволяє перевірити, чи вводиться об'єкт, видалений або змінений форматування за допомогою [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), і [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) властивості.

{{% alert color="primary" %}}

Зверніть увагу, що не існує зв'язку між своїми версіями і `TrackRevisions` майно. Крім того, Ви можете прийняти/відновити версії незалежно від функції зміни відстеження.

{{% /alert %}}

Приклад коду показує, як застосувати різні властивості з ревізійами:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
