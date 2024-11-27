---
title: Навигация с курсора C++
second_title: Aspose.Words за C++
articleTitle: Навигация с курсора
linktitle: Навигация с курсора
description: "Придвижвайте се Между различни възли в документ, като например абзац, отметка или конкретен знак, използвайки C++."
type: docs
weight: 10
url: /bg/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Докато работите с документ, дори и да е кратък или дълъг, ще трябва да се придвижвате из документа. Навигацията с виртуален курсор представлява възможността за придвижване между различни възли в документ.

В рамките на кратък документ придвижването в документ е лесно, тъй като можете да преместите точката на вмъкване дори с помощта на клавишите със стрелки на клавиатурата или като щракнете с мишката, за да намерите точката на вмъкване, където искате. Но след като имате голям документ, който има много страници, тези основни техники ще бъдат недостатъчни.

Тази статия обяснява как да се придвижвате в документ и да навигирате с виртуален курсор до различни части от него.

## Откриване На Текущата Позиция На Курсора

Преди да започнете процеса на навигиране във вашия документ, ще трябва да получите възела, който е избран в момента. Можете да получите точната позиция на курсора в избран възел, като използвате свойството [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Освен това вместо да получавате текущия възел, можете да получите текущо избрания абзац или текущо избраната секция, като използвате свойствата [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) и [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Всички операции за вмъкване, които извършвате с [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), ще бъдат вмъкнати преди [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Когато текущият абзац е празен или курсорът е разположен точно преди края на абзаца, **CurrentNode** връща нула.

## Навигиране в методи в документ

Когато редактирате текст, е важно да знаете как да навигирате в документа и къде точно да се движите в него. Aspose.Words Позволява ви да се придвижвате в документ и да навигирате до различните му секции и части – това е подобно на функционалността на навигационния екран в Microsoft Word, за да отидете на страница или заглавие в документ Word без превъртане.

Основният метод е да можете да преместите позицията на курсора до определен възел във вашия документ, можете да постигнете това, като използвате метода [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

Следващият пример за код показва как да преместите **DocumentBuilder** в различни възли в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Но освен основния **MoveTo** метод, има и по-специфични.

### Придвижване до началото или края на документ

Можете да отидете до началото или края на документа, като използвате методите [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) и [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Следващият пример за код показва как да преместите позицията на курсора в началото или края на документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Навигация С Отметки

Можете лесно да маркирате място, което искате да намерите и да се преместите отново. Можете да вмъкнете толкова отметки във вашия документ, колкото искате, и след това да се придвижвате през тях, като идентифицирате отметките с уникални имена. Можете да преминете към отметка, като използвате метода [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Следните примери за код показват как да преместите позицията на курсора в отметка:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Придвижете се до клетките на таблицата

Можете да преминете към клетка на таблица, като използвате метода [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Този метод ще ви позволи да навигирате курсора във всяка клетка в определена таблица. Освен това можете да зададете индекс, за да преместите курсора на всяка позиция или определен знак в клетка в рамките на метода **MoveToCell**.

Следващият пример за код показва как да преместите позицията на курсора в определена клетка на таблица:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Навигиране до поле

Можете да преминете към конкретно поле във вашия документ, като използвате метода [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Освен това можете да преминете към конкретно поле за обединяване, като използвате метода [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Следващият пример за код показва как да преместите курсора на конструктора на документи в конкретно поле:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Навигиране до горен или долен колонтитул

Можете да преминете към началото на горен или долен колонтитул, като използвате метода [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

Следващият пример за код показва как да преместите курсора на конструктора на документи в горен или долен колонтитул на документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Придвижване до раздел или абзац

Можете да преминете към конкретен раздел или абзац, като използвате методите [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) или [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Освен това можете да зададете индекс, за да преместите курсора на всяка позиция или определен знак в абзац в рамките на метода **MoveToParagraph**.

Следващият пример за код показва как да преминете към конкретен раздел и конкретен абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
