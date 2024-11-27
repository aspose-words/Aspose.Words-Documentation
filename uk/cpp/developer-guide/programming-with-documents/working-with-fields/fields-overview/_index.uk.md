---
title: Огляд полів у C++
second_title: Aspose.Words для C++
articleTitle: Огляд полів
linktitle: Огляд полів
description: "Поля представлені в деталях, коди полів та результати вимірювань описані в Aspose.Words для C++."
type: docs
weight: 10
url: /uk/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words - це бібліотека класів, призначена для обробки документів Microsoft Word на стороні сервера і підтримує поля наступними способами:

- усі поля в документі зберігаються при відкритті / збереженні та перетворенні
- можна оновити результати по більшості полів

У цій статті ми дізнаємось більше про структуру поля, поля, що підтримуються в Aspose.Words, та деталі роботи з такими полями.

## Структура полів

Поле складається з:

- Вузли "початок поля" та "роздільник" використовуються для відображення вмісту, що становить код поля (як правило, у звичайному тексті).
- Роздільник полів і кінець поля відображають результат роботи з полем. Це може бути вміст різних типів - від фрагментів тексту до абзаців і таблиць.
- Деякі поля можуть не мати роздільника, що означає, що весь вміст становить код поля.
- Код поля визначає поведінку поля і складається з ідентифікатора поля та часто інших параметрів, таких як назви полів та перемикачі.
- Поле "Результат" містить останню оцінку поля. Це значення зберігається в полі "Результат" і відображається Користувачеві. У деяких полях результати можуть бути відсутніми, тому в документі нічого не відображатиметься. Аналогічно, деякі поля, можливо, ще не оновлені, тому результат також не буде отриманий.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Вміст, що становить код поля, зберігається у вигляді [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) вузлів між [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) і [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Результат поля зберігається між вузлами **FieldSeparator** і [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) і може складатися з різних типів вмісту. Зазвичай поле результату містить лише текст, що складається з **Run** вузлів, однак можливо, що вузол **FieldEnd** знаходиться в зовсім іншому абзаці, і, отже, поле результату складається з [вузли блочного рівня](/words/cpp/logical-levels-of-nodes-in-a-document/) наприклад, вузли **Table** і **Paragraph**.

Ось уявлення про те, як зберігається поле в Aspose.Words, на прикладі "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Поля в об'єктній моделі документа Aspose.Words (DOM)

Коли документ завантажується в Aspose.Words, поля документа завантажуються в об'єктну модель документа [Aspose.Words](/words/cpp/aspose-words-document-object-model/) як набір окремих компонентів (вузлів). Одне поле завантажується як набір з **FieldStart**, **FieldSeparator** та **FieldEnd** вузлів разом із вмістом між цими вузлами. Якщо поле не має результату field, тоді не буде вузла **FieldSeparator**. Усі ці вузли завжди знаходяться в рядку (як дочірні для [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) або [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

У Aspose.Words кожен з **FieldXXX** вузлів є похідним від [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Цей клас надає властивість для перевірки типу поля, представленого вказаним вузлом, за допомогою властивості [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Наприклад, **FieldType.FieldMergeField** представляє поле об'єднання в документі.

{{% alert color="primary" %}}

У документі Word існують деякі спеціальні поля, які не імпортуються в Aspose.Words Як набір вузлів **FieldXXX**. Наприклад, поле `LINK` і поле `INCLUDEPICTURE` імпортуються в Aspose.Words Як об'єкт `Shape`. Цей об'єкт надає властивості для роботи з даними зображення, які зазвичай зберігаються в цих полях. Щоб імпортувати поле `INCLUDEPICTURE` Як вузли **FieldXXX**, параметр [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) повинен бути вказаний як **true**.

Поля форми також імпортуються в Aspose.Words Як власний спеціальний клас. Клас [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) представляє поле форми в документі Word і надає додаткові методи, характерні для поля форми.

{{% /alert %}}

## Підтримувані поля

У поточній версії Aspose.Words підтримується обчислення наступних полів:

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

## Складний синтаксичний аналіз полів

Aspose.Words повторює спосіб, яким Microsoft Word обробляє поля, і в результаті коректно обробляє:

- вкладені поля:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- аргумент поля може бути результатом використання вкладеного поля
- поля можуть бути вкладені як в код поля, так і в результат поля
- пробіли / без пробілів, лапки / без лапок, екрануючі символи в полях і т. д.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, що охоплюють кілька абзаців

### Поля формул

Aspose.Words забезпечує дуже серйозну реалізацію двигуна формул і підтримує наступне:

- арифметичні та логічні оператори:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функція:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- посилання на закладки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- перемикачі форматування чисел:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Підтримуються наступні функції в виразах: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Лише деякі вирази `IF`, які Aspose.Words може легко обчислити, повинні дати вам уявлення про те, наскільки потужною є ця функція:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words підтримує всі параметри форматування дати та часу, доступні в Microsoft Word, ось деякі приклади:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Поля

Aspose.Words не обмежує складність полів Mail Merge у ваших документах, підтримує вкладені поля `IF` та поля формул і навіть може обчислити назву поля об'єднання за допомогою формули.

Кілька прикладів полів Mail Merge, які підтримує Aspose.Words:

- Mail merge перемикачі полів:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- вкладені поля злиття у формулі:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- обчисліть назву поля злиття під час виконання:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- умовний перехід до наступного запису в джерелі даних:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Перемикачі форматів

Поле в документі може мати параметри форматування, які визначають, як слід відформатувати отримане значення. Aspose.Words підтримує наступні параметри форматування:

- @ - форматування дати та часу
- \\\# - форматування чисел
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\ \\\* CHARFORMAT - форматування результату відповідно до першого символу коду поля
- \\\\\\\\* MERGEFORMAT - відформатуйте результат відповідно до того, як був відформатований Старий результат

### Форматування дати і чисел в полях

Коли Aspose.Words обчислює результат роботи з полем, йому часто потрібно перетворити рядок в число або значення дати, а також відформатувати її назад в рядок.За замовчуванням Aspose.Words використовує поточну структуру потоку для виконання синтаксичного аналізу та форматування при обчисленні значень полів під час оновлення поля та mail merge. Існують також опції, представлені у вигляді класу [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), який дозволяє додатково контролювати, який регіон використовується при оновленні поля.

- за замовчуванням властивості [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) присвоєно значення [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), що дозволяє форматувати поля, використовуючи поточні параметри потоку
- цій властивості можна присвоїти значення [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), щоб замість нього для форматування використовувалася мова, зазначена в коді поля

### Форматування з використанням культури поточного потоку

Щоб керувати культурою, яка використовується при обчисленні поля, просто встановіть для властивості **CurrentCulture** значення культури на ваш вибір перед викликом обчислення поля.

Наступний приклад коду показує, як змінити регіональні параметри, що використовуються в полях форматування під час оновлення:

EXAMPLE

Використання існуючих стандартів для форматування полів дозволяє системі легко та послідовно керувати форматуванням усіх полів у документі під час оновлення полів.

### Форматування з використанням регіональних параметрів документа

З іншого боку, Microsoft Word форматує кожне окреме поле на основі мови тексту, знайденого в полі (зокрема, на основі коду поля). Іноді при оновленні полів це може бути бажаним, наприклад, якщо у вас є глобалізовані документи, що містять вміст багатьма різними мовами, і ви хочете, щоб кожне поле відповідало мовному стандарту, який використовується в тексті. Aspose.Words також підтримує цю функціональність.

Клас [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) надає властивість [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/), яка містить елементи, які можна використовувати для управління оновленням полів у документі.

Наступний приклад коду показує, як вказати, з якого джерела вибирається регіональна структура, яка використовується для форматування дати під час оновлення поля, та Mail Merge:

EXAMPLE
