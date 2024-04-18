---
title: Работа со списками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Создание, определение форматирования и перезапуск списков в документе с использованием Python."
type: docs
weight: 200
url: /ru/python-net/working-with-lists/
---

Список в a Microsoft Word Документ представляет собой набор свойств форматирования списка. Списки могут использоваться в ваших документах для форматирования, аранжировки и выделения текста. Списки - отличный способ упорядочить данные в документах, и они облегчают читателям понимание ключевых моментов

Каждый список может иметь до 9 уровней, и свойства форматирования, такие как стиль номера, начальное значение, отступ, положение вкладки и т.д., определяются отдельно для каждого уровня.

В Aspose.Words, Работа со списками представлена [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) Модуль. Однако, [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) Объект всегда принадлежит [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) Коллекция.

Эта тема описывает, как программно работать со списками, используя Aspose.Words

## Создание списков путем применения форматирования списков

Aspose.Words Это позволяет легко создавать списки, применяя форматирование списков. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) обеспечивает [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) Имущество, которое возвращает [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) объект. Этот объект имеет несколько способов начать и закончить список и увеличить / уменьшить отступ. Существует два основных типа списков в Microsoft WordПулен и пронумерован.

- Чтобы начать список, звоните. [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Чтобы начать пронумерованный список, позвоните [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Пуля или номер и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) до [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) Он призван остановить форматирование списка.

В документах Word списки могут состоять до девяти уровней. Форматирование списка для каждого уровня определяет, какая пуля или номер используется, левый отступ, пространство между пулей и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы повысить уровень списка текущего пункта на один уровень, звоните [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Чтобы понизить уровень списка текущего абзаца на один уровень, звоните [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) собственности, чтобы получить или установить уровень списка для пункта. Уровни списка нумеруются от 0 до 8.

{{% /alert %}}

Ниже приведен пример, как создать многоуровневый список.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) класс для управления форматированием отдельных уровней списка.

## Перезагрузить список для каждого раздела

Вы можете перезапустить список для каждого раздела, используя [Свойство_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) собственность. Обратите внимание, что эта опция поддерживается только в форматах документов RTF, DOC и DOCX. Этот вариант будет записан на DOCX только в том случае, если OoxmlCompliance выше, чем Ecma376.

Следующий пример кода показывает, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
