---
title: Обзор полей в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обзор полей
linktitle: Обзор полей
description: "Вы можете получить доступ к изменению полей, используя Python. Поля документа загружаются в объектную модель документа Aspose.Words (DOM)."
type: docs
weight: 10
url: /ru/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Обычно поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное вычисленное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с полями (например, объединяет два документа или заполняет их данными), то для того, чтобы документ был полезным, все поля в идеале должны быть обновлены.

Поле состоит из:

![fields-aspose-words](fields-overview-1.png)

- Узлы "Начало поля" и "разделитель" используются для отображения содержимого, составляющего код поля (обычно в виде обычного текста)
- Разделитель полей и конец поля отображают результат работы с полем. Это может быть содержимое различных типов - от фрагментов текста до абзацев и таблиц.
- Некоторые поля могут не иметь разделителя, что означает, что все содержимое составляет код поля.
- Код поля определяет поведение поля и состоит из идентификатора поля и часто других параметров, таких как название поля и переключатели.
- Поле результат содержит самую последнюю оценку поля. Это значение сохраняется в поле результат и отображается пользователю. В некоторых полях может отсутствовать поле результат, поэтому в документе ничего не будет отображаться. Аналогично, некоторые поля, возможно, еще не обновлены, поэтому результат также не будет получен.

Вот представление о том, как хранится поле в Aspose.Words, с использованием примера "*DocumentExplorer"*, который можно найти на [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](fields-overview-2.png)

Aspose.Words - это библиотека классов, предназначенная для обработки документов Microsoft Word на стороне сервера и поддерживающая поля следующими способами:

- Все поля в документе сохраняются при открытии/сохранении и преобразовании.
- Можно обновить результаты по некоторым из наиболее популярных полей.

## Поля в Microsoft Word

Поля в документах Microsoft Word сложны. Существует более 50 типов полей (для каждого из них требуется своя процедура вычисления результата), формулы и выражения, закладки и ссылки, функции и различные переключатели. Поля также могут быть вложенными. Обычно при открытии документа результат работы с полем (значение поля) отображается для всех полей в документе. Вы можете переключить отображение результатов работы с полем или кодов полей в Microsoft Word для всех полей, нажав **ALT+F9**.

| Код поля | Результат поля |
| :- | :- |
| ![field-code-result-aspose-words](fields-overview-3.png) | ![todo:image_alt_text](fields-overview-4.png) |

### Вставка полей в Microsoft Word

Чтобы вставить поле в Microsoft Word:

1. Нажмите на меню **Insert**.
1. Нажмите на выпадающее меню **Quick Parts**
1. Выберите **Field**
1. Перед вами откроется экран, на котором вы сможете ввести информацию о поле. Слева вы увидите список возможных полей, а справа - экран для визуального редактирования свойств поля.<br>
![field-edit-aspose-words](fields-overview-5.png)
1. Кроме того, вы можете нажать кнопку **Field Codes**, которая позволяет вам напрямую ввести код поля.<br>
![field-properties-aspose-words](fields-overview-6.png)
1. Переключатели также можно установить с помощью кнопки **Options**<br>
![field-options-aspose-words](fields-overview-7.png)
1. Используя любой из этих способов, заполните нужные поля соответствующей информацией и нажмите **Ok**.
1. Поле вставляется в документ в текущем положении курсора.<br>
![insert-field-aspose-words](fields-overview-8.png)

### Обновление полей в Microsoft Word

Чтобы обновить одно поле в Microsoft Word:

1. Переместите курсор в поле, которое вы хотите обновить.
1. Нажмите **F9**, чтобы обновить поле.

Чтобы обновить все поля в Microsoft Word:

1. Нажмите **Ctrl+A**, чтобы выбрать все содержимое документа.
1. Нажмите **F9**, чтобы обновить все поля, найденные в выделенной области.

### Переключение между отображением кода поля и результатом ввода в поле

Чтобы переключить коды полей для одного поля в Microsoft Word:

1. Переместите курсор в нужное поле.
1. Нажмите **SHIFT+F9**, чтобы переключить код поля только для этого поля.

Чтобы переключить коды полей для всех полей в Microsoft Word:

1. Нажмите **ALT+F9**

### Преобразование полей в статический текст в Microsoft Word

Чтобы преобразовать динамическое поле в статический текст в Microsoft Word:

1. Переместите курсор в поле, которое вы хотите преобразовать.
1. Нажмите **Ctrl+Shift+F9**, чтобы преобразовать поля в статический текст.

### Удаление поля в Microsoft Word

Чтобы удалить поле в Microsoft Word:

1. Выберите все содержимое, составляющее поле. Если отображаются коды полей, то также необходимо выбрать открывающую и закрывающую фигурные скобки.
1. Нажмите **Delete**, чтобы удалить все поле целиком.

## Поля в Aspose.Words

