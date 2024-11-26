---
title: Навигация с помощью курсора в Java
second_title: Aspose.Words для Java
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Перемещайтесь между различными узлами документа, такими как абзац, закладка или определенный символ, используя Java."
type: docs
weight: 5
url: /ru/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

При работе с документом, даже если он короткий или длинный, вам нужно будет перемещаться по нему. Навигация с помощью виртуального курсора представляет собой возможность перемещаться между различными узлами документа.

В коротком документе легко перемещаться по тексту, поскольку вы можете перемещать точку вставки, даже используя клавиши со стрелками на клавиатуре или щелкая мышью, чтобы найти точку вставки в нужном месте. Но если у вас большой документ с большим количеством страниц, этих базовых методов будет недостаточно.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора к различным его частям.

## Определение текущего положения курсора

Прежде чем начать процесс навигации по документу, вам нужно будет указать узел, который выбран в данный момент. Вы можете получить точное положение курсора на выбранном узле, используя свойство [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). Кроме того, вместо получения текущего узла вы можете получить текущий выбранный абзац или текущий выбранный раздел, используя свойства [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) и [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

Все операции вставки, которые вы выполняете с помощью [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), будут вставлены перед [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Если текущий абзац пуст или курсор установлен непосредственно перед концом абзаца, **CurrentNode** возвращает значение null.

## Методы навигации по документу

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно перемещаться в нем. Aspose.Words позволяет перемещаться по документу и переходить к его различным разделам и частям – это аналогично функциональности панели навигации в Microsoft Word для перехода к странице или заголовку в документе Word без прокрутки.

Основной метод заключается в том, чтобы иметь возможность перемещать положение курсора на определенный узел в вашем документе, вы можете добиться этого, используя метод [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

В следующем примере кода показано, как переместить **DocumentBuilder** в разные узлы документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Но помимо базового метода **MoveTo**, есть и более специфичные.

### Перейдите к началу или концу документа

Вы можете перейти к началу или концу вашего документа, используя методы [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) и [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

В следующем примере кода показано, как переместить курсор в начало или конец документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Навигация с помощью закладок

Вы можете отметить место, которое хотите найти, и легко перейти к нему снова. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, присваивая закладкам уникальные названия. Вы можете перейти к закладке, используя метод [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

В следующих примерах кода показано, как переместить курсор на закладку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Перейдите к ячейкам таблицы

Вы можете перейти к ячейке таблицы, используя метод [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). Этот метод позволит вам переместить курсор в любую ячейку определенной таблицы. Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или на указанный символ в ячейке с помощью метода **MoveToCell**.

В следующем примере кода показано, как переместить курсор в указанную ячейку таблицы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Перейдите к полю

Вы можете перейти к определенному полю в вашем документе, используя метод [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Кроме того, вы можете перейти к определенному полю объединения, используя метод [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

В следующем примере кода показано, как переместить курсор конструктора документов на определенное поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Перейдите к верхнему или нижнему колонтитулу

Вы можете перейти к началу верхнего или нижнего колонтитула, используя метод [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).

В следующем примере кода показано, как переместить курсор конструктора документов в верхний или нижний колонтитул документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Перейдите к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя методы [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) или [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или на указанный символ в абзаце с помощью метода **MoveToParagraph**.

В следующем примере кода показано, как перейти к определенному разделу и конкретному абзацу в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
