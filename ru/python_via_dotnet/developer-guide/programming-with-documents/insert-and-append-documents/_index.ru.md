---
title: Вставка и добавление документов
second_title: Aspose.Words для Python via .NET
articleTitle: Вставка и добавление документов
linktitle: Вставка и добавление документов
description: "Объедините документы в один: вставьте или добавьте документ в новый или существующий с помощью поиска и замены, поля слияния, закладки или просто в конце документа в Python."
type: docs
weight: 80
url: /ru/python-net/insert-and-append-documents/
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или использовать функцию вставки или добавления Aspose.Words.

Операция вставки позволяет вставить содержимое ранее созданных документов в новый или существующий.

В свою очередь функция добавления позволяет добавлять документ только в конец другого документа.

В этой статье объясняется, как различными способами вставлять или добавлять один документ в другой, а также описываются общие свойства, которые можно применять при вставке или добавлении документов.

## Вставить документ

Как говорилось выше, в Aspose.Words документ представлен в виде дерева узлов, а операция вставки одного документа в другой заключается в копировании узлов из первого дерева документа во второе.

Вы можете вставлять документы в разные места разными способами. Например, вы можете вставить документ с помощью операции замены, поля слияния во время операции слияния или с помощью закладки.

Вы также можете использовать метод [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) или [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), который аналогичен вставке документа в Microsoft Word, чтобы вставить весь документ в текущую позицию курсора без предварительного импорта.

В следующем примере кода показано, как вставить документ с помощью метода **вставить_документ**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

В следующем примере кода показано, как вставить документ с помощью метода **Insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

В следующих подразделах описаны параметры, с помощью которых вы можете вставить один документ в другой.

### Вставить документ в закладку

Вы можете импортировать текстовый файл в документ и вставить его сразу после закладки, которую вы определили в документе. Для этого создайте абзац с закладкой, куда вы хотите вставить документ.

В следующем примере кода показано, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна включать в себя несколько абзацев или текста, которые вы хотите, чтобы они отображались в конечном конечном документе.

{{% /alert %}}

## Добавить документ

У вас может быть вариант использования, когда вам нужно включить дополнительные страницы из документа в конец существующего документа. Для этого вам просто нужно вызвать метод [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/), чтобы добавить документ в конец другого.

{{% alert color="primary" %}}

Обратите внимание, что [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) — это метод уровня узла в документе. Например, вы можете создать абзац, установить свойства форматирования, а затем добавить его в качестве дочернего элемента к телу с помощью метода [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

В следующем примере кода показано, как добавить документ в конец другого документа:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Импортируйте и вставляйте узлы вручную

Aspose.Words позволяет автоматически вставлять и добавлять документы без каких-либо предварительных требований к импорту. Однако если вам нужно вставить или добавить определенный узел вашего документа, например раздел или абзац, сначала вам необходимо импортировать этот узел вручную.

Когда вам нужно вставить или добавить один раздел или абзац в другой, вам по сути необходимо импортировать узлы первого дерева узлов документа во второе, используя метод [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). После импорта узлов вам необходимо использовать метод [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/), чтобы вставить новый узел после/перед опорным узлом. Это позволяет вам настроить процесс вставки, импортируя узлы из документа и вставляя их в заданные позиции.

Вы также можете использовать метод [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/), чтобы добавить новый указанный узел в конец списка дочерних узлов, например, если вы хотите добавить содержимое на уровне абзаца, а не на уровне раздела.

В следующем примере кода показано, как вручную импортировать узлы и вставлять их после определенного узла с помощью метода [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

При импорте создается новый узел, который является копией исходного узла и подходит для вставки в целевой документ.

{{% /alert %}}

Содержимое импортируется в целевой документ раздел за разделом, а это означает, что настройки, такие как настройки страницы, верхние и нижние колонтитулы, сохраняются во время импорта. Также полезно отметить, что вы можете определить параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа объединяются.

## Общие свойства для вставки и добавления документов

Оба метода [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) и [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) принимают [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) в качестве входных параметров. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) позволяет вам контролировать, как форматирование документа объединяется при импорте содержимого из одного документа в другой, выбирая различные режимы форматирования, такие как [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) и [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) позволяет вам выбирать различные параметры импорта, такие как [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/)., [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) и [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words позволяет настроить визуализацию результирующего документа, когда два документа добавляются вместе в операции вставки или добавления с помощью [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). Свойство [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) содержит все атрибуты раздела, такие как [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), и другие. Наиболее распространенный вариант использования — установка свойства [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), чтобы определить, будет ли добавленный контент отображаться на той же странице или разделиться на новую.

{{% alert color="primary" %}}

Обратите внимание, что [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) не контролируют вставку/добавление двух документов вместе. Они позволяют вам только изменить внешний вид результирующего документа.

{{% /alert %}}

В следующем примере кода показано, как добавить один документ к другому, не допуская разделения содержимого на две страницы:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
