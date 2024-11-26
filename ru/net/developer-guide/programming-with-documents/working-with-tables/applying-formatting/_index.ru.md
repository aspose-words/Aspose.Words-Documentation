---
title: Форматирование стола в C#
second_title: Aspose.Words для .NET
articleTitle: Применять форматирование стола
linktitle: Применять форматирование стола
description: "Форматирование таблицы в деталях с использованием C#. Использовать C# форматировать каждую часть таблицы."
type: docs
weight: 70
url: /ru/net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Каждый элемент таблицы может быть применен с различным форматированием. Например, форматирование таблицы будет применяться ко всей таблице, форматирование строк только к конкретным строкам, форматирование ячеек только к определенным ячейкам.

Aspose.Words Предоставляет богатый API Восстановить и применить форматирование к таблице. Вы можете использовать [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/), и [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) Узлы для настройки форматирования.

В этой статье мы поговорим о том, как применять форматирование к различным узлам таблицы и какие настройки форматирования таблицы Aspose.Words Поддержка.

## Применять форматирование к различным узлам

В этом разделе мы рассмотрим применение форматирования к различным узлам таблицы.

### Уровень таблицы для форматирования

Чтобы применить форматирование к таблице, можно использовать свойства, доступные на соответствующей **Table** Узел, использующий [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/), и [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/) классы.

{{% alert color="primary" %}}

Обратите внимание, что таблица должна иметь по крайней мере одну строку, прежде чем можно будет применить свойства таблицы. Это означает, что при строительстве стола [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), Это необходимо сделать после первого звонка на [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), или после добавления первой строки в таблицу, или когда узлы вставляются непосредственно в таблицу; DOM.

{{% /alert %}}

Фотографии ниже показывают представление **Table** Особенности форматирования в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

Следующий пример кода показывает, как применить границу контура к таблице:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Следующий пример кода показывает, как построить таблицу со всеми границами:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Форматирование уровня Row

**Низкоуровневый** Форматированием можно управлять с помощью [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/), и [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/) классы.

{{% alert color="primary" %}}

Обратите внимание, что a **Row** может быть только детским узлом **Table**. При этом должен быть хотя бы один **Cell** в **Row** Чтобы к нему можно было применить форматирование.

{{% /alert %}}

Фотографии ниже показывают представление **Row** Особенности форматирования в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

Следующий пример кода показывает, как изменить форматирование строк таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Форматирование клеточного уровня

Форматирование на клеточном уровне контролируется [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/), и [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/) классы.

{{% alert color="primary" %}}

Обратите внимание, что a **Cell** может быть только детским узлом **Row**. При этом должен быть хотя бы один [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) в **Cell** Чтобы к нему можно было применить форматирование.

Помимо того, что **Paragraph**, Вы также можете вставить **Table** входить в **Cell**.

{{% /alert %}}

Фотографии ниже показывают представление **Cell** Особенности форматирования в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

Следующий пример кода показывает, как изменить форматирование ячейки таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Следующий пример кода показывает, как установить количество места (в точках) для добавления влево/вверх/вправо/вниз содержимого ячейки:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Укажите высоту рядов

Самый простой способ установить высоту строки - использовать **DocumentBuilder**. Использование соответствующего **RowFormat** Свойства, вы можете установить по умолчанию высоту или применить разную высоту для каждой строки в таблице.

В Aspose.Words, Высота строки стола контролируется:

- свойство высоты строки - [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)
- свойство правила высоты для данного ряда - [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)

При этом для каждого ряда может быть установлена разная высота – это позволяет широко контролировать настройки стола.

{{% alert color="primary" %}}

Варианты правил для определения высоты объекта могут быть установлены с помощью [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/) перечисление.

{{% /alert %}}

Следующий пример кода показывает, как создать таблицу, содержащую одну ячейку, и применить форматирование строк:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Укажите шины стола и ячейки

