---
title: Навигация с помощью Cursor in C#
second_title: Aspose.Words для .NET
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Навигация между различными узлами в документе, такими как абзац, закладка или конкретный символ, используя C#."
type: docs
weight: 10
url: /ru/net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Во время работы с документом, даже если он короткий или длинный, вам нужно будет перемещаться по документу. Навигация с виртуальным курсором представляет собой возможность навигации между различными узлами в документе.

В коротком документе перемещение по документу просто, так как вы можете перемещать точку вставки даже с помощью клавиш со стрелками клавиатуры или щелкнув мышью, чтобы найти точку вставки, где вы хотите. Но как только у вас есть большой документ, который имеет много страниц, эти основные методы будут недостаточными.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора в разные его части.

## Обнаружение текущей позиции курсора

Прежде чем начать процесс навигации по документу, вам нужно будет получить выбранный в настоящее время узел. Вы можете получить точное положение курсора на выбранном узле, используя [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) собственность. Кроме того, вместо получения текущего узла вы можете получить выбранный в настоящее время абзац или выбранный в настоящее время раздел, используя [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) и [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) свойств.

Любые операции вставки, которые вы выполняете, используя [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Он будет вставлен перед [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Если текущий абзац пуст или курсор расположен непосредственно перед концом абзаца, **CurrentNode** Возвращает нуль.

## Методы навигации в документе

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно в нем двигаться. Aspose.Words позволяет перемещаться по документу и перемещаться по его различным разделам и частям – это аналогично функциональности навигационной панели Microsoft Word Перейти на страницу или заголовок в документе Word без прокрутки.

Основной метод заключается в том, чтобы иметь возможность перемещать положение курсора к определенному узлу в вашем документе, вы можете достичь этого, используя [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) метод.

Следующий пример кода показывает, как перемещать **DocumentBuilder** Для разных узлов в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Помимо основного **MoveTo** Метод, есть более конкретные.

### Переход к началу или концу документа

Вы можете перейти к началу или концу документа, используя [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) и [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) методы.

Следующий пример кода показывает, как перемещать положение курсора в начало или конец документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Навигация с закладками

Вы можете пометить место, которое хотите найти, и легко переехать туда. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, идентифицируя закладки с уникальными именами. Вы можете перейти к закладке, используя [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) метод.

Следующие примеры кода показывают, как перемещать позицию курсора в закладку:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Навигация к столовым клеткам

Вы можете перейти в столовую камеру, используя [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) метод. Этот метод позволит вам перемещать курсор в любую ячейку в определенной таблице. Кроме того, можно указать индекс для перемещения курсора в любое положение или заданный символ в ячейке внутри **MoveToCell** метод.

Следующий пример кода показывает, как перемещать положение курсора в определенную ячейку таблицы:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Навигация в поле

Вы можете перейти в определенное поле в вашем документе, используя [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) метод. Кроме того, вы можете перейти к определенному полю слияния, используя [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) метод.

Следующий пример кода показывает, как переместить курсор конструктора документов в определенное поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Навигация к заголовку или подносу

Вы можете перейти к началу заголовка или футера, используя [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) метод

Следующий пример кода показывает, как перемещать курсор сборщика документов в заголовок или нижний колонтитул документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Перейти к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) или [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) методы. Кроме того, можно указать индекс для перемещения курсора в любую позицию или заданный символ в абзаце внутри **MoveToParagraph** метод.

Следующий пример кода показывает, как перейти к определенному разделу и определенному абзацу в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
