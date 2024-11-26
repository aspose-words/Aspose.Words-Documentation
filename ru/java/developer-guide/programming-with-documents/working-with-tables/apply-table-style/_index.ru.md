---
title: Работа со стилями таблиц в Java
second_title: Aspose.Words для Java
articleTitle: Применить стиль таблицы
linktitle: Применить стиль таблицы
description: "Расширенное форматирование таблиц Java. Создайте стиль таблицы с помощью Java. Введение в расширенное форматирование таблиц, стили таблиц с помощью Java."
type: docs
weight: 80
url: /ru/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стиль таблицы определяет набор форматирования, который может быть легко применен к таблице. Форматирование, такое как границы, затенение, выравнивание и шрифт, может быть задано в стиле таблицы и применено ко многим таблицам для обеспечения единообразного внешнего вида.

Aspose.Words поддерживает применение табличного стиля к таблице, а также чтение свойств любого табличного стиля. Стили таблиц сохраняются при загрузке и сохранении следующими способами:

- Стили таблиц в форматах DOCX и WordML сохраняются при загрузке и сохранении в этих форматах
- Стили таблиц сохраняются при загрузке и сохранении в формате DOC (но не в каком-либо другом формате)
- При экспорте в другие форматы, рендеринге или печати стили таблиц расширяются для прямого форматирования в таблице, поэтому все форматирование сохраняется

## Создайте стиль таблицы

Пользователь может создать новый стиль и добавить его в коллекцию стилей. Метод [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) используется для создания нового стиля таблицы.

В следующем примере кода показано, как создать новый пользовательский стиль таблицы:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Скопируйте существующий стиль таблицы

При необходимости вы можете скопировать стиль таблицы, который уже существует в определенном документе, в свою коллекцию стилей, используя метод `AddCopy`.

Важно знать, что при таком копировании также копируются связанные стили.

В следующем примере кода показано, как импортировать стиль из одного документа в другой:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Примените существующий стиль таблицы

Aspose.Words предоставляет класс [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/), унаследованный от класса [Style](https://reference.aspose.com/words/java/com.aspose.words/style/). **TableStyle** позволяет пользователю применять различные параметры стиля, такие как затенение, отступы, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) и [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont) и т.д.

Кроме того, Aspose.Words предоставляет класс [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) и несколько свойств класса `Table`, чтобы указать, с каким стилем таблицы мы будем работать: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), и [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words также предоставляет класс [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/), который представляет специальное форматирование, применяемое к некоторой области таблицы с назначенным стилем таблицы, и [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/), который представляет коллекцию из **ConditionalStyle** объектов. Эта коллекция содержит постоянный набор элементов, представляющих по одному элементу для каждого значения типа перечисления [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/). Перечисление **ConditionalStyleType** определяет все возможные области таблицы, для которых может быть определено условное форматирование в табличном стиле.

В этом случае условное форматирование может быть определено для всех возможных областей таблицы, определенных в соответствии с типом перечисления ConditionalStyleType.

В следующем примере кода показано, как определить условное форматирование для строки заголовка таблицы:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Вы также можете выбрать, к каким частям таблицы применять стили, например, к первому столбцу, последнему столбцу, строкам с ограничениями. Они перечислены в перечислении [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) и применяются с помощью свойства [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions). Перечисление **TableStyleOptions** позволяет комбинировать эти функции побитово.

В следующем примере кода показано, как создать новую таблицу с примененным стилем таблицы:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

На рисунках ниже показано представление **Table Styles** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Возьмите форматирование из стиля таблицы и примените его как прямое форматирование

Aspose.Words также предоставляет метод [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting), позволяющий использовать форматирование, найденное в табличном стиле, и распространить его на строки и ячейки таблицы в качестве прямого форматирования. Попробуйте комбинировать форматирование со стилем таблицы и стилем ячеек.

{{% alert color="primary" %}}

Этот метод не переопределяет никакое другое форматирование, уже примененное к таблице с помощью формата строк или ячеек.

{{% /alert %}}

В следующем примере кода показано, как перенести форматирование из стилей в строки таблицы и ячейки в качестве прямого форматирования:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
