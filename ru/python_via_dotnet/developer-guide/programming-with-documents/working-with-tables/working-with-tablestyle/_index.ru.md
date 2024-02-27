---
title: Изменить стиль таблицы в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Применить стиль таблицы
linktitle: Применить стиль таблицы
description: "Расширенное форматирование таблицы C#. Создайте стиль таблицы, используя Python. Примените стиль таблицы Python."
type: docs
weight: 80
url: /ru/python-net/working-with-tablestyle/
---

Стиль таблицы определяет набор форматирования, который можно легко применить к таблице. Такое форматирование, как границы, заливка, выравнивание и шрифт, можно задать в стиле таблицы и применить ко многим таблицам для обеспечения единообразного внешнего вида.

Aspose.Words поддерживает применение стиля таблицы к таблице, а также чтение свойств любого стиля таблицы. Стили таблиц сохраняются при загрузке и сохранении следующими способами:

— Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении в эти форматы
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в каком-либо другом формате)
- При экспорте в другие форматы, рендеринге или печати стили таблицы расширяются до прямого форматирования в таблице, поэтому все форматирование сохраняется

## Создайте стиль таблицы

Пользователь может создать новый стиль и добавить его в коллекцию стилей. Метод [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) используется для создания нового стиля таблицы.

В следующем примере кода показано, как создать новый пользовательский стиль таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Копирование существующего стиля таблицы

При необходимости вы можете скопировать стиль таблицы, который уже существует в определенном документе, в свою коллекцию стилей с помощью метода `AddCopy`.

Важно знать, что при таком копировании копируются и связанные стили.

В следующем примере кода показано, как импортировать стиль из одного документа в другой документ:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Применение существующего стиля таблицы

Aspose.Words представляет собой [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/), унаследованный от класса [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). **TableStyle** позволяет пользователю применять различные параметры стиля, такие как затенение, отступы, отступы, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) и [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) и т.д.

Кроме того, Aspose.Words предоставляет класс [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) и несколько свойств класса `Table`, позволяющие указать, с каким стилем таблицы мы будем работать: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) и [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words также предоставляет класс [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/), который представляет специальное форматирование, применяемое к некоторой области таблицы с назначенным стилем таблицы, и [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/), который представляет коллекцию из **ConditionalStyle** объектов. Эта коллекция содержит постоянный набор элементов, представляющих по одному элементу для каждого значения типа перечисления [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/). Перечисление **ConditionalStyleType** определяет все возможные области таблицы, для которых в стиле таблицы может быть определено условное форматирование.

В этом случае условное форматирование можно определить для всех возможных областей таблицы, определенных в типе перечисления ConditionalStyleType.

В следующем примере кода показано, как определить условное форматирование для строки заголовка таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Вы также можете выбрать, к каким частям таблицы применить стили, например к первому столбцу, последнему столбцу, полосам строк. Они перечислены в перечислении [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) и применяются через свойство [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/). Перечисление **TableStyleOptions** позволяет поразрядно комбинировать эти функции.

В следующем примере кода показано, как создать новую таблицу с примененным стилем таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

На рисунках ниже показано изображение **Table Styles** в Microsoft Word и соответствующие им свойства в Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Работа со стилями таблиц

Стиль таблицы определяет набор форматирования, который можно легко применить к таблице. Форматирование, такое как границы, заливка, выравнивание и шрифт, можно задать в стиле таблицы и применить ко многим таблицам для единообразного внешнего вида.

Aspose.Words поддерживает применение стиля таблицы к таблице, а также чтение свойств любого стиля таблицы. Стили таблиц сохраняются при загрузке и сохранении следующими способами:

— Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении в эти форматы.
— Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в каком-либо другом формате).
— При экспорте в другие форматы, рендеринге или печати стили таблицы расширяются до прямого форматирования таблицы, поэтому все форматирование сохраняется.

В настоящее время вы не можете создавать новые стили таблиц. К таблице можно применять только встроенные стили таблиц или пользовательские стили таблиц, которые уже существуют в документе

## Возьмите форматирование из стиля таблицы и примените его как прямое форматирование

Aspose.Words также предоставляет метод [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default), позволяющий использовать форматирование, найденное в стиле таблицы, и распространять его на строки и ячейки таблицы в виде прямого форматирования. Попробуйте совместить форматирование со стилем таблицы и стилем ячеек.

{{% alert color="primary" %}}

Этот метод не будет переопределять любое другое форматирование, уже примененное к таблице через формат строки или ячейки.

{{% /alert %}}

В следующем примере кода показано, как расширить форматирование стилей на строки и ячейки таблицы с помощью прямого форматирования:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}