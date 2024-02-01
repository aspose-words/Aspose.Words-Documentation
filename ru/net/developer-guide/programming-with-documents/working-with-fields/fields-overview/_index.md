---
title: Обзор полей в C#
second_title: Aspose.Words для .NET
articleTitle: Обзор полей
linktitle: Обзор полей
description: "Подробное описание полей, коды полей и результаты полей описаны в Aspose.Words для .NET."
type: docs
weight: 10
url: /ru/net/fields-overview/
---

Aspose.Words — это библиотека классов, предназначенная для серверной обработки документов Microsoft Word и поддерживающая поля следующими способами:

- все поля документа сохраняются при открытии/сохранении и преобразовании
- можно обновить результаты большинства полей

В этой статье мы узнаем больше о структуре полей, полях, поддерживаемых в Aspose.Words, и деталях работы с такими полями.

## Структура поля

Поле состоит из:

- Узлы начала поля и разделителя используются для охвата содержимого, составляющего код поля (обычно в виде обычного текста).
- Разделитель полей и конец поля охватывают результат поля. Он может состоять из различных типов контента: от фрагментов текста до абзацев и таблиц.
– Некоторые поля могут не иметь разделителя, что означает, что все содержимое составляет код поля.
- Код поля определяет поведение поля и состоит из идентификатора поля и часто других параметров, таких как имя поля и переключатели.
- Результат поля содержит самую последнюю оценку поля. Это значение сохраняется в результате поля и отображается пользователю. Некоторые поля могут не иметь результатов, поэтому в документе ничего не будет отображаться. Аналогичным образом, некоторые поля могут еще не быть обновлены, поэтому в них также не будет результатов.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Содержимое, составляющее код поля, сохраняется как узлы [Run](https://reference.aspose.com/words/net/aspose.words/run/) между [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) и [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Результат поля сохраняется между узлами **FieldSeparator** и [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) и может состоять из различных типов контента. Обычно результат поля содержит только текст, состоящий из **Run** узлов, однако узел **FieldEnd** может располагаться в совершенно другом абзаце, в результате чего результат поля также будет состоять из [Логические уровни узлов в документе](/words/ru/net/logical-levels-of-nodes-in-a-document/) узлов, например **Table** и **Paragraph** узлов.

Вот представление о том, как хранится поле в Aspose.Words году, с использованием примера "*DocumentExplorer"*, который можно найти по адресу [Гитхаб](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Поля в районе Aspose.Words Document Object Model (DOM)

При загрузке документа в Aspose.Words поля документа загружаются в [Aspose.Words Document Object Model (DOM)](/words/ru/net/aspose-words-document-object-model/) как набор отдельных компонентов (узлов). Одно поле загружается как коллекция из **FieldStart**, **FieldSeparator** и **FieldEnd** узлов вместе с содержимым между этими узлами. Если поле не имеет результата поля, то узла **FieldSeparator** не будет. Все эти узлы всегда находятся в строке (как дочерние узлы [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

В Aspose.Words каждый из узлов **FieldXXX** является производным от [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Этот класс предоставляет свойство для проверки типа поля, представленного указанным узлом, через свойство [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Например, **FieldType.FieldMergeField** представляет поле слияния в документе.

{{% alert color="primary" %}}

В документе Word существуют определенные поля, которые не импортируются в Aspose.Words как набор из **FieldXXX** узлов. Например, поля `LINK` и `INCLUDEPICTURE` импортируются в Aspose.Words как объект [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/). Этот объект предоставляет свойства для работы с данными изображения, обычно хранящимися в этих полях. Чтобы импортировать поле `INCLUDEPICTURE` как **FieldXXX** узлов, необходимо указать опцию [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) как **истинный**.

Поля формы также импортируются в Aspose.Words как отдельный специальный класс. Класс [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) представляет поле формы в документе Word и предоставляет дополнительные методы, специфичные для поля формы.

{{% /alert %}}

## Поддерживаемые поля

В текущей версии Aspose.Words поддерживается расчет следующих полей:

- = (формула)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Сложный анализ полей

Aspose.Words следует тому, как Microsoft Word обрабатывает поля, и в результате правильно обрабатывает:

- вложенные поля:
 `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- аргумент поля может быть результатом вложенного поля
- поля могут быть вложены как в код поля, так и в результат поля
- пробелы/без пробелов, кавычки/без кавычек, escape-символы в полях и т.д.:
 `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, охватывающие несколько абзацев

### Поля формул

Aspose.Words обеспечивает очень серьезную реализацию механизма формулы и поддерживает следующее:

- арифметические и логические операторы:
 `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функции:
 `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ссылки на закладки:
 `=IF(C>4, 5,ABS(A)*.76) +3.85`
- переключатели форматирования чисел:
 `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддерживаются следующие функции в выражениях: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Поля `IF` и `COMPARE`

Лишь некоторые из `IF` выражений, которые Aspose.Words может легко вычислить, дадут вам представление о том, насколько мощной является эта функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Поля `DATE` и `TIME`

Aspose.Words поддерживает все переключатели форматирования даты и времени, доступные в Microsoft Word, вот некоторые примеры:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Поля

Aspose.Words не накладывает ограничений на сложность полей mail merge в ваших документах, поддерживает вложенные поля `IF` и поля формулы и даже может вычислить имя поля слияния с помощью формулы.

Некоторые примеры полей mail merge, которые поддерживает Aspose.Words:

- Mail merge полевые переключатели:
 `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- вложенные поля слияния в формуле:
 `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- вычислить имя поля слияния во время выполнения:
 `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- условный переход к следующей записи в источнике данных:
 `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Переключатели формата

Поле в документе может иметь переключатели форматирования, определяющие, как следует форматировать результирующее значение. Aspose.Words поддерживает следующие переключатели формата:

- \\\@ – форматирование даты и времени
- \\\# – форматирование чисел
- \\\* Колпачки
- \\\* FirstCap
- \\\* Ниже
- \\\* Верхний
- \\\* CHARFORMAT – форматировать результат по первому символу кода поля
- \\\* MERGEFORMAT – форматировать результат в соответствии с форматированием старого результата

### Date и форматирование чисел в полях

Когда Aspose.Words вычисляет результат поля, ему часто необходимо проанализировать строку в число или значение даты, а также отформатировать ее обратно в строку. По умолчанию Aspose.Words использует текущий язык и региональные параметры потока для выполнения синтаксического анализа и форматирования при вычислении значений поля во время обновления поля. и mail merge. Существуют также параметры, предоставленные в виде класса [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/), который позволяет дополнительно контролировать, какая культура используется во время обновления поля.

- по умолчанию для свойства [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) установлено значение [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/), которое форматирует поля с использованием текущей культуры потока
- для этого свойства можно установить значение [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/), чтобы вместо этого для форматирования использовался язык, заданный из кода поля

### Форматирование с использованием культуры текущего потока

Чтобы контролировать культуру, используемую во время расчета поля, просто установите для свойства **Thread.CurrentThread.CurrentCulture** значение культуры по вашему выбору, прежде чем вызывать расчет поля.

В следующем примере кода показано, как изменить язык и региональные параметры, используемые в полях форматирования во время обновления:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Использование текущего языка и региональных параметров для форматирования полей позволяет системе легко и последовательно контролировать форматирование всех полей в документе во время обновления полей.

### Форматирование с использованием языка и региональных параметров в документе

С другой стороны, Microsoft Word форматирует каждое отдельное поле на основе языка текста, найденного в поле (в частности, запускается из кода поля). Иногда во время обновления полей это может быть желаемым поведением, например, если у вас есть глобализированные документы, содержащие контент, составленный на многих разных языках, и вы хотите, чтобы каждое поле учитывало локаль, используемую в тексте. Aspose.Words также поддерживает эту функцию.

Класс [Document](https://reference.aspose.com/words/net/aspose.words/document/) предоставляет свойство [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/), содержащее элементы, которые можно использовать для управления обновлением полей в документе.

В следующем примере кода показано, как указать, где выбран язык и региональные параметры, используемые для форматирования даты во время обновления поля, и mail merge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
