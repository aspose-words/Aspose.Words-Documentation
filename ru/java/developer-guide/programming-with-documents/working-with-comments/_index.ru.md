---
title: Работа с комментариями в Java
second_title: Aspose.Words для Java
articleTitle: Работа с комментариями
linktitle: Работа с комментариями
description: "Работа с комментариями с помощью Java."
type: docs
weight: 260
url: /ru/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете воспользоваться этой функцией с помощью нашего сайта [Удалить аннотации можно бесплатно онлайн](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words позволяет пользователям работать с комментариями – комментарии в документе в Aspose.Words представлены классом [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). Также используйте классы [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), чтобы указать область текста, которая должна быть связана с комментарием.

## Добавить комментарий

Aspose.Words позволяет добавлять комментарии несколькими способами:

1. Использование класса [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Использование классов [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) и [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

В следующем примере кода показано, как добавить комментарий к абзацу с помощью класса **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

В следующем примере кода показано, как добавить комментарий к абзацу, используя область текста и классы **CommentRangeStart** и **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Извлекать или удалять комментарии

Использование комментариев в документе Word (в дополнение к отслеживанию изменений) является обычной практикой при просмотре документов, особенно при наличии нескольких рецензентов. Могут возникнуть ситуации, когда единственное, что вам нужно от документа, - это комментарии. Допустим, вы хотите составить список результатов проверки, или, возможно, вы собрали всю полезную информацию из документа и просто хотите удалить ненужные комментарии. Возможно, вы захотите просмотреть или удалить комментарии конкретного рецензента.

В этом примере мы рассмотрим несколько простых методов как для сбора информации из комментариев в документе, так и для удаления комментариев из документа. В частности, мы рассмотрим, как:

- Извлеките все комментарии из документа или только те, которые были сделаны конкретным автором.
- Удалите все комментарии из документа или только от определенного автора.

### Как извлечь или удалить комментарии

Код в этом примере довольно прост, и все методы основаны на одном и том же подходе. Комментарий в документе Word представлен объектом `Comment` в объектной модели документа Aspose.Words. Чтобы собрать все комментарии в документе, используйте метод [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) с первым параметром, равным `NodeType.Comment`. Убедитесь, что для второго параметра метода **getChildNodes** установлено значение true: это заставляет метод **getChildNodes** рекурсивно выбирать из всех дочерних узлов, а не собирать только непосредственные дочерние узлы.

Чтобы проиллюстрировать, как извлекать и удалять комментарии из документа, мы выполним следующие шаги:

1. Откройте документ Word с помощью класса [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Собрать все комментарии из документа в коллекцию
1. Чтобы извлечь комментарии:
   1. Просмотрите коллекцию, используя для оператора
   1. Извлеките и укажите имя автора, дату и время, а также текст всех комментариев
   1. Извлеките и укажите имя автора, дату и время, а также текст комментариев, написанных конкретным автором, в данном случае автором `ks`
1. Чтобы удалить комментарии:
   1. Пройдитесь в обратном порядке по коллекции, используя для оператора
   1. Удалять комментарии
1. Сохраните изменения.

Для этого упражнения мы будем использовать следующий документ Word:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Как вы можете видеть, он содержит несколько комментариев от двух авторов с инициалами "pm" и "ks".

### Как извлечь все комментарии

Метод [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) очень полезен, и вы можете использовать его каждый раз, когда вам нужно получить список узлов документа любого типа. Результирующая коллекция не создает немедленных накладных расходов, поскольку узлы выбираются в эту коллекцию только при перечислении элементов в ней или доступе к ним.

В следующем примере кода показано, как извлечь имя автора, дату и время, а также текст всех комментариев в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Как извлечь комментарии указанного автора

После того, как вы выделили узлы комментариев в коллекцию, все, что вам нужно сделать, это извлечь необходимую информацию. В этом примере инициалы автора, дата, время и обычный текст комментария объединены в одну строку; вы могли бы сохранить их каким-либо другим способом.

Перегруженный метод, который извлекает комментарии от определенного автора, почти такой же, он просто проверяет имя автора перед добавлением информации в массив.

В следующем примере кода показано, как извлечь имя автора, дату и время, а также текст комментариев указанного автора:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Как удалить комментарии

Если вы удаляете все комментарии, нет необходимости перемещаться по коллекции, удаляя комментарии один за другим; вы можете удалить их, вызвав команду [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) в коллекции комментариев.

В следующем примере кода показано, как удалить все комментарии в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Когда вам нужно выборочно удалить комментарии, процесс становится более похожим на код, который мы использовали для извлечения комментариев.

В следующем примере кода показано, как удалить комментарии указанного автора:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Главное, на что следует обратить внимание, - это использование оператора for. В отличие от простого извлечения, здесь вы хотите удалить комментарий. Подходящий прием - выполнить итерацию сбора данных в обратном порядке от последнего комментария к первому. Причина этого в том, что если вы начнете с конца и будете двигаться в обратном направлении, индекс предыдущих элементов останется неизменным, и вы сможете вернуться к первому элементу в коллекции.

В следующем примере кода показаны методы извлечения и удаления комментариев:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

При запуске пример отображает следующие результаты. Сначала в нем отображаются все комментарии всех авторов, затем только выбранного автора. Наконец, код удаляет все комментарии.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

Теперь из выходного документа Word удалены комментарии:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Как удалить текст между CommentRangeStart и CommentRangeEnd

Используя Aspose.Words, вы также можете удалить комментарии между узлами CommentRangeStart и CommentRangeEnd.

В следующем примере кода показано, как удалить текст между CommentRangeStart и CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Добавить или удалить ответ на комментарий

Метод [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) добавляет ответ к этому комментарию. Пожалуйста, обратите внимание, что из-за существующих ограничений MS Office в документе разрешен только один (1) уровень ответов. Если этот метод будет вызван для существующего комментария к ответу, возникнет исключение типа InvalidOperationException.

Вы можете использовать метод [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment), чтобы удалить указанный ответ на этот комментарий.

В следующем примере кода показано, как добавить ответ к комментарию и удалить ответ на комментарий:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Прочитайте ответ на комментарий

Aspose.Words поддержка чтения ответа на комментарий. Свойство [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) возвращает коллекцию объектов [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/), которые являются непосредственными дочерними элементами указанного комментария.

В следующем примере кода показано, как перебирать ответы на комментарии и разрешать их:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
