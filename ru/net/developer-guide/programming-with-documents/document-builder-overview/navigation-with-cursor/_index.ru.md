---
title: Навигация с помощью курсора в C#
second_title: Aspose.Words для .NET
articleTitle: Навигация с помощью курсора
linktitle: Навигация с помощью курсора
description: "Перемещайтесь между различными узлами документа, такими как абзац, закладка или определенный символ, используя C#."
type: docs
weight: 10
url: /ru/net/navigation-with-cursor/
---

При работе с документом, даже если он короткий или длинный, вам придется перемещаться по документу. Навигация с помощью виртуального курсора представляет собой возможность перемещаться между различными узлами документа.

Перемещаться по документу в коротком документе очень просто: точку вставки можно перемещать даже с помощью клавиш со стрелками на клавиатуре или щелчком мыши, чтобы расположить точку вставки в любом месте. Но если у вас большой документ, состоящий из множества страниц, этих базовых методов будет недостаточно.

В этой статье объясняется, как перемещаться по документу и перемещаться с помощью виртуального курсора к различным его частям.

## Определение текущей позиции курсора

Прежде чем начать процесс навигации по документу, вам необходимо получить узел, который выбран в данный момент. Вы можете получить точное положение курсора в выбранном узле, используя свойство [CurrentNode](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/currentnode/). Кроме того, вместо получения текущего узла вы можете получить выбранный в данный момент абзац или раздел, используя свойства [CurrentParagraph](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/currentparagraph/) и [CurrentSection](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/currentsection/).

Любые операции вставки, которые вы выполняете с использованием [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/), будут вставлены перед [CurrentNode](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/currentnode/). Если текущий абзац пуст или курсор расположен непосредственно перед концом абзаца, **CurrentNode** возвращает ноль.

## Навигация по методам в документе

Когда вы редактируете текст, важно знать, как перемещаться по документу и куда именно в нем перемещаться. Aspose.Words позволяет перемещаться по документу и переходить к различным его разделам и частям — это аналогично функционалу Панели навигации в Microsoft Word по переходу на страницу или заголовок в документе Word без прокрутки.

Основной метод — иметь возможность перемещать позицию курсора в определенный узел вашего документа. Этого можно добиться, используя метод [MoveTo](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/moveto/).

В следующем примере кода показано, как переместить **DocumentBuilder** в разные узлы документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Но кроме основного метода **MoveTo** есть и более специфические.

### Переход к началу или концу документа

Вы можете перейти к началу или концу документа, используя методы [MoveToDocumentStart](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetodocumentstart/) и [MoveToDocumentEnd](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetodocumentend/).

В следующем примере кода показано, как переместить позицию курсора в начало или конец документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Навигация с помощью закладок

Вы можете отметить место, которое хотите найти, и легко перейти к нему снова. Вы можете вставить в документ столько закладок, сколько захотите, а затем перемещаться по ним, определяя закладки с уникальными именами. Перейти к закладке можно с помощью метода [MoveToBookmark](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

В следующих примерах кода показано, как переместить позицию курсора на закладку:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Перейдите к ячейкам таблицы

Вы можете перейти к ячейке таблицы, используя метод [MoveToCell](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetocell/). Этот метод позволит вам переместить курсор в любую ячейку определенной таблицы. Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или указанный символ в ячейке внутри метода **MoveToCell**.

В следующем примере кода показано, как переместить позицию курсора в указанную ячейку таблицы:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Перейти к полю

Вы можете перейти к определенному полю в документе, используя метод [MoveToField](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetofield/). Кроме того, вы можете перейти к определенному полю слияния, используя метод [MoveToMergeField](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

В следующем примере кода показано, как переместить курсор построителя документов в определенное поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Перейдите к верхнему или нижнему колонтитулу

Вы можете перейти к началу верхнего или нижнего колонтитула, используя метод [MoveToHeaderFooter](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetoheaderfooter/)

В следующем примере кода показано, как переместить курсор построителя документов в верхний или нижний колонтитул документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Переход к разделу или абзацу

Вы можете перейти к определенному разделу или абзацу, используя методы [MoveToParagraph](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetoparagraph/) или [MoveToSection](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetosection/). Кроме того, вы можете указать индекс для перемещения курсора в любую позицию или указанный символ в абзаце внутри метода **MoveToParagraph**.

В следующем примере кода показано, как перейти к определенному разделу и определенному абзацу в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