Стол в a Microsoft Word Документ предоставляет несколько различных способов изменения размера таблицы и отдельных ячеек. Эти свойства позволяют значительно контролировать внешний вид и поведение стола. Aspose.Words поддерживает поведение таблиц, как в Microsoft Word.

Важно знать, что элементы таблицы обладают несколькими различными свойствами, которые могут влиять на то, как рассчитывается ширина общей таблицы, а также отдельных ячеек:

- Предпочтительная ширина на столе
- Предпочтительная ширина для отдельных клеток
- Разрешить автозаправку на столе

В этой статье подробно описывается, как работают различные свойства расчета ширины таблицы и как получить полный контроль над расчетом ширины таблицы. Это
Особенно полезно знать в таких случаях, когда планировка таблицы выглядит не так, как ожидалось.

{{% alert color="primary" %}}

В большинстве случаев рекомендуется предпочтительная ячейка, чем ширина стола. Предпочтительная ширина ячейки больше соответствует спецификации формата DOCX, а также Aspose.Words Модель.

Ширина ячейки фактически является расчетным значением для формата DOCX. Фактическая ширина ячейки может зависеть от многих вещей. Например, изменение поля страницы или предпочтительной ширины таблицы может повлиять на фактическую ширину ячейки.

Предпочтительной шириной ячейки является свойство ячейки, которое хранится в документе. Он не зависит ни от чего и не меняется при изменении стола или других свойств ячейки.

{{% /alert %}}

{{% alert color="primary" %}}

Все свойства и методы, описанные в этой статье, связаны с тем, как работают таблицы. Microsoft Word. Таким образом, в большинстве случаев, если вы создаете таблицу программно, но вам трудно создать желаемую таблицу, вы можете вместо этого визуально создать ее. Microsoft Word Сначала просто скопируйте значения форматирования в ваше приложение.

{{% /alert %}}

### Как использовать предпочтительную ширину

Желаемая ширина таблицы или отдельных ячеек определяется через предпочтительное свойство ширины, которое представляет собой размер, который стремится уместить элемент. То есть предпочтительная ширина может быть указана для всей таблицы или для отдельных ячеек. В некоторых ситуациях может быть невозможно точно соответствовать этой ширине, но фактическая ширина будет близка к этому значению в большинстве случаев.

Соответствующий предпочтительный тип ширины и значение устанавливаются с использованием способов [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) класс:

* [Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/) Способ указания авто или "нет предпочтительной ширины"
* [FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/) Способ определения процентной ширины
* [FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) Способ определения ширины в точках

На рисунках ниже показано представление функций настройки *предпочтительной ширины* в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

Пример того, как эти варианты применяются к реальной таблице в документе, можно увидеть на рисунке ниже.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Прежде чем вы сможете использовать предпочтительную ширину в таблице, вы должны убедиться, что таблица содержит по крайней мере одну строку. Это объясняется тем, что такая таблица в Microsoft Word документ или документ, созданный в Aspose.Words хранится в строках таблицы.

{{% /alert %}}

#### Укажите предпочтительную ширину стола или ячейки

В Aspose.Words, Ширина стола и ячейки устанавливается с использованием [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) собственности и [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) собственность, с опционами, доступными в [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) перечисление:

- **Auto**, который не является предпочтительным
- **Percent**, который соответствует элементу относительно имеющегося пространства в окне или размера контейнера и пересчитывает значение при изменении доступной ширины
- **Points**, который соответствует элементу указанной ширины в точках

{{% alert color="primary" %}}

По умолчанию таблица может быть описана как установленная на 100% доступного пространства на странице. В этом случае это означает, что таблица будет пытаться занять пространство между левым и правым краями страницы.

{{% /alert %}}

Используя [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) свойство будет регулировать свою предпочтительную ширину относительно контейнера: страницы, столбца текста или внешней ячейки стола, если это вложенная таблица.

Следующий пример кода показывает, как установить таблицу в автоматическом режиме до 50% ширины страницы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

