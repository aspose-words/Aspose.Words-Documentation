---
title: Включить и добавить документы в Java
second_title: Aspose.Words для Java
articleTitle: Включить и добавить документы
linktitle: Включить и добавить документы
description: "Объедините документы в один: вставьте или добавьте документ в новый или существующий, используя поиск и замену, объединение поля, закладки или просто в конце документа. Java."
type: docs
weight: 80
url: /ru/java/insert-and-append-documents/
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или использовать Aspose.Words Вставить или добавить функцию.

Операция вставки позволяет вставить содержимое ранее созданных документов в новый или существующий.

В свою очередь, функция приложения позволяет добавлять документ только в конце другого документа.

Эта статья объясняет, как вставить или добавить документ к другому по-разному и описывает общие свойства, которые вы можете применить при вставке или добавлении документов.

## Включить документ

Как упоминалось выше, в Aspose.Words документ представлен как дерево узлов, а операция вставки одного документа в другой заключается в копировании узлов от первого дерева документов ко второму.

Вы можете вставлять документы в различных местах по-разному. Например, вы можете вставить документ через операцию замены, поле слияния во время операции слияния или через закладку.

Вы также можете использовать [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) или [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) метод, аналогичный вставке документа в Microsoft Word, Вставить весь документ в текущую позицию курсора без предварительного импорта.

Следующий пример кода показывает, как вставить документ, используя **InsertDocument** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Следующий пример кода показывает, как вставить документ, используя **InsertDocumentInline** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Следующие подразделы описывают варианты, в течение которых вы можете вставить один документ в другой.

### Вставьте документ во время поиска и замены операции {#insert-a-document-during-find-and-replace-operation}

Вы можете вставлять документы при выполнении операций поиска и замены. Например, документ может содержать пункты с текстом [Введение] и [Заключение]. Но в итоговом документе нужно заменить эти абзацы содержанием, полученным из другого внешнего документа. Для этого вам нужно будет создать обработчик для замены события.

Следующий пример кода показывает, как создать обработчик для замены события, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Следующий пример кода показывает, как вставить содержимое одного документа в другой во время операции поиска и замены:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Вставить документ во время Mail Merge Операция {#insert-a-document-during-mail-merge-operation}

Вы можете вставить документ в поле слияния во время mail merge Операция. Например, a mail merge Шаблон может содержать поле слияния, такое как [Summary]. Но в итоговый документ нужно вставить в это поле слияния контент, полученный из другого внешнего документа. Чтобы достичь этого, вам нужно будет создать обработчик для события слияния.

Следующий пример кода показывает, как создать обработчик для события слияния, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Следующий пример кода показывает, как вставить документ в поле слияния с помощью созданного обработчика:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Вставить документ в Bookmark

Вы можете импортировать текстовый файл в документ и вставлять его сразу после закладки, которую вы определили в документе. Для этого создайте пункт с закладками, где вы хотите, чтобы документ был вставлен.

Следующий пример кодирования показывает, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна включать несколько абзацев или текста, которые вы хотите, чтобы они отображались в конечном итоговом документе.

{{% /alert %}}

## Добавить документ

У вас может быть случай использования, когда вам нужно включить дополнительные страницы из документа в конец существующего документа. Для этого нужно просто позвонить в [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) Способ добавления документа в конец другого документа.

{{% alert color="primary" %}}

Обратите внимание, что [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) Это метод уровня узла в документе. Например, можно создать абзац, задать свойства форматирования, а затем приложить его в детстве к телу с помощью **AppendChild** метод.

{{% /alert %}}

Следующий пример кода показывает, как добавить документ к концу другого документа:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Импорт и вставка узлов вручную {#import-and-insert-nodes-manually}

Aspose.Words позволяет автоматически вставлять и добавлять документы без каких-либо предварительных требований к импорту. Однако, если вам нужно вставить или добавить конкретный узел вашего документа, например, раздел или абзац, то сначала вам нужно импортировать этот узел вручную.

Когда вам нужно вставить или добавить один раздел или абзац к другому, вам, по сути, нужно импортировать узлы первого дерева узла документа во второй, используя [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) метод. После импорта ваших узлов, вы должны использовать [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) Способ вставки нового узла после/до опорного узла. Это позволяет настроить процесс вставки, импортируя узлы из документа и вставляя его в заданные позиции.

Вы также можете использовать [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) способ добавления нового указанного узла в конец списка дочерних узлов, например, если вы хотите добавить контент на уровне абзаца вместо уровня раздела.

Следующий пример кода показывает, как вручную импортировать узлы и вставлять их после конкретного узла с помощью **InsertAfter** метод:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Импорт создает новый узел, который является копией исходного узла и подходит для вставки в документ назначения.

{{% /alert %}}

Контент импортируется в раздел документа назначения по разделам, что означает, что настройки, такие как настройка страницы и заголовки или нижние колонтитулы, сохраняются во время импорта. Также полезно отметить, что вы можете определить параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа соединены вместе.

## Общие свойства для включения и добавления документов {#common-properties-for-insert-and-append-documents}

Оба [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) и [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) Методы принимают [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) в качестве входных параметров. The **ImportFormatMode** позволяет контролировать процесс объединения форматирования документов при импорте контента из одного документа в другой путем выбора различных режимов форматирования, таких как: [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), и [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). The **ImportFormatOptions** позволяет выбрать различные варианты импорта, такие как: [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), и [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words позволяет настроить визуализацию полученного документа, когда два документа добавляются вместе в операцию вставки или добавления, используя [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) свойств. The **PageSetup** свойство содержит все атрибуты раздела, такие как [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), и другие. Наиболее распространенным вариантом использования является установка **SectionStart** свойство определять, появится ли добавленный контент на той же странице или разделится на новый.

{{% alert color="primary" %}}

Обратите внимание, что **Section** и **PageSetup** Свойства не контролируют, как два документа вставлены/приложены вместе. Они позволяют только изменить внешний вид итогового документа.

{{% /alert %}}

Следующий пример кода показывает, как добавить один документ к другому, сохраняя при этом контент от разделения на две страницы:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
