---
title: Відстежувати зміни в документі в C++
second_title: Aspose.Words для C++
articleTitle: Відстежувати зміни в документі
linktitle: Відстежувати зміни в документі
description: "Відстежуйте зміни вмісту та форматування, внесені вами чи іншими користувачами, за допомогою C++. Отримуйте доступ до окремих редакцій документа і застосовуйте до них різні властивості."
type: docs
weight: 270
url: /uk/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

Функція відстеження змін, також відома як перевірка, дозволяє відстежувати зміни вмісту та форматування, внесені вами чи іншими користувачами. Ця функція відстеження змін за допомогою Aspose.Words підтримує відстеження змін за допомогою Microsoft Word. За допомогою цієї функції ви можете отримати доступ до окремих видань документа та застосувати до них різні властивості.

Коли ви ввімкнете функцію відстеження змін, усі вставлені, видалені та змінені елементи документа будуть візуально виділені з інформацією про те, ким, коли та що було змінено. Об'єкти, що містять інформацію про те, що було змінено, називаються "відстежуваними змінами". Наприклад, припустимо, що ви хочете переглянути документ і внести до нього важливі зміни – це може означати, що вам потрібно внести зміни. Крім того, вам може знадобитися вставити коментарі для обговорення деяких змін. Ось де стане в нагоді відстеження змін у документах.

У цій статті пояснюється, як керувати змінами, внесеними багатьма рецензентами в одному документі, та відстежувати їх, а також властивості для відстеження змін.

{{% alert color="primary" %}}

Зверніть увагу, що функція коментарів в Aspose.Words, так само як і в Microsoft Word, може бути пов'язана з відстеженням змін. Однак пам'ятайте, що Коментарі повністю незалежні від відстеження змін.

{{% /alert %}}

## Що таке перегляд

Перш ніж перейти до розгляду змін, давайте пояснимо значення змін. [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) - це зміна, яка відбувається в одному вузлі документа, тоді як група змін, представлена класом [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), є групою послідовних змін, які відбуваються у багатьох вузлах документа. По суті, revision-це інструмент для відстеження змін.

Зміни використовуються в функції відстеження змін і в функції порівняння документів, де зміни відображаються в результаті порівняння. Таким чином, зміни в функції відстеження змін показують, ким і що було змінено.

{{% alert color="primary" %}}

Зверніть увагу, що Microsoft Word не дозволяє переглядати окремі ревізії, а лише послідовні ревізії як єдине ціле. Але Aspose.Words усуває це обмеження за допомогою класу **RevisionGroup**.

{{% /alert %}}

Aspose.Words підтримує різні типи видань, як і в Microsoft Word, такі як вставка, видалення, FormatChange, StyleDefinitionChange та переміщення. Всі типи редакцій представлені перерахуванням [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Зверніть увагу, що зміни призводять до результату, подібного до Microsoft Word, але Aspose.Words не визначає форматування під час відстеження змін.

{{% /alert %}}

## Запуск і зупинка відстеження змін

Редагування документа зазвичай не вважається доопрацюванням, поки ви не почнете його відстежувати. Aspose.Words дозволяє автоматично відстежувати всі зміни в документі за допомогою простих кроків. Ви можете легко запустити процес відстеження змін, використовуючи метод [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Якщо вам потрібно зупинити процес відстеження змін, щоб будь-які майбутні редагування не вважалися переглядами, вам потрібно буде використовувати метод [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Зверніть увагу, що метод `StartTrackingRevisions` не змінює статус властивості [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) і не використовує його значення для відстеження змін. Крім того, якщо вузол був переміщений з одного місця в інше всередині відстежуваного документа, то будуть створені зміни переміщення, включаючи діапазон переміщення від і до.

{{% /alert %}}

Наприкінці процесу відстеження змін у вашому документі у вас буде можливість навіть прийняти всі зміни або відхилити їх, щоб повернути документ до початкового вигляду. Цього можна досягти, використовуючи метод [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) або [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Крім того, ви можете прийняти або відхилити кожне видання окремо, використовуючи метод [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) або [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Всі зміни будуть відслідковуватися протягом однієї ітерації з моменту запуску процесу до моменту його зупинки. Зв'язок між різними ітераціями представлений як такий сценарій: ви завершуєте процес відстеження, потім вносите деякі зміни і знову починаєте відстежувати зміни. У цьому випадку всі зміни, які ви не прийняли або відхилили, відображатимуться знову.

{{% alert color="primary" %}}

Зверніть увагу, що метод `AcceptAllRevisions` подібний до методу "прийняти всі зміни" в Microsoft Word.

{{% /alert %}}

Наступний приклад коду показує, як працювати з відстеженням змін:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Наступний приклад коду показує, як генеруються зміни при переміщенні вузла у відстежуваному документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Управління змінами та їх зберігання у вигляді ревізій

За допомогою функції відстеження попередніх змін ви можете зрозуміти, які зміни були внесені у ваш документ та хто їх вніс. У той час як за допомогою функції [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/) ви примусово зберігаєте будь-які зміни у вашому документі у вигляді ревізій.

Aspose.Words дозволяє перевірити, чи є в документі редакція чи ні, використовуючи властивість [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Якщо вам не потрібно автоматично відстежувати зміни у вашому документі за допомогою методів StartTrackRevisions та StopTrackRevisions, тоді ви можете використовувати властивість `TrackRevisions`, щоб перевірити, чи відстежуються зміни під час редагування документа в Microsoft Word та чи зберігаються вони як редакції.

Функція `TrackRevisions` вносить правки замість реальних змін DOM. Але самі правки є окремими. Наприклад, якщо ви видаляєте будь-який абзац, Aspose.Words внесіть його як редагування, позначивши як видалений, замість того, щоб видаляти його.

Крім того, Aspose.Words дозволяє перевірити, чи був об'єкт вставлений, видалений або змінено форматування, використовуючи властивості [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), і [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/).

{{% alert color="primary" %}}

Зверніть увагу, що між самими змінами і властивістю `TrackRevisions` немає ніякого зв'язку. Крім того, ви можете приймати/відхиляти зміни незалежно від функції відстеження змін.

{{% /alert %}}

Наступний приклад коду показує, як застосовувати різні властивості зі змінами:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
