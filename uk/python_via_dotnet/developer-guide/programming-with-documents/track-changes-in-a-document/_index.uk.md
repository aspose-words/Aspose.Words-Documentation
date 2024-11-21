---
title: Зміни відстеження в документі
second_title: Aspose.Words для Python via .NET
articleTitle: Зміни відстеження в документі
linktitle: Зміни відстеження в документі
description: "Відстежуйте зміни контенту та форматування, зроблені вами або іншими мовами Pythonй Доступ до індивідуальних ревізій в документі та застосовуються різні властивості до них."
type: docs
weight: 270
url: /uk/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Функціональність зміни треків, також відомий як перегляд, дозволяє відстежувати зміни контенту та форматування, внесені вами або іншими користувачами. Ця функція зміни доріжки з Aspose.Words підтримує зміни треків Microsoft Wordй З цією функціональністю ви можете отримати доступ до індивідуальних джерел у вашому документі та застосувати різні властивості до них.

Коли ви ввімкнете функцію зміни треку, всі вставлені, видалені та модифіковані елементи документа будуть візуально висвітлені з інформацією про кого, коли, і що було змінено. Об’єкти, які здійснюють інформацію про те, що було змінено, називаються "відстеження змін". Наприклад, припустимо, що ви хочете переглянути документ і зробити важливі зміни – це може означати, що вам потрібно зробити версії. Також можна вставити коментарі для обговорення деяких змін. Що таке зміна документів.

Ця стаття пояснює, як керувати та відстежувати зміни, створені багатьма рецензентами на одному документі, а також властивості для зміни відстеження.

{{% alert color="primary" %}}

Зверніть увагу, що функція коментаря в Aspose.Words, і в Microsoft Word, може бути пов'язано з змінами відстеження. Однак, пам'ятайте, що коментарі повністю залежать від зміни відстеження.

{{% /alert %}}

## Що таке версія

Перед тим як дайвінг в ревізії, пояснимо значення ревізій. Р [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) є зміною, яка виникає в одному вершині документа, в той час як група ревізій, представлена групою [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) клас є групою послідовних версій, які відбуваються в багатьох вузлах документа. В основному версія є інструментом відстеження змін.

Ревізії використовуються в функціях зміни відстеження і в межах функції порівняння документів, де з'являються ревізії в результаті порівняння. Таким чином, ревізії в межах функції відстеження показують, хто і що було змінено.

{{% alert color="primary" %}}

Примітка Microsoft Word не дозволяє переглядати індивідуальні версії, це тільки дозволяє переглядати послідовні версії як одну особу. Але Aspose.Words вирішує це обмеження з [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) клас.

{{% /alert %}}

Aspose.Words підтримує різні типи версій, а також у Microsoft Word, такі як введення, видалення, формат Зміна, StyleDefinition Зміна та переміщення. Всі типи редакцій представлені з [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/) заохочення.

{{% alert color="primary" %}}

Зверніть увагу, що ревізії мають результат схожий на Microsoft Word але Aspose.Words не виявляти форматування при зміні відстеження.

{{% /alert %}}

## Почати і Зупинити відстежити зміни

Редагування документа, як правило, не рахується як ревізія, доки ви починаєте його відстеження. Aspose.Words дозволяє автоматично відстежувати всі зміни вашого документа простими кроками. Ви можете легко почати процес зміни відстеження за допомогою [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) метод. Якщо необхідно зупинити процес зміни відстеження, щоб будь-які майбутні редагування не розглядалися доопрацюваннями, вам потрібно буде використовувати [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/) метод.

{{% alert color="primary" %}}

Зверніть увагу, що [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) метод не змінює статус [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) майно і не використовувати його значення для відстеження відправлень. Крім того, якщо вершина була перенесена з одного місця в інший всередині трекового документа, то буде створено переадресацію, в тому числі пересуватися і перемістити діапазон.

{{% /alert %}}

В кінці процесу зміни відстеження у вашому документі ви зможете навіть прийняти всі версії або відхилити їх, щоб перевернути документ до початкової форми. Це може бути досягнуто шляхом використання [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) або [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) метод. Крім того, ви можете прийняти або відхилити кожну версію окремо, використовуючи [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) або [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/) метод.

Всі зміни будуть відслідковуватися для однієї ітерації з моменту, коли ви починаєте процес до моменту його зупинки. З'єднання між різними ітераціями представлена наступним сценарієм: ви завершите процес відстеження, після чого зробіть деякі зміни, і знову запустіть зміни відстеження. З цим сценарієм всі зміни, які ви не прийняли або відхилятимуться знову.

{{% alert color="primary" %}}

Зверніть увагу, що [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) метод схожий на "приймання всіх змін" Microsoft Wordй

{{% /alert %}}

Приклад коду показує, як працювати з змінами відстеження:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Приклад наступного коду показує, як генеруються версії, коли вузол переміщається в межах відстежуваного документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Управління та зміна магазинів як версії

З попередньою функцією відстеження можна зрозуміти, які зміни були внесені в документ, і які зробили ці зміни. Під час [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) Функція, ви змусите будь-які зміни у вашому документі, щоб зберігатися як версії.

Aspose.Words дозволяє перевірити, чи має документ дооопрацювати або не використовуючи [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) майно. Якщо вам не потрібно автоматично відстежити зміни у вашому документі за допомогою методів запуску_track_revisions та stop_track_revisions, то ви можете використовувати [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) Можливість перевірити, чи слідуються зміни під час редагування документа Microsoft Word і зберігаються в якості ревізій.

Про нас [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) функція робить ревізії замість реальних DOM зміни. Але самі ревізії окремі. Наприклад, Якщо видалити будь-який пункт, Aspose.Words зробити його як ревізію, розмітивши її як видалення, замість його видалення.

Додатково Aspose.Words дозволяє перевірити, чи вводиться об'єкт, видалений або змінений форматування за допомогою [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), і [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) властивості.

{{% alert color="primary" %}}

Зауважте, що не існує зв'язку між своїми версіями і [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) майно. Крім того, ви можете прийняти/відновити версії незалежно від функції зміни відстеження.

{{% /alert %}}

Приклад коду показує, як застосувати різні властивості з ревізійами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
