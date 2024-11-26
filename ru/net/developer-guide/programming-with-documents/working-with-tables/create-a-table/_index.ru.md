---
title: Как создать стол в C#
second_title: Aspose.Words для .NET
articleTitle: Создайте стол
linktitle: Создайте стол
description: "Руководство о том, как сделать стол в C# различными способами. Создать стол в C# для вашего документа."
type: docs
weight: 20
url: /ru/net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words Это позволяет пользователям создавать таблицы в документе с нуля и предоставляет несколько различных методов для этого. В этой статье представлена подробная информация о том, как добавить отформатированные таблицы в ваш документ с использованием каждого метода, а также сравнение каждого метода в конце статьи.

## По умолчанию Table Styles

Вновь созданной таблице приведены значения по умолчанию, аналогичные тем, которые используются в Microsoft Word:

|  Настольная собственность |  Дефолт в Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Таблица может быть встроенной, если она плотно расположена, или плавающей, если она может быть размещена в любом месте на странице. По умолчанию, Aspose.Words Всегда создает таблицы.

{{% /alert %}}

## Создайте таблицу с документостроителем

В Aspose.Words, Пользователи могут создать таблицу в документе, используя [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Основной алгоритм создания таблицы выглядит следующим образом:

1. Начните стол с [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Добавьте ячейку в стол, используя [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) Это автоматически запускает новый ряд
3. По желанию используйте [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) свойство определять форматирование ячеек
4. Вставьте содержимое ячейки, используя соответствующую **DocumentBuilder** Такие методы, как [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/), и другие
5. Повторять шаги 2-4 до завершения строки
6. Звони. [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) Чтобы закончить текущий ряд
7. По желанию используйте [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) свойство указывать форматирование строк
8. Повторите шаги 2-7, пока таблица не будет завершена
9. Звони. [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) Чтобы закончить строительство стола

{{% alert color="primary" %}}

Важные детали:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) Его также можно назвать внутри клетки, и в этом случае он начинает создание вложенного стола внутри клетки.
* После звонка [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), создается новая ячейка и любой контент, который вы добавляете, используя другие методы [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Класс будет добавлен к текущей ячейке. Чтобы создать новую ячейку в том же ряду, позвоните **InsertCell** Опять.
* Если **InsertCell** Называется сразу после [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) В конце строки стол продолжится на новой строке.
* The [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) Способ окончания таблицы следует вызывать только один раз после вызова **EndRow**. Звонить **EndTable** перемещает курсор из текущей ячейки в положение сразу после стола.

{{% /alert %}}

Процесс создания таблицы можно четко увидеть на следующей картинке:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

Следующий пример кода показывает, как создать простую таблицу. **DocumentBuilder** с форматированием по умолчанию:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Следующий пример кода показывает, как создать отформатированную таблицу с помощью DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Следующий пример кода показывает, как вставить вложенную таблицу с помощью DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Создайте стол через DOM ()Document Object Model)

Вы можете вставлять таблицы непосредственно в DOM Добавляя новый [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) Узел в определенной позиции.

Обратите внимание, что сразу после создания столового узла сам стол будет полностью пустым, то есть он еще не содержит строк и ячеек. Чтобы вставить строки и ячейки в таблицу, добавьте соответствующие [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) Детские узлы в DOM.

{{% alert color="primary" %}}

Этот метод создания таблицы использует те же по умолчанию таблицы, что и при использовании таблицы. **DocumentBuilder**.

{{% /alert %}}

Следующий пример кода показывает, как построить новую таблицу с нуля, добавив соответствующие узлы ребенка в дерево документов:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Создайте таблицу из HTML

Aspose.Words поддерживает вставку контента в документ из источника HTML с использованием [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) метод. Ввод может быть полной HTML-страницей или просто частичным фрагментом.

Используя **InsertHtml** метод, пользователи могут вставлять таблицы в документ с помощью тегов таблицы, таких как `<table>`, `<tr>`, `<td>`.

Следующий пример кода показывает, как вставить таблицу в документ из строки, содержащей теги HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Вставить копию существующего стола

Нередко возникает необходимость создания таблицы на основе уже существующей таблицы в документе. Самый простой способ дублировать таблицу, сохраняя при этом все форматирование, - это клонировать узел таблицы с помощью [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) метод.

Этот же метод можно использовать для добавления копий существующей строки или ячейки в таблицу.

Следующий пример кода показывает, как дублировать таблицу с помощью конструкторов узлов:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Следующий пример кода показывает, как клонировать последнюю строку таблицы и добавить ее к таблице:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Если вы смотрите на создание таблиц в документе, которые динамически растут с каждой записью из вашего источника данных, то вышеупомянутый метод не рекомендуется. Вместо этого желаемый результат легче достигается с помощью Mail merge с регионами. Вы можете узнать больше об этой технике в [Mail Merge с регионами](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) Раздел.

## Сравните способы создания таблицы

Aspose.Words Предоставляет несколько способов создания новых таблиц в документе. Каждый метод имеет свои преимущества и недостатки, поэтому выбор того, какой из них использовать, часто зависит от конкретной ситуации.

Давайте более подробно рассмотрим эти способы создания таблиц и сравним их плюсы и минусы:

|  метод | Преимущества |  Недостатки |
|  :-  |  :-  |  :-  |
| Виа `DocumentBuilder` | Стандартный метод вставки таблиц и другого содержания документов | Иногда трудно создать много разновидностей таблиц одновременно с одним и тем же экземпляром конструктора |
| Виа DOM |  Лучше подходит с окружающим кодом, который создает и вставляет узлы непосредственно в DOM Без использования a **DocumentBuilder** | Таблица создается "пустой": перед выполнением большинства операций необходимо позвонить [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) Создание любых недостающих узлов ребенка |
| Из HTML | Может создать новую таблицу из HTML-источника с помощью тегов, таких как: `<table>`, `<tr>`, `<td>` | Не все возможно Microsoft Word Форматы таблиц могут быть применены к HTML |
| Клонирование существующего стола | Вы можете создать копию существующей таблицы, сохраняя при этом форматирование всех строк и ячеек | Соответствующие детские узлы должны быть удалены до того, как стол будет готов к использованию |
