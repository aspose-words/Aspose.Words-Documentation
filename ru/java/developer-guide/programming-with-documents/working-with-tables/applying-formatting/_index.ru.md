﻿---
title: Форматирование таблицы в Java
second_title: Aspose.Words для Java
articleTitle: Применить форматирование таблицы
linktitle: Применить форматирование таблицы
description: "Подробное форматирование таблицы. Использование Java для форматирования каждой части таблицы."
type: docs
weight: 70
url: /ru/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

К каждому элементу таблицы можно применить различное форматирование. Например, форматирование таблицы будет применено ко всей таблице, форматирование строк - только к определенным строкам, форматирование ячеек - только к определенным ячейкам.

Aspose.Words предоставляет расширенные возможности API для извлечения и применения форматирования к таблице. Вы можете использовать узлы [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) и [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) для настройки форматирования.

В этой статье мы поговорим о том, как применить форматирование к различным узлам таблицы и какие настройки форматирования таблицы поддерживает Aspose.Words.

## Применить форматирование к различным узлам

В этом разделе мы рассмотрим применение форматирования к различным узлам таблицы.

### Форматирование на уровне таблицы

Чтобы применить форматирование к таблице, вы можете использовать свойства, доступные на соответствующем узле **Table**, используя классы [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) и [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/).

{{% alert color="primary" %}}

Обратите внимание, что в таблице должна быть хотя бы одна строка, прежде чем можно будет применить свойства таблицы. Это означает, что при построении таблицы с [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) это форматирование должно выполняться после первого вызова [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), или после добавления первой строки в таблицу, или когда узлы вставляются непосредственно в DOM.

{{% /alert %}}

На рисунках ниже показано представление функций форматирования **Table** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

В следующем примере кода показано, как применить контурную границу к таблице:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

