---
title: Навигация с помощью курсора в Python
second_title: Aspose.Words на Python via .NET
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Перемещайтесь между различными узлами документа, такими как абзац, закладка или определенный символ, используя Python."
type: docs
weight: 10
url: /ru/python-net/navigation-with-cursor/
---

При работе с документом, даже если он короткий или длинный, вам придется перемещаться по документу. Навигация с помощью виртуального курсора представляет собой возможность перемещаться между различными узлами документа.

Перемещаться по документу в коротком документе очень просто: точку вставки можно перемещать даже с помощью клавиш со стрелками на клавиатуре или щелчком мыши, чтобы расположить точку вставки в любом месте. Но если у вас большой документ, состоящий из множества страниц, этих базовых методов будет недостаточно.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора к различным его частям.

## Определение текущей позиции курсора

Прежде чем начать процесс навигации по документу, вам необходимо получить узел, который выбран в данный момент. Вы можете получить точное положение курсора в выбранном узле, используя свойство [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Кроме того, вместо получения текущего узла вы можете получить выбранный в данный момент абзац или раздел, используя свойства [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) и [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Любые операции вставки, которые вы выполняете с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), будут вставлены перед [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Если текущий абзац пуст или курсор расположен непосредственно перед концом абзаца, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) возвращает None.

## Навигация по методам в документе

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно в нем перемещаться. Aspose.Words позволяет перемещаться по документу и переходить к различным его разделам и частям — это аналогично функционалу Панели навигации в Microsoft Word по переходу на страницу или заголовок в документе Word без прокрутки.

Основной метод — иметь возможность перемещать позицию курсора в определенный узел вашего документа. Этого можно добиться с помощью метода [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

В следующем примере кода показано, как переместить [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) в разные узлы документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Но кроме основного метода [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) есть и более конкретные.

### Переход к началу или концу документа

Вы можете перейти к началу или концу документа, используя методы [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) и [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

В следующем примере кода показано, как переместить позицию курсора в начало или конец документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Навигация с помощью закладок

Вы можете отметить место, которое хотите найти, и легко перейти к нему снова. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, определяя закладки с уникальными именами. Перейти к закладке можно с помощью метода [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

В следующих примерах кода показано, как переместить позицию курсора на закладку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Перейдите к ячейкам таблицы

Вы можете перейти к ячейке таблицы, используя метод [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Этот метод позволит вам переместить курсор в любую ячейку определенной таблицы. Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или указанный символ в ячейке внутри метода [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

В следующем примере кода показано, как переместить позицию курсора в указанную ячейку таблицы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Перейти к полю

Вы можете перейти к определенному полю в документе, используя метод [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Кроме того, вы можете перейти к определенному полю слияния, используя метод [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

В следующем примере кода показано, как переместить курсор построителя документов в определенное поле:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Перейдите к верхнему или нижнему колонтитулу

Вы можете перейти к началу верхнего или нижнего колонтитула, используя метод [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

В следующем примере кода показано, как переместить курсор построителя документов в верхний или нижний колонтитул документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Переход к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя методы [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) или [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или указанный символ в абзаце внутри метода [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

В следующем примере кода показано, как перейти к определенному разделу и определенному абзацу в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}