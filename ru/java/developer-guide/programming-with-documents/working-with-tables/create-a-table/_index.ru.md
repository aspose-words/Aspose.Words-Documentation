---
title: Как создать таблицу в Java
second_title: Aspose.Words для Java
articleTitle: Создайте таблицу
linktitle: Создайте таблицу
description: "Различные способы создания таблиц в вашем документе с помощью Java."
type: docs
weight: 20
url: /ru/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words позволяет пользователям создавать таблицы в документе с нуля и предоставляет несколько различных методов для этого. В этой статье представлены подробные сведения о том, как добавлять отформатированные таблицы в документ, используя каждый из методов, а также сравнение каждого метода в конце статьи.

## Стили таблиц по умолчанию

Вновь созданной таблице присваиваются значения по умолчанию, аналогичные тем, которые используются в Microsoft Word:

| Свойство таблицы | Значение по умолчанию в Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Цвет границы | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Таблица может быть встроенной, если она расположена плотно, или плавающей, если ее можно разместить в любом месте страницы. По умолчанию Aspose.Words всегда создает встроенные таблицы.

{{% /alert %}}

## Создайте таблицу с DocumentBuilder

В Aspose.Words пользователи могут создать таблицу в документе, используя [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Основной алгоритм создания таблицы следующий:

1. Начните таблицу с [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Добавьте ячейку в таблицу, используя [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – при этом автоматически начнется новая строка
3. При необходимости используйте свойство [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat), чтобы задать форматирование ячеек
4. Вставьте содержимое ячейки, используя соответствующие методы **DocumentBuilder**, такие как [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) и другие
5. Повторяйте шаги 2-4, пока строка не будет завершена
6. Вызовите [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow), чтобы завершить текущую строку
7. При необходимости используйте свойство [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat), чтобы задать форматирование строк
8. Повторяйте шаги 2-7 до тех пор, пока таблица не будет заполнена
9. Вызовите [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable), чтобы завершить построение таблицы

{{% alert color="primary" %}}

Важные детали:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) также может быть вызван внутри ячейки, и в этом случае он запускает создание вложенной таблицы внутри ячейки.
- После вызова [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) создается новая ячейка, и любое содержимое, добавленное с помощью других методов класса [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), будет добавлено в текущую ячейку. Чтобы создать новую ячейку в той же строке, снова вызовите **InsertCell**.
- Если **InsertCell** вызывается сразу после [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) и в конце строки, таблица будет продолжена в новой строке.
- Метод [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) для завершения работы с таблицей следует вызывать только один раз после вызова **EndRow**. Вызов **EndTable** перемещает курсор из текущей ячейки в позицию, расположенную сразу за таблицей.

{{% /alert %}}

Процесс создания таблицы можно наглядно увидеть на следующем рисунке:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

В следующем примере кода показано, как создать простую таблицу, используя **DocumentBuilder** с форматированием по умолчанию:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

В следующем примере кода показано, как создать отформатированную таблицу, используя DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

В следующем примере кода показано, как вставить вложенную таблицу, используя DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Создайте таблицу с помощью DOM (объектная модель документа)

Вы можете вставить таблицы непосредственно в DOM, добавив новый узел [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) в определенном месте.

Обратите внимание, что сразу после создания узла таблицы сама таблица будет полностью пустой, то есть в ней еще не будет строк и ячеек. Чтобы вставить строки и ячейки в таблицу, добавьте соответствующие дочерние узлы [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) в DOM.

{{% alert color="primary" %}}

При этом методе создания таблицы используются те же значения по умолчанию, что и при использовании параметра **DocumentBuilder**.

{{% /alert %}}

В следующем примере кода показано, как создать новую таблицу с нуля, добавив соответствующие дочерние узлы в дерево документа:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Создайте таблицу из HTML

Aspose.Words поддерживает вставку содержимого в документ из источника HTML с использованием метода [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String). Входными данными могут быть полная страница HTML или только частичный фрагмент.

Используя этот метод **InsertHtml**, пользователи могут вставлять таблицы в документ с помощью тегов таблиц, таких как `<table>`, `<tr>`, `<td>`.

В следующем примере кода показано, как вставить таблицу в документ из строки, содержащей теги HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Вставьте копию существующей таблицы

Часто возникает необходимость создать таблицу на основе уже существующей таблицы в документе. Самый простой способ скопировать таблицу с сохранением всего форматирования - это клонировать узел таблицы, используя метод [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean).

Тот же метод можно использовать для добавления копий существующей строки или ячейки в таблицу.

В следующем примере кода показано, как дублировать таблицу с помощью конструкторов узлов:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

В следующем примере кода показано, как клонировать последнюю строку таблицы и добавить ее в таблицу:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Если вы планируете создавать таблицы в документе, которые динамически увеличиваются с каждой записью из вашего источника данных, то описанный выше метод не рекомендуется. Вместо этого желаемый результат проще получить, используя Mail merge с регионами. Вы можете узнать больше об этом методе в [Mail Merge с регионами](/words/java/types-of-mail-merge-operations/) раздел.

## Сравните способы создания таблицы

Aspose.Words предоставляет несколько методов для создания новых таблиц в документе. Каждый метод имеет свои преимущества и недостатки, поэтому выбор того, какой из них использовать, часто зависит от конкретной ситуации.

Давайте подробнее рассмотрим эти способы создания таблиц и сравним их плюсы и минусы:

| Метод | Преимущества | Недостатки |
| :- | :- | :- |
| Через `DocumentBuilder` | Стандартный метод вставки таблиц и другого содержимого документа | Иногда бывает сложно создать множество разновидностей таблиц одновременно с помощью одного и того же экземпляра конструктора |
| Через DOM | Лучше вписывается в окружающий код, который создает и вставляет узлы непосредственно в DOM без использования **DocumentBuilder** | Таблица создается "пустой": перед выполнением большинства операций вы должны вызвать [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum), чтобы создать все отсутствующие дочерние узлы |
| Из HTML | Можно создать новую таблицу из источника HTML, используя такие теги, как `<table>`, `<tr>`, `<td>` | Не все возможные форматы таблиц Microsoft Word могут быть применены к HTML |
| Клонирование существующей таблицы | Вы можете создать копию существующей таблицы, сохранив все форматирование строк и ячеек | Соответствующие дочерние узлы должны быть удалены, прежде чем таблица будет готова к использованию |
