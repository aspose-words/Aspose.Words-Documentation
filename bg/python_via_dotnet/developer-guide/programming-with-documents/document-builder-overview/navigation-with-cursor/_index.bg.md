---
title: Навигация с курсор в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Навигация с курсора
linktitle: Навигация с курсора
description: "Навигация между различни възли в рамките на документ, като например параграф, отметки, или специфичен символ, използвайки Python."
type: docs
weight: 10
url: /bg/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Докато работите с документ, дори и да е кратък или дълъг, ще трябва да се ориентирате чрез вашия документ. Навигацията с виртуален курсор представлява способността за навигация между различни възли в документ.

В рамките на кратък документ, преместване около в документ е лесно, тъй като можете да преместите точката за вмъкване дори с помощта на клавишите със стрелки на клавиатурата или като кликнете върху мишката, за да намерите точката за вмъкване, където искате. Но след като имате голям документ, който има много страници, тези основни техники ще бъдат недостатъчни.

Тази статия обяснява как да се движите в документ и да се движите с виртуален курсор към различни части от него.

## Откриване на текущата позиция на курсора

Преди да започнете процеса на навигация чрез вашия документ, ще трябва да получите възела, който в момента е избран. Можете да получите точната позиция на курсора в избран възел, като използвате [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) собственост. В допълнение, вместо да получите текущия възел, можете да получите текущо избрания параграф или текущо избрания раздел чрез използване на [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) както и [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) имоти.

Всички операции по вмъкване, които извършвате с помощта на [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ще бъде поставен преди [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Когато настоящият параграф е празен или курсорът е разположен точно преди края на параграфа, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) Не се връща.

## Навигация на методите в документ

Когато редактирате текст, важно е да знаете как да навигирате вашия документ и къде точно да се движите в него. Aspose.Words Позволява ви да се движите в документ и да се движите към различните си секции и части, това е подобно на функционалността на Навигационната пана в Microsoft Word да отидете на страница или заглавие в документ на Word без превъртане.

Основният метод е да можете да преместите позицията на курсора към определен възел във вашия документ, можете да постигнете това чрез използване на [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) метод.

Следният пример с код показва как да преместите [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) до различни възли в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Но освен основното [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) метод, има по-конкретни такива.

### Навигация към начало или край на документ

Можете да отидете в началото или края на вашия документ с помощта на [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) както и [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) методи.

Следният пример за код показва как да се премести позицията на курсора в началото или края на документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Навигация с отметки

Можете да маркирате място, което искате да намерите и да се преместите отново. Можете да въведете колкото се може повече отметки във вашия документ, колкото искате, и след това да преминете през тях, като идентифицирате отметките с уникални имена. Можете да преминете към отметки с помощта на [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) метод.

Следните примери за код показват как да преместите курсора в отметки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Навигация на клетките на таблицата

Можете да се преместите в клетка на маса с помощта на [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) метод. Този метод ще ви позволи да навигирате курсора си във всяка клетка в определена таблица. В допълнение, можете да посочите индекс за преместване на курсора на всяка позиция или определен символ в клетка в рамките на [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) метод.

Следният пример за код показва как да се премести позицията на курсора в определена таблица:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Навигация в поле

Можете да преминете към определено поле във вашия документ чрез [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) метод. В допълнение, можете да преминете към определено сливане поле чрез използване на [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) метод.

Следният пример за код показва как да преместите курсора на строителя на документи в определено поле:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Навигация към заглавна част или стъпало

Можете да преминете към началото на заглавна част или стъпало чрез използване на [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) метод

Следният пример за код показва как да преместите курсора на документа към заглавна част на документа или стъпало:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Навигация на раздел или параграф

Можете да преминете към определен раздел или параграф, като използвате [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) или [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) методи. В допълнение, можете да посочите индекс за преместване на курсора на всяка позиция или определен символ в параграф в рамките на [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) метод.

Следният пример за код показва как да се премине към конкретен раздел и конкретен параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
