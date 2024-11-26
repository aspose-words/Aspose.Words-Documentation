---
title: Обзор полей в C++
second_title: Aspose.Words для C++
articleTitle: Обзор полей
linktitle: Обзор полей
description: "Подробная информация о полях, кодах полей и результатах их использования приведена в разделе Aspose.Words для C++.."
type: docs
weight: 10
url: /ru/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words - это библиотека классов, предназначенная для обработки документов Microsoft Word на стороне сервера и поддерживающая поля следующими способами:

- все поля в документе сохраняются при открытии/сохранении и преобразовании
- можно обновить результаты по большинству полей

В этой статье мы узнаем больше о структуре поля, полях, поддерживаемых в Aspose.Words, и деталях работы с такими полями.

## Структура полей

Поле состоит из:

- Узлы "Начало поля" и "разделитель" используются для отображения содержимого, составляющего код поля (обычно в виде обычного текста).
- Разделитель полей и конец поля отображают результат работы с полем. Это может быть содержимое различных типов - от фрагментов текста до абзацев и таблиц.
- Некоторые поля могут не иметь разделителя, что означает, что все содержимое составляет код поля.
- Код поля определяет поведение поля и состоит из идентификатора поля и часто других параметров, таких как названия полей и переключатели.
- Поле "Результат" содержит самую последнюю оценку поля. Это значение сохраняется в поле "результат" и отображается пользователю. В некоторых полях результаты могут отсутствовать, поэтому в документе ничего не будет отображаться. Аналогично, некоторые поля, возможно, еще не обновлены, поэтому результат также не будет получен.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Содержимое, составляющее код поля, хранится в виде [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) узлов между [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) и [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Результат работы с полем хранится между узлами **FieldSeparator** и [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) и может состоять из различных типов содержимого. Обычно поле результата содержит только текст, состоящий из **Run** узлов, однако возможно, что узел **FieldEnd** находится в совершенно другом абзаце, и, таким образом, поле результата состоит из [узлы блочного уровня](/words/cpp/logical-levels-of-nodes-in-a-document/) например, узлы **Table** и **Paragraph**.

Вот представление о том, как хранится поле в Aspose.Words, на примере "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Поля в объектной модели документа Aspose.Words (DOM)

Когда документ загружается в Aspose.Words, поля документа загружаются в объектную модель документа [Aspose.Words](/words/cpp/aspose-words-document-object-model/) как набор отдельных компонентов (узлов). Одно поле загружается как набор узлов **FieldStart**, **FieldSeparator** и **FieldEnd** вместе с содержимым между этими узлами. Если у поля нет результата field, то не будет узла **FieldSeparator**. Все эти узлы всегда находятся в строке (как дочерние для [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) или [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

В Aspose.Words каждый из узлов **FieldXXX** является производным от [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Этот класс предоставляет свойство для проверки типа поля, представленного указанным узлом, с помощью свойства [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Например, **FieldType.FieldMergeField** представляет поле объединения в документе.

{{% alert color="primary" %}}

В документе Word существуют некоторые особые поля, которые не импортируются в Aspose.Words как набор из **FieldXXX** узлов. Например, поле `LINK` и поле `INCLUDEPICTURE` импортируются в Aspose.Words как объект `Shape`. Этот объект предоставляет свойства для работы с данными изображения, которые обычно хранятся в этих полях. Чтобы импортировать поле `INCLUDEPICTURE` в качестве узлов **FieldXXX**, параметр [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) должен быть указан как **true**.

Поля формы также импортируются в Aspose.Words как их собственный специальный класс. Класс [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) представляет поле формы в документе Word и предоставляет дополнительные методы, характерные для поля формы.

{{% /alert %}}

## Поддерживаемые поля

В текущей версии Aspose.Words поддерживается вычисление следующих полей:

- = (формула)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Сложный синтаксический анализ полей

Aspose.Words соответствует способу обработки полей в Microsoft Word, и в результате он корректно обрабатывает:

- вложенные поля:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- аргумент поля может быть результатом использования вложенного поля
- поля могут быть вложены как в код поля, так и в результат поля
- пробелы/без пробелов, кавычки/без кавычек, экранирующие символы в полях и т.д.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, охватывающие несколько абзацев

### Поля формул

Aspose.Words обеспечивает очень серьезную реализацию движка формул и поддерживает следующее:

- арифметические и логические операторы:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функции:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ссылки на закладки:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- переключатели форматирования чисел:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддерживаются следующие функции в выражениях: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Лишь некоторые из выражений `IF`, которые Aspose.Words может легко вычислить, должны дать вам представление о том, насколько мощной является эта функция:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words поддерживает все параметры форматирования даты и времени, доступные в Microsoft Word, вот некоторые примеры:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Поля

Aspose.Words не накладывает ограничений на сложность полей Mail Merge в ваших документах и поддерживает вложенные поля `IF` и поля формул, а также может даже вычислять имя объединяемого поля с помощью формулы.

Несколько примеров полей mail merge, которые поддерживает Aspose.Words:

- Mail merge переключатели полей:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- вложенные поля слияния в формуле:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- вычислите имя поля слияния во время выполнения:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- условный переход к следующей записи в источнике данных:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Переключатели форматов

Поле в документе может иметь параметры форматирования, которые определяют, как должно быть отформатировано результирующее значение. Aspose.Words поддерживает следующие параметры форматирования:

- @ – форматирование даты и времени
- \\\# – форматирование чисел
- \\\\\\\\* Заглавные буквы
- \\\\\\\\* Первый колпачок
- \\\\\\\\* Ниже
- \\\\\\\\* Верхний
- \\\\\\\\* CHARFORMAT – форматирование результата в соответствии с первым символом кода поля
- \\\\\\\\* MERGEFORMAT – отформатировать результат в соответствии с тем, как был отформатирован старый результат

### Форматирование даты и чисел в полях

Когда Aspose.Words вычисляет результат работы с полем, ему часто требуется преобразовать строку в число или значение даты, а также отформатировать ее обратно в строку.По умолчанию Aspose.Words использует текущую структуру потока для выполнения синтаксического анализа и форматирования при вычислении значений полей во время обновления поля и mail merge. Существуют также опции, представленные в виде класса [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), который позволяет дополнительно контролировать, какой регион используется при обновлении поля.

- по умолчанию свойству [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) присвоено значение [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), что позволяет форматировать поля, используя текущие параметры потока
- этому свойству можно присвоить значение [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), чтобы вместо него для форматирования использовался язык, указанный в коде поля

### Форматирование с использованием культуры текущего потока

Чтобы управлять культурой, используемой при расчете поля, просто установите для свойства **CurrentCulture** значение культуры по вашему выбору перед вызовом расчета поля.

В следующем примере кода показано, как изменить региональные параметры, используемые в полях форматирования во время обновления:

Пример

Использование существующих стандартов для форматирования полей позволяет системе легко и последовательно управлять форматированием всех полей в документе во время обновления полей.

### Форматирование с использованием региональных параметров документа

С другой стороны, Microsoft Word форматирует каждое отдельное поле на основе языка текста, содержащегося в поле (в частности, на основе кода поля). Иногда при обновлении полей это может быть желательным, например, если у вас есть глобализированные документы, содержащие содержимое на многих разных языках, и вы хотите, чтобы каждое поле соответствовало языковому стандарту, используемому в тексте. Aspose.Words также поддерживает эту функциональность.

Класс [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) предоставляет свойство [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/), которое содержит элементы, которые можно использовать для управления обновлением полей в документе.

В следующем примере кода показано, как указать, из какого источника выбирается региональная структура, используемая для форматирования даты при обновлении поля, и mail merge:

Пример
