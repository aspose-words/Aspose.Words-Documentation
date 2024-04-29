---
title: Навигация с помощью Cursor in Java
second_title: Aspose.Words для Java
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Навигация между различными узлами в документе, такими как абзац, закладка или конкретный символ, используя Java."
type: docs
weight: 5
url: /ru/java/navigation-with-cursor/
---

Во время работы с документом, даже если он короткий или длинный, вам нужно будет перемещаться по документу. Навигация с виртуальным курсором представляет собой возможность навигации между различными узлами в документе.

В коротком документе перемещение по документу просто, так как вы можете перемещать точку вставки даже с помощью клавиш со стрелками клавиатуры или щелкнув мышью, чтобы найти точку вставки, где вы хотите. Но как только у вас есть большой документ, который имеет много страниц, эти основные методы будут недостаточными.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора в разные его части.

## Обнаружение текущей позиции курсора

Прежде чем начать процесс навигации по документу, вам нужно будет получить выбранный в настоящее время узел. Вы можете получить точное положение курсора на выбранном узле, используя [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) собственность. Кроме того, вместо получения текущего узла вы можете получить выбранный в настоящее время абзац или выбранный в настоящее время раздел, используя [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) и [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) свойств.

Любые операции вставки, которые вы выполняете, используя [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Он будет вставлен перед [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Если текущий абзац пуст или курсор расположен непосредственно перед концом абзаца, **CurrentNode** Возвращает нуль.

## Методы навигации в документе

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно в нем двигаться. Aspose.Words позволяет перемещаться по документу и перемещаться по его различным разделам и частям – это аналогично функциональности навигационной панели Microsoft Word Перейти на страницу или заголовок в документе Word без прокрутки.

Основной метод заключается в том, чтобы иметь возможность перемещать положение курсора к определенному узлу в вашем документе, вы можете достичь этого, используя [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) метод.

Следующий пример кода показывает, как перемещать **DocumentBuilder** Для разных узлов в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Помимо основного **MoveTo** Метод, есть более конкретные.

### Переход к началу или концу документа

Вы можете перейти к началу или концу документа, используя [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) и [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) методы.

Следующий пример кода показывает, как перемещать положение курсора в начало или конец документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Навигация с закладками

Вы можете пометить место, которое хотите найти, и легко переехать туда. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, идентифицируя закладки с уникальными именами. Вы можете перейти к закладке, используя [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) метод.

Следующие примеры кода показывают, как перемещать позицию курсора в закладку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Навигация к столовым клеткам

Вы можете перейти в столовую камеру, используя [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) метод. Этот метод позволит вам перемещать курсор в любую ячейку в определенной таблице. Кроме того, можно указать индекс для перемещения курсора в любое положение или заданный символ в ячейке внутри **MoveToCell** метод.

Следующий пример кода показывает, как перемещать положение курсора в определенную ячейку таблицы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Навигация в поле

Вы можете перейти в определенное поле в вашем документе, используя [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) метод. Кроме того, вы можете перейти к определенному полю слияния, используя [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) метод.

Следующий пример кода показывает, как переместить курсор конструктора документов в определенное поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Навигация к заголовку или подносу

Вы можете перейти к началу заголовка или футера, используя [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) метод

Следующий пример кода показывает, как переместить курсор конструктора документов в заголовок или нижний колонтитул документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Перейти к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) или [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) методы. Кроме того, можно указать индекс для перемещения курсора в любую позицию или заданный символ в абзаце в пределах **MoveToParagraph** метод.

Следующий пример кода показывает, как перейти к определенному разделу и определенному абзацу в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
