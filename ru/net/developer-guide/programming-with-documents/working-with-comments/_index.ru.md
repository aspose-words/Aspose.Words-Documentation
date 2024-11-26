---
title: Работа с комментариями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с комментариями
linktitle: Работа с комментариями
description: "Работа с комментариями с использованием C#."
type: docs
weight: 260
url: /ru/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатно онлайн удалить аннотации](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволяет пользователям работать с комментариями - комментариями в документе Aspose.Words представлены в виде [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) класс. Также используйте [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) классы для указания области текста, которая должна быть связана с комментарием.

## Добавить комментарий

Aspose.Words позволяет добавлять комментарии несколькими способами:

1. Используя [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) класс
2. Используя [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) классы

Следующий пример кода показывает, как добавить комментарий к абзацу, используя **Comment** класс:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

Следующий пример кода показывает, как добавить комментарий к абзацу, используя область текста и **CommentRangeStart** и **CommentRangeEnd** классы:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Извлечение или удаление комментариев

Использование комментариев в документе Word (в дополнение к изменениям трека) является обычной практикой при рассмотрении документов, особенно когда есть несколько рецензентов. Могут быть ситуации, когда единственное, что вам нужно от документа, это комментарии. Скажем, вы хотите создать список результатов обзора, или, возможно, вы собрали всю полезную информацию из документа, и вы просто хотите удалить ненужные комментарии. Вы можете просмотреть или удалить комментарии конкретного рецензента.

В этой выборке мы рассмотрим некоторые простые методы как для сбора информации из комментариев в документе, так и для удаления комментариев из документа. В частности, мы рассмотрим, как:

- Извлеките все комментарии из документа или только те, которые сделаны конкретным автором
- Удалить все комментарии из документа или только от конкретного автора

### Как извлечь или удалить комментарии

Код в этой выборке на самом деле довольно прост, и все методы основаны на одном и том же подходе. Комментарий в документе Word представляет собой [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) объект в Aspose.Words Модель объекта документа. Чтобы собрать все комментарии в документе, используйте [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) Метод с первым параметром, установленным для [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). Убедитесь, что второй параметр **GetChildNodes** метод устанавливается trueЭто заставляет **GetChildNodes** Рекурсивно выбирать из всех узлов ребенка, а не только собирать детей.

Чтобы проиллюстрировать, как извлечь и удалить комментарии из документа, мы рассмотрим следующие шаги:

1. Откройте документ Word, используя [Document](https://reference.aspose.com/words/net/aspose.words/document/) класс
2. Получить все комментарии из документа в сборник
3. Чтобы извлечь комментарии:
   1.Пройти сбор с помощью оператора foreach
   2. Извлеките и перечислите имя автора, дату и время и текст всех комментариев
   3. Извлеките и перечислите имя автора, дату и время и текст комментариев, написанных конкретным автором, в этом случае автор "k"
4. Чтобы удалить комментарии:
   1.Перейти назад через сбор с помощью оператора
   2. Удалить комментарии
5. Сохранить изменения

### Как извлечь все комментарии

The **GetChildNodes** Метод очень полезен, и вы можете использовать его каждый раз, когда вам нужно получить список узлов документов любого типа. Полученная коллекция не создает непосредственных накладных расходов, потому что узлы выбираются в эту коллекцию только тогда, когда вы перечисляете или получаете доступ к элементам в ней.

Следующий пример кода показывает, как извлечь имя автора, дату и время и текст всех комментариев в документе:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Как извлечь комментарии конкретного автора

После того, как вы выбрали **Comment** Все, что вам нужно сделать, это извлечь необходимую информацию. В этом образце инициалы автора, дата, время и простой текст комментария объединены в одну строку; вместо этого вы можете сохранить его другими способами.

Перегруженный метод, который извлекает комментарии от конкретного автора, почти такой же, он просто проверяет имя автора, прежде чем добавлять информацию в массив.

Следующий пример кода показывает, как извлечь имя автора, дату и время и текст комментариев указанного автора:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Как удалить комментарии

Если вы удаляете все комментарии, нет необходимости перемещаться по коллекции, удаляя комментарии один за другим. Вы можете удалить их, позвонив [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) метод сбора комментариев.

Следующий пример кода показывает, как удалить все комментарии в документе:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Когда вам нужно выборочно удалять комментарии, процесс становится более похожим на код, который мы использовали для извлечения комментариев.

Следующий пример кода показывает, как удалить комментарии указанного автора:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

Главным моментом здесь является использование оператора. В отличие от простого извлечения, здесь вы хотите удалить комментарий. Подходящим трюком является повторение коллекции назад от последнего комментария к первому. Причина этого, если вы начинаете с конца и двигаетесь назад, индекс предыдущих пунктов остается неизменным, и вы можете вернуться к первому пункту в коллекции.

Следующий пример кода показывает методы извлечения и удаления комментариев:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Как удалить комментарий между CommentRangeStart и CommentRangeEnd

Использовать Aspose.Words Вы также можете удалить комментарии между **CommentRangeStart** и **CommentRangeEnd** Узлы.

Следующий пример кода показывает, как удалить текст между **CommentRangeStart** и **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Добавить или удалить комментарий

The [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) Метод добавляет ответ на этот комментарий. Обратите внимание, что благодаря существующему Microsoft В документе допускается ограничение только на 1 уровень ответов. Исключение из вида *InvalidOperationException* будет поднято, если этот метод будет вызван существующим комментарием Ответ.

Вы можете использовать [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) Способ удаления указанного ответа на данный комментарий.

Следующий пример кода показывает, как добавить ответ на комментарий и удалить ответ комментария:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Read Comment's Ответ

The [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) Имущество возвращает коллекцию [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) объекты, являющиеся непосредственными детьми указанного комментария.

Следующий пример кода показывает, как повторить ответы комментария и решить их:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
