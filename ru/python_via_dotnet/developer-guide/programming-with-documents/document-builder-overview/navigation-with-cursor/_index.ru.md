---
title: Навигация с помощью Cursor in Python
second_title: Aspose.Words для Python via .NET
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Навигация между различными узлами в документе, таком как абзац, закладка или конкретный символ, используя Python."
type: docs
weight: 10
url: /ru/python-net/navigation-with-cursor/
---

Во время работы с документом, даже если он короткий или длинный, вам нужно будет перемещаться по документу. Навигация с виртуальным курсором представляет собой возможность навигации между различными узлами в документе.

В коротком документе перемещение по документу просто, так как вы можете перемещать точку вставки даже с помощью клавиш со стрелками клавиатуры или щелкнув мышью, чтобы найти точку вставки, где вы хотите. Но как только у вас есть большой документ, который имеет много страниц, эти основные методы будут недостаточными.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора в разные его части.

## Обнаружение текущей позиции курсора

Прежде чем начать процесс навигации по документу, вам нужно будет получить выбранный в настоящее время узел. Вы можете получить точное положение курсора на выбранном узле, используя [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) собственность. Кроме того, вместо получения текущего узла вы можете получить выбранный в настоящее время абзац или выбранный в настоящее время раздел, используя [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) и [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) свойств.

Любые операции вставки, которые вы выполняете, используя [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Он будет вставлен перед [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Если текущий абзац пуст или курсор расположен непосредственно перед концом абзаца, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) Не возвращает.

## Методы навигации в документе

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно в нем двигаться. Aspose.Words позволяет перемещаться по документу и перемещаться по его различным разделам и частям – это аналогично функциональности навигационной панели Microsoft Word Перейти на страницу или заголовок в документе Word без прокрутки.

Основной метод заключается в том, чтобы иметь возможность перемещать положение курсора к определенному узлу в вашем документе, вы можете достичь этого, используя [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) метод.

Следующий пример кода показывает, как перемещать [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Для разных узлов в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Помимо основного [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) Метод, есть более конкретные.

### Переход к началу или концу документа

Вы можете перейти к началу или концу документа, используя [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) и [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) методы.

Следующий пример кода показывает, как перемещать положение курсора в начало или конец документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Навигация с закладками

Вы можете пометить место, которое хотите найти, и легко переехать туда. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, идентифицируя закладки с уникальными именами. Вы можете перейти к закладке, используя [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) метод.

Следующие примеры кода показывают, как перемещать позицию курсора в закладку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Навигация к столовым клеткам

Вы можете перейти в столовую камеру, используя [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) метод. Этот метод позволит вам перемещать курсор в любую ячейку в определенной таблице. Кроме того, можно указать индекс для перемещения курсора в любое положение или заданный символ в ячейке внутри [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) метод.

Следующий пример кода показывает, как перемещать положение курсора в определенную ячейку таблицы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Навигация в поле

Вы можете перейти в определенное поле в вашем документе, используя [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) метод. Кроме того, вы можете перейти к определенному полю слияния, используя [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) метод.

Следующий пример кода показывает, как переместить курсор конструктора документов в определенное поле:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Навигация к заголовку или подносу

Вы можете перейти к началу заголовка или футера, используя [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) метод

Следующий пример кода показывает, как перемещать курсор сборщика документов в заголовок или нижний колонтитул документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Перейти к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) или [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) методы. Кроме того, можно указать индекс для перемещения курсора в любую позицию или заданный символ в абзаце внутри [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) метод.

Следующий пример кода показывает, как перейти к определенному разделу и определенному абзацу в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}