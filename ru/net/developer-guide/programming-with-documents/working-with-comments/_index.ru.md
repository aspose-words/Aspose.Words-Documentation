---
title: Работа с комментариями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с комментариями
linktitle: Работа с комментариями
description: "Работа с комментариями с использованием C#."
type: docs
weight: 260
url: /ru/net/working-with-comments/
---

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функциональность с нашим [Бесплатное онлайн-удаление аннотаций](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволяет пользователям работать с комментариями — комментарии в документе Aspose.Words представлены классом [Comment](https://reference.aspose.com/words/ru/net/aspose.words/comment/). Также используйте классы [CommentRangeStart](https://reference.aspose.com/words/ru/net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/ru/net/aspose.words/commentrangeend/), чтобы указать область текста, которая должна быть связана с комментарием.

## Добавить комментарий

Aspose.Words позволяет добавлять комментарии несколькими способами:

1. Использование класса [Comment](https://reference.aspose.com/words/ru/net/aspose.words/comment/)
2. Использование классов [CommentRangeStart](https://reference.aspose.com/words/ru/net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/ru/net/aspose.words/commentrangeend/)

В следующем примере кода показано, как добавить комментарий к абзацу с помощью класса **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

В следующем примере кода показано, как добавить комментарий к абзацу, используя область текста и классы **CommentRangeStart** и **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Извлечение или удаление комментариев

Использование комментариев в документе Word (помимо функции отслеживания изменений) — обычная практика при рецензировании документов, особенно если рецензентов несколько. Бывают ситуации, когда единственное, что вам нужно от документа, — это комментарии. Предположим, вы хотите создать список результатов проверки или, возможно, вы собрали всю полезную информацию из документа и просто хотите удалить ненужные комментарии. Возможно, вы захотите просмотреть или удалить комментарии конкретного рецензента.

В этом примере мы рассмотрим несколько простых методов как для сбора информации из комментариев внутри документа, так и для удаления комментариев из документа. В частности, мы расскажем, как:

- Извлечение всех комментариев из документа или только тех, которые сделаны конкретным автором
- Удалить все комментарии из документа или только от конкретного автора

### Как извлечь или удалить комментарии

Код в этом примере на самом деле довольно прост, и все методы основаны на одном и том же подходе. Комментарий в документе Word представлен объектом [Comment](https://reference.aspose.com/words/ru/net/aspose.words/comment/) в объектной модели документа Aspose.Words. Чтобы собрать все комментарии в документе, используйте метод [GetChildNodes](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/getchildnodes/) с первым параметром, равным [NodeType.Comment](https://reference.aspose.com/words/ru/net/aspose.words/nodetype/). Убедитесь, что для второго параметра метода **GetChildNodes** установлено значение true: это заставляет **GetChildNodes** рекурсивно выбирать из всех дочерних узлов, а не только собирая ближайших детей.

Чтобы проиллюстрировать, как извлекать и удалять комментарии из документа, мы выполним следующие шаги:

1. Откройте документ Word, используя класс [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/)
2. Собрать все комментарии из документа в коллекцию
3. Чтобы извлечь комментарии:
  1. Просмотрите коллекцию с помощью оператора foreach
  2. Извлеките и перечислите имя автора, дату и время, а также текст всех комментариев
  3. Извлеките и перечислите имя автора, дату и время, а также текст комментариев, написанных конкретным автором, в данном случае автором "ks"
4. Чтобы удалить комментарии:
  1. Перейдите по коллекции назад, используя оператор for
  2. Удаление комментариев
5. Сохраните изменения

### Как извлечь все комментарии

Метод **GetChildNodes** очень полезен, и вы можете использовать его каждый раз, когда вам нужно получить список узлов документа любого типа. Полученная коллекция не создает немедленных издержек, поскольку узлы выбираются в эту коллекцию только тогда, когда вы перечисляете или получаете доступ к ее элементам.

В следующем примере кода показано, как извлечь имя автора, дату и время, а также текст всех комментариев в документе:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Как извлечь комментарии указанного автора

После того как вы выбрали в коллекцию **Comment** узла, все, что вам нужно сделать, это извлечь необходимую информацию. В этом примере инициалы автора, дата, время и простой текст комментария объединяются в одну строку; вместо этого вы можете сохранить его каким-либо другим способом.

Перегруженный метод, извлекающий комментарии конкретного автора, практически такой же, он просто проверяет имя автора перед добавлением информации в массив.

В следующем примере кода показано, как извлечь имя автора, дату и время, а также текст комментариев указанного автора:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Как удалить комментарии

Если вы удаляете все комментарии, нет необходимости перемещаться по коллекции, удаляя комментарии один за другим. Вы можете удалить их, вызвав метод [Clear](https://reference.aspose.com/words/ru/net/aspose.words/nodecollection/clear/) в коллекции комментариев.

В следующем примере кода показано, как удалить все комментарии в документе:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Когда вам нужно выборочно удалить комментарии, процесс становится более похожим на код, который мы использовали для извлечения комментариев.

В следующем примере кода показано, как удалить комментарии указанного автора:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Здесь следует особо подчеркнуть использование оператора for. В отличие от простого извлечения, здесь вы хотите удалить комментарий. Подходящий трюк — перебрать коллекцию назад от последнего комментария к первому. Причина этого: если вы начинаете с конца и двигаетесь назад, индекс предыдущих элементов остается неизменным, и вы можете вернуться к первому элементу в коллекции.

В следующем примере кода показаны методы извлечения и удаления комментариев:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Как удалить комментарий между CommentRangeStart и CommentRangeEnd

Используя Aspose.Words, вы также можете удалить комментарии между узлами **CommentRangeStart** и **CommentRangeEnd**.

В следующем примере кода показано, как удалить текст между **CommentRangeStart** и **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Добавить или удалить ответ на комментарий

Метод [AddReply](https://reference.aspose.com/words/ru/net/aspose.words/comment/addreply/) добавляет ответ на этот комментарий. Обратите внимание, что из-за существующих ограничений Office Microsoft в документе разрешен только 1 уровень ответов. Исключение типа *InvalidOperationException* будет вызвано, если этот метод вызывается для существующего комментария ответа.

Вы можете использовать метод [RemoveReply](https://reference.aspose.com/words/ru/net/aspose.words/comment/removereply/), чтобы удалить указанный ответ на этот комментарий.

В следующем примере кода показано, как добавить ответ на комментарий и удалить ответ на комментарий:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Прочитать ответ на комментарий

Свойство [Replies](https://reference.aspose.com/words/ru/net/aspose.words/comment/replies/) возвращает коллекцию объектов [Comment](https://reference.aspose.com/words/ru/net/aspose.words/comment/), которые являются непосредственными дочерними элементами указанного комментария.

В следующем примере кода показано, как перебирать ответы на комментарии и разрешать их:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
