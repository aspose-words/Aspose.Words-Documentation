---
title: Изменение стиля таблицы в документах Word
second_title: Aspose.Words для C++
articleTitle: Применить стиль таблицы
linktitle: Применить стиль таблицы
description: "Расширенное форматирование таблиц на C++. Создайте стиль таблицы с помощью C++. Примените стиль таблицы на C++."
type: docs
weight: 80
url: /ru/cpp/working-with-tablestyle/
---

Стиль таблицы определяет набор форматирования, который может быть легко применен к таблице. Форматирование, такое как границы, затенение, выравнивание и шрифт, может быть задано в стиле таблицы и применено ко многим таблицам для обеспечения единообразного внешнего вида.

Aspose.Words поддерживает применение табличного стиля к таблице, а также чтение свойств любого табличного стиля. Стили таблиц сохраняются при загрузке и сохранении следующими способами:

- Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении в этих форматах
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в каком-либо другом формате)
- При экспорте в другие форматы, рендеринге или печати стили таблиц расширяются для прямого форматирования в таблице, поэтому все форматирование сохраняется

## Создайте стиль таблицы

Пользователь может создать новый стиль и добавить его в коллекцию стилей. Метод [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) используется для создания нового стиля таблицы.

В следующем примере кода показано, как создать новый пользовательский стиль таблицы:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Скопируйте существующий стиль таблицы

При необходимости вы можете скопировать стиль таблицы, который уже существует в определенном документе, в свою коллекцию стилей, используя метод `AddCopy`.

Важно знать, что при таком копировании также копируются связанные стили.

В следующем примере кода показано, как импортировать стиль из одного документа в другой:

Пример

## Примените существующий стиль таблицы

Aspose.Words предоставляет класс [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/), унаследованный от класса [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** позволяет пользователю применять различные параметры стиля, такие как затенение, отступы, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) и [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) и т.д.

Кроме того, Aspose.Words предоставляет класс [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) и несколько свойств класса `Table`, чтобы указать, с каким стилем таблицы мы будем работать: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), и [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words также предоставляет класс [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/), который представляет специальное форматирование, применяемое к некоторой области таблицы с назначенным стилем таблицы, и класс [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/), который представляет коллекцию объектов **ConditionalStyle**. Эта коллекция содержит постоянный набор элементов, представляющих по одному элементу для каждого значения типа перечисления [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Перечисление **ConditionalStyleType** определяет все возможные области таблицы, для которых может быть определено условное форматирование в табличном стиле.

В этом случае условное форматирование может быть определено для всех возможных областей таблицы, определенных в соответствии с типом перечисления ConditionalStyleType.

В следующем примере кода показано, как определить условное форматирование для строки заголовка таблицы:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Вы также можете выбрать, к каким частям таблицы применять стили, например, к первому столбцу, последнему столбцу, строкам с ограничениями. Они перечислены в перечислении [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) и применяются с помощью свойства [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Перечисление **TableStyleOptions** позволяет комбинировать эти функции побитово.

В следующем примере кода показано, как создать новую таблицу с примененным стилем таблицы:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

На рисунках ниже показано представление **Table Styles** в Microsoft Word и соответствующие им свойства в Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Возьмите форматирование из стиля таблицы и примените его как прямое форматирование

Aspose.Words также предоставляет метод [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/), позволяющий использовать форматирование, найденное в табличном стиле, и распространить его на строки и ячейки таблицы в качестве прямого форматирования. Попробуйте комбинировать форматирование со стилем таблицы и стилем ячеек.

{{% alert color="primary" %}}

Этот метод не переопределяет никакое другое форматирование, уже примененное к таблице с помощью формата строки или ячейки.

{{% /alert %}}

В следующем примере кода показано, как перенести форматирование из стилей в строки таблицы и ячейки в качестве прямого форматирования:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}