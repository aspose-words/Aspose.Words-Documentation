---
title: Работа с комментариями в Java
second_title: Aspose.Words для Java
articleTitle: Работа с комментариями
linktitle: Работа с комментариями
description: "Работа с комментариями с использованием Java."
type: docs
weight: 260
url: /ru/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатно онлайн удалить аннотации](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволяет пользователям работать с комментариями - комментариями в документе Aspose.Words представлены в виде [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) класс. Также используйте [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) классы для указания области текста, которая должна быть связана с комментарием.

## Добавить комментарий

Aspose.Words позволяет добавлять комментарии несколькими способами:

1. Используя [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) класс
2. Используя [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) классы

Следующий пример кода показывает, как добавить комментарий к абзацу, используя **Comment** класс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Следующий пример кода показывает, как добавить комментарий к абзацу, используя область текста и **CommentRangeStart** и **CommentRangeEnd** классы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Извлечение или удаление комментариев

Использование комментариев в документе Word (в дополнение к изменениям трека) является обычной практикой при рассмотрении документов, особенно когда есть несколько рецензентов. Могут быть ситуации, когда единственное, что вам нужно от документа, это комментарии. Скажем, вы хотите создать список результатов обзора, или, возможно, вы собрали всю полезную информацию из документа, и вы просто хотите удалить ненужные комментарии. Вы можете просмотреть или удалить комментарии конкретного рецензента.

В этой выборке мы рассмотрим некоторые простые методы как для сбора информации из комментариев в документе, так и для удаления комментариев из документа. В частности, мы рассмотрим, как:

- Извлеките все комментарии из документа или только те, которые сделаны конкретным автором.
- Удалить все комментарии из документа или только от конкретного автора.

### Как извлечь или удалить комментарии

Код в этом образце достаточно прост и все методы основаны на одном и том же подходе. Комментарий в документе Word представляет собой `Comment` объект в Aspose.Words Модель объекта документа. Чтобы собрать все комментарии в документе, используйте [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) Метод с первым параметром, установленным для `NodeType.Comment`. Убедитесь, что второй параметр **GetChildNodes** метод устанавливается trueЭто заставляет **GetChildNodes** Рекурсивно выбирать из всех узлов ребенка, а не только собирать детей.

Чтобы проиллюстрировать, как извлечь и удалить комментарии из документа, мы рассмотрим следующие шаги:

1. Откройте документ Word, используя [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) класс
1. Получить все комментарии из документа в сборник
1. Чтобы извлечь комментарии:
   1.Пройти сбор, используя для оператора
   1.Извлеките и перечислите имя автора, дату и время и текст всех комментариев
   1. Извлеките и перечислите имя автора, дату и время и текст комментариев, написанных конкретным автором, в этом случае автор "k"
1. Чтобы удалить комментарии:
   1. Пройдите назад через сбор, используя для оператора
   1. Удалить комментарии
1. Сохранить изменения.

Для этого упражнения мы будем использовать следующий документ Word:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Как видите, в нем содержится несколько комментариев от двух авторов с инициалами "pm" и "ks".

### Как извлечь все комментарии

The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) Метод очень полезен, и вы можете использовать его каждый раз, когда вам нужно получить список узлов документов любого типа. Полученная коллекция не создает непосредственных накладных расходов, потому что узлы выбираются в эту коллекцию только тогда, когда вы перечисляете или получаете доступ к элементам в ней.

Следующий пример кода показывает, как извлечь имя автора, дату и время и текст всех комментариев в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Как извлечь комментарии конкретного автора

После того, как вы выбрали узлы комментариев в коллекцию, все, что вам нужно сделать, это извлечь необходимую информацию. В этом образце инициалы автора, дата, время и простой текст комментария объединены в одну строку; вместо этого вы можете сохранить его другими способами.

Перегруженный метод, который извлекает комментарии от конкретного автора, почти такой же, он просто проверяет имя автора, прежде чем добавлять информацию в массив.

Следующий пример кода показывает, как извлечь имя автора, дату и время и текст комментариев указанного автора:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Как удалить комментарии

Если вы удаляете все комментарии, нет необходимости перемещаться по коллекции, удаляя комментарии один за другим; вы можете удалить их, позвонив по телефону. [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) Сборник комментариев.

Следующий пример кода показывает, как удалить все комментарии в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Когда вам нужно выборочно удалять комментарии, процесс становится более похожим на код, который мы использовали для извлечения комментариев.

Следующий пример кода показывает, как удалить комментарии указанного автора:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Главным моментом здесь является использование оператора. В отличие от простого извлечения, здесь вы хотите удалить комментарий. Подходящим трюком является повторение коллекции назад от последнего комментария к первому. Причина этого, если вы начинаете с конца и двигаетесь назад, индекс предыдущих пунктов остается неизменным, и вы можете вернуться к первому пункту в коллекции.

Следующий пример кода показывает методы извлечения и удаления комментариев:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

При запуске образец отображает следующие результаты. Сначала он перечисляет все комментарии всех авторов, затем перечисляет комментарии только выбранного автора. Наконец, код удаляет все комментарии.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

В выходном документе Word теперь удалены комментарии:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Как удалить текст между CommentRangeStart и CommentRangeEnd

Использовать Aspose.Words Вы также можете удалить комментарии между узлами CommentRangeStart и CommentRangeEnd.

Следующий пример кода показывает, как удалить текст между CommentRangeStart и CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Добавить или удалить комментарий

The [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) Метод добавляет ответ на этот комментарий. Обратите внимание, что из-за существующих ограничений MS Office в документе допускается только один (1) уровень ответов. Исключение типа InvalidOperationException будет поднято, если этот метод будет вызван существующим комментарием Reply.

Вы можете использовать [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) Способ удаления указанного ответа на этот комментарий.

Следующий пример кода показывает, как добавить ответ на комментарий и удалить ответ комментария:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Читать комментарий Ответ

Aspose.Words Поддержите чтение ответа на комментарий. The [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) Имущество возвращает коллекцию [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) объекты, являющиеся непосредственными детьми указанного комментария.

Следующий пример кода показывает, как повторить ответы комментария и решить их:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
