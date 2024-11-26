---
title: Работа со списками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Создайте, задайте форматирование и перезапустите списки в документе, используя Python."
type: docs
weight: 200
url: /ru/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Список в документе Microsoft Word - это набор свойств форматирования списков. Списки можно использовать в ваших документах для форматирования, упорядочивания и выделения текста. Списки - это отличный способ организации данных в документах, и они облегчают читателям понимание ключевых моментов.

Каждый список может иметь до 9 уровней, и свойства форматирования, такие как стиль цифр, начальное значение, отступ, позиция табуляции и т.д., определяются отдельно для каждого уровня.

В Aspose.Words работа со списками представлена модулем [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Однако объект [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) всегда принадлежит коллекции [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

В этом разделе описывается, как программно работать со списками, используя Aspose.Words.

## Создание списков с помощью форматирования списков

Aspose.Words позволяет легко создавать списки, применяя форматирование списка. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет свойство [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/), которое возвращает объект [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). У этого объекта есть несколько методов для начала и завершения списка, а также для увеличения/уменьшения отступа. В Microsoft Word есть два основных типа списков: маркированные и нумерованные.

- Чтобы запустить маркированный список, наберите [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Чтобы запустить нумерованный список, наберите [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Маркер или число и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), пока не будет вызван [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) для остановки форматирования маркированного списка.

В документах Word списки могут состоять максимум из девяти уровней. Форматирование списка для каждого уровня определяет, какой маркер или число используется, отступ слева, расстояние между маркером и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы увеличить уровень списка текущего абзаца на один уровень, вызовите [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Чтобы уменьшить уровень списка текущего абзаца на один уровень, вызовите [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать свойство [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/), чтобы получить или задать уровень списка для абзаца. Уровни списка пронумерованы от 0 до 8.

{{% /alert %}}

В приведенном ниже примере показано, как создать многоуровневый список.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы класса [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) для управления форматированием отдельных уровней списка.

## Список перезапусков для каждого раздела

Вы можете перезапустить список для каждого раздела, используя свойство [is_restart_at_each_section property](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Обратите внимание, что этот параметр поддерживается только в форматах документов RTF, DOC и DOCX. Этот параметр будет записан в DOCX только в том случае, если OoxmlCompliance выше, чем Ecma376.

В следующем примере кода показано, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
