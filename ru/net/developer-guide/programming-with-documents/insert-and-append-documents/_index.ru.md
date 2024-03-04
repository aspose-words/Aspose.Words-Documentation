---
title: Вставка и добавление документов в C#
second_title: Aspose.Words для .NET
articleTitle: Вставка и добавление документов
linktitle: Вставка и добавление документов
description: "Объедините документы в один: вставьте или добавьте документ в новый или существующий с помощью поиска и замены, поля слияния, закладки или просто в конце документа в C#."
type: docs
weight: 80
url: /ru/net/insert-and-append-documents/
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или использовать функцию вставки или добавления Aspose.Words.

Операция вставки позволяет вставить содержимое ранее созданных документов в новый или существующий.

В свою очередь функция добавления позволяет добавлять документ только в конец другого документа.

В этой статье объясняется, как различными способами вставлять или добавлять один документ в другой, а также описываются общие свойства, которые можно применять при вставке или добавлении документов.

## Вставьте документ {#insert-a-document}

Как говорилось выше, в Aspose.Words документ представлен в виде дерева узлов, а операция вставки одного документа в другой заключается в копировании узлов из первого дерева документа во второе.

Вы можете вставлять документы в разные места разными способами. Например, вы можете вставить документ с помощью операции замены, поля слияния во время операции слияния или с помощью закладки.

Вы также можете использовать метод [InsertDocument](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) или [InsertDocumentInline](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertdocumentinline/), который аналогичен вставке документа в Microsoft Word, чтобы вставить весь документ в текущую позицию курсора без предварительного импорта.

В следующем примере кода показано, как вставить документ с помощью метода **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

В следующем примере кода показано, как вставить документ с помощью метода **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

В следующих подразделах описаны параметры, с помощью которых вы можете вставить один документ в другой.

### Вставка документа во время операции поиска и замены {#insert-a-document-during-find-and-replace-operation}

Вы можете вставлять документы при выполнении операций поиска и замены. Например, документ может содержать абзацы с текстом [ВВЕДЕНИЕ] и [ЗАКЛЮЧЕНИЕ]. Но в конечном документе вам необходимо заменить эти абзацы содержимым, полученным из другого внешнего документа. Для этого вам нужно будет создать обработчик события замены.

В следующем примере кода показано, как создать обработчик события замены, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

