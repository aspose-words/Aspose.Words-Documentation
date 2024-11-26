---
title: Робота з Коментаріми в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з коментарями
linktitle: Робота з коментарями
description: "Як додати, видалити або маніпулювати коментарями в документі за допомогою Pythonй"
type: docs
weight: 260
url: /uk/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовно онлайн видалення анотації](https://products.aspose.app/words/annotation)й

{{% /alert %}}

Aspose.Words дозволяє користувачам працювати з коментарями – коментарі в документі в документі Aspose.Words представлені [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) клас. Також використовуйте [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) класи вказати область тексту, який повинен бути пов'язаний з коментарем.

## Додати коментар

Aspose.Words дозволяє додати коментарі в кілька способів:

1,1 км Використання [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) клас
2,2 км Використання [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Заняття

Приклад наступного коду показує, як додати коментар до абзацу за допомогою абзацу **Comment** клас:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Приклад наступного коду показує, як додати коментар до абзацу за допомогою регіону тексту та **CommentRangeStart** і **CommentRangeEnd** класи:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Вилучення або видалення коментарів

Використання коментарів у документі Word (на додаток до змін відстеження) є спільною практикою при перегляді документів, зокрема, коли є кілька рецензентів. Ви можете бути ситуації, де потрібно тільки від документа. Скажіть, що ви хочете створити список знайдених відгуків, або, можливо, ви зібрали всю корисну інформацію з документа і ви просто хочете видалити непотрібні коментарі. Ви можете переглянути або видалити коментарі конкретного рецензента.

У цьому прикладі ми розглянемо деякі прості методи збору інформації з коментарів в документі та для видалення коментарів з документа. Зокрема, ми покриємо, як:

- Витяг всіх коментарів з документа або тільки тих, хто зробив автор.
- Видаліть всі коментарі з документа або тільки з певного автора.

### Як видалити або видалити Коментарі

Код в цьому прикладі фактично досить простий і всі методи базуються на тому ж підході. Коментар у документі Word представлений [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) об'єкт в Aspose.Words модель об'єкта документа. Щоб зібрати всі коментарі в документі використовуйте [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод з параметром першого параметра [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment)й Переконайтеся, що другий параметр **JavaScript licenses API Веб-сайт Go1.13.8** метод встановлюється до true: це змушує **JavaScript licenses API Веб-сайт Go1.13.8** щоб вибрати з усіх дочірньих вузлів, які рекурсують, а не тільки збираючи безпосередні діти.

Щоб ілюструвати, як витягти і видалити коментарі з документа, ми пройдемо наступні кроки:

1,1 км Відкрийте документ Word за допомогою документа [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас
1,1 км Отримати всі коментарі з документа в збірку
1,1 км Для отримання коментарів:
   1. Зайдіть через збір за допомогою оператора
   1. Витяг та список імені автора, дати та часу та тексту всіх коментарів
   1. Витяг та список імені автора, дати та часу та тексту коментарів, написаних конкретним автором, в цьому випадку автор "ks"
1,1 км Для видалення коментарів:
   1. Повернутися через збір за допомогою оператора
   1. Видалити коментарі
1,1 км Збережіть зміни

### Як витягти всі коментарі

Про нас [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод дуже корисний і ви можете використовувати його кожен раз, коли потрібно отримати список вузлів документів будь-якого типу. Отримана збірка не створює безпосередній наклад, тому що вершини вибираються в цю колекцію тільки тоді, коли ви обробляєте або доступ до предметів в ній.

Наприклад, наступний код показує, як витягти ім'я автора, дату та текст всіх коментарів у документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Як витягти Коментарі Визначеного автора

Після вибраного [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Витягувати інформацію, яку потрібно. У цьому прикладі автор ініціюється, дата, час і звичайний текст коментара поєднується в один рядок; ви можете вибрати, щоб зберігати його в деяких інших варіантах замість.

Перевантажений метод, який видобуває Коментарі з певного автора, майже той же, він просто перевіряє назву автора перед додаванням інформації в масив.

Наприклад, наступний код показує, як витягти ім'я автора, дату та час і текст коментарів за вказаним автором:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Як видалити коментарі

Якщо ви ви видалите всі коментарі, не потрібно переходити через збірне видалення коментарів по одному; ви можете видалити їх, викликаючи [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) на збірках коментарів.

Приклад коду показує, як видалити всі коментарі в документі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Коли потрібно вибрати для видалення коментарів, процес стає більш схожим на код, який ми використовували для видобутку коментарів.

Приклад коду показує, як видалити коментарі за вказаним автором:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Головний момент виділити тут – використання оператора. На відміну від простого видобутку, тут ви хочете видалити коментар. Підійде підказка - це зробити збірку назад з останнього [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) до першого. Причина цього, якщо ви починаєте з кінця і переходите назад, індекс передових елементів залишається незмінним, і ви можете працювати назад до першого елемента в колекції.

Приклад коду показує методи вилучення та видалення коментарів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx)й

{{% /alert %}}

### Як видалити коментар між CommentRangeStart і коментарRangeEnd

Використання Aspose.Words Ви також можете видалити коментарі між **CommentRangeStart** і **CommentRangeEnd** вершини.

Приклад наступного коду показує, як видалити текст між **CommentRangeStart** і **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Додати або видалити коментар відповідь

Про нас [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) метод додає відповідь на цей коментар. Будь ласка, зауважте, що через наявний Microsoft У документі допускається лише 1 рівень відповідей. Виняток типу **InvalidOperationException** буде піднятися, якщо цей метод називається на існуючий коментар відповідь.

Ви можете використовувати [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) спосіб видалити зазначену відповідь на цей коментар.

Приклад наступного коду показує, як додати відповідь на коментар і видалити відповідь коментаря:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Читайте коментар відповідь

Про нас [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) повернення майна [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) об'єкти, які є безпосередніми дітьми зазначеного коментаря.

Наприклад, наступний код показує, як ітерувати відповіді коментаря та вирішувати їх:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
