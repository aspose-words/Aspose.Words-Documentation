---
title: Навигация с помощью курсора в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Перемещайтесь между различными узлами документа, такими как абзац, закладка или определенный символ, используя Python."
type: docs
weight: 10
url: /ru/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

При работе с документом, даже если он короткий или длинный, вам нужно будет перемещаться по нему. Навигация с помощью виртуального курсора представляет собой возможность перемещаться между различными узлами документа.

В коротком документе легко перемещаться по тексту, поскольку вы можете перемещать точку вставки, даже используя клавиши со стрелками на клавиатуре или щелкая мышью, чтобы найти точку вставки в нужном месте. Но если у вас большой документ с большим количеством страниц, этих базовых методов будет недостаточно.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора к различным его частям.

## Определение текущего положения курсора

Прежде чем начать процесс навигации по документу, вам нужно будет указать узел, который выбран в данный момент. Вы можете получить точное положение курсора на выбранном узле, используя свойство [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Кроме того, вместо получения текущего узла вы можете получить текущий выбранный абзац или текущий выбранный раздел, используя свойства [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) и [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Все операции вставки, которые вы выполняете с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), будут вставлены перед [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Если текущий абзац пуст или курсор установлен непосредственно перед концом абзаца, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) возвращает значение None.

## Методы навигации по документу

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно перемещаться в нем. Aspose.Words позволяет перемещаться по документу и переходить к его различным разделам и частям – это аналогично функциональности панели навигации в Microsoft Word для перехода к странице или заголовку в документе Word без прокрутки.

Основной метод заключается в том, чтобы иметь возможность перемещать положение курсора на определенный узел в вашем документе, вы можете добиться этого, используя метод [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

В следующем примере кода показано, как переместить [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) в разные узлы документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Но помимо базового метода [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/), есть и более специфичные.

### Перейдите к началу или концу документа

Вы можете перейти к началу или концу вашего документа, используя методы [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) и [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

В следующем примере кода показано, как переместить курсор в начало или конец документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Навигация с помощью закладок

Вы можете отметить место, которое хотите найти, и легко перейти к нему снова. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, присваивая закладкам уникальные названия. Вы можете перейти к закладке, используя метод [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

В следующих примерах кода показано, как переместить курсор на закладку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Перейдите к ячейкам таблицы

Вы можете перейти к ячейке таблицы, используя метод [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Этот метод позволит вам переместить курсор в любую ячейку определенной таблицы. Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или на указанный символ в ячейке с помощью метода [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

В следующем примере кода показано, как переместить курсор в указанную ячейку таблицы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Перейдите к полю

Вы можете перейти к определенному полю в вашем документе, используя метод [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Кроме того, вы можете перейти к определенному полю объединения, используя метод [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

В следующем примере кода показано, как переместить курсор конструктора документов на определенное поле:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Перейдите к верхнему или нижнему колонтитулу

Вы можете перейти к началу верхнего или нижнего колонтитула, используя метод [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/).

В следующем примере кода показано, как переместить курсор конструктора документов в верхний или нижний колонтитул документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Перейдите к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя методы [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) или [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или на указанный символ в абзаце с помощью метода [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

В следующем примере кода показано, как перейти к определенному разделу и конкретному абзацу в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
