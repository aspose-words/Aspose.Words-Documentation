---
title: Обзор полей в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обзор полей
linktitle: Обзор полей
description: "Доступ к изменению полей можно получить с помощью Python. Поля документа загружаются в Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /ru/python-net/fields-overview/
---


Обычно поле, вставленное в Microsoft Word, уже содержит актуальное значение. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильное рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с полями (например, объединяет два документа или заполняет данные), то для того, чтобы документ был полезным, в идеале все поля должны быть обновлены.

Поле состоит из:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Начальные узлы поля и узлы-разделители используются для охвата содержимого, составляющего код поля (обычно в виде обычного текста)
- Разделитель полей и конец поля охватывают результат поля. Он может состоять из различных типов контента: от фрагментов текста до абзацев и таблиц.
– Некоторые поля могут не иметь разделителя, что означает, что все содержимое составляет код поля.
- Код поля определяет поведение поля и состоит из идентификатора поля и часто других параметров, таких как имя поля и переключатели.
- Результат поля содержит самую последнюю оценку поля. Это значение сохраняется в результате поля и отображается пользователю. Некоторые поля могут не иметь результатов, поэтому в документе ничего не будет отображаться. Аналогичным образом, некоторые поля могут еще не быть обновлены, поэтому в них также не будет результатов.

