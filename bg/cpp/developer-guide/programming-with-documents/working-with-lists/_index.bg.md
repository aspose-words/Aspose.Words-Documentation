---
title: Работа със списъци в C++
second_title: Aspose.Words за C++
articleTitle: Работа Със Списъци
linktitle: Работа Със Списъци
description: "Въведение в функцията за форматиране на номериране в Aspose.Words за C++."
type: docs
weight: 200
url: /bg/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Списък в документ Microsoft Word е набор от свойства за форматиране на списък. Списъците могат да се използват във вашите документи за форматиране, подреждане и подчертаване на текст. Списъците са чудесен начин за организиране на данни в документи и улесняват читателите да разберат ключови точки.

Всеки списък може да има до 9 нива и свойства за форматиране, като например числов стил, начална стойност, отстъп, позиция в раздел и т.н., се определят отделно за всяко ниво.

В Aspose.Words работата със списъци е представена от пространство от имена [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Обектът [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) обаче винаги принадлежи към колекцията [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Тази тема описва как да работите програмно със списъци, използвайки Aspose.Words.

## Задаване на форматиране за ниво на списък

Обектите на ниво списък се създават автоматично, когато се създава списък. Използвайте свойствата и методите на класа [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/), за да контролирате форматирането на отделните нива на списък.

## Рестартиране на списък за всяка секция

Можете да рестартирате списък за всяка секция, като използвате свойството [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Обърнете внимание, че тази опция се поддържа само във формати на документи RTF, DOC и DOCX. Тази опция ще бъде записана до DOCX само ако OoxmlCompliance е по-висок от Екма376.

Следващият пример за код показва как да създадете списък и да го рестартирате за всеки раздел:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
