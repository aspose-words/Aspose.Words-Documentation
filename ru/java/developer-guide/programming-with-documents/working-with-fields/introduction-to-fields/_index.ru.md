---
title: Введение в поля в Java
second_title: Aspose.Words для Java
articleTitle: Введение в поля
linktitle: Введение в поля
description: "Поля подробно описаны, коды полей и результаты полей объяснены в Aspose.Words для Java."
type: docs
weight: 10
url: /ru/java/introduction-to-fields/
---

Aspose.Words библиотека классов, предназначенная для серверной обработки Microsoft Word документирует и поддерживает поля следующими способами:

- Все поля в документе сохраняются во время открытого/сохранения и конверсии
- возможно обновление результатов большинства полей

В этой статье мы узнаем больше о структуре поля, полях, поддерживаемых в Aspose.Words, Подробности работы с такими полями.

## Полевая структура

Поле состоит из:

- Узлы запуска поля и разделителя используются для охвата контента, который составляет код поля (обычно в виде простого текста).
- Разделитель поля и конец поля охватывают результат поля. Это может быть составлено из различных типов контента, начиная от прогонов текста до абзацев и таблиц.
- Некоторые поля могут не иметь разделителя, что означает, что весь контент составляет код поля.
- Код поля определяет поведение поля и состоит из идентификатора поля и часто других параметров, таких как имя поля и переключатели.
- Результаты на местах содержат самую последнюю оценку на местах. Это значение сохраняется в результате поля и является тем, что отображается пользователю. Некоторые поля могут не иметь какого-либо результата поля, поэтому в документе ничего не будет отображаться. Кроме того, некоторые поля могут не обновляться, поэтому также не будут иметь результата поля.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Содержимое, которое составляет код поля, хранится как [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) узлы между ними [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) и [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Результат поля хранится между **FieldSeparator** и [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) Узлы могут состоять из различных типов контента. Обычно результат поля содержит только текст, состоящий из узлов Run, однако узел FieldEnd может быть расположен в совершенно другом абзаце и, таким образом, делает результат поля, состоящий из [Логические уровни узлов в документе](/words/ru/java/logical-levels-of-nodes-in-a-document/) такие как **Table** и **Paragraph** Узлы тоже.

Вот взгляд на то, как поле хранится в Aspose.Words используя пример "*Исследователь документов"*, который можно найти на [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Поля в Aspose.Words Document Object Model ()DOM)

Когда документ загружается в <span notrans="<span notrans=" Aspose.Words"=""></span>"> Поля документа загружаются в Aspose.Words Document Object Model как набор отдельных компонентов (узлов). Одно поле загружается как коллекция **FieldStart**, **FieldSeparator** и **FieldEnd** Узлы вместе с содержимым между этими узлами. Если поле не имеет результата поля, то не будет **FieldSeparator** Узел. Все эти узлы всегда находятся в ряде (как у детей). [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

В Aspose.Words Каждый из них **FieldXXX** Узлы происходят от [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Этот класс предоставляет свойство проверять тип поля, представленного указанным узлом через [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) собственность. Например, `FieldType.FieldMergeField` представляет собой поле слияния в документе.

{{% alert color="primary" %}}

В документе Word есть некоторые конкретные поля, которые не импортируются в Aspose.Words как сборник **FieldXXX** Узлы. Например, `LINK` поле и `INCLUDEPICTURE` поле импортируется в Aspose.Words как [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) объект. Этот объект предоставляет свойства для работы с данными изображения, обычно хранящимися в этих полях. импортировать `INCLUDEPICTURE` поле как **FieldXXX** узлы [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) опцион должен быть указан как **true**.

Поля формы также импортируются в Aspose.Words как свой особый класс. The [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) Класс представляет собой поле формы в документе Word и предоставляет дополнительные методы, которые являются специфическими для поля формы.

{{% /alert %}}

## Поддерживаемые поля

Расчет следующих полей поддерживается в текущей версии Aspose.Words:

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
- `TOC` (включая TOT и TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Сложный полевой парсинг

Aspose.Words Следуйте по пути Microsoft Word обрабатывает поля и в результате правильно обрабатывает:

- вложенные поля:
  `IF { =OR({ `COMПАРЕ` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- полевой аргумент может быть результатом вложенного поля
- поля могут быть вложены в код поля, а также в результат поля
- Пространства/нет пространств, цитаты/нет цитат, побег персонажей в полях и т.д
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, которые охватывают несколько абзацев

### Формула поля

Aspose.Words обеспечивает очень серьезную реализацию формулы двигателя и поддерживает следующее:

- арифметические и логические операторы:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функции:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ссылки на закладки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- выключатели форматирования номеров:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддерживаются следующие функции в выражениях: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` и `COMPARE` Поля

Только некоторые из них `IF` Выражения, которые Aspose.Words Вы можете легко рассчитать, чтобы дать вам представление о том, насколько мощна эта функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` и `TIME` Поля

Aspose.Words поддерживает все переключатели форматирования даты и времени, доступные в Microsoft Word, Вот несколько примеров:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Поля

Aspose.Words не накладывает никаких ограничений на сложность mail merge Поля в ваших документах и поддержка вложенных `IF` поле формулы и может даже вычислить имя поля слияния, используя формулу.

Некоторые примеры mail merge Поля, которые Aspose.Words поддерживает:

- Mail merge переключатели полей:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- вложенные поля слияния в формуле:
  `IF { `Мергефельд` Value1 } >= { `Мергефельд` Value2 } True False`
- вычислить название поля слияния во время выполнения:
  `MERGEFIELD { `если` { `Мергефельд` Value1 } >= { `Мергефельд` Value2 } FirstName"LastName" }`
- условный переход к следующей записи в источнике данных:
  `NEXTIF { `Мергефельд` Value1 } <= { =IF(-2.45 >= 6*{ `Мергефельд` Value2 }, 2, -.45) }`

### Коммутаторы форматов

Поле в документе может иметь переключатели форматирования, которые определяют, как следует форматировать полученное значение. Aspose.Words Поддерживает следующие переключатели формата:

- @ - форматирование даты и времени
- \\\# - форматирование номеров
- \\\\\\\ Капс
- \\\\\\\\\\\\\\\\\\\\\\\\\\\
- \\\\\\\ ниже
- \\\\\\\ Верхний
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
- MERGEFORMAT - результат форматирования в соответствии с форматированием старого результата

### Date Форматирование чисел в полях

Когда Aspose.Words Вычисляет результат поля, ему часто нужно разобрать строку на число или значение даты, а также отформатировать ее обратно в строку. По умолчанию Aspose.Words использует текущую культуру потоков для выполнения анализа и форматирования при расчете значений поля во время обновления поля и mail merge. Существуют также варианты, предоставляемые в виде [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) класс, который позволяет дополнительно контролировать, какая культура используется во время обновления поля

* по умолчанию [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) имущество устанавливается [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) форматирует поля с использованием текущей культуры потоков
* Это свойство может быть установлено [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) Таким образом, язык, заданный из полевого кода поля, используется для форматирования

### Форматирование с использованием культуры текущей нити

Чтобы контролировать культуру, используемую при расчете поля, просто установите **CurrentCulture** собственность на выбранную вами культуру, прежде чем прибегать к расчетам полей.

Следующий пример кода показывает, как изменить культуру, используемую в полях форматирования во время обновления:

Пример (используйте общедоступную обертку CurrentThreadSettings.getLocale() и setLocale() вместо частной) `Thread.CurrentThread`.CurrentCulture

Использование текущей культуры для форматирования полей позволяет системе легко и последовательно контролировать форматирование всех полей в документе во время обновления поля.

### Форматирование с использованием культуры в документе

С другой стороны, Microsoft Word форматирует каждое отдельное поле на основе языка текста, найденного в поле (в частности, выполняется из кода поля). Иногда во время обновления поля это может быть желаемым поведением, например, если у вас есть глобализированные документы, содержащие контент, состоящий из множества разных языков, и вы хотите, чтобы каждое поле соответствовало используемому из текста. Aspose.Words Также поддерживается эта функциональность.

The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Класс обеспечивает [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) свойство, содержащее элементы, которые могут быть использованы для контроля обновления полей в документе.

Следующий пример кода показывает, как указать, где культура, используемая для форматирования даты во время обновления поля, и mail merge Выбирается из:

Пример