Вот представление о том, как поле хранится в Aspose.Words, на примере "*DocumentExplorer"*, который можно найти в [Гитхаб](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words — это библиотека классов, предназначенная для серверной обработки документов Microsoft Word и поддерживающая поля следующими способами:

- Все поля документа сохраняются при открытии/сохранении и преобразовании.
- Можно обновить результаты некоторых наиболее популярных полей.

## Поля в Microsoft Word

Поля в Microsoft Word документах сложные. Имеется более 50 типов полей (каждому нужна своя процедура расчета результата), формулы и выражения, закладки и ссылки, функции и различные переключатели. Поля также могут быть вложенными. Обычно при открытии документа результат поля (значение поля) отображается для всех полей в документе. Вы можете переключить отображение результатов поля или кодов полей в Microsoft Word для всех полей, нажав **АЛТ+Ф9**.

| Код поля | Поле Результат |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Вставка полей в Microsoft Word

Чтобы вставить поле в Microsoft Word:

1. Нажмите на меню **Insert**.
1. Нажмите раскрывающееся меню **Quick Parts**
1. Выберите **Field**
1. Перед вами появится экран, позволяющий ввести данные поля. С левой стороны вам предоставляется список возможных полей, а с правой стороны — экран для визуального редактирования свойств поля.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Дополнительно вы можете нажать кнопку **Field Codes**, которая позволит вам напрямую записать код поля.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Переключатели также можно вставить с помощью кнопки **Options**.<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Используя любой метод, заполните нужные поля соответствующей информацией и нажмите **Ok**.
1. Поле вставляется в документ в текущей позиции курсора.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Обновление полей в Microsoft Word

Чтобы обновить одно поле в Microsoft Word:

1. Переместите курсор в поле, которое вы хотите обновить.
1. Нажмите **F9**, чтобы обновить поле.

Чтобы обновить все поля в Microsoft Word:

1. Нажмите **Ctrl+А**, чтобы выбрать все содержимое документа.
1. Нажмите **F9**, чтобы обновить все поля, найденные в выделенном фрагменте.

### Переключение между отображением кода поля и результатом поля

Чтобы переключить коды полей одного поля в Microsoft Word:

1. Переместите курсор в нужное поле.
1. Нажмите **Shift+F9**, чтобы переключить код поля только для этого поля.

Чтобы переключить коды всех полей в Microsoft Word:

1. Нажмите **АЛТ+Ф9**

### Преобразование полей в статический текст в Microsoft Word

Чтобы преобразовать динамическое поле в статический текст в формате Microsoft Word:

1. Переместите курсор в поле, которое вы хотите преобразовать.
1. Нажмите **Ctrl+Shift+F9**, чтобы преобразовать поля в статический текст.

### Удаление поля в Microsoft Word

Чтобы удалить поле в Microsoft Word:

1. Выберите весь контент, составляющий поле. Если отображаются коды полей, необходимо также выбрать открывающую и закрывающую скобки.
1. Нажмите **Delete**, чтобы удалить все поле.

## Поля в Aspose.Words

При загрузке документа в Aspose.Words поля документа загружаются в Aspose.Words Document Object Model как набор отдельных компонентов (узлов). Одно поле загружается как коллекция из [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) узлов вместе с содержимым между этими узлами. Если поле не имеет результата поля, то узла [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) не будет. Все эти узлы всегда находятся в строке (как дочерние узлы [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Содержимое, составляющее код поля, хранится как узлы [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) между [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) и [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Результат поля сохраняется между узлами [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) и может состоять из различных типов контента. Обычно результат поля содержит только текст, состоящий из [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) узлов, однако узел [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) может располагаться в совершенно другом абзаце, в результате чего результат поля также будет состоять из узлов уровня блока, таких как [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) узлов.

В Aspose.Words каждый из **FieldXXX** узлов является производным от [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Этот класс предоставляет свойство для проверки типа поля, представленного указанным узлом, через свойство [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Например, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) представляет поле слияния в документе.

{{% alert color="primary" %}}

В документе Word существуют определенные поля, которые не импортируются в Aspose.Words как набор из **FieldXXX** узлов. Например, поля `LINK` и `INCLUDEPICTURE` импортируются в Aspose.Words как объект [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Этот объект предоставляет свойства для работы с данными изображения, обычно хранящимися в этих полях.

Поля формы также импортируются в Aspose.Words как отдельный специальный класс. Класс [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) представляет поле формы в документе Word и предоставляет дополнительные методы, специфичные для поля формы.

{{% /alert %}}

### Поля, поддерживаемые во время обновления

В текущей версии Aspose.Words поддерживается расчет следующих полей:

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
- `TOC` (включая ТОТ и ТОФ)
- ТК

### Сложный анализ

Aspose.Words соответствует тому, как Microsoft Word обрабатывает поля, и в результате правильно обрабатывает:

- Вложенные поля
 `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
— Аргумент поля может быть результатом вложенного поля.
- Поля могут быть вложены как в код поля, так и в результат поля.
- Пробелы/без пробелов, кавычки/без кавычек, escape-символы в полях и т.д.:
 `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
– Поля, охватывающие несколько абзацев.

#### Поля формул

Aspose.Words обеспечивает очень серьезную реализацию механизма формулы и поддерживает следующее:

- Арифметические и логические операторы:
 `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Функции:
 `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Ссылки на закладки:
 `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Переключатели форматирования чисел:
 `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддерживаются следующие функции в выражениях: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Поля `IF` и `COMPARE`

Лишь некоторые из `IF` выражений, которые Aspose.Words может легко вычислить, дадут вам представление о том, насколько мощной является эта функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Поля `DATE` и `TIME`

Aspose.Words поддерживает все переключатели форматирования даты и времени, доступные в Microsoft Word, вот некоторые примеры:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Поля

Aspose.Words не накладывает ограничений на сложность mail merge полей в ваших документах, поддерживает вложенные `IF` и поля формул и даже может вычислить имя поля слияния с помощью формулы.

Некоторые примеры полей mail merge, которые поддерживает Aspose.Words:

- Mail merge полевых переключателей:
 `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Вложенные поля слияния в формуле:
 `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Вычислить имя поля слияния во время выполнения:
 `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Условный переход к следующей записи в источнике данных:
 `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Переключатели формата

Поле в документе может иметь переключатели форматирования, которые определяют, как следует форматировать результирующее значение. Aspose.Words поддерживает следующие переключатели формата:

- @ - форматирование даты и времени
- \\\# - форматирование чисел
- \\\\\\\\* Колпачки
- \\\\\\\\* FirstCap
- \\\\\\\\* Ниже
- \\\\\\\\* Верхний
- \\\\\\\\* CHARFORMAT – форматировать результат по первому символу кода поля.
- \\\\\\\\* MERGEFORMAT – форматирует результат в соответствии с тем, как был отформатирован старый результат.

#### Date и форматирование чисел в полях

Когда Aspose.Words вычисляет результат поля, ему часто необходимо проанализировать строку в число или значение даты, а также отформатировать ее обратно в строку. По умолчанию Aspose.Words использует текущий язык и региональные параметры потока для выполнения синтаксического анализа и форматирования при вычислении значений поля во время обновления поля. и mail merge. Существуют также параметры, представленные в виде класса [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/), который позволяет дополнительно контролировать, какая культура используется во время обновления поля.

— По умолчанию для свойства [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) установлено значение [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread), которое форматирует поля с использованием языка и региональных параметров текущего потока.
— Для этого свойства можно установить значение [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code), чтобы вместо этого для форматирования использовался язык, заданный из кода поля.

#### Форматирование с использованием культуры текущего потока

Чтобы контролировать культуру, используемую во время расчета поля, просто используйте метод **локаль.setlocale**, чтобы установить культуру по вашему выбору, прежде чем вызывать расчет поля.
В примере ниже показано, как изменить язык и региональные параметры, используемые в полях форматирования во время обновления.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Использование текущего языка и региональных параметров для форматирования полей позволяет системе легко и последовательно контролировать форматирование всех полей в документе во время обновления полей.

#### Форматирование с использованием языка и региональных параметров в документе

С другой стороны, Microsoft Word форматирует каждое отдельное поле на основе языка текста, найденного в поле (в частности, запускается из кода поля). Иногда во время обновления полей это может быть желаемым поведением, например, если у вас есть глобализированные документы, содержащие контент, составленный на многих разных языках, и вы хотите, чтобы каждое поле учитывало локаль, используемую в тексте. Aspose.Words также поддерживает эту функцию.

Класс [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) предоставляет свойство [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/), содержащее элементы, которые можно использовать для управления обновлением полей в документе. В примере ниже показано, как указать, где выбран язык и региональные параметры, используемые для форматирования даты во время обновления поля, и mail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Поиск кода поля и результата поля

Поле, вставленное с использованием [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), возвращает объект [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Это фасадный класс, который предоставляет полезные методы для быстрого поиска таких свойств поля. Обратите внимание, что если вы ищете только имена полей слияния в документе, вместо этого вы можете использовать встроенный метод [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). В примере ниже показано, как получить имена всех полей слияния в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Как переименовать поля слияния

В примере ниже показано, как переименовать поля слияния в документе Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