В следующем примере кода показано, как вставить содержимое одного документа в другой во время операции поиска и замены:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Вставка документа во время операции Mail Merge {#insert-a-document-during-mail-merge-operation}

Вы можете вставить документ в поле слияния во время операции mail merge. Например, шаблон mail merge может содержать поле слияния, например [Сводка]. Но в конечном документе вам нужно в это поле слияния вставить контент, полученный из другого внешнего документа. Для этого вам нужно будет создать обработчик события слияния.

В следующем примере кода показано, как создать обработчик события слияния, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

В следующем примере кода показано, как вставить документ в поле слияния с помощью созданного обработчика:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Вставьте документ в закладку {#insert-a-document-at-bookmark}

Вы можете импортировать текстовый файл в документ и вставить его сразу после закладки, которую вы определили в документе. Для этого создайте абзац с закладкой, куда вы хотите вставить документ.

В следующем примере кода показано, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна включать в себя несколько абзацев или текста, которые вы хотите, чтобы они отображались в конечном конечном документе.

{{% /alert %}}

## Добавить документ {#append-a-document}

У вас может быть вариант использования, когда вам нужно включить дополнительные страницы из документа в конец существующего документа. Для этого вам просто нужно вызвать метод [AppendDocument](https://reference.aspose.com/words/ru/net/aspose.words/document/appenddocument/), чтобы добавить документ в конец другого.

{{% alert color="primary" %}}

Обратите внимание, что [AppendChild](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/appendchild/) — это метод уровня узла в документе. Например, вы можете создать абзац, установить свойства форматирования, а затем добавить его в качестве дочернего элемента к телу с помощью метода **AppendChild**.

{{% /alert %}}

В следующем примере кода показано, как добавить документ в конец другого документа:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Импорт и вставка узлов вручную {#import-and-insert-nodes-manually}

Aspose.Words позволяет автоматически вставлять и добавлять документы без каких-либо предварительных требований к импорту. Однако если вам нужно вставить или добавить определенный узел вашего документа, например раздел или абзац, сначала вам необходимо импортировать этот узел вручную.

Когда вам нужно вставить или добавить один раздел или абзац в другой, вам по сути необходимо импортировать узлы первого дерева узлов документа во второе, используя метод [ImportNode](https://reference.aspose.com/words/ru/net/aspose.words/nodeimporter/importnode/). После импорта узлов вам необходимо использовать метод [InsertAfter](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/insertbefore/), чтобы вставить новый узел после/перед опорным узлом. Это позволяет вам настроить процесс вставки, импортируя узлы из документа и вставляя их в заданные позиции.

Вы также можете использовать метод [AppendChild](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/appendchild/), чтобы добавить новый указанный узел в конец списка дочерних узлов, например, если вы хотите добавить содержимое на уровне абзаца, а не на уровне раздела.

В следующем примере кода показано, как вручную импортировать узлы и вставлять их после определенного узла с помощью метода **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

При импорте создается новый узел, который является копией исходного узла и подходит для вставки в целевой документ.

{{% /alert %}}

Содержимое импортируется в целевой документ раздел за разделом, а это означает, что настройки, такие как настройки страницы, верхние и нижние колонтитулы, сохраняются во время импорта. Также полезно отметить, что вы можете определить параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа объединяются.

## Общие свойства для вставки и добавления документов {#common-properties-for-insert-and-append-documents}

Оба метода [InsertDocument](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertdocument/) и [AppendDocument](https://reference.aspose.com/words/ru/net/aspose.words/document/appenddocument/) принимают [ImportFormatMode](https://reference.aspose.com/words/ru/net/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/ru/net/aspose.words/importformatoptions/) в качестве входных параметров. **ImportFormatMode** позволяет вам контролировать, как форматирование документа объединяется при импорте содержимого из одного документа в другой, выбирая различные режимы форматирования, такие как [UseDestinationStyles](https://reference.aspose.com/words/ru/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/ru/net/aspose.words/importformatmode/) и [KeepDifferentStyles](https://reference.aspose.com/words/ru/net/aspose.words/importformatmode/). **ImportFormatOptions** позволяет вам выбирать различные параметры импорта, такие как [IgnoreHeaderFooter](https://reference.aspose.com/words/ru/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/ru/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/ru/net/aspose.words/importformatoptions/keepsourcenumbering/)., [MergePastedLists](https://reference.aspose.com/words/ru/net/aspose.words/importformatoptions/mergepastedlists/) и [SmartStyleBehavior](https://reference.aspose.com/words/ru/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words позволяет настроить визуализацию результирующего документа, когда два документа добавляются вместе в операции вставки или добавления, используя свойства [Section](https://reference.aspose.com/words/ru/net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/pagesetup/). Свойство **PageSetup** содержит все атрибуты раздела, такие как [SectionStart](https://reference.aspose.com/words/ru/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/ru/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/ru/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/ru/net/aspose.words/pagesetup/orientation/) и другие. Наиболее распространенный вариант использования — установка свойства **SectionStart**, чтобы определить, будет ли добавленный контент отображаться на той же странице или будет разделен на новую.

{{% alert color="primary" %}}

Обратите внимание, что свойства **Section** и **PageSetup** не управляют тем, как два документа вставляются или добавляются вместе. Они позволяют вам только изменить внешний вид результирующего документа.

{{% /alert %}}

В следующем примере кода показано, как добавить один документ к другому, не допуская разделения содержимого на две страницы:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
