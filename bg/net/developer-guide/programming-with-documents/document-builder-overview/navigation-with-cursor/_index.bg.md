---
title: Навигация с курсор в C#
second_title: Aspose.Words вместо .NET
articleTitle: Навигация с курсора
linktitle: Навигация с курсора
description: "Навигация между различни възли в рамките на документ, като например параграф, отметки, или специфичен характер, използвайки C#."
type: docs
weight: 10
url: /bg/net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Докато работите с документ, дори и да е кратък или дълъг, ще трябва да се ориентирате чрез вашия документ. Навигацията с виртуален курсор представлява способността за навигация между различни възли в документ.

В рамките на кратък документ, преместване около в документ е лесно, тъй като можете да преместите точката за вмъкване дори с помощта на клавишите със стрелки на клавиатурата или като кликнете върху мишката, за да намерите точката за вмъкване, където искате. Но след като имате голям документ, който има много страници, тези основни техники ще бъдат недостатъчни.

Тази статия обяснява как да се движите в документ и да се движите с виртуален курсор към различни части от него.

## Откриване на текущата позиция на курсора

Преди да започнете процеса на навигация чрез вашия документ, ще трябва да получите възела, който в момента е избран. Можете да получите точната позиция на курсора в избран възел, като използвате [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) собственост. В допълнение, вместо да получите текущия възел, можете да получите текущо избрания параграф или текущо избрания раздел чрез използване на [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) както и [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) имоти.

Всички операции по вмъкване, които извършвате с помощта на [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) ще бъде поставен преди [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Когато настоящият параграф е празен или курсорът е разположен точно преди края на параграфа, **CurrentNode** Връща се нула.

## Навигация на методите в документ

Когато редактирате текст, важно е да знаете как да навигирате вашия документ и къде точно да се движите в него. Aspose.Words Позволява ви да се движите в документ и да се движите към различните си секции и части, това е подобно на функционалността на Навигационната пана в Microsoft Word да отидете на страница или заглавие в документ на Word без превъртане.

Основният метод е да можете да преместите позицията на курсора към определен възел във вашия документ, можете да постигнете това чрез използване на [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) метод.

Следният пример с код показва как да преместите **DocumentBuilder** до различни възли в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Но освен основното **MoveTo** метод, има по-конкретни такива.

### Навигация към начало или край на документ

Можете да отидете в началото или края на вашия документ с помощта на [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) както и [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) методи.

Следният пример за код показва как да се премести позицията на курсора в началото или края на документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Навигация с отметки

Можете да маркирате място, което искате да намерите и да се преместите отново. Можете да въведете колкото се може повече отметки във вашия документ, колкото искате, и след това да преминете през тях, като идентифицирате отметките с уникални имена. Можете да преминете към отметки с помощта на [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) метод.

Следните примери за код показват как да преместите курсора в отметки:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Навигация на клетките на таблицата

Можете да се преместите в клетка на маса с помощта на [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) метод. Този метод ще ви позволи да навигирате курсора си във всяка клетка в определена таблица. В допълнение, можете да посочите индекс за преместване на курсора на всяка позиция или определен символ в клетка в рамките на **MoveToCell** метод.

Следният пример за код показва как да се премести позицията на курсора в определена таблица:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Навигация в поле

Можете да преминете към определено поле във вашия документ чрез [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) метод. В допълнение, можете да преминете към определено сливане поле чрез използване на [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) метод.

Следният пример за код показва как да преместите курсора на строителя на документи в определено поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Навигация към заглавна част или стъпало

Можете да преминете към началото на заглавна част или стъпало чрез използване на [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) метод

Следният пример за код показва как да преместите курсора на документа към заглавна част на документа или стъпало:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Навигация на раздел или параграф

Можете да преминете към определен раздел или параграф, като използвате [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) или [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) методи. В допълнение, можете да посочите индекс за преместване на курсора на всяка позиция или определен символ в параграф в рамките на **MoveToParagraph** метод.

Следният пример за код показва как да се премине към конкретен раздел и конкретен параграф в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
