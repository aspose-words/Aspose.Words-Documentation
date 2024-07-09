---
title: Робота з Коментаріми в Java
second_title: Aspose.Words для Java
articleTitle: Робота з коментарями
linktitle: Робота з коментарями
description: "Робота з коментарями Javaй"
type: docs
weight: 260
url: /uk/java/working-with-comments/
---

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовно онлайн видалення анотації](https://products.aspose.app/words/annotation)й

{{% /alert %}}

Aspose.Words дозволяє користувачам працювати з коментарями – коментарі в документі в документі Aspose.Words представлені [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) клас. Також використовуйте [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) класи вказати область тексту, який повинен бути пов'язаний з коментарем.

## Додати коментар

Aspose.Words дозволяє додати коментарі в кілька способів:

1,1 км Використання [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) клас
2,2 км Використання [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) Заняття

Приклад наступного коду показує, як додати коментар до абзацу за допомогою абзацу **Comment** клас:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Приклад наступного коду показує, як додати коментар до абзацу за допомогою регіону тексту та **CommentRangeStart** і **CommentRangeEnd** класи:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Вилучення або видалення коментарів

Використання коментарів в документі Word (на додаток до зміни відстеження) є спільною практикою при перегляді документів, зокрема, коли є кілька рецензентів. Ви можете бути ситуації, де потрібно тільки від документа. Скажіть, що ви хочете створити список результатів рецензування, або, можливо, ви зібрали всю корисну інформацію з документа і ви просто хочете видалити непотрібні коментарі. Ви можете переглянути або видалити коментарі конкретного рецензента.

У цьому прикладі ми розглянемо деякі прості методи збору інформації з коментарів в документі та для видалення коментарів з документа. Зокрема, ми покриємо як:

- Витяг всіх коментарів з документа або тільки тих, хто зробив конкретним автором.
- Видаліть всі коментарі з документа або тільки з певного автора.

### Як видалити або видалити Коментарі

Цей приклад досить простий і всі методи базуються на тому ж підході. Коментар у документі Word представлений `Comment` об'єкт у Aspose.Words модель об'єкта документа. Для збору всіх коментарів в документі використовуйте [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) метод з параметром першого параметра `NodeType.Comment`й Переконайтеся, що другий параметр **getChildНоди** метод встановлюється до true: це змушує **getChildНоди** вибрати з усіх дочірньих вузлів, що відступають, а не тільки зібрати безпосередніх дітей.

Щоб ілюструвати, як витягти і видалити коментарі з документа, ми пройдемо наступні кроки:

1,1 км Відкрийте документ Word за допомогою [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) клас
1,1 км Отримати всі коментарі з документа в збірку
1,1 км Для отримання коментарів:
   1. Зайдіть через збір за допомогою оператора
   1. Витяг та список імені автора, дати та часу та тексту всіх коментарів
   1. Витяг та список імені автора, дати та часу та тексту коментарів, написаних конкретним автором, в цьому випадку автор "ks"
1,1 км Для видалення коментарів:
   1. Повернутися через збір за допомогою оператора
   1. Видалити коментарі
1,1 км Збережіть зміни.

Ми будемо використовувати наступний документ Word для цієї вправи:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Як ви можете побачити, в ній є кілька коментарів з двох авторів з ініціалями "pm" і "ks".

### Як витягти всі коментарі

Про нас [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) метод дуже корисний і ви можете використовувати його кожен раз, коли вам потрібно отримати список вузлів документів будь-якого типу. Отримана збірка не створює безпосередній наклад, тому що вершини вибираються в цю колекцію тільки тоді, коли ви обробляєте або доступ до предметів в ній.

Наприклад, наступний код показує, як витягти ім'я автора, дату та текст всіх коментарів у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Як витягти Коментарі до Вказаного автора

Після того, як ви вибрали вузол коментарів в збірку, все, що ви повинні зробити, це екстракт інформації, яку вам потрібно. У цьому прикладі ви можете вибрати для зберігання його в деяких інших варіантах.

Перевантажений метод, який видобуває Коментарі з певного автора, майже той же, він просто перевіряє назву автора перед додаванням інформації в масив.

Приклад коду показує, як витягти ім'я автора, дату та час і текст коментарів за вказаним автором:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Як видалити коментарі

Якщо ви знімаєте всі коментарі, не потрібно переходити через збірку, ви можете видалити їх, викликаючи [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) на збірках коментарів.

Приклад коду показує, як видалити всі коментарі в документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Коли потрібно вибрати для видалення коментарів, процес стає більш схожим на код, який ми використовували для видобутку коментарів.

Приклад коду показує, як видалити коментарі за вказаним автором:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Головний момент виділити тут – використання оператора. На відміну від простого видобутку, тут ви хочете видалити коментар. Підійде прийом до ітерації колекції назад від останнього коментаря до першого. Причина цього, якщо ви починаєте з кінця і переходите назад, індекс передових елементів залишається незмінним, і ви можете працювати назад до першого елемента в збірнику.

Приклад коду показує методи вилучення та видалення коментарів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)й

{{% /alert %}}

При старті зразок відображає наступні результати. По-перше, він перераховує всі коментарі всіх авторів, а потім перераховує коментарі обраного автора тільки. Нарешті, код видалення всіх коментарів.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Виданий документ Word тепер коментарів вилучено з нього:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Як видалити текст між CommentRangeStart і коментарRangeEnd

Використання Aspose.Words Ви також можете видалити коментарі між CommentRangeStart і коментарRangeEnd nodes.

Приклад коду показує, як видалити текст між CommentRangeStart і коментарRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Додати або видалити коментар відповідь

Про нас [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) метод додає відповідь на цей коментар. Будь ласка, зауважте, що через наявні обмеження MS Office лише один (1) рівень відповідей дозволено в документі. Виняток типу InvalidOperationException буде піднятися, якщо цей метод називається на існуючий коментар відповідь.

Ви можете використовувати [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) спосіб видалити зазначену відповідь на цей коментар.

Приклад коду показує, як додати відповідь на коментар і видалити відповідь коментаря:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Читайте коментар відповідь

Aspose.Words підтримка читати відповідь на коментар. Про нас [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) майно повертає збірку [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) об'єкти, які є безпосередніми дітьми зазначеного коментаря.

Наприклад, наступний код показує, як ітерувати відповіді коментаря та вирішувати їх:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}