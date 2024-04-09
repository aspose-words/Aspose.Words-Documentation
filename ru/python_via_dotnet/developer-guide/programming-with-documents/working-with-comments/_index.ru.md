---
title: Работа с комментариями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с комментариями
linktitle: Работа с комментариями
description: "Как добавлять, удалять или манипулировать комментариями в документе Python."
type: docs
weight: 260
url: /ru/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатно онлайн удалить аннотации](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволяет пользователям работать с комментариями - комментариями в документе Aspose.Words представлены в виде [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) класс. Также используйте [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) классы для указания области текста, которая должна быть связана с комментарием.

## Добавить комментарий

Aspose.Words позволяет добавлять комментарии несколькими способами:

1. Используя [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) класс
2. Используя [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) классы

Следующий пример кода показывает, как добавить комментарий к абзацу, используя **Comment** класс:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Следующий пример кода показывает, как добавить комментарий к абзацу, используя область текста и **CommentRangeStart** и **CommentRangeEnd** классы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Извлечение или удаление комментариев

Использование комментариев в документе Word (в дополнение к изменениям трека) является обычной практикой при рассмотрении документов, особенно когда есть несколько рецензентов. Могут быть ситуации, когда единственное, что вам нужно от документа, это комментарии. Скажем, вы хотите создать список результатов обзора, или, возможно, вы собрали всю полезную информацию из документа, и вы просто хотите удалить ненужные комментарии. Вы можете просмотреть или удалить комментарии конкретного рецензента.

В этой выборке мы рассмотрим некоторые простые методы как для сбора информации из комментариев в документе, так и для удаления комментариев из документа. В частности, мы рассмотрим, как:

- Извлеките все комментарии из документа или только те, которые сделаны конкретным автором.
- Удалить все комментарии из документа или только от конкретного автора.

### Как извлечь или удалить комментарии

Код в этой выборке на самом деле довольно прост, и все методы основаны на одном и том же подходе. Комментарий в документе Word представляет собой [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) объект в Aspose.Words Модель объекта документа. Чтобы собрать все комментарии в документе, используйте [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) Метод с первым параметром, установленным для [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Убедитесь, что второй параметр **Get_child_nodes** метод устанавливается trueЭто заставляет **Get_child_nodes** Рекурсивно выбирать из всех узлов ребенка, а не только собирать детей.

Чтобы проиллюстрировать, как извлечь и удалить комментарии из документа, мы рассмотрим следующие шаги:

1. Откройте документ Word, используя [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) класс
1. Получить все комментарии из документа в сборник
1. Чтобы извлечь комментарии:
   1.Пройти сбор с помощью оператора foreach
   1.Извлеките и перечислите имя автора, дату и время и текст всех комментариев
   1. Извлеките и перечислите имя автора, дату и время и текст комментариев, написанных конкретным автором, в этом случае автор "k"
1. Чтобы удалить комментарии:
   1.Перейти назад через сбор с помощью оператора
   1. Удалить комментарии
1. Сохранить изменения

### Как извлечь все комментарии

The [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) Метод очень полезен, и вы можете использовать его каждый раз, когда вам нужно получить список узлов документов любого типа. Полученная коллекция не создает непосредственных накладных расходов, потому что узлы выбираются в эту коллекцию только тогда, когда вы перечисляете или получаете доступ к элементам в ней.

Следующий пример кода показывает, как извлечь имя автора, дату и время и текст всех комментариев в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Как извлечь комментарии конкретного автора

После того, как вы выбрали [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Все, что вам нужно сделать, это извлечь необходимую информацию. В этом образце инициалы автора, дата, время и простой текст комментария объединены в одну строку; вместо этого вы можете сохранить его другими способами.

Перегруженный метод, который извлекает комментарии от конкретного автора, почти такой же, он просто проверяет имя автора, прежде чем добавлять информацию в массив.

Следующий пример кода показывает, как извлечь имя автора, дату и время и текст комментариев указанного автора:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Как удалить комментарии

Если вы удаляете все комментарии, нет необходимости перемещаться по коллекции, удаляя комментарии один за другим; вы можете удалить их, позвонив по телефону. [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) Сборник комментариев.

Следующий пример кода показывает, как удалить все комментарии в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Когда вам нужно выборочно удалять комментарии, процесс становится более похожим на код, который мы использовали для извлечения комментариев.

Следующий пример кода показывает, как удалить комментарии указанного автора:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Главным моментом здесь является использование оператора. В отличие от простого извлечения, здесь вы хотите удалить комментарий. Подходящим трюком является итерация коллекции назад от последнего. [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) к первому. Причина этого, если вы начинаете с конца и двигаетесь назад, индекс предыдущих пунктов остается неизменным, и вы можете вернуться к первому пункту в коллекции.

Следующий пример кода показывает методы извлечения и удаления комментариев:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Как удалить комментарий между CommentRangeStart и CommentRangeEnd

Использовать Aspose.Words Вы также можете удалить комментарии между **CommentRangeStart** и **CommentRangeEnd** Узлы.

Следующий пример кода показывает, как удалить текст между **CommentRangeStart** и **CommentRangeEnd**:

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

## Добавить или удалить комментарий

The [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) Метод добавляет ответ на этот комментарий. Обратите внимание, что благодаря существующему Microsoft В документе допускается ограничение только на 1 уровень ответов. Исключение из вида **InvalidOperationException** будет поднято, если этот метод будет вызван существующим комментарием Ответ.

Вы можете использовать [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) Способ удаления указанного ответа на данный комментарий.

Следующий пример кода показывает, как добавить ответ на комментарий и удалить ответ комментария:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Read Comment's Ответ

The [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) Имущество возвращает коллекцию [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) объекты, являющиеся непосредственными детьми указанного комментария.

Следующий пример кода показывает, как повторить ответы комментария и решить их:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}