Когда документ загружается в Aspose.Words, поля документа загружаются в объектную модель документа Aspose.Words в виде набора отдельных компонентов (узлов). Одно поле загружается как набор узлов [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) вместе с содержимым между этими узлами. Если у поля нет результата field, то не будет узла [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Все эти узлы всегда находятся в строке (как дочерние для [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Содержимое, составляющее код поля, хранится в виде [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) узлов между [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) и [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Результат поля хранится между узлами [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) и может состоять из различных типов содержимого. Обычно поле результата содержит только текст, состоящий из узлов [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), однако возможно, что узел [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) находится в совершенно другом абзаце, и, таким образом, поле результата также состоит из узлов блочного уровня, таких как узлы [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

В Aspose.Words каждый из **FieldXXX** узлов является производным от [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Этот класс предоставляет свойство для проверки типа поля, представленного указанным узлом, с помощью свойства [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Например, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) представляет поле объединения в документе.

{{% alert color="primary" %}}

В документе Word существуют некоторые особые поля, которые не импортируются в Aspose.Words как набор узлов **FieldXXX**. Например, поле `LINK` и поле `INCLUDEPICTURE` импортируются в Aspose.Words как объект [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Этот объект предоставляет свойства для работы с данными изображения, которые обычно хранятся в этих полях.

Поля формы также импортируются в Aspose.Words как их собственный специальный класс. Класс [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) представляет поле формы в документе Word и предоставляет дополнительные методы, характерные для поля формы.

{{% /alert %}}

### Поля, поддерживаемые во время обновления

В текущей версии Aspose.Words поддерживается вычисление следующих полей:

- = (поле формулы)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (including TOT and TOF)
- TC

### Сложный синтаксический анализ

Aspose.Words повторяет способ, которым Microsoft Word обрабатывает поля, и в результате корректно обрабатывает:

- Вложенные поля
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Аргумент Field может быть результатом использования вложенного поля.
- Поля могут быть вложены как в код поля, так и в результат поля.
- Пробелы/без пробелов, кавычки/без кавычек, экранирующие символы в полях и т.д.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Поля, охватывающие несколько абзацев.

#### Поля формул

Aspose.Words обеспечивает очень серьезную реализацию движка формул и поддерживает следующее:

- Арифметические и логические операторы:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Функции:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Ссылки на закладки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Переключатели форматирования чисел:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддерживаются следующие функции в выражениях: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` and `COMPARE` Fields

Лишь некоторые из выражений `IF`, которые Aspose.Words может легко вычислить, должны дать вам представление о том, насколько мощной является эта функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` and `TIME` Fields

Aspose.Words поддерживает все параметры форматирования даты и времени, доступные в Microsoft Word, вот некоторые примеры:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Поля

Aspose.Words не накладывает ограничений на сложность полей Mail Merge в ваших документах, поддерживает вложенные поля `IF` и поля формул и даже может вычислять название объединяемого поля с помощью формулы.

Несколько примеров полей Mail Merge, которые поддерживает Aspose.Words:

- Mail merge переключатели полей:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Вложенные поля слияния в формуле:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Вычислите имя поля слияния во время выполнения:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Условный переход к следующей записи в источнике данных:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Переключатели форматов

Поле в документе может иметь параметры форматирования, которые определяют, как должно быть отформатировано результирующее значение. Aspose.Words поддерживает следующие параметры форматирования:

- @ - форматирование даты и времени
- \\\# - форматирование чисел
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT – форматирование результата в соответствии с первым символом кода поля.
- \\\\\\\\* MERGEFORMAT – отформатируйте результат в соответствии с тем, как был отформатирован старый результат.

#### Форматирование даты и чисел в полях

Когда Aspose.Words вычисляет результат работы с полем, ему часто требуется преобразовать строку в число или значение даты, а также отформатировать ее обратно в строку.По умолчанию Aspose.Words использует текущую структуру потока для выполнения синтаксического анализа и форматирования при вычислении значений полей во время обновления поля и mail merge. Существуют также опции, представленные в виде класса [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/), который позволяет дополнительно контролировать, какой регион используется при обновлении поля.

- По умолчанию свойству [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) присвоено значение [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread), что позволяет форматировать поля, используя текущие параметры потока.
- Этому свойству можно присвоить значение [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code), чтобы вместо него для форматирования использовался язык, указанный в коде поля.

#### Форматирование с использованием культуры текущего потока

Чтобы управлять культурой, используемой при расчете поля, просто используйте метод **locale.setlocale**, чтобы задать культуру по вашему выбору перед вызовом расчета поля.
В приведенном ниже примере показано, как изменить региональные параметры, используемые в полях форматирования во время обновления.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Использование существующих стандартов для форматирования полей позволяет системе легко и последовательно управлять форматированием всех полей в документе во время обновления полей.

#### Форматирование с использованием региональных параметров документа

С другой стороны, Microsoft Word форматирует каждое отдельное поле на основе языка текста, найденного в поле (в частности, на основе кода поля). Иногда при обновлении полей это может быть желательным, например, если у вас есть глобализированные документы, содержащие содержимое на многих разных языках, и вы хотите, чтобы каждое поле соответствовало языковому стандарту, используемому в тексте. Aspose.Words также поддерживает эту функциональность.

Класс [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) предоставляет свойство [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/), которое содержит элементы, которые можно использовать для управления обновлением полей в документе. В приведенном ниже примере показано, как указать, где выбирается региональная структура, используемая для форматирования даты при обновлении полей, и Mail Merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Поиск кода поля и результата работы с полем

Поле, вставленное с помощью [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), возвращает объект [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Это класс façade, который предоставляет полезные методы для быстрого поиска таких свойств поля. Примечание. Если вы ищете в документе только названия объединяемых полей, то вместо этого можете использовать встроенный метод [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). В приведенном ниже примере показано, как получить названия всех объединяемых полей в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Как переименовать объединяемые поля

В приведенном ниже примере показано, как переименовать объединяемые поля в документе Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