Используя [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) Свойство на данной ячейке будет регулировать ее предпочтительную ширину.

Следующий пример кода показывает, как установить различные предпочтительные настройки ширины:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Найдите предпочтительный тип шины и значение

Вы можете использовать [Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) и [Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) Свойства поиска предпочтительных деталей ширины желаемой таблицы или ячейки.

Следующий пример кода показывает, как извлечь предпочтительный тип ширины ячейки таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Как установить Autofit

The [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) Свойство позволяет клеткам в таблице расти и сокращаться по выбранному критерию. Например, вы можете использовать **AutoFit для окна** возможность подогнать стол к ширине страницы, а также **AutoFit для контента** Это позволяет каждой клетке расти или уменьшаться в зависимости от ее содержания.

{{% alert color="primary" %}}

Кроме того, **AllowAutoFit** Свойство может использоваться в сочетании с предпочтительной шириной ячейки для форматирования ячейки, которая автоматически соответствует ее содержимому, но также имеет начальную ширину. При необходимости ширина ячейки может превысить эту ширину.

{{% /alert %}}

По умолчанию, Aspose.Words Вставить новую таблицу с использованием **AutoFit для окна**. Таблица будет иметь размер в соответствии с доступной шириной страницы. Чтобы изменить размер стола, вы можете позвонить [AutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/autofit/) метод. Этот метод позволяет принять [AutoFitBehavior](https://reference.aspose.com/words/net/aspose.words.tables/autofitbehavior/) Перечисление, которое определяет, какой тип автофит применяется к таблице.

Важно знать, что метод автоподгонки на самом деле является ярлыком, который одновременно применяет различные свойства к таблице. Это свойства, которые фактически придают таблице наблюдаемое поведение. Мы обсудим эти свойства для каждого варианта автозаполнения.

Следующий пример кода показывает, как установить таблицу, чтобы уменьшить или вырастить каждую ячейку в соответствии с ее содержимым:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Стол AutoFit для окна

Когда автоподгонка к окну наносится на стол, за кулисами фактически выполняются следующие операции:

1. The **Table.AllowAutoFit** свойство позволяет автоматически изменять размер колонок в соответствии с доступным контентом, используя **Table.PreferredWidth** значение 100%
2. **CellFormat.PreferredWidth** удаляется из всех ячеек стола
      {{% alert color="primary" %}}
   Обратите внимание, что это немного отличается от Microsoft Word поведение, при котором предпочтительной ширине каждой ячейки устанавливаются соответствующие значения, основанные на их текущем размере и содержании. Aspose.Words Не обновляет предпочитаемую ширину, поэтому они просто очищаются.
      {{% /alert %}}
3. Ширины колонок пересчитываются для текущего содержимого таблицы - конечным результатом является таблица, которая занимает всю доступную ширину
4. Ширина столбцов в таблице изменяется автоматически по мере редактирования текста пользователем

Следующий пример кода показывает, как автоматически приспособить таблицу к ширине страницы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### AutoFit Table для контента

Когда стол автоподгоняется под содержимое, за кулисами фактически выполняются следующие действия:

1. The **Table.AllowAutoFit** свойство позволяет автоматически изменять размер каждой ячейки в соответствии с ее содержанием

2. Предпочтительная ширина стола удаляется из **Table.PreferredWidth**, **CellFormat.PreferredWidth** удаляется для каждой ячейки стола
      {{% alert color="primary" %}}

   Обратите внимание, что эта опция автоподгонки удаляет предпочтительную ширину из ячеек, как и в Microsoft Word. Если вы хотите сохранить размеры столбцов и увеличить или уменьшить столбцы, чтобы соответствовать содержанию, вы должны установить **Table.AllowAutoFit** имущество **True** Вместо того, чтобы использовать ярлык автофита.{{% /alert %}}

3. Ширина колонки пересчитывается для текущего содержимого таблицы - конечным результатом является таблица, где ширина колонки и ширина всей таблицы автоматически изменяются, чтобы наилучшим образом соответствовать содержанию, поскольку пользователь редактирует текст

Следующий пример кода показывает, как автоматически приспособить таблицу к ее содержимому:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Отключите автофит в таблице и используйте фиксированные шины колонки

Если вместо этого используется таблица с отключенным автофитом и фиксированной шириной столбца, выполняются следующие шаги:

1. **Table.AllowAutoFit** собственность отключена, поэтому колонки не растут и не сжимаются до своего содержания

2. Предпочтительная ширина всей таблицы удалена **Table.PreferredWidth**, **CellFormat.PreferredWidth** удаляется из всех ячеек стола
3. Конечным результатом является таблица, ширина столбца которой определяется [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) свойство, столбцы которого не изменяются автоматически при вводе пользователем текста или при изменении размера страницы

{{% alert color="primary" %}}

Обратите внимание, что если ширина не указана для **CellFormat.Width**, По умолчанию используется значение одного дюйма (72 балла).

{{% /alert %}}

Следующий пример кода показывает, как отключить автоподключение и включить фиксированную ширину для указанной таблицы:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Порядок действия при расчете ширины клетки

Aspose.Words позволяет пользователям определять ширину стола или ячейки через несколько объектов, включая [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) - его [Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) Свойство в основном осталось от предыдущих версий, однако оно по-прежнему полезно для упрощения настройки ширины ячейки.

Важно знать, что **CellFormat.Width** Свойства работают по-разному в зависимости от того, какие из других свойств ширины уже существуют в таблице.

Aspose.Words использует следующий порядок для расчета ширины ячейки:

|  Приказ |  Собственность |  Описание |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) определяется |  Если **AutoFit** допускается:<br/>- таблица может превышать предпочтительную ширину для размещения содержимого - она обычно не сжимается ниже предпочтительной ширины<br/>- любые изменения в **CellFormat.Width** значение игнорируется, и ячейка вместо этого будет соответствовать своему содержимому; |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) с ценностью в **Points** или **Percent** |  **CellFormat.Width** игнорируется |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) с ценностью в **Auto** |  Ценность от **CellFormat.Width** копируется и становится предпочтительной шириной ячейки (в точках) |