В следующем примере кода показано, как создать таблицу с включенными всеми границами (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Форматирование на уровне строк

Форматированием на уровне строк** можно управлять с помощью классов [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) и [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/).

{{% alert color="primary" %}}

Обратите внимание, что **Row** может быть только дочерним узлом для **Table**. В то же время в **Row** должен быть хотя бы один **Cell**, чтобы к нему можно было применить форматирование.

{{% /alert %}}

На рисунках ниже показано представление функций форматирования **Row** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

В следующем примере кода показано, как изменить форматирование строк таблицы:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Форматирование на уровне ячеек

Форматирование на уровне ячеек контролируется классами [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) и [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/).

{{% alert color="primary" %}}

Обратите внимание, что **Cell** может быть только дочерним узлом **Row**. В то же время в **Cell** должен быть хотя бы один [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), чтобы к нему можно было применить форматирование.

В дополнение к **Paragraph** вы также можете вставить **Table** в **Cell**.

{{% /alert %}}

На рисунках ниже показано представление функций форматирования **Cell** в Microsoft Word и соответствующих им свойств в Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

В следующем примере кода показано, как изменить форматирование ячейки таблицы:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

В следующем примере кода показано, как задать количество пробелов (в пунктах), добавляемых к левому/верхнему/правому/нижнему краю содержимого ячейки:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Указание высоты строк

Самый простой способ задать высоту строки - использовать параметр **DocumentBuilder**. Используя соответствующие свойства **RowFormat**, вы можете установить значение высоты по умолчанию или применить различную высоту для каждой строки в таблице.

В Aspose.Words высота строки таблицы регулируется с помощью:

- свойство высоты строки – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- свойство правила высоты для данной строки – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

В то же время для каждой строки можно задать разную высоту – это позволяет вам широко управлять настройками таблицы.

{{% alert color="primary" %}}

Параметры правила для указания высоты объекта можно задать с помощью полей [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/).

{{% /alert %}}

В следующем примере кода показано, как создать таблицу, содержащую одну ячейку, и применить форматирование строк:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Укажите ширину таблицы и ячеек

Таблица в документе Microsoft Word предоставляет несколько различных способов изменения размера таблицы и отдельных ячеек. Эти свойства позволяют в значительной степени контролировать внешний вид и поведение таблицы, так что Aspose.Words поддерживает поведение таблиц, как в Microsoft Word.

Важно знать, что элементы таблицы обладают несколькими различными свойствами, которые могут влиять на то, как рассчитывается ширина всей таблицы, а также отдельных ячеек:

- Предпочтительная ширина таблицы
- Предпочтительная ширина отдельных ячеек
- Включение автоматической подгонки по таблице

В этой статье подробно описывается, как работают различные свойства вычисления ширины таблицы и как получить полный контроль над вычислением ширины таблицы. Это
особенно полезно знать это в тех случаях, когда макет таблицы отображается не так, как ожидалось.

{{% alert color="primary" %}}

В большинстве случаев рекомендуется использовать предпочтительную ячейку, а не ширину таблицы. Предпочтительная ширина ячейки в большей степени соответствует спецификации формата DOCX, а также модели Aspose.Words.

Ширина ячейки на самом деле является расчетным значением для формата DOCX. Фактическая ширина ячейки может зависеть от многих факторов. Например, изменение полей страницы или предпочтительной ширины таблицы может повлиять на фактическую ширину ячейки.

Предпочтительная ширина ячейки - это свойство ячейки, которое хранится в документе. Оно ни от чего не зависит и не меняется при изменении таблицы или других свойств ячейки.

{{% /alert %}}

{{% alert color="primary" %}}

Все свойства и методы, описанные в этой статье, связаны с тем, как работают таблицы в Microsoft Word. Таким образом, в большинстве случаев, если вы создаете свою таблицу программно, но вам трудно создать нужную таблицу, вы можете вместо этого сначала попробовать визуально создать ее в Microsoft Word, а затем просто скопировать значения форматирования в свое приложение.

{{% /alert %}}

### Как использовать предпочтительную ширину

Желаемая ширина таблицы или отдельных ячеек определяется с помощью свойства preferred width, которое представляет собой размер, который должен соответствовать элементу. То есть предпочтительная ширина может быть указана как для всей таблицы, так и для отдельных ячеек. В некоторых ситуациях может оказаться невозможным точно установить эту ширину, но в большинстве случаев фактическая ширина будет близка к этому значению.

Соответствующий предпочтительный тип и значение ширины устанавливаются с помощью методов класса [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/):

- поле [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) для указания автоматической ширины или "нет предпочтительной ширины"
- метод [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) для указания процентной ширины
- метод [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) для указания ширины в точках

На рисунках ниже показано представление *preferred width setting features* в Microsoft Word и соответствующих им свойств в Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Пример того, как эти параметры применяются к реальной таблице в документе, можно увидеть на рисунке ниже.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Прежде чем вы сможете использовать предпочтительную ширину в таблице, вы должны убедиться, что таблица содержит хотя бы одну строку. Это связано с тем, что такое форматирование таблицы в документе Microsoft Word или в документе, созданном в Aspose.Words, сохраняется в строках таблицы.

{{% /alert %}}

#### Укажите предпочтительную ширину таблицы или ячейки

В Aspose.Words ширина таблицы и ячеек задается с помощью свойств [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) и [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth), а параметры доступны в перечислении [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/):

- **Auto**, что эквивалентно отсутствию предпочтительной установленной ширины
- **Percent**, который соответствует размеру элемента относительно доступного пространства в окне или контейнера и пересчитывает значение при изменении доступной ширины
- **Points**, который соответствует элементу заданной ширины в точках

{{% alert color="primary" %}}

По умолчанию таблица может быть указана как занимающая 100% доступного пространства на странице. В данном случае это означает, что таблица будет пытаться занять пространство между левым и правым полями страницы.

{{% /alert %}}

Использование свойства [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) позволяет настроить ее предпочтительную ширину относительно контейнера: страницы, текстового столбца или ячейки внешней таблицы, если это вложенная таблица.

В следующем примере кода показано, как настроить автоматическое соответствие таблицы 50% ширины страницы:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Использование свойства [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) для данной ячейки позволит настроить ее предпочтительную ширину.

В следующем примере кода показано, как установить различные предпочтительные параметры ширины:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Найдите предпочтительный тип и значение ширины

Вы можете использовать свойства [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) и [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue), чтобы найти предпочтительную ширину нужной таблицы или ячейки.

В следующем примере кода показано, как получить предпочтительный тип ширины ячейки таблицы:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Как настроить автоматическую подгонку

Свойство [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) позволяет ячейкам таблицы увеличиваться и уменьшаться в размере в соответствии с выбранным критерием. Например, вы можете использовать параметр **AutoFit to Window**, чтобы таблица соответствовала ширине страницы, а параметр **AutoFit to Content** - чтобы разрешить каждой ячейке увеличиваться или уменьшаться в размере в соответствии с ее содержимым.

{{% alert color="primary" %}}

Кроме того, свойство **AllowAutoFit** можно использовать в сочетании с предпочтительной шириной ячейки для форматирования ячейки, которая автоматически соответствует ее содержимому, но также имеет начальную ширину. При необходимости ширина ячейки может превышать эту ширину.

{{% /alert %}}

По умолчанию Aspose.Words вставляет новую таблицу, используя **AutoFit to Window**. Размер таблицы будет соответствовать доступной ширине страницы. Чтобы изменить размер таблицы, вы можете вызвать метод [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int). Этот метод принимает перечисление [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/), которое указывает, какой тип автозаполнения применяется к таблице.

Важно знать, что метод автозаполнения на самом деле является сокращением, которое одновременно применяет различные свойства к таблице. Это свойства, которые на самом деле обеспечивают наблюдаемое поведение таблицы. Мы обсудим эти свойства для каждого параметра автозаполнения.

В следующем примере кода показано, как настроить таблицу на сжатие или увеличение каждой ячейки в соответствии с ее содержимым:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

В качестве демонстрации мы будем использовать следующую таблицу для применения различных настроек автоматической подгонки.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit От таблицы к окну

Когда к таблице применяется автоматическая подгонка под окно, фактически за кулисами выполняются следующие операции:

1. Свойство **Table.AllowAutoFit** позволяет автоматически изменять размер столбцов в соответствии с доступным содержимым, используя значение **Table.PreferredWidth**, равное 100%
2. **CellFormat.PreferredWidth** удаляется из всех ячеек таблицы
   {{% alert color="primary" %}}
   Обратите внимание, что это немного отличается от поведения Microsoft Word, когда для предпочтительной ширины каждой ячейки устанавливаются соответствующие значения в зависимости от их текущего размера и содержимого. Aspose.Words не обновляет предпочтительную ширину, поэтому вместо этого они просто очищаются.
   {{% /alert %}}
3. Ширина столбцов пересчитывается с учетом текущего содержимого таблицы – конечным результатом является таблица, занимающая всю доступную ширину
4. Ширина столбцов в таблице изменяется автоматически по мере того, как пользователь редактирует текст

В следующем примере кода показано, как автоматически подогнать таблицу под ширину страницы:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Пример того, как эти параметры применяются к приведенной выше таблице, можно увидеть на рисунке ниже.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Таблица с содержимым

Когда в таблицу автоматически добавляется содержимое, следующие шаги фактически выполняются за кулисами:

1. Свойство **Table.AllowAutoFit** позволяет автоматически изменять размер каждой ячейки в соответствии с ее содержимым

2. Предпочтительная ширина таблицы удаляется из **Table.PreferredWidth**, **CellFormat.PreferredWidth** удаляется для каждой ячейки таблицы
   {{% alert color="primary" %}}

   Обратите внимание, что этот параметр автоматической подгонки удаляет предпочтительную ширину из ячеек, как и в Microsoft Word. Если вы хотите сохранить размеры столбцов и увеличить или уменьшить их в соответствии с содержимым, вам следует установить для свойства **Table.AllowAutoFit** значение **True** само по себе, а не использовать ярлык автоматической подгонки. {{% /alert %}}

3. Ширина столбцов пересчитывается для текущего содержимого таблицы – конечным результатом является таблица, в которой ширина столбцов и ширина всей таблицы автоматически изменяются, чтобы наилучшим образом соответствовать содержимому, когда пользователь редактирует текст

В следующем примере кода показано, как автоматически подогнать таблицу к ее содержимому:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Пример того, как эти параметры применяются к приведенной выше таблице, можно увидеть на рисунке ниже.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Отключите AutoFit в таблице и используйте фиксированную ширину столбцов

Если в таблице отключена автоматическая подгонка и вместо нее используется фиксированная ширина столбцов, выполняются следующие действия:

1. **Table.AllowAutoFit** свойство отключено, поэтому столбцы не увеличиваются и не сжимаются до их содержимого
2. Предпочтительная ширина всей таблицы удаляется из **Table.PreferredWidth**, **CellFormat.PreferredWidth** удаляется из всех ячеек таблицы
3. Конечным результатом является таблица, ширина столбцов которой определяется свойством [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) и размер столбцов которой не изменяется автоматически при вводе пользователем текста или при изменении размера страницы

{{% alert color="primary" %}}

Обратите внимание, что если для параметра **CellFormat.Width** ширина не указана, то используется значение по умолчанию в один дюйм (72 пункта).

{{% /alert %}}

В следующем примере кода показано, как отключить автозаполнение и включить фиксированную ширину для указанной таблицы:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Пример того, как эти параметры применяются к приведенной выше таблице, можно увидеть на рисунке ниже.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Порядок приоритета при вычислении ширины ячейки

Aspose.Words позволяет пользователям определять ширину таблицы или ячейки с помощью нескольких объектов, включая [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – его свойство [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) в основном осталось от предыдущих версий, однако оно по-прежнему полезно для упрощения настройки ширины ячейки.

Важно знать, что свойство **CellFormat.Width** работает по-разному в зависимости от того, какие из других свойств ширины уже существуют в таблице.

Aspose.Words для вычисления ширины ячеек используется следующий порядок:

| Заказ | Собственность | Описание |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|  | [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) определяется | Если параметр **AutoFit** включен:<br>- размер таблицы может превышать желаемую ширину для размещения содержимого – обычно он не уменьшается ниже желаемой ширины<br>- любое изменение значения **CellFormat.Width** игнорируется, и вместо этого ячейка будет соответствовать своему содержимому |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) со значением **Points** или **Percent** | **CellFormat.Width** игнорируется |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) со значением **Auto** | Значение из **CellFormat.Width** копируется и становится предпочтительной шириной ячейки (в пунктах) |

