---
title: Обзор полей в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Обзор полей
linktitle: Обзор полей
description: "Вы можете получить доступ к изменению поля с помощью Python. Поля документа загружаются в Aspose.Words Document Object Model ()DOM)."
type: docs
weight: 10
url: /ru/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Обычно поле, когда вставлено в Microsoft Word, Он уже содержит актуальную ценность. Например, если поле представляет собой формулу или номер страницы, оно будет содержать правильно рассчитанное значение для данной версии документа. Но если у вас есть приложение, которое генерирует или изменяет документ с полями (например, объединяет два документа или заполняет данные), то для того, чтобы документ был полезен, все поля должны быть в идеале обновлены.

Поле состоит из:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Узлы запуска поля и разделителя используются для охвата контента, который составляет код поля (обычно в виде простого текста)
- Разделитель поля и конец поля охватывают результат поля. Это может быть составлено из различных типов контента, начиная от прогонов текста до абзацев и таблиц.
- Некоторые поля могут не иметь разделителя, что означает, что весь контент составляет код поля.
- Код поля определяет поведение поля и состоит из идентификатора поля и часто других параметров, таких как имя поля и переключатели.
- Результаты на местах содержат самую последнюю оценку на местах. Это значение сохраняется в результате поля и является тем, что отображается пользователю. Некоторые поля могут не иметь какого-либо результата поля, поэтому в документе ничего не будет отображаться. Кроме того, некоторые поля могут не обновляться, поэтому также не будут иметь результата поля.

