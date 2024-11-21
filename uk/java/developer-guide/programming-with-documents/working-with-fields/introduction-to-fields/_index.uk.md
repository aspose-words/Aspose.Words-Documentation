---
title: Введення в поля в Java
second_title: Aspose.Words для Java
articleTitle: Введення в поля
linktitle: Введення в поля
description: "Особливості поля в деталях, польових кодах і польових результатах, описаних в Aspose.Words для Javaй"
type: docs
weight: 10
url: /uk/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words Бібліотека класу, призначена для обробки сервера Microsoft Word документи та супровід полів в наступних напрямках:

- всі поля в документі зберігаються під час відкритого/Зберегти та перетворення
- можна оновити результати найбільш полів

У цій статті ми дізнаємося більше про структуру поля, поля, які підтримуються в Aspose.Words, і деталі роботи з такими полями.

## Структура поля

Поле складається з:

- до Вузли польового старту і сепаратора використовуються для об'єднання вмісту, що робить код поля (звичайно як звичайний текст).
- Сепаратор польового та польового кінця об'єднують польовий результат. Це може бути виконано з різних типів контенту, починаючи від ходу тексту до абзаців до таблиць.
- Декілька полів не може мати сепаратор, який означає, що весь вміст робить код поля.
- до Код поля визначає поведінку поля та складається з ідентифікатора поля та часто інших параметрів, таких як назва поля та вимикачі.
- до В польових результатах міститься остання оцінка поля. Це значення зберігається в полі результат і є те, що відображається користувачеві. Деякі поля не можуть мати ніяких результатів поля, таким чином, не відображати нічого в документі. Тим не менш, деякі поля не можуть бути оновлені, але тому також не будуть польові результати.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Зміст, що робить код поля, зберігається як [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) вузли між [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) і [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)й В результаті поля зберігається між **FieldSeparator** і [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) вузлів і можуть бути виготовлені з різних типів контенту. Нормально польовий результат містить лише текст, який складається з вузлів Run, проте це можливо для вершини FieldEnd, який знаходиться в повністю іншому пункті, і, таким чином, що результат поля складається з [Логічні рівні імен у документі](/words/uk/java/logical-levels-of-nodes-in-a-document/) як **Table** і **Paragraph** також вузли.

Ось чому поле зберігається в Aspose.Words за допомогою прикладу "*DocumentExplorer"* [Гитуб](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer)й

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Сфери в Aspose.Words Document Object Model (Українська)DOMй

Коли документ завантажується <span notrans="<span notrans=" Aspose.Words"=""></span>, > поля документа завантажуються в поля документа Aspose.Words Document Object Model як набір окремих компонентів (неподів). Єдине поле завантажується як збірка **FieldStart**, **FieldSeparator** і **FieldEnd** вершини разом з контентом у цих вузлах. Якщо поле не має поля, то не буде **FieldSeparator** вузол. Всі ці вершини завжди знайдені в Інтернеті (як діти) [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) або [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)й

У Aspose.Words кожен з **FieldXXX** вузли дервії з [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)й Даний клас надає майно для перевірки типу поля, представленого за вказаною вершиною через [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) майно. Приклад `FieldType.FieldMergeField` являє собою поле злиття в документі.

{{% alert color="primary" %}}

Є деякі конкретні поля, які існують в документі Word, які не імпортуються в Aspose.Words як збірка **FieldXXX** вершини. Наприклад, `LINK` поле та `INCLUDEPICTURE` поле імпортуються в Aspose.Words як [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) об'єкт. Цей об'єкт надає властивості для роботи з даними зображень, як правило, зберігаються в цих полях. Імпорт `INCLUDEPICTURE` поле як **FieldXXX** вершини [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) варіант необхідно вказати як **true**й

Формові поля також імпортуються в Aspose.Words як власний особливий клас. Про нас [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) клас являє собою поле форми в документі Word і надає додаткові методи, які є специфічними для форми.

{{% /alert %}}

## Підтримувані поля

