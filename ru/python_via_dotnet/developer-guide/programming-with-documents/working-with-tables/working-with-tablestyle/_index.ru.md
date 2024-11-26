---
title: Измените стиль таблицы в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Применить стиль таблицы
linktitle: Применить стиль таблицы
description: "Расширенное форматирование таблицы C#. Создайте стиль таблицы, используя Python. Примените стиль таблицы Python."
type: docs
weight: 80
url: /ru/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стиль таблицы определяет набор форматирования, который может быть легко применен к таблице. Форматирование, такое как границы, затенение, выравнивание и шрифт, может быть задано в стиле таблицы и применено ко многим таблицам для обеспечения единообразного внешнего вида.

Aspose.Words поддерживает применение табличного стиля к таблице, а также чтение свойств любого табличного стиля. Стили таблиц сохраняются при загрузке и сохранении следующими способами:

- Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении в этих форматах
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в каком-либо другом формате)
- При экспорте в другие форматы, рендеринге или печати стили таблиц расширяются для прямого форматирования в таблице, поэтому все форматирование сохраняется

## Создайте стиль таблицы

Пользователь может создать новый стиль и добавить его в коллекцию стилей. Метод [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) используется для создания нового стиля таблицы.

В следующем примере кода показано, как создать новый пользовательский стиль таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Скопируйте существующий стиль таблицы

При необходимости вы можете скопировать стиль таблицы, который уже существует в определенном документе, в свою коллекцию стилей, используя метод `AddCopy`.

Важно знать, что при таком копировании также копируются связанные стили.

В следующем примере кода показано, как импортировать стиль из одного документа в другой:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Примените существующий стиль таблицы

Aspose.Words предоставляет [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/), унаследованный от класса [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). **TableStyle** позволяет пользователю применять различные параметры стиля, такие как затенение, заполнение, отступы, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) и [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) и т.д.

Кроме того, Aspose.Words предоставляет класс [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) и несколько свойств класса `Table`, чтобы указать, с каким стилем таблицы мы будем работать: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), и [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words также предоставляет класс [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/), который представляет специальное форматирование, применяемое к некоторой области таблицы с назначенным стилем таблицы, и [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/), который представляет коллекцию из **ConditionalStyle** объектов. Эта коллекция содержит постоянный набор элементов, представляющих по одному элементу для каждого значения типа перечисления [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/). Перечисление **ConditionalStyleType** определяет все возможные области таблицы, для которых может быть определено условное форматирование в табличном стиле.

В этом случае условное форматирование может быть определено для всей возможной области таблицы, определенной в соответствии с типом перечисления ConditionalStyleType.

В следующем примере кода показано, как определить условное форматирование для строки заголовка таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Вы также можете выбрать, к каким частям таблицы применять стили, например, к первому столбцу, последнему столбцу, строкам с ограничениями. Они перечислены в перечислении [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) и применяются с помощью свойства [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/). Перечисление **TableStyleOptions** позволяет комбинировать эти функции побитово.

В следующем примере кода показано, как создать новую таблицу с примененным стилем таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

На рисунках ниже показано представление **Table Styles** в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formatting-table-style-aspose-words-python](applying-formatting-10.png)



## Работа со стилями таблиц

Стиль таблицы определяет набор форматирования, который может быть легко применен к таблице. Форматирование, такое как границы, затенение, выравнивание и шрифт, может быть задано в стиле таблицы и применено ко многим таблицам для обеспечения единообразного внешнего вида.

Aspose.Words поддерживает применение табличного стиля к таблице, а также чтение свойств любого табличного стиля. Стили таблиц сохраняются при загрузке и сохранении следующими способами:

- Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении в этих форматах.
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в каком-либо другом формате).
- При экспорте в другие форматы, визуализации или печати стили таблиц расширяются для прямого форматирования таблицы, поэтому все форматирование сохраняется.

В настоящее время вы не можете создавать новые стили таблиц. Вы можете применять к таблице только встроенные стили таблиц или пользовательские стили таблиц, которые уже существуют в документе.

## Возьмите форматирование из стиля таблицы и примените его как прямое форматирование

Aspose.Words также предоставляет метод [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default), позволяющий использовать форматирование, найденное в табличном стиле, и распространить его на строки и ячейки таблицы в качестве прямого форматирования. Попробуйте комбинировать форматирование со стилем таблицы и стилем ячеек.

{{% alert color="primary" %}}

Этот метод не переопределяет никакое другое форматирование, уже примененное к таблице с помощью формата строк или ячеек.

{{% /alert %}}

В следующем примере кода показано, как перенести форматирование из стилей в строки таблицы и ячейки в качестве прямого форматирования:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