Вот взгляд на то, как поле хранится в Aspose.Words Используя пример "*Исследователь документов"*, который можно найти на [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words библиотека классов, предназначенная для обработки на стороне сервера Microsoft Word документирует и поддерживает поля следующими способами:

- Все поля в документе сохраняются во время открытого / сохранения и конверсии.
- Можно обновить результаты некоторых из самых популярных полей.

## Поля в Microsoft Word

Поля в Microsoft Word Документы сложные. Существует более 50 типов полей (каждому нужна своя процедура расчета результата), формулы и выражения, закладки и ссылки, функции и различные переключатели. Поля также могут быть вложены. Обычно при открытии документа отображается результат поля (значение поля) для всех полей в документе. Вы можете переключать отображение результата поля или кодов поля в Microsoft Word для всех полей путем нажатия **ALT+F9**.

| Полевой кодекс | Полевой результат |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Вставка полей в Microsoft Word

Чтобы вставить поле в Microsoft Word:

1. Нажмите на **Insert** меню.
1. Нажмите на **Quick Parts** выпадающее меню
1. Выбрать **Field**
1. Вам предоставляется экран, который позволяет вводить детали поля. С левой стороны вам дается список возможных полей, а с правой - экран для визуального редактирования свойств поля.<br/>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Кроме того, вы можете нажать **Field Codes** Кнопка, которая позволяет напрямую записывать код поля.<br/>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Коммутаторы также могут быть вставлены с помощью **Options** кнопку<br/>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Используя любой метод, заполните желаемые поля соответствующей информацией, а затем нажмите **Ok**.
1. Поле вставляется в документ в текущем положении курсора.<br/>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Обновление полей в Microsoft Word

Чтобы обновить одно поле в Microsoft Word:

1. Переместите заботу в поле, которое вы хотите обновить.
1. Пресса **F9** Обновить поле.

Обновление всех полей в Microsoft Word:

1. Пресса **Ctrl+A** Выберите все содержание в документе.
1. Пресса **F9** Обновление всех полей, найденных в выборе.

### Переключение между отображением кода поля и результатом поля

Переключать полевые коды одного поля в Microsoft Word:

1. Переместите тележку в нужное поле.
1. Пресса **SHIFT+F9** Переключать код поля только для этого поля.

Переключать полевые коды всех полей в Microsoft Word:

1. Пресса **ALT+F9**

### Преобразование полей в статический текст Microsoft Word

Преобразование динамического поля в статический текст Microsoft Word:

1. Переместите корзину в поле, которое вы хотите конвертировать.
1. Пресса **Ctrl+Shift+F9** Преобразовать поля в статический текст.

### Удаление поля в Microsoft Word

Чтобы удалить поле в Microsoft Word:

1. Выберите весь контент, составляющий поле. Если отображаются полевые коды, то также необходимо выбрать начальные и конечные брекеты.
1. Пресса **Delete** Чтобы удалить все поле.

## Поля в Aspose.Words

Когда документ загружается в <p notrans="<p notrans=" Aspose.Words"=""></p>"> Поля документа загружаются в Aspose.Words Document Object Model как набор отдельных компонентов (узлов). Одно поле загружается как коллекция [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) Узлы вместе с содержимым между этими узлами. Если поле не имеет результата поля, то не будет [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) Узел. Все эти узлы всегда находятся в ряде (как дети). [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Содержимое, которое составляет код поля, хранится как [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) узлы между ними [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) и [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Результат поля хранится между [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) Узлы могут состоять из различных типов контента. Обычно поле содержит только текст, состоящий из [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Узлы, однако это возможно для [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) Узел должен быть расположен в совершенно другом абзаце и, таким образом, получать результат поля, состоящий из узлов уровня блока, таких как: [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Узлы тоже.

В Aspose.Words Каждый из них **FieldXXX** Узлы происходят от [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Этот класс предоставляет свойство проверять тип поля, представленного указанным узлом через [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) собственность. Например, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) представляет собой поле слияния в документе.

{{% alert color="primary" %}}

В документе Word есть некоторые конкретные поля, которые не импортируются в Aspose.Words как сборник **FieldXXX** Узлы. Например, `LINK` поле и `INCLUDEPICTURE` поле импортируется в Aspose.Words как [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) объект. Этот объект предоставляет свойства для работы с данными изображения, обычно хранящимися в этих полях.

Поля формы также импортируются в Aspose.Words как свой особый класс. The [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) Класс представляет собой поле формы в документе Word и предоставляет дополнительные методы, которые являются специфическими для поля формы.

{{% /alert %}}

### Поля, поддерживаемые во время обновления

Расчет следующих полей поддерживается в текущей версии Aspose.Words:

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
- `TOC` (включая TOT и TOF)
- ТК

### Утонченный парсинг

Aspose.Words Следуйте по пути Microsoft Word обрабатывает поля и в результате правильно обрабатывает:

- Вложенные поля
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Аргумент поля может быть результатом вложенного поля.
- Поля могут быть вложены в код поля, а также в результат поля.
- Пространства/нет пространств, цитаты/нет цитат, побег персонажей в полях и т.д
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Поля, которые охватывают несколько абзацев.

#### Формула поля

Aspose.Words обеспечивает очень серьезное выполнение формулы двигателя и поддерживает следующее:

- Арифметические и логические операторы:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Функции:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Ссылки на закладки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Переключатели форматирования номеров:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддерживаются следующие функции в выражениях: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` и `COMPARE` Поля

Только некоторые из них `IF` Выражения, которые Aspose.Words Вы можете легко рассчитать, чтобы дать вам представление о том, насколько мощна эта функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` и `TIME` Поля

Aspose.Words поддерживает все переключатели форматирования даты и времени, доступные в Microsoft Word, Вот несколько примеров:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Поля

Aspose.Words не накладывает никаких ограничений на сложность mail merge Поля в ваших документах и поддержка вложенных `IF` поле формулы и может даже вычислить имя поля слияния, используя формулу.

Некоторые примеры mail merge Поля, которые Aspose.Words поддерживает:

- Mail merge переключатели полей:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Вложенные поля слияния в формуле:
  `IF { `Мергефельд` Value1 } >= { `Мергефельд` Value2 } True False`
- Вычислить название поля слияния во время выполнения:
  `MERGEFIELD { `если` { `Мергефельд` Value1 } >= { `Мергефельд` Value2 } FirstName"LastName" }`
- Условный переход к следующей записи в источнике данных:
  `NEXTIF { `Мергефельд` Value1 } <= { =IF(-2.45 >= 6*{ `Мергефельд` Value2 }, 2, -.45) }`

#### Коммутаторы форматов

Поле в документе может иметь переключатели форматирования, которые определяют, как следует форматировать полученное значение. Aspose.Words Поддерживает следующие переключатели формата:

- @ - форматирование даты и времени
- \\\# - форматирование номеров
- \\\\\\\ Капс
- \\\\\\\\\\\\\\\\\\\\\\\\\\\
- \\\\\\\ ниже
- \\\\\\\ Верхний
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
- \\\\\\\\\\\\\\МЕРГЕФОРМАТ - результат форматирования в соответствии с форматированием старого результата.

#### Date Форматирование чисел в полях

Когда Aspose.Words Вычисляет результат поля, ему часто нужно разобрать строку на число или значение даты, а также отформатировать ее обратно в строку. По умолчанию Aspose.Words использует текущую культуру потоков для выполнения анализа и форматирования при расчете значений поля во время обновления поля и mail merge. Существуют также варианты в виде [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) Класс, который позволяет дополнительно контролировать, какая культура используется во время обновления поля.

- По умолчанию [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) имущество устанавливается [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) форматирует поля с использованием текущей культуры потоков.
- Это свойство можно установить на [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) Таким образом, язык, заданный из полевого кода поля, используется для форматирования.

#### Форматирование с использованием культуры текущего потока

Чтобы контролировать культуру, используемую при расчете поля, просто используйте **locale.setlocale** Способ установить культуру по вашему выбору, прежде чем ссылаться на расчет поля.
Ниже пример показывает, как изменить культуру, используемую в полях форматирования во время обновления.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Использование текущей культуры для форматирования полей позволяет системе легко и последовательно контролировать форматирование всех полей в документе во время обновления поля.

#### Форматирование с использованием культуры в документе

С другой стороны, Microsoft Word Форматирует каждое отдельное поле на основе языка текста, найденного в поле (в частности, выполняется из кода поля). Иногда во время обновления поля это может быть желаемым поведением, например, если у вас есть глобализованные документы, содержащие контент, состоящий из разных языков, и вы хотите, чтобы каждое поле соответствовало используемому в тексте местоположению. Aspose.Words Также поддерживается эта функциональность.

The [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Класс обеспечивает [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) свойство, содержащее элементы, которые могут быть использованы для контроля обновления полей в документе. Ниже пример показывает, как указать, где культура используется для форматирования даты во время обновления поля. mail merge Выбирается из.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Поиск кода поля и результата поля

Поле, которое вводится с использованием [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) возвращает [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) объект. Это класс фасада, который предоставляет полезные методы для быстрого поиска таких свойств поля. Обратите внимание, что если вы ищете только имена полей слияния в документе, вы можете вместо этого использовать встроенный метод. [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). Ниже пример показывает, как получить имена всех полей слияния в документе.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Как переименовать поля слияния

Ниже пример показывает, как переименовать поля слияния в документ Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
