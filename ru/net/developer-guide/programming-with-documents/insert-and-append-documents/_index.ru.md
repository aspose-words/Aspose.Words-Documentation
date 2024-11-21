---
title: Включить и добавить документы в C#
second_title: Aspose.Words для .NET
articleTitle: Включить и добавить документы
linktitle: Включить и добавить документы
description: "Объедините документы в один: вставьте или добавьте документ в новый или существующий, используя поиск и замену, объединение поля, закладки или просто в конце документа. C#."
type: docs
weight: 80
url: /ru/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или использовать Aspose.Words Вставить или добавить функцию.

Операция вставки позволяет вставить содержимое ранее созданных документов в новый или существующий.

В свою очередь, функция приложения позволяет добавлять документ только в конце другого документа.

Эта статья объясняет, как вставить или добавить документ к другому по-разному и описывает общие свойства, которые вы можете применить при вставке или добавлении документов.

## Включить документ {#insert-a-document}

Как упоминалось выше, в Aspose.Words документ представлен как дерево узлов, а операция вставки одного документа в другой заключается в копировании узлов от первого дерева документов ко второму.

Вы можете вставлять документы в различных местах по-разному. Например, вы можете вставить документ через операцию замены, поле слияния во время операции слияния или через закладку.

Вы также можете использовать [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) или [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) метод, аналогичный вставке документа в Microsoft Word, Вставить весь документ в текущую позицию курсора без предварительного импорта.

Следующий пример кода показывает, как вставить документ, используя **InsertDocument** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Следующий пример кода показывает, как вставить документ, используя **InsertDocumentInline** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Следующие подразделы описывают варианты, в течение которых вы можете вставить один документ в другой.

### Вставьте документ во время поиска и замены операции {#insert-a-document-during-find-and-replace-operation}

Вы можете вставлять документы при выполнении операций поиска и замены. Например, документ может содержать пункты с текстом [Введение] и [Заключение]. Но в итоговом документе нужно заменить эти абзацы содержанием, полученным из другого внешнего документа. Для этого вам нужно будет создать обработчик для замены события.

Следующий пример кода показывает, как создать обработчик для замены события, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Следующий пример кода показывает, как вставить содержимое одного документа в другой во время операции поиска и замены:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Вставить документ во время Mail Merge Операция {#insert-a-document-during-mail-merge-operation}

Вы можете вставить документ в поле слияния во время mail merge Операция. Например, a mail merge Шаблон может содержать поле слияния, такое как [Summary]. Но в итоговый документ нужно вставить в это поле слияния контент, полученный из другого внешнего документа. Чтобы достичь этого, вам нужно будет создать обработчик для события слияния.

Следующий пример кода показывает, как создать обработчик для события слияния, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Следующий пример кода показывает, как вставить документ в поле слияния с помощью созданного обработчика:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Вставить документ в Bookmark {#insert-a-document-at-bookmark}

Вы можете импортировать текстовый файл в документ и вставлять его сразу после закладки, которую вы определили в документе. Для этого создайте закладку, где вы хотите, чтобы документ был вставлен.

Следующий пример кодирования показывает, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна включать несколько абзацев или текста, которые вы хотите, чтобы они отображались в конечном итоговом документе.

{{% /alert %}}

## Добавить документ {#append-a-document}

У вас может быть случай использования, когда вам нужно включить дополнительные страницы из документа в конец существующего документа. Для этого нужно просто позвонить в [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) Способ добавления документа в конец другого документа.

{{% alert color="primary" %}}

Заметьте, что [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) Это метод уровня узла в документе. Например, можно создать абзац, задать свойства форматирования, а затем приложить его в детстве к телу с помощью **AppendChild** метод.

{{% /alert %}}

Следующий пример кода показывает, как добавить документ к концу другого документа:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Импорт и вставка узлов вручную {#import-and-insert-nodes-manually}

Aspose.Words позволяет автоматически вставлять и добавлять документы без каких-либо предварительных требований к импорту. Однако, если вам нужно вставить или добавить конкретный узел вашего документа, например, раздел или абзац, то сначала вам нужно импортировать этот узел вручную.

Когда вам нужно вставить или добавить один раздел или абзац к другому, вам, по сути, нужно импортировать узлы первого дерева узла документа во второй, используя [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) метод. После импорта ваших узлов, вы должны использовать [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) Способ вставки нового узла после/до опорного узла. Это позволяет настроить процесс вставки, импортируя узлы из документа и вставляя его в заданные позиции.

Вы также можете использовать [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) способ добавления нового указанного узла в конец списка дочерних узлов, например, если вы хотите добавить контент на уровне абзаца вместо уровня раздела.

Следующий пример кода показывает, как вручную импортировать узлы и вставлять их после конкретного узла с помощью **InsertAfter** метод:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Импорт создает новый узел, который является копией исходного узла и подходит для вставки в документ назначения.

{{% /alert %}}

Контент импортируется в раздел документа назначения по разделам, что означает, что настройки, такие как настройка страницы и заголовки или нижние колонтитулы, сохраняются во время импорта. Также полезно отметить, что вы можете определить параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа соединены вместе.

## Общие свойства для включения и добавления документов {#common-properties-for-insert-and-append-documents}

Оба [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) и [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) Методы принимают [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) в качестве входных параметров. The **ImportFormatMode** позволяет контролировать процесс объединения форматирования документов при импорте контента из одного документа в другой путем выбора различных режимов форматирования, таких как: [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), и [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). The **ImportFormatOptions** позволяет выбрать различные варианты импорта, такие как: [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), и [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words позволяет настроить визуализацию полученного документа, когда два документа добавляются вместе в операцию вставки или добавления, используя [Section](https://reference.aspose.com/words/net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) свойств. The **PageSetup** свойство содержит все атрибуты раздела, такие как [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), и другие. Наиболее распространенным вариантом использования является установка **SectionStart** свойство определять, появится ли добавленный контент на той же странице или разделится на новый.

{{% alert color="primary" %}}

Обратите внимание, что **Section** и **PageSetup** Свойства не контролируют, как два документа вставлены/приложены вместе. Они позволяют только изменить внешний вид документа.

{{% /alert %}}

Следующий пример кода показывает, как добавить один документ к другому, сохраняя при этом контент от разделения на две страницы:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
