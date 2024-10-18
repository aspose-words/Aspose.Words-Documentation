---
title: Как создать таблицу на C++
second_title: Aspose.Words для C++
articleTitle: Создайте таблицу
linktitle: Создайте таблицу
description: "Различные способы создания таблиц с помощью C++. Создайте таблицу на C++ для вашего документа. Добавьте таблицу на C++."
type: docs
weight: 20
url: /ru/cpp/create-a-table/
---

Aspose.Words позволяет пользователям создавать таблицы в документе с нуля и предоставляет несколько различных методов для этого. В этой статье представлены подробные сведения о том, как добавлять отформатированные таблицы в документ, используя каждый из методов, а также сравнение каждого метода в конце статьи.

## Стили таблиц по умолчанию

Вновь созданной таблице присваиваются значения по умолчанию, аналогичные тем, которые используются в Microsoft Word:

|
| :- | :- |
| `Single` |
|
| `Black` |
|
|
| `True` |

{{% alert color="primary" %}}

Таблица может быть встроенной, если она расположена плотно, или плавающей, если ее можно разместить в любом месте страницы. По умолчанию Aspose.Words всегда создает встроенные таблицы.

{{% /alert %}}

## Создайте таблицу с DocumentBuilder

В Aspose.Words пользователи могут создать таблицу в документе, используя [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Основной алгоритм создания таблицы следующий:

1. Начните таблицу с [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Добавьте ячейку в таблицу, используя [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) – при этом автоматически начнется новая строка
3. При необходимости используйте свойство [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/), чтобы задать форматирование ячеек
4. Вставьте содержимое ячейки, используя соответствующие методы **DocumentBuilder**, такие как [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) и другие
5. Повторяйте шаги 2-4, пока строка не будет завершена
6. Вызовите [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/), чтобы завершить текущую строку
7. При необходимости используйте свойство [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/), чтобы задать форматирование строк
8. Повторяйте шаги 2-7 до тех пор, пока таблица не будет заполнена
9. Вызовите [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/), чтобы завершить построение таблицы

{{% alert color="primary" %}}

Важные детали:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) также может быть вызван внутри ячейки, и в этом случае он запускает создание вложенной таблицы внутри ячейки.
- После вызова [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) создается новая ячейка, и любое содержимое, добавленное с помощью других методов класса [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), будет добавлено в текущую ячейку. Чтобы создать новую ячейку в той же строке, снова вызовите **InsertCell**.
- Если **InsertCell** вызывается сразу после [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) и в конце строки, таблица будет продолжена в новой строке.
- Метод [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) для завершения работы с таблицей следует вызывать только один раз после вызова **EndRow**. Вызов **EndTable** перемещает курсор из текущей ячейки в позицию, расположенную сразу за таблицей.

{{% /alert %}}

Процесс создания таблицы можно наглядно увидеть на следующем рисунке:

![creating-table-process](creating-table-process.jpg)

В следующем примере кода показано, как создать простую таблицу, используя **DocumentBuilder** с форматированием по умолчанию:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

В следующем примере кода показано, как создать отформатированную таблицу, используя DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

В следующем примере кода показано, как вставить вложенную таблицу, используя DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Создайте таблицу с помощью DOM (объектной модели документа)

Вы можете вставлять таблицы непосредственно в DOM, добавляя новый узел [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) в определенном месте.

Пожалуйста, обратите внимание, что сразу после создания узла таблицы сама таблица будет полностью пустой, то есть в ней еще не будет строк и ячеек. Чтобы вставить строки и ячейки в таблицу, добавьте соответствующие дочерние узлы [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) в DOM.

{{% alert color="primary" %}}

При этом методе создания таблицы используются те же значения по умолчанию, что и при использовании параметра **DocumentBuilder**.

{{% /alert %}}

В следующем примере кода показано, как создать новую таблицу с нуля, добавив соответствующие дочерние узлы в дерево документа:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Создайте таблицу из HTML

Aspose.Words поддерживает вставку содержимого в документ из HTML-источника с использованием метода [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). Входными данными могут быть полная HTML-страница или только частичный фрагмент.

Используя метод **InsertHtml**, пользователи могут вставлять таблицы в документ с помощью тегов таблиц, таких как `<table>`, `<tr>`, `<td>`.

В следующем примере кода показано, как вставить таблицу в документ из строки, содержащей HTML-теги:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Вставьте копию существующей таблицы

Часто возникает необходимость создать таблицу на основе уже существующей таблицы в документе. Самый простой способ скопировать таблицу с сохранением всего форматирования - это клонировать узел таблицы, используя метод [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Тот же метод можно использовать для добавления копий существующей строки или ячейки в таблицу.

В следующем примере кода показано, как дублировать таблицу с помощью конструкторов узлов:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

В следующем примере кода показано, как клонировать последнюю строку таблицы и добавить ее в таблицу:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Если вы планируете создавать таблицы в документе, которые динамически увеличиваются с каждой записью из вашего источника данных, то описанный выше метод не рекомендуется. Вместо этого желаемый результат проще получить, используя Mail merge с регионами. Вы можете узнать больше об этом методе в [Mail Merge с регионами](/words/cpp/types-of-mail-merge-operations/) раздел.

## Сравните способы создания таблицы

Aspose.Words предоставляет несколько методов для создания новых таблиц в документе. Каждый метод имеет свои преимущества и недостатки, поэтому выбор того, какой из них использовать, часто зависит от конкретной ситуации.

Давайте подробнее рассмотрим эти способы создания таблиц и сравним их плюсы и минусы:

| Метод | Недостатки |
| :- | :- |
| `DocumentBuilder` | Стандартный метод вставки таблиц и другого содержимого документа | Иногда бывает сложно создать множество разновидностей таблиц одновременно с помощью одного и того же экземпляра конструктора |
| Лучше вписывается в окружающий код, который создает и вставляет узлы непосредственно в DOM без использования **DocumentBuilder** | Таблица создается "пустой": перед выполнением большинства операций вы должны вызвать [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/), чтобы создать все отсутствующие дочерние узлы |
| Можно создать новую таблицу из HTML-источника, используя такие теги, как `<table>`, `<tr>`, `<td>` |
| Вы можете создать копию существующей таблицы, сохранив все форматирование строк и ячеек | Соответствующие дочерние узлы должны быть удалены, прежде чем таблица будет готова к использованию |
