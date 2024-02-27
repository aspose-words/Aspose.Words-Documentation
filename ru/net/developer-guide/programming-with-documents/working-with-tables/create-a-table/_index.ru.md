---
title: Как создать таблицу в C#
second_title: Aspose.Words для .NET
articleTitle: Создать таблицу
linktitle: Создать таблицу
description: "Руководство как сделать таблицу в C# разными способами. Создайте таблицу C# для вашего документа."
type: docs
weight: 20
url: /ru/net/create-a-table/
---

Aspose.Words позволяет пользователям создавать таблицы в документе с нуля и предоставляет для этого несколько различных методов. В этой статье представлены подробности о том, как добавить форматированные таблицы в документ с помощью каждого метода, а также сравнение каждого метода в конце статьи.

## Стили таблиц по умолчанию

Вновь созданной таблице присваиваются значения по умолчанию, аналогичные тем, которые использовались в Microsoft Word:

|  Свойство таблицы |  По умолчанию в Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Таблица может быть встроенной, если она плотно расположена, или плавающей, если ее можно разместить в любом месте страницы. По умолчанию Aspose.Words всегда создает встроенные таблицы.

{{% /alert %}}

## Создайте таблицу с помощью DocumentBuilder

В Aspose.Words пользователи могут создавать таблицы в документе с помощью [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Основной алгоритм создания таблицы следующий:

1. Начните таблицу с [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Добавьте в таблицу ячейку с номером [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) — при этом автоматически начнется новая строка
3. При необходимости используйте свойство [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/), чтобы указать форматирование ячейки
4. Вставьте содержимое ячейки, используя соответствующие методы **DocumentBuilder**, такие как [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) и другие
5. Повторяйте шаги 2–4, пока ряд не завершится
6. Позвоните по номеру [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/), чтобы завершить текущую строку
7. При необходимости используйте свойство [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/), чтобы указать форматирование строки
8. Повторяйте шаги 2–7, пока таблица не будет заполнена
9. Позвоните по номеру [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/), чтобы закончить сборку таблицы

{{% alert color="primary" %}}

Важные детали:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) также можно вызвать внутри ячейки, и в этом случае он запускает создание вложенной таблицы внутри ячейки.
* После вызова [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) создается новая ячейка, и любой контент, который вы добавляете с помощью других методов класса [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), будет добавлен в текущую ячейку. Чтобы создать новую ячейку в той же строке, снова позвоните по номеру **InsertCell**.
* Если **InsertCell** вызывается сразу после [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) и конца строки, таблица продолжится с новой строки.
* Метод [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) для завершения таблицы следует вызывать только один раз после вызова **EndRow**. Вызов **EndTable** перемещает курсор из текущей ячейки в позицию сразу после таблицы.

{{% /alert %}}

Процесс создания таблицы наглядно можно увидеть на следующей картинке:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

В следующем примере кода показано, как создать простую таблицу, используя **DocumentBuilder** с форматированием по умолчанию:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

В следующем примере кода показано, как создать форматированную таблицу с помощью DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

В следующем примере кода показано, как вставить вложенную таблицу с помощью DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Создайте таблицу через DOM (Document Object Model)

Вы можете вставлять таблицы непосредственно в DOM, добавив новый узел [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) в определенную позицию.

Обратите внимание, что сразу после создания узла таблицы сама таблица будет совершенно пустой, то есть еще не содержит строк и ячеек. Чтобы вставить строки и ячейки в таблицу, добавьте соответствующие дочерние узлы [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) к DOM.

{{% alert color="primary" %}}

Этот метод создания таблицы использует те же настройки таблицы по умолчанию, что и при использовании **DocumentBuilder**.

{{% /alert %}}

В следующем примере кода показано, как создать новую таблицу с нуля, добавив соответствующие дочерние узлы в дерево документа:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Создать таблицу из HTML

Aspose.Words поддерживает вставку содержимого в документ из источника HTML с помощью метода [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/). Входные данные могут представлять собой полную HTML-страницу или только ее частичный фрагмент.

Используя метод **InsertHtml**, пользователи могут вставлять таблицы в документ с помощью тегов таблиц, таких как `<table>`, `<tr>`, `<td>`.

В следующем примере кода показано, как вставить таблицу в документ из строки, содержащей теги HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Вставка копии существующей таблицы

Часто бывают случаи, когда вам нужно создать таблицу на основе уже существующей таблицы в документе. Самый простой способ дублировать таблицу с сохранением всего форматирования — клонировать узел Таблица с помощью метода [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/).

Тот же метод можно использовать для добавления в таблицу копий существующей строки или ячейки.

В следующем примере кода показано, как дублировать таблицу с помощью конструкторов узлов:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

В следующем примере кода показано, как клонировать последнюю строку таблицы и добавить ее в таблицу:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Если вы хотите создать в документе таблицы, которые будут динамически расширяться с каждой записью из вашего источника данных, то описанный выше метод не рекомендуется. Вместо этого желаемый результат легче достичь, используя Mail merge с регионами. Подробнее об этой технике вы можете узнать в разделе [Mail Merge с регионами](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## Сравните способы создания таблицы

Aspose.Words предоставляет несколько методов для создания новых таблиц в документе. Каждый метод имеет свои преимущества и недостатки, поэтому выбор того, какой из них использовать, зачастую зависит от конкретной ситуации.

Давайте подробнее рассмотрим эти способы создания таблиц и сравним их плюсы и минусы:

|  Метод | Преимущества |  Недостатки |
|  :-  |  :-  |  :-  |
| Через `DocumentBuilder` | Стандартный метод вставки таблиц и другого содержимого документа | Иногда сложно создать множество разновидностей таблиц одновременно с помощью одного и того же экземпляра построителя |
| Через DOM |  Лучше сочетается с окружающим кодом, который создает и вставляет узлы непосредственно в DOM без использования **DocumentBuilder** | Таблица создается "пустой": перед выполнением большинства операций необходимо позвонить по номеру [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/), чтобы создать недостающие дочерние узлы |
| Из HTML | Можно создать новую таблицу из источника HTML, используя такие теги, как `<table>`, `<tr>`, `<td>` | Не все возможные форматы таблиц Microsoft Word можно применить к HTML |
| Клонирование существующей таблицы | Вы можете создать копию существующей таблицы, сохранив при этом форматирование всех строк и ячеек | Соответствующие дочерние узлы необходимо удалить, прежде чем таблица будет готова к использованию |