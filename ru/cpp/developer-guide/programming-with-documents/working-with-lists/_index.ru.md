---
title: Работа со списками на C++
second_title: Aspose.Words для C++
articleTitle: Работа со Списками
linktitle: Работа со Списками
description: "Введение в функцию форматирования нумерации в Aspose.Words для C++."
type: docs
weight: 200
url: /ru/cpp/working-with-lists/
---

Список в документе Microsoft Word - это набор свойств форматирования списков. Списки можно использовать в ваших документах для форматирования, упорядочивания и выделения текста. Списки - это отличный способ упорядочить данные в документах, и они облегчают читателям понимание ключевых моментов.

Каждый список может иметь до 9 уровней, а свойства форматирования, такие как стиль чисел, начальное значение, отступ, позиция табуляции и т.д., определяются отдельно для каждого уровня.

В Aspose.Words работа со списками представлена пространством имен [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Однако объект [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) всегда принадлежит коллекции [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

В этом разделе описывается, как программно работать со списками, используя Aspose.Words.

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы класса [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) для управления форматированием отдельных уровней списка.

## Список перезапусков для каждого раздела

Вы можете перезапустить список для каждого раздела, используя свойство [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Обратите внимание, что этот параметр поддерживается только в форматах документов RTF, DOC и DOCX. Этот параметр будет записан в DOCX только в том случае, если OOXML-соответствие выше, чем Ecma376.

В следующем примере кода показано, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
