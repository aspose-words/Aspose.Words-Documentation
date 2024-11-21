---
title: Включить и добавить документы
second_title: Aspose.Words для Python via .NET
articleTitle: Включить и добавить документы
linktitle: Включить и добавить документы
description: "Объедините документы в один: вставьте или добавьте документ в новый или существующий, используя поиск и замену, объединение поля, закладки или просто в конце документа. Python."
type: docs
weight: 80
url: /ru/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Иногда требуется объединить несколько документов в один. Вы можете сделать это вручную или использовать Aspose.Words Вставить или добавить функцию.

Операция вставки позволяет вставить содержимое ранее созданных документов в новый или существующий.

В свою очередь, функция приложения позволяет добавлять документ только в конце другого документа.

Эта статья объясняет, как вставить или добавить документ к другому по-разному и описывает общие свойства, которые вы можете применить при вставке или добавлении документов.

## Включить документ

Как упоминалось выше, в Aspose.Words документ представлен как дерево узлов, а операция вставки одного документа в другой заключается в копировании узлов от первого дерева документов ко второму.

Вы можете вставлять документы в различных местах по-разному. Например, вы можете вставить документ через операцию замены, поле слияния во время операции слияния или через закладку.

Вы также можете использовать [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) или [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) метод, аналогичный вставке документа в Microsoft Word, Вставить весь документ в текущую позицию курсора без предварительного импорта.

Следующий пример кода показывает, как вставить документ, используя **вставить_документ** метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Следующий пример кода показывает, как вставить документ, используя **Вставить_document_line** метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Следующие подразделы описывают варианты, в течение которых вы можете вставить один документ в другой.

### Вставить документ в Bookmark

Вы можете импортировать текстовый файл в документ и вставлять его сразу после закладки, которую вы определили в документе. Для этого создайте закладку, где вы хотите, чтобы документ был вставлен.

Следующий пример кодирования показывает, как вставить содержимое одного документа в закладку в другом документе:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Обратите внимание, что закладка не должна включать несколько абзацев или текста, которые вы хотите, чтобы они отображались в конечном итоговом документе.

{{% /alert %}}

## Добавить документ

У вас может быть случай использования, когда вам нужно включить дополнительные страницы из документа в конец существующего документа. Для этого нужно просто позвонить в [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) Способ добавления документа в конец другого документа.

{{% alert color="primary" %}}

Заметьте, что [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) Это метод уровня узла в документе. Например, можно создать абзац, задать свойства форматирования, а затем приложить его в детстве к телу с помощью [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод.

{{% /alert %}}

Следующий пример кода показывает, как добавить документ к концу другого документа:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Импорт и вставка узлов вручную

Aspose.Words позволяет автоматически вставлять и добавлять документы без каких-либо предварительных требований к импорту. Однако, если вам нужно вставить или добавить конкретный узел вашего документа, например, раздел или абзац, то сначала вам нужно импортировать этот узел вручную.

Когда вам нужно вставить или добавить один раздел или абзац к другому, вам, по сути, нужно импортировать узлы первого дерева узла документа во второй, используя [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) метод. После импорта ваших узлов, вы должны использовать [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) Способ вставки нового узла после/до опорного узла. Это позволяет настроить процесс вставки, импортируя узлы из документа и вставляя его в заданные позиции.

Вы также можете использовать [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) способ добавления нового указанного узла в конец списка дочерних узлов, например, если вы хотите добавить контент на уровне абзаца вместо уровня раздела.

Следующий пример кода показывает, как вручную импортировать узлы и вставлять их после конкретного узла с помощью [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) метод:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Импорт создает новый узел, который является копией исходного узла и подходит для вставки в документ назначения.

{{% /alert %}}

Контент импортируется в раздел документа назначения по разделам, что означает, что настройки, такие как настройка страницы и заголовки или нижние колонтитулы, сохраняются во время импорта. Также полезно отметить, что вы можете определить параметры форматирования при вставке или добавлении документа, чтобы указать, как два документа соединены вместе.

## Общие свойства для включения и добавления документов

Оба [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) и [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) Методы принимают [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) и [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) в качестве входных параметров. The [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) позволяет контролировать процесс объединения форматирования документов при импорте контента из одного документа в другой путем выбора различных режимов форматирования, таких как: [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), и [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). The [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) позволяет выбрать различные варианты импорта, такие как: [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), и [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words позволяет настроить визуализацию полученного документа, когда два документа добавляются вместе в операцию вставки или добавления, используя [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). The [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) свойство содержит все атрибуты раздела, такие как <p notrans="<p notrans=" [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)"=""></p>"> [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), и другие. Наиболее распространенным вариантом использования является установка [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) свойство определять, появится ли добавленный контент на той же странице или разделится на новый.

{{% alert color="primary" %}}

Обратите внимание, что [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) Не контролируйте, как два документа вставлены / добавлены вместе. Они позволяют только изменить внешний вид документа.

{{% /alert %}}

Следующий пример кода показывает, как добавить один документ к другому, сохраняя при этом контент от разделения на две страницы:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
