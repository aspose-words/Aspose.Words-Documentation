---
title: Робота з Коментаріми в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з коментарями
linktitle: Робота з коментарями
description: "Робота з коментарями C#й"
type: docs
weight: 260
url: /uk/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовно онлайн видалення анотації](https://products.aspose.app/words/annotation)й

{{% /alert %}}

Aspose.Words дозволяє користувачам працювати з коментарями – коментарі в документі в документі Aspose.Words представлені [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) клас. Також використовуйте [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) класи вказати область тексту, який повинен бути пов'язаний з коментарем.

## Додати коментар

Aspose.Words дозволяє додати коментарі в кілька способів:

1,1 км Використання [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) клас
2,2 км Використання [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) Заняття

Приклад наступного коду показує, як додати коментар до абзацу за допомогою абзацу **Comment** клас:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Приклад наступного коду показує, як додати коментар до абзацу за допомогою регіону тексту та **CommentRangeStart** і **CommentRangeEnd** класи:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Вилучення або видалення коментарів

Використання коментарів у документі Word (на додаток до змін відстеження) є спільною практикою при перегляді документів, зокрема, коли є кілька рецензентів. Ви можете бути ситуації, де потрібно тільки від документа. Скажіть, що ви хочете створити список знайдених відгуків, або, можливо, ви зібрали всю корисну інформацію з документа і ви просто хочете видалити непотрібні коментарі. Ви можете переглянути або видалити коментарі конкретного рецензента.

У цьому прикладі ми розглянемо деякі прості методи збору інформації з коментарів в документі та для видалення коментарів з документа. Зокрема, ми покриємо, як:

- Витяг всіх коментарів з документа або тільки тих, хто зробив конкретним автором
- Видаліть всі коментарі з документа або тільки з певного автора

### Як видалити або видалити Коментарі

Код в цьому прикладі фактично досить простий і всі методи базуються на тому ж підході. Коментар у документі Word представлений [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) об'єкт в Aspose.Words модель об'єкта документа. Щоб зібрати всі коментарі в документі використовуйте [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) метод з параметром першого параметра [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/)й Переконайтеся, що другий параметр **GetChildNodes** метод встановлюється до true: це змушує **GetChildNodes** щоб вибрати з усіх дочірньих вузлів, які рекурсують, а не тільки збираючи безпосередні діти.

Щоб ілюструвати, як витягти і видалити коментарі з документа, ми пройдемо наступні кроки:

1,1 км Відкрийте документ Word за допомогою документа [Document](https://reference.aspose.com/words/net/aspose.words/document/) клас
2,2 км Отримати всі коментарі з документа в збірку
3. У Для отримання коментарів:
   1. Зайдіть через збір за допомогою оператора
   2. Витягувати і перерахувати ім'я автора, дату та час і текст всіх коментарів
   3. Витягувати і списувати ім’я автора, дату та час і текст коментарів, написаних певним автором, в цьому випадку автор "ks"
4. У Для видалення коментарів:
   1. Повернутися через збір за допомогою оператора
   2. Видалити коментарі
5. Умань Збережіть зміни

### Як витягти всі коментарі

Про нас **GetChildNodes** метод дуже корисний і ви можете використовувати його кожен раз, коли потрібно отримати список вузлів документів будь-якого типу. Отримана збірка не створює безпосередній наклад, тому що вершини вибираються в цю колекцію тільки тоді, коли ви обробляєте або доступ до предметів в ній.

Наприклад, наступний код показує, як витягти ім'я автора, дату та текст всіх коментарів у документі:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Як витягти Коментарі Визначеного автора

Після вибраного **Comment** Витягувати інформацію, яку потрібно. У цьому прикладі автор ініціюється, дата, час і звичайний текст коментара поєднується в один рядок; ви можете вибрати, щоб зберігати його в деяких інших варіантах замість.

Перевантажений метод, який видобуває Коментарі з певного автора, майже той же, він просто перевіряє назву автора перед додаванням інформації в масив.

Наприклад, наступний код показує, як витягти ім'я автора, дату та час і текст коментарів за вказаним автором:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Як видалити коментарі

Якщо ви ви видалите всі коментарі, не потрібно переходити через збірне видалення коментарів по одному. Ви можете видалити їх за допомогою виклику [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) метод збору коментарів.

Приклад коду показує, як видалити всі коментарі в документі:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Коли потрібно вибрати для видалення коментарів, процес стає більш схожим на код, який ми використовували для видобутку коментарів.

Приклад коду показує, як видалити коментарі за вказаним автором:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Головний момент виділити тут – використання оператора. На відміну від простого видобутку, тут ви хочете видалити коментар. Підійде прийом до ітерації колекції назад від останнього коментаря до першого. Причина цього, якщо ви починаєте з кінця і переходите назад, індекс передових елементів залишається незмінним, і ви можете працювати назад до першого елемента в колекції.

Приклад коду показує методи вилучення та видалення коментарів:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx)й

{{% /alert %}}

### Як видалити коментар між CommentRangeStart і коментарRangeEnd

Використання Aspose.Words Ви також можете видалити коментарі між **CommentRangeStart** і **CommentRangeEnd** вершини.

Приклад наступного коду показує, як видалити текст між **CommentRangeStart** і **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Додати або видалити коментар відповідь

Про нас [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) метод додає відповідь на цей коментар. Будь ласка, зауважте, що через наявний Microsoft У документі допускається лише 1 рівень відповідей. Виняток типу *InvalidOperationException* буде піднятися, якщо цей метод називається на існуючий коментар відповідь.

Ви можете використовувати [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) спосіб видалити зазначену відповідь на цей коментар.

Приклад наступного коду показує, як додати відповідь на коментар і видалити відповідь коментаря:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Читайте коментар відповідь

Про нас [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) майно повертає збірку [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) об'єкти, які є безпосередніми дітьми зазначеного коментаря.

Наприклад, наступний код показує, як ітерувати відповіді коментаря та вирішувати їх:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
