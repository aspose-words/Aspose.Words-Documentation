---
title: Форматирование таблицы в C#
second_title: Aspose.Words для .NET
articleTitle: Применить форматирование таблицы
linktitle: Применить форматирование таблицы
description: "Подробное форматирование таблицы с использованием C#. Используйте C# для форматирования каждой части таблицы."
type: docs
weight: 70
url: /ru/net/applying-formatting/
---

К каждому элементу таблицы можно применить разное форматирование. Например, форматирование таблицы будет применено ко всей таблице, форматирование строк — только к определенным строкам, форматирование ячеек — только к определенным ячейкам.

Aspose.Words предоставляет богатый набор API для извлечения и применения форматирования к таблице. Вы можете использовать узлы [Table](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/ru/net/aspose.words.tables/rowformat/) и [CellFormat](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/) для установки форматирования.

В этой статье мы поговорим о том, как применять форматирование к различным узлам таблицы и какие настройки форматирования таблицы поддерживает Aspose.Words.

## Применить форматирование к различным узлам

В этом разделе мы рассмотрим применение форматирования к различным узлам таблицы.

### Форматирование уровня таблицы

Чтобы применить форматирование к таблице, вы можете использовать свойства, доступные на соответствующем узле **Table**, используя классы [Table](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/) и [TableCollection](https://reference.aspose.com/words/ru/net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Обратите внимание, что для применения свойств таблицы в таблице должна быть хотя бы одна строка. Это означает, что при построении таблицы с [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) это форматирование должно выполняться после первого вызова [InsertCell](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertcell/), или после добавления первой строки в таблицу, или при вставке узлов непосредственно в DOM.

{{% /alert %}}

На рисунках ниже показано представление функций форматирования **Table** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

В следующем примере кода показано, как применить контурную рамку к таблице:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

В следующем примере кода показано, как построить таблицу со всеми включенными границами (сетка):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Форматирование на уровне строк

Форматированием **Уровень строки** можно управлять с помощью классов [Row](https://reference.aspose.com/words/ru/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/ru/net/aspose.words.tables/rowformat/) и [RowCollection](https://reference.aspose.com/words/ru/net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Обратите внимание, что **Row** может быть только дочерним узлом **Table**. В то же время в **Row** должен быть хотя бы один **Cell**, чтобы к нему можно было применить форматирование.

{{% /alert %}}

На рисунках ниже показано представление функций форматирования **Row** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

В следующем примере кода показано, как изменить форматирование строк таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Форматирование на уровне ячеек

Форматирование на уровне ячеек контролируется классами [Cell](https://reference.aspose.com/words/ru/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/) и [CellCollection](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Обратите внимание, что **Cell** может быть только дочерним узлом **Row**. В то же время в **Cell** должен быть хотя бы один [Paragraph](https://reference.aspose.com/words/ru/net/aspose.words/paragraph/), чтобы к нему можно было применить форматирование.

Помимо **Paragraph**, вы также можете вставить **Table** в **Cell**.

{{% /alert %}}

На рисунках ниже показано представление функций форматирования **Cell** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

В следующем примере кода показано, как изменить форматирование ячейки таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

В следующем примере кода показано, как задать объем пространства (в пунктах), добавляемого слева/сверху/справа/снизу содержимого ячейки:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Укажите высоту строк

Самый простой способ установить высоту строки — использовать значение **DocumentBuilder**. Используя соответствующие свойства **RowFormat**, вы можете установить настройку высоты по умолчанию или применить другую высоту для каждой строки в таблице.

В Aspose.Words высота строки таблицы контролируется:

- свойство высоты строки – [Height](https://reference.aspose.com/words/ru/net/aspose.words.tables/rowformat/height/)
- свойство правила высоты для данной строки – [HeightRule](https://reference.aspose.com/words/ru/net/aspose.words.tables/rowformat/heightrule/)

При этом для каждой строки можно задать разную высоту — это позволяет широко контролировать настройки таблицы.

{{% alert color="primary" %}}

Параметры правила для указания высоты объекта можно задать с помощью перечисления [HeightRule](https://reference.aspose.com/words/ru/net/aspose.words/heightrule/).

{{% /alert %}}

В следующем примере кода показано, как создать таблицу, содержащую одну ячейку, и применить форматирование строк:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Укажите ширину таблицы и ячеек

Таблица в документе Microsoft Word предоставляет несколько различных способов изменения размера таблицы и отдельных ячеек. Эти свойства позволяют значительно контролировать внешний вид и поведение таблицы, так что Aspose.Words поддерживает поведение таблиц, как и Microsoft Word.

Важно знать, что элементы таблицы обладают несколькими различными свойствами, которые могут влиять на то, как рассчитывается ширина всей таблицы, а также отдельных ячеек:

- Предпочтительная ширина таблицы
- Предпочтительная ширина отдельных ячеек
- Разрешение автоподбора на таблице

В этой статье подробно описано, как работают различные свойства расчета ширины таблицы и как получить полный контроль над расчетом ширины таблицы. Это
особенно полезно знать в таких случаях, когда макет таблицы выглядит не так, как ожидалось.

{{% alert color="primary" %}}

В большинстве случаев рекомендуется использовать предпочтительную ячейку, а не ширину таблицы. Предпочтительная ширина ячейки больше соответствует спецификации формата DOCX, а также модели Aspose.Words.

Ширина ячейки на самом деле является расчетным значением для формата DOCX. Фактическая ширина ячейки может зависеть от многих вещей. Например, изменение полей страницы или предпочтительной ширины таблицы может повлиять на фактическую ширину ячейки.

Предпочтительная ширина ячейки — это свойство ячейки, которое хранится в документе. Оно ни от чего не зависит и не меняется при изменении таблицы или других свойств ячейки.

{{% /alert %}}

{{% alert color="primary" %}}

Все свойства и методы, описанные в этой статье, связаны с тем, как работают таблицы в Microsoft Word. Поэтому в большинстве случаев, если вы создаете таблицу программным способом, но вам сложно создать нужную таблицу, вы можете вместо этого попробовать сначала создать ее визуально в Microsoft Word. а затем просто скопируйте значения форматирования в свое приложение.

{{% /alert %}}

### Как использовать предпочтительную ширину

Желаемая ширина таблицы или отдельных ячеек определяется через свойство предпочтительной ширины, которое представляет собой размер, которому стремится соответствовать элемент. То есть предпочтительную ширину можно указать для всей таблицы или для отдельных ячеек. В некоторых ситуациях может оказаться невозможным точно подогнать эту ширину, но фактическая ширина в большинстве случаев будет близка к этому значению.

Соответствующий предпочтительный тип и значение ширины задаются с помощью методов класса [PreferredWidth](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/):

* метод [Auto](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/auto/) для указания авто или "нет предпочтительной ширины"
* метод [FromPercent](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/frompercent/) для указания ширины в процентах
* метод [FromPoints](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/frompoints/) для указания ширины в пунктах

На рисунках ниже показано представление *предпочтительных функций настройки ширины* в Microsoft Word и соответствующих им свойств в Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

Пример того, как эти параметры применяются к реальной таблице в документе, можно увидеть на рисунке ниже.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Прежде чем вы сможете использовать предпочтительную ширину в таблице, вы должны убедиться, что таблица содержит хотя бы одну строку. Это связано с тем, что такое форматирование таблицы в документе Microsoft Word или в документе, созданном в Aspose.Words, сохраняется в строках таблицы.

{{% /alert %}}

#### Укажите предпочтительную ширину таблицы или ячейки

В Aspose.Words ширина таблицы и ячеек задается с помощью свойства [Table.PreferredWidth](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/preferredwidth/) и свойства [CellFormat.PreferredWidth](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/preferredwidth/), а параметры доступны в перечислении [PreferredWidthType](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidthtype/):

- **Auto**, что эквивалентно отсутствию предпочтительного набора ширины
- **Percent**, который соответствует размеру элемента относительно доступного пространства в окне или контейнере и пересчитывает значение при изменении доступной ширины
- **Points**, что соответствует элементу указанной ширины в пунктах

{{% alert color="primary" %}}

По умолчанию таблицу можно описать как занимающую 100 % доступного места на странице. В данном случае это означает, что таблица попытается занять пространство между левым и правым полями страницы.

{{% /alert %}}

Использование свойства [Table.PreferredWidth](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/preferredwidth/) позволяет настроить предпочтительную ширину относительно контейнера: страницы, текстового столбца или внешней ячейки таблицы, если это вложенная таблица.

В следующем примере кода показано, как настроить автоматическое масштабирование таблицы до 50 % ширины страницы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

Использование свойства [CellFormat.PreferredWidth](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/preferredwidth/) для данной ячейки изменит ее предпочтительную ширину.

В следующем примере кода показано, как установить различные параметры предпочтительной ширины:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Найдите предпочтительный тип и значение ширины

Вы можете использовать свойства [Type](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/type/) и [Value](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidth/value/), чтобы найти сведения о предпочтительной ширине нужной таблицы или ячейки.

В следующем примере кода показано, как получить предпочтительный тип ширины ячейки таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Как установить автоподбор

Свойство [AllowAutoFit](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/allowautofit/) позволяет ячейкам таблицы увеличиваться и уменьшаться в соответствии с выбранным критерием. Например, вы можете использовать параметр **Автоподгонка к окну**, чтобы подогнать таблицу по ширине страницы, а параметр **Автоподбор по содержимому**, чтобы позволить каждой ячейке увеличиваться или уменьшаться в зависимости от ее содержимого.

{{% alert color="primary" %}}

Кроме того, свойство **AllowAutoFit** можно использовать в сочетании с предпочтительной шириной ячейки для форматирования ячейки, которая автоматически соответствует ее содержимому, но также имеет начальную ширину. При необходимости ширина ячейки может превысить эту ширину.

{{% /alert %}}

По умолчанию Aspose.Words вставляет новую таблицу, используя **Автоподгонка к окну**. Размер таблицы будет соответствовать доступной ширине страницы. Чтобы изменить размер таблицы, вы можете вызвать метод [AutoFit](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/autofit/). Этот метод принимает перечисление [AutoFitBehavior](https://reference.aspose.com/words/ru/net/aspose.words.tables/autofitbehavior/), которое указывает, какой тип автоподбора применяется к таблице.

Важно знать, что метод автоподбора на самом деле является ярлыком, который одновременно применяет к таблице разные свойства. Это свойства, которые фактически придают таблице наблюдаемое поведение. Мы обсудим эти свойства для каждого варианта автоподбора.

В следующем примере кода показано, как настроить таблицу на уменьшение или увеличение каждой ячейки в соответствии с ее содержимым:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Автоподгонка таблицы к окну

Когда автоподгонка к окну применяется к таблице, фактически незаметно выполняются следующие операции:

1. Свойство **Table.AllowAutoFit** позволяет автоматически изменять размеры столбцов в соответствии с доступным содержимым, используя значение **Table.PreferredWidth**, равное 100 %
2. Из всех ячеек таблицы удалено **CellFormat.PreferredWidth**
  {{% alert color="primary" %}}
  Обратите внимание, что это немного отличается от поведения Microsoft Word, где предпочтительной ширине каждой ячейки присваиваются соответствующие значения в зависимости от ее текущего размера и содержимого. Aspose.Words не обновляет предпочтительную ширину, поэтому вместо этого она просто очищается.
  {{% /alert %}}
3. Ширина столбцов пересчитывается для текущего содержимого таблицы – конечным результатом является таблица, занимающая всю доступную ширину
4. Ширина столбцов в таблице меняется автоматически по мере редактирования текста пользователем

В следующем примере кода показано, как автоматически подогнать таблицу по ширине страницы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Автоподбор таблицы по содержимому

Когда в таблицу автоматически подставляется содержимое, фактически выполняются следующие шаги:

1. Свойство **Table.AllowAutoFit** позволяет автоматически изменять размер каждой ячейки в соответствии с ее содержимым

2. Предпочтительная ширина таблицы удалена из **Table.PreferredWidth**, удалено **CellFormat.PreferredWidth** для каждой ячейки таблицы
  {{% alert color="primary" %}}

  Обратите внимание, что этот параметр автоподбора удаляет из ячеек предпочтительную ширину, как и в Microsoft Word. Если вы хотите сохранить размеры столбцов и увеличить или уменьшить столбцы в соответствии с содержимым, вам следует установить для свойства **Table.AllowAutoFit** значение **True** самостоятельно, а не использовать ярлык автоподбора.{{% /alert %}}

3. Ширина столбцов пересчитывается для текущего содержимого таблицы. Конечным результатом является таблица, в которой ширина столбцов и ширина всей таблицы автоматически изменяются для наилучшего соответствия содержимому по мере того, как пользователь редактирует текст

В следующем примере кода показано, как автоматически подогнать таблицу под ее содержимое:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Отключите автоподбор в таблице и используйте фиксированную ширину столбцов

Если в таблице отключено автоподбор и вместо этого используются фиксированные ширины столбцов, выполняются следующие шаги:

1. Свойство **Table.AllowAutoFit** отключено, поэтому столбцы не увеличиваются и не сжимаются до их содержимого

2. Из **Table.PreferredWidth** удалена предпочтительная ширина всей таблицы, из всех ячеек таблицы удалена **CellFormat.PreferredWidth**
3. Конечным результатом является таблица, ширина столбцов которой определяется свойством [CellFormat.Width](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/width/), и размеры столбцов которой не изменяются автоматически при вводе пользователем текста или изменении размера страницы

{{% alert color="primary" %}}

Обратите внимание: если для **CellFormat.Width** ширина не указана, используется значение по умолчанию — один дюйм (72 пункта).

{{% /alert %}}

В следующем примере кода показано, как отключить автоподбор и включить фиксированную ширину для указанной таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Порядок приоритета при расчете ширины ячейки

Aspose.Words позволяет пользователям определять ширину таблицы или ячейки с помощью нескольких объектов, включая [CellFormat](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/) — его свойство [Width](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/width/) по большей части осталось от предыдущих версий, однако оно по-прежнему полезно для упрощения настройки ширины ячейки.

Важно знать, что свойство **CellFormat.Width** работает по-разному в зависимости от того, какое из других свойств ширины уже существует в таблице.

Aspose.Words использует следующий порядок расчета ширины ячеек:

|  Заказ |  Свойство |  Описание |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/allowautofit/) определено |  Если **AutoFit** включен:<br>- таблица может выйти за пределы предпочтительной ширины, чтобы вместить содержимое – обычно она не сжимается ниже предпочтительной ширины<br>- любое изменение значения **CellFormat.Width** игнорируется, и вместо этого ячейка будет соответствовать ее содержимому |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidthtype/) со значением **Points** или **Percent** |  **CellFormat.Width** игнорируется |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/ru/net/aspose.words.tables/preferredwidthtype/) со значением **Auto** |  Значение из **CellFormat.Width** копируется и становится предпочтительной шириной ячейки (в пунктах) |

{{% alert color="primary" %}}

Любые изменения свойства ширины не обновляются в предпочтительной ширине и вместо этого должны применяться к предпочтительной ширине.

{{% /alert %}}

{{% alert color="primary" %}}

При создании фиксированного макета таблицы укажите ширину ячейки. Ячейку без ширины невозможно сохранить в формате DOC. Форматы документов, отличные от DOC, такие как DOCX, в принципе позволяют сохранять ячейки без ширины в фиксированном макете таблицы.

{{% /alert %}}

## Разрешить расстояние между ячейками

Вы можете получить или установить любое дополнительное пространство между ячейками таблицы аналогично опции "Интервал между ячейками" в Microsoft Word. Это можно сделать с помощью свойства [AllowCellSpacing](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/allowcellspacing/).

Пример того, как эти параметры применяются к реальной таблице в документе, можно увидеть на рисунке ниже.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="форматирование-пространство-между-ячейками-aspose-words-net" style="width:500px"/>

В следующем примере кода показано, как установить расстояние между ячейками:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Примените границы и заливку

Границы и заливку можно применять либо ко всей таблице с помощью [Table.SetBorder](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/setborders/) и [Table.SetShading](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/setshading/), либо только к определенным ячейкам с помощью [CellFormat.Borders](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/borders/) и [CellFormat.Shading](https://reference.aspose.com/words/ru/net/aspose.words.tables/cellformat/shading/). Кроме того, границы строк можно установить с помощью [RowFormat.Borders](https://reference.aspose.com/words/ru/net/aspose.words.tables/rowformat/borders/), однако затенение применить таким способом невозможно.

На рисунках ниже показаны настройки границы и тени в Microsoft Word и соответствующие им свойства в Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

В следующем примере кода показано, как отформатировать таблицу и ячейку с разными границами и оттенками:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}