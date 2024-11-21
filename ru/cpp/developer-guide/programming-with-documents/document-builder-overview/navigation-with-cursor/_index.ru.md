---
title: Навигация с помощью курсора в C++
second_title: Aspose.Words для C++
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Перемещайтесь между различными узлами документа, такими как абзац, закладка или определенный символ, с помощью C++."
type: docs
weight: 10
url: /ru/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

При работе с документом, даже если он короткий или длинный, вам нужно будет перемещаться по нему. Навигация с помощью виртуального курсора представляет собой возможность перемещаться между различными узлами документа.

В коротком документе легко перемещаться по тексту, поскольку вы можете перемещать точку вставки, даже используя клавиши со стрелками на клавиатуре или щелкая мышью, чтобы найти точку вставки в нужном месте. Но если у вас большой документ с большим количеством страниц, этих базовых методов будет недостаточно.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора к различным его частям.

## Определение текущего положения курсора

Прежде чем начать процесс навигации по документу, вам нужно будет указать узел, который выбран в данный момент. Вы можете получить точное положение курсора на выбранном узле, используя свойство [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Кроме того, вместо получения текущего узла вы можете получить текущий выбранный абзац или текущий выбранный раздел, используя свойства [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) и [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Все операции вставки, которые вы выполняете с помощью [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), будут вставлены перед [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Если текущий абзац пуст или курсор установлен непосредственно перед концом абзаца, **CurrentNode** возвращает значение nullptr.

## Методы навигации по документу

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно перемещаться в нем. Aspose.Words позволяет перемещаться по документу и переходить к различным его разделам и частям – это аналогично функциональности панели навигации в Microsoft Word для перехода к странице или заголовку в документе Word без прокрутки.

Основной метод заключается в том, чтобы иметь возможность перемещать положение курсора на определенный узел в вашем документе, вы можете добиться этого, используя метод [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

В следующем примере кода показано, как переместить **DocumentBuilder** в разные узлы документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Но помимо базового метода **MoveTo**, есть и более специфичные.

### Перейдите к началу или концу документа

Вы можете перейти к началу или концу вашего документа, используя методы [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) и [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

В следующем примере кода показано, как переместить курсор в начало или конец документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Навигация с помощью закладок

Вы можете отметить место, которое хотите найти, и легко перейти к нему снова. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, присваивая закладкам уникальные названия. Вы можете перейти к закладке, используя метод [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

В следующих примерах кода показано, как переместить курсор на закладку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Перейдите к ячейкам таблицы

Вы можете перейти к ячейке таблицы, используя метод [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Этот метод позволит вам переместить курсор в любую ячейку определенной таблицы. Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или на указанный символ в ячейке с помощью метода **MoveToCell**.

В следующем примере кода показано, как переместить курсор в указанную ячейку таблицы:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Перейдите к полю

Вы можете перейти к определенному полю в вашем документе, используя метод [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Кроме того, вы можете перейти к определенному полю объединения, используя метод [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

В следующем примере кода показано, как переместить курсор конструктора документов на определенное поле:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Перейдите к верхнему или нижнему колонтитулу

Вы можете перейти к началу верхнего или нижнего колонтитула, используя метод [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

В следующем примере кода показано, как переместить курсор конструктора документов в верхний или нижний колонтитул документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Перейдите к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя методы [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) или [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или на указанный символ в абзаце с помощью метода **MoveToParagraph**.

В следующем примере кода показано, как перейти к определенному разделу и конкретному абзацу в документе:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
