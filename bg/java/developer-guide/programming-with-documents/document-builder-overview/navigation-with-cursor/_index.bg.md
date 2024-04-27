---
title: Навигация с курсора в Java
second_title: Aspose.Words вместо Java
articleTitle: Навигация с курсор
linktitle: Навигация с курсор
description: "Навигация между различни възли в рамките на документ, като например параграф, отметки, или специфичен символ, използвайки Java."
type: docs
weight: 5
url: /bg/java/navigation-with-cursor/
---

Докато работите с документ, дори и да е кратък или дълъг, ще трябва да навигирате чрез документа си. Навигация с виртуален курсор представлява способността за навигация между различни възли в документ.

В рамките на кратък документ, преместване около в документ е лесно, тъй като можете да преместите точката за вмъкване дори с помощта на клавишите със стрелки на клавиатурата или като кликнете върху мишката, за да намерите точката за вмъкване, където искате. Но след като имате голям документ, който има много страници, тези основни техники ще бъдат недостатъчни.

Тази статия обяснява как да се движите в документ и да се движите с виртуален курсор към различни части от него.

## Определяне на текущата позиция на курсора

Преди да започнете процеса на навигация чрез вашия документ, ще трябва да получите възела, който в момента е избран. Можете да получите точната позиция на курсора в избран възел чрез използване на [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) собственост. В допълнение, вместо да получите текущия възел, можете да получите текущо избрания параграф или текущо избрания раздел чрез използване на [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) както и [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) имоти.

Всички операции по вмъкване, които извършвате с помощта на [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ще се въведе преди [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Когато настоящият параграф е празен или курсорът е разположен точно преди края на параграфа, **CurrentNode** Връща се нула.

## Навигиране на методи в документ

Когато редактирате текст, е важно да знаете как да навигирате вашия документ и къде точно да се движите в него. Aspose.Words позволява да се движите в документ и да навигирате към различните си секции и части. Microsoft Word да отидете на страница или заглавие в документ Word без превъртане.

Основният метод е да можете да преместите позицията на курсора към определен възел във вашия документ, можете да постигнете това чрез използване на [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) метод.

Следният пример с код показва как да преместите **DocumentBuilder** до различни възли в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Но освен основното **MoveTo** метод, има по-конкретни такива.

### Навигация към начало или край на документ

Можете да отидете в началото или края на вашия документ с помощта на [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) както и [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) методи.

Следният пример за код показва как да преместите позицията на курсора в началото или края на документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Навигация с отметки

Можете да маркирате място, което искате да намерите и да се преместите отново. Можете да въведете колкото се може повече отметки във вашия документ, колкото искате, и след това да преминете през тях, като идентифицирате отметките с уникални имена. Можете да преминете към отметки с помощта на [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) метод.

Следните примери за код показват как да преместите курсора в отметки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Навигация към клетките на таблицата

Можете да се преместите в клетка на маса с помощта на [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) метод. Този метод ще ви позволи да навигирате курсора си във всяка клетка в определена таблица. В допълнение, можете да посочите индекс за преместване на курсора на всяка позиция или определен символ в клетка в рамките на **MoveToCell** метод.

Следният пример за код показва как да преместите позицията на курсора в определена таблица:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Навигация в поле

Можете да преминете към определено поле във вашия документ чрез [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) метод. В допълнение, можете да преминете към определено сливане поле чрез използване на [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) метод.

Следният пример за код показва как да преместите курсора на документа в определено поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Навигация към заглавна част или стъпало

Можете да преминете към началото на заглавната част или подножието с помощта на [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) метод

Следният пример за код показва как да преместите курсора на документа в заглавна част на документа или кракера:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Навигация към раздел или параграф

Можете да преминете към определен раздел или параграф, като използвате [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) или [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) методи. В допълнение, можете да посочите индекс за преместване на курсора на всяка позиция или определен символ в параграф в рамките на **MoveToParagraph** метод.

Следният пример за код показва как да се премине към конкретен раздел и конкретен параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
