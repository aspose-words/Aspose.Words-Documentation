---
title: Работа со списками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Создавайте, указывайте форматирование и перезапускайте списки в документе, используя Python."
type: docs
weight: 200
url: /ru/python-net/working-with-lists/
---

Список в документе Microsoft Word представляет собой набор свойств форматирования списка. Списки можно использовать в документах для форматирования, упорядочения и выделения текста. Списки — отличный способ упорядочить данные в документах, они облегчают читателям понимание ключевых моментов

Каждый список может иметь до 9 уровней, а свойства форматирования, такие как стиль номера, начальное значение, отступ, положение табуляции и т.д., определяются отдельно для каждого уровня.

В Aspose.Words работа со списками представлена модулем [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Однако объект [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) всегда принадлежит коллекции [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

В этом разделе описывается, как программно работать со списками с использованием Aspose.Words

## Создание списков путем применения форматирования списка

Aspose.Words позволяет легко создавать списки, применяя форматирование списков. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет свойство [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/), которое возвращает объект [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Этот объект имеет несколько методов для начала и завершения списка, а также для увеличения/уменьшения отступа. В Microsoft Word есть два основных типа списков: маркированные и нумерованные.

- Чтобы начать маркированный список, позвоните по номеру [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Чтобы начать нумерованный список, позвоните по номеру [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Маркер или номер и форматирование добавляются к текущему абзацу, а все последующие абзацы, созданные с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), до тех пор, пока не будет вызван [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/), чтобы остановить форматирование маркированного списка.

В документах Word списки могут состоять из девяти уровней. Форматирование списка для каждого уровня определяет, какой маркер или номер используется, отступ слева, расстояние между маркером и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы повысить уровень списка текущего абзаца на один уровень, позвоните по номеру [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Чтобы уменьшить уровень списка текущего абзаца на один уровень, позвоните по номеру [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать свойство [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/), чтобы получить или установить уровень списка для абзаца. Уровни списка пронумерованы от 0 до 8.

{{% /alert %}}

В примере ниже показано, как построить многоуровневый список.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы класса [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) для управления форматированием отдельных уровней списка.

## Список перезапуска для каждого раздела

Вы можете перезапустить список для каждого раздела, используя свойство [свойство is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Обратите внимание, что этот параметр поддерживается только в форматах документов RTF, DOC и DOCX. Эта опция будет записана в DOCX только в том случае, если значение OoxmlCompliance выше, чем Ecma376.

В следующем примере кода показано, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