{{% alert color="primary" %}}

Любые изменения свойства width не обновляются в соответствии с предпочтительной шириной и должны быть применены к предпочтительной ширине.

{{% /alert %}}

{{% alert color="primary" %}}

При создании фиксированного формата таблицы укажите ширину ячейки. Ячейка без ширины не может быть сохранена в формате DOC. Форматы документов, отличные от DOC, такие как DOCX, в принципе, позволяют сохранять ячейки без ширины в фиксированном формате таблицы.

{{% /alert %}}

## Разрешить Интервал Между Ячейками

Вы можете задать любое дополнительное расстояние между ячейками таблицы, аналогичное параметру "Расстояние между ячейками" в Microsoft Word. Это можно сделать с помощью свойства [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing).

Пример того, как эти параметры применяются к реальной таблице в документе, можно увидеть на рисунке ниже.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

В следующем примере кода показано, как установить интервал между ячейками:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Примените границы и растушевку

Границы и штриховка могут быть применены либо ко всей таблице с помощью [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) и [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), либо только к определенным ячейкам с помощью [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) и [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Кроме того, границы строк можно задать с помощью [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), однако штриховка не может быть применена таким образом.

На рисунках ниже показаны настройки границ и теней в Microsoft Word и соответствующие им свойства в Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


В следующем примере кода показано, как отформатировать таблицу и ячейку с различными границами и оттенками:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
