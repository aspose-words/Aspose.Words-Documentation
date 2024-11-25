---
title: Вставка и добавление документов
second_title: Aspose.Words для Python via .NET
articleTitle: Вставка и добавление документов
linktitle: Вставка и добавление документов
description: "Объединяйте документы в один: вставляйте или добавляйте документ в новый или существующий с помощью функции поиска и замены, поля объединения, закладки или просто в конце документа с помощью Python."
type: docs
weight: 80
url: /ru/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или воспользоваться функцией вставки или добавления Aspose.Words.

Операция вставки позволяет вставлять содержимое ранее созданных документов в новый или существующий.

В свою очередь, функция добавления позволяет добавлять документ только в конце другого документа.

В этой статье объясняется, как вставлять или присоединять один документ к другому различными способами, а также описываются общие свойства, которые можно применять при вставке или добавлении документов.

## Вставка документа

Как упоминалось выше, в Aspose.Words документ представлен в виде дерева узлов, и операция вставки одного документа в другой заключается в копировании узлов из первого дерева документов во второе.

Вы можете вставлять документы в различные места различными способами. Например, вы можете вставить документ с помощью операции замены, поля объединения во время операции объединения или с помощью закладки.

Вы также можете использовать метод [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) или [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), который аналогичен вставке документа в Microsoft Word, чтобы вставить весь документ в текущее положение курсора без предварительного импорта.

В следующем примере кода показано, как вставить документ с помощью метода **insert_document**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

В следующем примере кода показано, как вставить документ с помощью метода **insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

В следующих подразделах описаны параметры, с помощью которых вы можете вставлять один документ в другой.

### Вставьте документ в закладку

Вы можете импортировать текстовый файл в документ и вставить его сразу после закладки, которую вы определили в документе. Для этого создайте абзац с закладкой, в который вы хотите вставить документ.

В следующем примере кодирования показано, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна содержать несколько абзацев или текста, которые вы хотите, чтобы они появились в вашем окончательном итоговом документе.

{{% /alert %}}

## Добавление документа

Возможно, у вас есть вариант использования, когда вам нужно добавить дополнительные страницы из документа в конец существующего документа. Для этого вам просто нужно вызвать метод [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/), чтобы добавить документ в конец другого документа.

{{% alert color="primary" %}}

Обратите внимание, что [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) - это метод на уровне узла в документе. Например, вы можете создать абзац, задать свойства форматирования, а затем добавить его как дочерний элемент в текст, используя метод [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

В следующем примере кода показано, как добавить документ в конец другого документа:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Импортируйте и вставляйте узлы вручную

Aspose.Words позволяет автоматически вставлять и дополнять документы без каких-либо предварительных требований к импорту. Однако, если вам нужно вставить или дополнить определенный узел вашего документа, например раздел или абзац, сначала вам нужно импортировать этот узел вручную.

Когда вам нужно вставить или дополнить один раздел или абзац другим, вам, по сути, необходимо импортировать узлы первого дерева узлов документа во второе, используя метод [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). После импорта узлов вам необходимо использовать метод [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/), чтобы вставить новый узел после/перед ссылочным узлом. Это позволяет настроить процесс вставки, импортируя узлы из документа и вставляя их в заданные позиции.

Вы также можете использовать метод [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/), чтобы добавить новый указанный узел в конец списка дочерних узлов, например, если вы хотите добавить содержимое на уровне абзаца, а не на уровне раздела.

В следующем примере кода показано, как вручную импортировать узлы и вставлять их после определенного узла, используя метод [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

При импорте создается новый узел, который является копией исходного узла и подходит для вставки в целевой документ.

{{% /alert %}}

Содержимое импортируется в целевой документ по разделам, что означает, что при импорте сохраняются такие параметры, как настройка страницы и верхние и нижние колонтитулы. Также полезно отметить, что вы можете задать параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа будут объединены.

## Общие свойства для вставки и добавления документов

Оба метода [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) и [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) принимают [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) в качестве входных параметров. Функция [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) позволяет управлять объединением форматирования документов при импорте содержимого из одного документа в другой, выбирая различные режимы форматирования, такие как [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) и [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). Параметр [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) позволяет выбрать различные параметры импорта, такие как [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), и [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words позволяет настроить визуализацию результирующего документа при объединении двух документов в операции вставки или добавления с помощью [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). Свойство [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) содержит все атрибуты раздела, такие как [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), и другие. Наиболее распространенным вариантом использования является установка свойства [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), определяющего, будет ли добавленный контент отображаться на той же странице или будет разделен на новую.

{{% alert color="primary" %}}

Обратите внимание, что [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) не управляют тем, как два документа вставляются/добавляются друг к другу. Они позволяют только изменить внешний вид результирующего документа.

{{% /alert %}}

В следующем примере кода показано, как добавить один документ в другой, не разделяя содержимое на две страницы:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
