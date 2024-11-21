---
title: Изменение стиля стола в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Применяйте стиль стола
linktitle: Применяйте стиль стола
description: "Расширенный формат таблицы C#. Создайте стиль стола, используя Python. Применять стиль стола Python."
type: docs
weight: 80
url: /ru/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стиль таблицы определяет набор форматирования, который может быть легко применен к таблице. Форматирование, такое как границы, затенение, выравнивание и шрифт, может быть установлено в стиле таблицы и применено ко многим таблицам для последовательного внешнего вида.

Aspose.Words Поддерживает применение стиля стола к столу, а также свойства чтения любого стиля стола. Стили стола сохраняются при загрузке и экономии следующими способами:

- Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении этих форматов
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в любом другом формате)
- При экспорте в другие форматы, рендеринге или печати стили таблиц расширяются до прямого форматирования в таблице, поэтому все форматирование сохраняется

## Создайте стиль стола

Пользователь может создать новый стиль и добавить его в коллекцию стилей. The [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) Метод используется для создания нового стиля стола.

Следующий пример кода показывает, как создать новый пользовательский определенный стиль таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Копирование существующего стиля стола

При необходимости вы можете скопировать стиль таблицы, который уже существует в определенном документе, в свою коллекцию стилей. `AddCopy` метод.

Важно знать, что с этим копированием также копируются связанные стили.

Следующий пример кода показывает, как импортировать стиль из одного документа в другой:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Применяйте существующий стиль стола

Aspose.Words обеспечивает [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) унаследованной от [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) класс. **TableStyle** облегчает пользователю применение различных вариантов стиля, таких как затенение, набивка, углубление, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) и [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), и т.д.

Кроме того, Aspose.Words обеспечивает [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) Класс и некоторые свойства `Table` класс, чтобы определить, с каким стилем стола мы будем работать: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), и [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words также предоставляет [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) класс, который представляет собой специальное форматирование, применяемое к некоторой области таблицы с назначенным стилем таблицы, и [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) Представляет собой коллекцию **ConditionalStyle** объекты. Эта коллекция содержит постоянный набор элементов, представляющих один элемент для каждого значения [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) Тип перечисления. The **ConditionalStyleType** Перечисление определяет все возможные области таблицы, в которых условное форматирование может быть определено в стиле таблицы.

В этом случае условное форматирование может быть определено для всей возможной области таблицы, определенной по типу перечисления ConditionalStyleType.

Следующий пример кода показывает, как определить условное форматирование для строки заголовка таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Вы также можете выбрать, к каким частям таблицы применять стили, такие как первая колонка, последняя колонка, полосатые строки. Они перечислены в [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) Перечисление и осуществляется через [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) собственность. The **TableStyleOptions** Перечисление позволяет немного комбинировать эти особенности.

Следующий пример кода показывает, как создать новую таблицу со стилем таблицы:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Фотографии ниже показывают представление **Table Styles** в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Работа со стилями стола

Стиль таблицы определяет набор форматирования, который может быть легко применен к таблице. Форматирование, такое как границы, затенение, выравнивание и шрифт, может быть установлено в стиле таблицы и применено ко многим таблицам для последовательного внешнего вида.

Aspose.Words Поддерживает применение стиля стола к столу, а также свойства чтения любого стиля стола. Стили стола сохраняются при загрузке и экономии следующими способами:

- Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении этих форматов.
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в любом другом формате).
- При экспорте в другие форматы, рендеринге или печати стили таблиц расширяются до прямого форматирования на столе, поэтому все форматирование сохраняется.

В настоящее время нельзя создавать новые стили стола. Вы можете применять только встроенные стили таблиц или пользовательские стили таблиц, которые уже существуют в документе, к таблице

## Возьмите форматирование из стиля стола и нанесите его как прямой формат

Aspose.Words также обеспечивает [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) Способ взять форматирование, найденное в стиле стола, и расширить его на строки и ячейки стола в качестве прямого форматирования. Попробуйте сочетать форматирование со стилем стола и стилем ячейки.

{{% alert color="primary" %}}

Этот метод не будет переопределять любое другое форматирование, уже примененное к таблице через ряд или формат ячейки.

{{% /alert %}}

Следующий пример кода показывает, как расширить форматирование от стилей до строк таблиц и ячеек в качестве прямого форматирования:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
