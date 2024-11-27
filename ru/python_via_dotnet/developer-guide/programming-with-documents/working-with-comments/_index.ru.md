---
title: Работа с комментариями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с комментариями
linktitle: Работа с комментариями
description: "Как добавлять, удалять комментарии в документе или манипулировать ими с помощью Python."
type: docs
weight: 260
url: /ru/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете воспользоваться этой функцией с помощью нашего сайта [Удалить аннотации можно бесплатно онлайн](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволяет пользователям работать с комментариями – комментарии в документе в Aspose.Words представлены классом [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Также используйте классы [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), чтобы указать область текста, которая должна быть связана с комментарием.

## Добавить комментарий

Aspose.Words позволяет добавлять комментарии несколькими способами:

1. Использование класса [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Использование классов [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

В следующем примере кода показано, как добавить комментарий к абзацу с помощью класса **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

В следующем примере кода показано, как добавить комментарий к абзацу, используя область текста и классы **CommentRangeStart** и **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Извлекать или удалять комментарии

Использование комментариев в документе Word (в дополнение к отслеживанию изменений) является обычной практикой при просмотре документов, особенно при наличии нескольких рецензентов. Могут возникнуть ситуации, когда единственное, что вам нужно от документа, - это комментарии. Допустим, вы хотите составить список результатов проверки, или, возможно, вы собрали всю полезную информацию из документа и просто хотите удалить ненужные комментарии. Возможно, вы захотите просмотреть или удалить комментарии конкретного рецензента.

В этом примере мы рассмотрим несколько простых методов как для сбора информации из комментариев в документе, так и для удаления комментариев из документа. В частности, мы рассмотрим, как:

- Извлеките все комментарии из документа или только те, которые были сделаны конкретным автором.
- Удалите все комментарии из документа или только от определенного автора.

### Как извлечь или удалить комментарии

Код в этом примере на самом деле довольно прост, и все методы основаны на одном и том же подходе. Комментарий в документе Word представлен объектом [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) в объектной модели документа Aspose.Words. Чтобы собрать все комментарии в документе, используйте метод [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) с первым параметром, равным [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Убедитесь, что для второго параметра метода **get_child_nodes** установлено значение true: это заставляет метод **get_child_nodes** рекурсивно выбирать из всех дочерних узлов, а не собирать только непосредственные дочерние узлы.

Чтобы проиллюстрировать, как извлекать и удалять комментарии из документа, мы выполним следующие шаги:

1. Откройте документ Word с помощью класса [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Собрать все комментарии из документа в коллекцию
1. Чтобы извлечь комментарии:
   1. Просматривайте коллекцию с помощью оператора foreach
   1. Извлеките и укажите имя автора, дату и время, а также текст всех комментариев
   1. Извлеките и укажите имя автора, дату и время, а также текст комментариев, написанных конкретным автором, в данном случае автором `ks`
1. Чтобы удалить комментарии:
   1. Пройдитесь в обратном направлении по коллекции, используя оператор for
   1. Удалять комментарии
1. Сохраните изменения

### Как извлечь все комментарии

Метод [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) очень полезен, и вы можете использовать его каждый раз, когда вам нужно получить список узлов документа любого типа. Результирующая коллекция не создает немедленных накладных расходов, поскольку узлы выбираются в эту коллекцию только при перечислении элементов в ней или доступе к ним.

В следующем примере кода показано, как извлечь имя автора, дату и время, а также текст всех комментариев в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Как извлечь комментарии указанного автора

После того, как вы выбрали [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) узлов в коллекции, все, что вам нужно сделать, это извлечь необходимую информацию. В этом примере инициалы автора, дата, время и обычный текст комментария объединены в одну строку; вы могли бы сохранить их каким-либо другим способом.

Перегруженный метод, который извлекает комментарии от конкретного автора, почти такой же, он просто проверяет имя автора перед добавлением информации в массив.

В следующем примере кода показано, как извлечь имя автора, дату и время, а также текст комментариев указанного автора:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Как удалить комментарии

Если вы удаляете все комментарии, нет необходимости перемещаться по коллекции, удаляя комментарии один за другим; вы можете удалить их, вызвав команду [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) в коллекции комментариев.

В следующем примере кода показано, как удалить все комментарии в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Когда вам нужно выборочно удалить комментарии, процесс становится более похожим на код, который мы использовали для извлечения комментариев.

В следующем примере кода показано, как удалить комментарии указанного автора:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Главное, на что следует обратить внимание, - это использование оператора for. В отличие от простого извлечения, здесь вы хотите удалить комментарий. Подходящий прием - выполнить итерацию коллекции в обратном порядке от последнего [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) к первому. Причина этого в том, что если вы начнете с конца и будете двигаться в обратном направлении, индекс предыдущих элементов останется неизменным, и вы сможете вернуться к первому элементу в коллекции.

В следующем примере кода показаны методы извлечения и удаления комментариев:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Как удалить комментарий между CommentRangeStart и CommentRangeEnd

Используя Aspose.Words, вы также можете удалить комментарии между узлами **CommentRangeStart** и **CommentRangeEnd**.

В следующем примере кода показано, как удалить текст между **CommentRangeStart** и **CommentRangeEnd**:

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

## Добавить или удалить ответ на комментарий

Метод [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) добавляет ответ к этому комментарию. Пожалуйста, обратите внимание, что из-за существующих ограничений Microsoft Office в документе разрешен только 1 уровень ответов. При вызове этого метода для существующего комментария к ответу будет создано исключение типа **InvalidOperationException**.

Вы можете использовать метод [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/), чтобы удалить указанный ответ на этот комментарий.

В следующем примере кода показано, как добавить ответ к комментарию и удалить ответ на комментарий:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Прочитайте ответ на комментарий

Свойство [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) возвращает коллекцию объектов [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), которые являются непосредственными дочерними элементами указанного комментария.

В следующем примере кода показано, как перебирать ответы на комментарии и разрешать их:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
