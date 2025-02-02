---
title: Обзор таблицы
second_title: Aspose.Words для C++
articleTitle: Обзор таблицы
linktitle: Обзор таблицы
description: "Работа с таблицами и их компонентами, такими как ячейки, строки, столбцы, в Aspose.Words для C++. Как работать с таблицами в C++."
type: docs
weight: 10
url: /ru/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words - это библиотека классов, предназначенная для обработки документов на стороне сервера в различных форматах – PDF, HTML, различных форматах Microsoft Word и других – и поддерживающая таблицы следующими способами:

* таблицы в документе сохраняются при открытии/сохранении и преобразовании
* можно редактировать таблицу, содержимое и ее форматирование, а затем экспортировать изменения в файл в формате, поддерживающем таблицы

В этой статье мы узнаем больше о структуре таблиц, ячейках, строках и столбцах, поддерживаемых Aspose.Words, а также о деталях работы с такими таблицами.

## Структура таблицы

Как уже упоминалось, таблица состоит из таких элементов, как **Cell**, **Row** и **Column**. Это понятия, которые являются общими для всех таблиц в целом, независимо от формата документа.

Это обычный пример таблицы, найденной в документе Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Узлы таблицы

Таблица из любого документа, загруженного в Aspose.Words, импортируется как **Table node**. Таблицу можно найти как дочернюю по отношению к:

- основной текст
- встроенная история, например комментарий или сноска
- ячейки, когда таблица вложена в другую таблицу

{{% alert color="primary" %}}

Обратите внимание, что таблицы могут быть вложены в другие таблицы на любую глубину.

{{% /alert %}}

### Содержание таблицы

Узел таблицы не содержит никакого реального содержимого – вместо этого он является контейнером для других подобных узлов, составляющих содержимое:

- **Table** содержит множество **Row** узлов. Таблица содержит все обычные элементы узлов, что позволяет вам свободно перемещать, изменять и удалять таблицу в документе.
- **Row** представляет собой одну строку таблицы и содержит множество **Cell** узлов. Кроме того, **Row** содержит элементы, которые определяют способ отображения строки, такие как высота и выравнивание.
- **Cell** - это то, что содержит истинное содержимое, видимое в таблице, и состоит из **Paragraph** и других узлов блочного уровня. Кроме того, ячейки могут содержать вложенные таблицы.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Вы можете проверить структуру узлов таблицы в документе, используя **DocumentExplorer**.

{{% /alert %}}

### Пустой абзац после таблицы

На рисунке выше показано, что документ содержит таблицу из нескольких строк, которая, в свою очередь, состоит из двух ячеек. Каждая из двух ячеек содержит абзац, который является контейнером для форматированного текста ячейки.

Также стоит отметить, что для разделения двух последовательных таблиц в документе требуется, по крайней мере, один пустой абзац после таблицы. Без такого абзаца последовательные таблицы были бы объединены в одну. Это поведение одинаково как в Microsoft Word, так и в Aspose.Words.

В Aspose.Words все классы и свойства, относящиеся к таблицам, содержатся в пространстве имен [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Смотрите также

* [Aspose.Words Объектная модель документа (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Логические уровни узлов в документе](/words/cpp/logical-levels-of-nodes-in-a-document/)