Розрахунок наступних полів підтримується в поточній версії Aspose.Words:

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
- до `TOC` (в тому числі TOT і TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Софістичне поле виховання

Aspose.Words в дорозі Microsoft Word обробляє поля і в результаті це правильно ручки:

- роз'ємні поля:
  `IF { =OR({ `COMПАРЕ` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- аргумент поля може бути результатом вкладеного поля
- поля можуть бути відхилені в межах поля, а також в результаті поля
- пробіли/не пробіли, котирування/не котирування, втечу символи в полях тощо:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, які пропускають через кілька абзаців

### Сфери формул

Aspose.Words забезпечує дуже серйозне виконання формули двигуна і підтримує наступні дії:

- арифметичні та логічні оператори:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функції:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- посилання на закладки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- перемикачі форматування номера:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Підтримуються наступні функції у виразах: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUEй

### `IF` і `COMPARE` Сфери

Просто деякі з `IF` вирази, які Aspose.Words Ви можете легко розрахувати, що вам потрібно знати про те, наскільки потужна ця функція є:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` і `TIME` Сфери

Aspose.Words підтримує всі перемикачі форматування часу, доступні в Microsoft Word, Приклади:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Сфери

Aspose.Words не обмежується складністю mail merge полів у ваших документах та підтримках `IF` і формули поля і навіть можна розрахувати назву поля злиття за допомогою формули.

Деякі приклади mail merge поля, які Aspose.Words опори:

- до Mail merge польові вимикачі:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- непристойні поля злиття в формулі:
  `IF { `СЕРГЕФІКАЦІЯ` Value1 } >= { `СЕРГЕФІКАЦІЯ` Value2 } True False`
- розрахувати ім'я поля злиття на runtime:
  `MERGEFIELD { `МСБ` { `СЕРГЕФІКАЦІЯ` Value1 } >= { `СЕРГЕФІКАЦІЯ` Value2 } FirstName"LastName" }`
- умовний перехід на наступний запис у джерело даних:
  `NEXTIF { `СЕРГЕФІКАЦІЯ` Value1 } <= { =IF(-2.45 >= 6*{ `СЕРГЕФІКАЦІЯ` Value2 }, 2, -.45) }`

### Формат перемикачі

Поле в документі може мати форматування перемикачів, які вказують на те, як буде відформатовано значення. Aspose.Words підтримує наступні перемикачі формату:

- @ - форматування дати та часу
- \\\# - форматування номера
- \\\\\\\\\\\ Капсули
- \\\\\\\\\\* Перший
- \\\\\\\\\\\ Мали
- \\\\\\\\\\\ Верхній
- \\\\\\\\* ХАРФОРМАТ – результат формату згідно першого символу поля
- \\\\\\\\\* MERGEFORMAT - результат формату згідно з яким відформатовано старий результат

### Date Форматування номерів в полях

Коли Aspose.Words розраховує результат поля, його часто потрібно ввести рядок в число або дату значення, а також форматувати його назад до рядка. За замовчуванням Aspose.Words використовує поточну культуру ниток для виконання парсингу та форматування при розрахунку значень поля під час оновлення поля та mail mergeй Також існують варіанти, передбачені у вигляді [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) клас, який дозволяє додатково контролювати, яку культуру використовується в процесі оновлення поля%

* за замовчуванням [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) Зручності в готелі [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) які формати полів за допомогою поточної культури ниток
* Ця властивість може бути встановлена до [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) так мовний набір з польового коду поля використовується для форматування замість

### Форматування за допомогою культури сучасної нитки

Для управління культурою, що використовується при розрахунку поля, просто встановлюють **CurrentCulture** майно на культуру вибору перед вилученням родовищ.

Приклад коду показує, як змінити культуру, що використовується у форматуванні поля під час оновлення:

EXAMPLE (за допомогою публічного обгортання ПоточнихНалаштування.getLocale() і setLocale() замість приватної `Thread.CurrentThread`.CurrentCulture)

Використання поточної культури для форматування полів дозволяє легко і послідовно контролювати, як всі поля в документі форматуються під час оновлення поля.

### Форматування за допомогою культури в документі

З іншого боку, Microsoft Word Формати кожного окремого поля на основі мови тексту, знайденого у полі (зокрема, проходжень з коду поля). Іноді під час оновлення поля це може бути бажана поведінка, наприклад, якщо у вас є глобалізовані документи, що містять контент, що складається з багатьох різних мов і хотіли б кожен полів, щоб честь локалізації, що використовується з тексту. Aspose.Words також підтримує цей функціонал.

Про нас [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Клас надає [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) майно, яке містить члени, які можуть бути використані для контролю того, як поля оновлюються в документі.

Приклад коду показує, як визначити, де культура використовується для форматування дати під час оновлення поля та mail merge Вибирається з:

КОМПЛЕКС
