---
title: Вставлять и добавлять документы в Java
second_title: Aspose.Words для Java
articleTitle: Вставка и добавление документов
linktitle: Вставка и добавление документов
description: "Объединяйте документы в один: вставляйте или добавляйте документ в новый или существующий с помощью функции поиска и замены, поля объединения, закладки или просто в конце документа с помощью Java."
type: docs
weight: 80
url: /ru/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или воспользоваться функцией вставки или добавления Aspose.Words.

Операция вставки позволяет вставлять содержимое ранее созданных документов в новый или существующий.

В свою очередь, функция добавления позволяет добавлять документ только в конце другого документа.

В этой статье объясняется, как вставлять или присоединять один документ к другому различными способами, а также описываются общие свойства, которые можно применять при вставке или добавлении документов.

## Вставка документа

Как упоминалось выше, в Aspose.Words документ представлен в виде дерева узлов, и операция вставки одного документа в другой заключается в копировании узлов из первого дерева документов во второе.

Вы можете вставлять документы в различные места различными способами. Например, вы можете вставить документ с помощью операции замены, поля объединения во время операции объединения или с помощью закладки.

Вы также можете использовать метод [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) или [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions), который аналогичен вставке документа в Microsoft Word, чтобы вставить весь документ в текущее положение курсора без предварительного импорта.

В следующем примере кода показано, как вставить документ с помощью метода **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

В следующем примере кода показано, как вставить документ с помощью метода **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

В следующих подразделах описаны параметры, с помощью которых вы можете вставлять один документ в другой.

### Вставьте документ во время операции поиска и замены {#insert-a-document-during-find-and-replace-operation}

Вы можете вставлять документы во время выполнения операций поиска и замены. Например, документ может содержать абзацы с текстом [INTRODUCTION] и [CONCLUSION]. Но в конечном документе вам необходимо заменить эти абзацы содержимым, полученным из другого внешнего документа. Чтобы добиться этого, вам нужно будет создать обработчик для события replace.

В следующем примере кода показано, как создать обработчик для события замены, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

В следующем примере кода показано, как вставить содержимое одного документа в другой во время операции поиска и замены:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Вставка документа во время операции Mail Merge {#insert-a-document-during-mail-merge-operation}

Вы можете вставить документ в поле для объединения во время операции Mail Merge. Например, шаблон Mail Merge может содержать поле для объединения, такое как [Сводка]. Но в конечном документе вам нужно вставить содержимое, полученное из другого внешнего документа, в это поле для объединения. Чтобы добиться этого, вам нужно будет создать обработчик для события слияния.

В следующем примере кода показано, как создать обработчик для события слияния, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

В следующем примере кода показано, как вставить документ в поле слияния с помощью созданного обработчика:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Вставьте документ в закладку

Вы можете импортировать текстовый файл в документ и вставить его сразу после закладки, которую вы определили в документе. Для этого создайте абзац с закладкой, в который вы хотите вставить документ.

В следующем примере кодирования показано, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна содержать несколько абзацев или текста, которые вы хотите, чтобы они появились в вашем окончательном итоговом документе.

{{% /alert %}}

## Добавление документа

Возможно, у вас есть вариант использования, когда вам нужно добавить дополнительные страницы из документа в конец существующего документа. Для этого вам просто нужно вызвать метод [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int), чтобы добавить документ в конец другого документа.

{{% alert color="primary" %}}

Обратите внимание, что [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) - это метод на уровне узла в документе. Например, вы можете создать абзац, задать свойства форматирования, а затем добавить его как дочерний элемент в текст, используя метод **AppendChild**.

{{% /alert %}}

В следующем примере кода показано, как добавить документ в конец другого документа:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Импортируйте и вставляйте узлы вручную {#import-and-insert-nodes-manually}

Aspose.Words позволяет автоматически вставлять и дополнять документы без каких-либо предварительных требований к импорту. Однако, если вам нужно вставить или дополнить определенный узел вашего документа, например раздел или абзац, сначала вам нужно импортировать этот узел вручную.

Когда вам нужно вставить или дополнить один раздел или абзац другим, вам, по сути, необходимо импортировать узлы первого дерева узлов документа во второе, используя метод [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). После импорта узлов вам необходимо использовать метод [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node), чтобы вставить новый узел после/перед ссылочным узлом. Это позволяет настроить процесс вставки, импортируя узлы из документа и вставляя их в заданные позиции.

Вы также можете использовать метод [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node), чтобы добавить новый указанный узел в конец списка дочерних узлов, например, если вы хотите добавить содержимое на уровне абзаца, а не на уровне раздела.

В следующем примере кода показано, как вручную импортировать узлы и вставлять их после определенного узла, используя метод **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

При импорте создается новый узел, который является копией исходного узла и подходит для вставки в целевой документ.

{{% /alert %}}

Содержимое импортируется в целевой документ по разделам, что означает, что при импорте сохраняются такие параметры, как настройка страницы и верхние и нижние колонтитулы. Также полезно отметить, что вы можете задать параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа будут объединены.

## Общие свойства для вставки и добавления документов {#common-properties-for-insert-and-append-documents}

Оба метода [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) и [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) принимают [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) в качестве входных параметров. Функция **ImportFormatMode** позволяет управлять объединением форматирования документов при импорте содержимого из одного документа в другой, выбирая различные режимы форматирования, такие как [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) и [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). Параметр **ImportFormatOptions** позволяет выбрать различные параметры импорта, такие как [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), и [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words позволяет настроить визуализацию результирующего документа при объединении двух документов в операции вставки или добавления с помощью свойств [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). Свойство **PageSetup** содержит все атрибуты раздела, такие как [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), и другие. Наиболее распространенным вариантом использования является установка свойства **SectionStart**, определяющего, будет ли добавленный контент отображаться на той же странице или будет разделен на новую.

{{% alert color="primary" %}}

Обратите внимание, что свойства **Section** и **PageSetup** не управляют тем, как два документа вставляются/добавляются друг к другу. Они позволяют только изменить внешний вид результирующего документа.

{{% /alert %}}

В следующем примере кода показано, как добавить один документ в другой, не разделяя содержимое на две страницы:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