{{% alert color="primary" %}}

Любые изменения свойства ширины не обновляются в предпочтительной ширине и должны вместо этого применяться к предпочтительной ширине.

{{% /alert %}}

{{% alert color="primary" %}}

При создании фиксированной компоновки таблицы укажите ширину ячейки. Ячейка без ширины не может быть сохранена в формате DOC. Форматы документов, отличные от DOC, такие как DOCX, позволяют, в принципе, сохранять ячейки без ширины в фиксированной компоновке таблицы.

{{% /alert %}}

## Разрешить пространство между клетками

Вы можете получить или установить какое-либо дополнительное пространство между ячейками стола, аналогичное опции "Продать интервал". Microsoft Word. Это можно сделать с помощью [AllowCellSpacing](https://reference.aspose.com/words/net/aspose.words.tables/table/allowcellspacing/) собственность.

Пример того, как эти варианты применяются к реальной таблице в документе, можно увидеть на рисунке ниже.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-net" style="width:500px"/>

Следующий пример кода показывает, как установить расстояние между ячейками:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Применять границы и затенение

Границы и затенение могут быть применены либо ко всей таблице с использованием [Table.SetBorder](https://reference.aspose.com/words/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/setborders/) и [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/setshading/), или только для конкретных клеток, использующих [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/borders/) и [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/shading/). Кроме того, границы строк могут быть установлены с помощью [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/borders/), Однако затенение не может быть применено таким образом.

На фотографиях ниже показаны границы и тени в Microsoft Word и их соответствующих свойств в Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

Следующий пример кода показывает, как форматировать таблицу и ячейку с различными границами и оттенками:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
