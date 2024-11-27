---
title: Робота з коментарями в C++
second_title: Aspose.Words для C++
articleTitle: Робота з коментарями
linktitle: Робота з коментарями
description: "Робота з коментарями за допомогою C++."
type: docs
weight: 260
url: /uk/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Спробуйте онлайн**

Ви можете скористатися цією функцією за допомогою нашого сайту [Видалити анотації можна безкоштовно онлайн](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words дозволяє користувачам працювати з коментарями – коментарі в документі в Aspose.Words представлені класом [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). Також використовуйте класи [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) та [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), щоб вказати область тексту, яка повинна бути пов'язана з коментарем.

## Додати коментар

Aspose.Words дозволяє додавати коментарі кількома способами:

1. Використання класу [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. Використання класів [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) та [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Наступний приклад коду показує, як Додати коментар до абзацу за допомогою класу **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Наступний приклад коду показує, як Додати коментар до абзацу, використовуючи область тексту та класи **CommentRangeStart** та **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Витягувати або видаляти коментарі

Використання коментарів у документі Word (на додаток до відстеження змін) є звичайною практикою при перегляді документів, особливо за наявності кількох рецензентів. Можуть виникнути ситуації, коли єдине, що вам потрібно від документа, - це Коментарі. Скажімо, ви хочете скласти список результатів перевірки, або, можливо, ви зібрали всю корисну інформацію з документа і просто хочете видалити непотрібні коментарі. Можливо, ви захочете переглянути або видалити коментарі конкретного рецензента.

У цьому прикладі ми розглянемо кілька простих методів як збору інформації з коментарів у документі, так і видалення коментарів із документа. Зокрема, ми розглянемо, як:

- Витягніть Усі Коментарі з документа або лише ті, які були зроблені конкретним автором.
- Видаліть усі коментарі з документа або лише від певного автора.

### Як витягти або видалити коментарі

Код у цьому прикладі насправді досить простий, і всі методи базуються на одному підході. Коментар у документі Word представлений об'єктом [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) в об'єктній моделі документа Aspose.Words. Щоб зібрати всі коментарі в документі, використовуйте метод [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) з першим параметром [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Переконайтеся, що для другого параметра методу **GetChildNodes** встановлено значення true: це змушує метод **GetChildNodes** рекурсивно вибирати з усіх дочірніх вузлів, а не збирати лише безпосередні дочірні вузли.

Щоб проілюструвати, як витягувати та видаляти коментарі з документа, ми виконаємо наступні кроки:

1. Відкрийте документ Word за допомогою класу [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Зібрати всі коментарі з документа в колекцію
1. Щоб витягти коментарі:
   1. Переглядайте колекцію за допомогою оператора foreach
   1. Витягніть та вкажіть ім'я автора, дату та час, а також текст усіх коментарів
   1. Витягніть і вкажіть ім'я автора, дату і час, а також текст коментарів, написаних конкретним автором, в даному випадку автором `ks`
1. Щоб видалити коментарі:
   1. Пройдіться в зворотному порядку по колекції, використовуючи для оператора
   1. Видалити коментарі
1. Збережіть зміни

### Як витягти всі коментарі

Метод **GetChildNodes** дуже корисний, і ви можете використовувати його щоразу, коли Вам потрібно отримати список вузлів документа будь-якого типу. Отримана колекція не створює негайних додаткових витрат, оскільки вузли вибираються до цієї колекції лише під час переліку елементів у ній або доступу до них.

Наступний приклад коду показує, як витягти ім'я автора, дату та час, а також текст усіх коментарів у документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Як витягти коментарі зазначеного автора

Після того, як ви виділили вузли коментарів до колекції, вам залишається лише витягти необхідну інформацію. У цьому прикладі ініціали автора, дата, час та звичайний текст коментаря об'єднані в один рядок; ви можете зберегти їх іншим способом.

Перевантажений метод, який отримує коментарі від певного автора, майже однаковий, він просто перевіряє ім'я автора, перш ніж додавати інформацію до масиву.

Наступний приклад коду показує, як витягти ім'я автора, дату та час, а також текст коментарів зазначеного автора:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Як видалити коментарі

Якщо ви видаляєте всі коментарі, немає необхідності переміщатися по колекції, видаляючи Коментарі один за одним; ви можете видалити їх, викликавши команду `NodeCollection.Clear` у колекції коментарів.

Наступний приклад коду показує, як видалити всі коментарі в документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Коли Вам потрібно вибірково видалити коментарі, процес стає більш схожим на код, який ми використовували для вилучення коментарів.

Наступний приклад коду показує, як видалити коментарі зазначеного автора:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Головне, на що слід звернути увагу, - це використання оператора for. На відміну від простого вилучення, тут ви хочете видалити коментар. Підходящим трюком є ітерація збору даних у зворотному порядку від останнього коментаря до першого. Причиною цього є те, що якщо ви починаєте з кінця і рухаєтесь назад, Індекс попередніх елементів залишається незмінним, і ви можете повернутися до першого елемента в колекції.

Наступний приклад коду показує методи вилучення та видалення коментарів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити приклад файлу цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Як видалити коментар між CommentRangeStart та CommentRangeEnd

Використовуючи Aspose.Words, ви також можете видалити коментарі між вузлами **CommentRangeStart** та **CommentRangeEnd**.

Наступний приклад коду показує, як видалити текст між **CommentRangeStart** та **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Додавання та видалення відповіді на коментар

Метод [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) додає відповідь до цього коментаря. Будь ласка, зверніть увагу, що через існуючі обмеження Microsoft Office у документі дозволено лише 1 рівень відповідей. При виклику цього методу для існуючого коментаря до відповіді буде викликано виняток типу *InvalidOperationException*.

Ви можете використовувати метод [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/), щоб видалити вказану відповідь на цей коментар.

Наступний зразок коду показує, як додати відповідь до коментаря та видалити відповідь на коментар:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Прочитайте відповідь на коментар

Властивість [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) повертає колекцію об'єктів **Comment**, Які є безпосередніми дочірніми елементами зазначеного коментаря.

Наступний приклад коду показує, як перебирати відповіді на коментарі та вирішувати їх:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
