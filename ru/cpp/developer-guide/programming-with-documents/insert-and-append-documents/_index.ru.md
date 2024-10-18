---
title: Вставка и добавление документов на C++
second_title: Aspose.Words для C++
articleTitle: Вставка и добавление документов
linktitle: Вставка и добавление документов
description: "Объединяйте документы в один: вставляйте или добавляйте документ в новый или существующий, используя функцию поиска и замены, поле объединения, закладку или просто в конце документа."
type: docs
weight: 80
url: /ru/cpp/insert-and-append-documents/
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или воспользоваться функцией вставки или добавления Aspose.Words.

Операция вставки позволяет вставлять содержимое ранее созданных документов в новый или существующий.

В свою очередь, функция добавления позволяет добавлять документ только в конце другого документа.

В этой статье объясняется, как вставлять или присоединять один документ к другому различными способами, а также описываются общие свойства, которые можно применять при вставке или добавлении документов.

## Вставка документа

Как упоминалось выше, в Aspose.Words документ представлен в виде дерева узлов, и операция вставки одного документа в другой заключается в копировании узлов из первого дерева документов во второе.

Вы можете вставлять документы в различные места различными способами. Например, вы можете вставить документ с помощью операции замены, поля объединения во время операции объединения или с помощью закладки.

Вы также можете использовать метод [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), который аналогичен вставке документа в Microsoft Word, чтобы вставить весь документ в текущее положение курсора без предварительного импорта.

В следующем примере кода показано, как вставить документ с помощью метода `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

В следующих подразделах описаны параметры, с помощью которых вы можете вставлять один документ в другой.

### Вставьте документ во время операции поиска и замены {#insert-a-document-during-find-and-replace-operation}

Вы можете вставлять документы во время выполнения операций поиска и замены. Например, документ может содержать абзацы с текстом [ВВЕДЕНИЕ] и [ЗАКЛЮЧЕНИЕ]. Но в конечном документе вам необходимо заменить эти абзацы содержимым, полученным из другого внешнего документа. Чтобы добиться этого, вам нужно будет создать обработчик для события replace.

В следующем примере кода показано, как создать обработчик для события замены, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

В следующем примере кода показано, как вставить содержимое одного документа в другой во время операции поиска и замены:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Вставка документа во время операции Mail Merge {#insert-a-document-during-mail-merge-operation}

Вы можете вставить документ в поле для объединения во время операции mail merge. Например, шаблон mail merge может содержать поле для объединения, такое как [Сводка]. Но в конечном документе вам нужно вставить содержимое, полученное из другого внешнего документа, в это поле для объединения. Чтобы добиться этого, вам нужно будет создать обработчик для события слияния.

В следующем примере кода показано, как создать обработчик для события слияния, чтобы использовать его позже в процессе вставки:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

В следующем примере кода показано, как вставить документ в поле слияния с помощью созданного обработчика:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Вставьте документ в закладку

Вы можете импортировать текстовый файл в документ и вставить его сразу после закладки, которую вы определили в документе. Для этого создайте абзац с закладкой, в который вы хотите вставить документ.

В следующем примере кодирования показано, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна содержать несколько абзацев или текста, которые вы хотите, чтобы они появились в вашем окончательном итоговом документе.

{{% /alert %}}

## Добавление документа

Возможно, у вас есть вариант использования, когда вам нужно добавить дополнительные страницы из документа в конец существующего документа. Для этого вам просто нужно вызвать метод [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/), чтобы добавить документ в конец другого документа.

{{% alert color="primary" %}}

Обратите внимание, что [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) - это метод на уровне узла в документе. Например, вы можете создать абзац, задать свойства форматирования, а затем добавить его как дочерний элемент в текст, используя метод **AppendChild**.

{{% /alert %}}

В следующем примере кода показано, как добавить документ в конец другого документа:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Импортируйте и вставляйте узлы вручную {#import-and-insert-nodes-manually}

Aspose.Words позволяет автоматически вставлять и дополнять документы без каких-либо предварительных требований к импорту. Однако, если вам нужно вставить или дополнить определенный узел вашего документа, например раздел или абзац, сначала вам нужно импортировать этот узел вручную.

Когда вам нужно вставить или дополнить один раздел или абзац другим, вам, по сути, необходимо импортировать узлы первого дерева узлов документа во второе, используя метод [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). После импорта узлов вам необходимо использовать метод [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/), чтобы вставить новый узел после/перед ссылочным узлом. Это позволяет настроить процесс вставки, импортируя узлы из документа и вставляя их в заданные позиции.

Вы также можете использовать метод [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/), чтобы добавить новый указанный узел в конец списка дочерних узлов, например, если вы хотите добавить содержимое на уровне абзаца, а не на уровне раздела.

В следующем примере кода показано, как вручную импортировать узлы и вставлять их после определенного узла, используя метод **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

При импорте создается новый узел, который является копией исходного узла и подходит для вставки в целевой документ.

{{% /alert %}}

Содержимое импортируется в целевой документ по разделам, что означает, что при импорте сохраняются такие параметры, как настройка страницы и верхние и нижние колонтитулы. Также полезно отметить, что вы можете задать параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа будут объединены.

## Общие свойства для вставки и добавления документов {#common-properties-for-insert-and-append-documents}

Как [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), так и [Приложение к документу](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) методы принимают [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) в качестве входных параметров. Функция **ImportFormatMode** позволяет управлять объединением форматирования документов при импорте содержимого из одного документа в другой, выбирая различные режимы форматирования, такие как [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) и [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). Параметр **ImportFormatOptions** позволяет выбрать различные параметры импорта, такие как [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), и [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words позволяет настроить визуализацию результирующего документа при объединении двух документов в операции вставки или добавления с помощью свойств [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). Свойство **PageSetup** содержит все атрибуты раздела, такие как [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), и другие. Наиболее распространенным вариантом использования является установка свойства **SectionStart**, определяющего, будет ли добавленный контент отображаться на той же странице или будет разделен на новую.

{{% alert color="primary" %}}

Обратите внимание, что свойства **Section** и **PageSetup** не управляют тем, как два документа вставляются/добавляются вместе. Они позволяют только изменить внешний вид результирующего документа.

{{% /alert %}}

В следующем примере кода показано, как добавить один документ в другой, не разделяя содержимое на две страницы:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
