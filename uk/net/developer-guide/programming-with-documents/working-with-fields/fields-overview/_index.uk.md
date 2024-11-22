---
title: Огляд поля в C#
second_title: Aspose.Words для .NET
articleTitle: Огляд поля
linktitle: Огляд поля
description: "Особливості поля в деталях, польових кодах і польових результатах, описаних в Aspose.Words для .NETй"
type: docs
weight: 10
url: /uk/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words Бібліотека класу, призначена для обробки сервера Microsoft Word документи та супровід полів в наступних напрямках:

- всі поля в документі зберігаються під час відкритого/Зберегти та перетворення
- можна оновити результати більшості полів

У цій статті ми дізнаємося більше про структуру поля, поля, які підтримуються в Aspose.Words, і деталі роботи з такими полями.

## Структура поля

Поле складається з:

- до Вузли польового старту і сепаратора використовуються для об'єднання вмісту, що робить код поля (звичайно як звичайний текст).
- Сепаратор родовищ і польовий кінець об'єднують польовий результат. Це може бути виконано з різних типів контенту, починаючи від ходу тексту до абзаців до таблиць.
- Декілька полів не може мати сепаратор, який означає, що весь вміст робить код поля.
- до Код поля визначає поведінку поля та складається з ідентифікатора поля та часто інших параметрів, таких як назва поля та вимикачі.
- до В польових результатах міститься остання оцінка поля. Це значення зберігається в полі результат і є те, що відображається користувачеві. Деякі поля не можуть мати ніяких результатів поля, таким чином, не відображати нічого в документі. Тим не менш, деякі поля не можуть бути оновлені, але тому також не будуть польові результати.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Зміст, що робить код поля, зберігається як [Run](https://reference.aspose.com/words/net/aspose.words/run/) вузли між [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) і [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/)й Результат поля зберігається між **FieldSeparator** і [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) вузлів і можуть бути виготовлені з різних типів контенту. Зазвичай результат поля містить лише текст, який складається з **Run** вузли, однак це можливо для **FieldEnd** вузол, щоб бути розташований в повністю різних абзацах, і таким чином, що результат поля складається з [Логічні рівні імен у документі](/words/uk/net/logical-levels-of-nodes-in-a-document/) як **Table** і **Paragraph** також вузли.

Ось чому поле зберігається в Aspose.Words за допомогою прикладу "*DocumentExplorer"* [Гитуб](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)й

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Поле в полях Aspose.Words Document Object Model (Українська)DOMй

Коли документ завантажується Aspose.Words, поля документа завантажуються в поле документа [Aspose.Words Document Object Model (DOM)](/words/uk/net/aspose-words-document-object-model/) як набір окремих компонентів (неподів). Єдине поле завантажується як збірка **FieldStart**, **FieldSeparator** і **FieldEnd** вершини разом з контентом у цих вузлах. Якщо поле не має поля, то не буде **FieldSeparator** вузол. Всі ці вершини завжди знайдені в Інтернеті (як діти) [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) або [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)й

У Aspose.Words кожен з **FieldXXX** вузли дервії з [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/)й Даний клас надає майно для перевірки типу поля, представленого за вказаною вершиною через [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) майно. Приклад **FieldType.FieldMergeField** являє собою поле злиття в документі.

{{% alert color="primary" %}}

Є деякі конкретні поля, які існують в документі Word, які не імпортуються в Aspose.Words як збірка **FieldXXX** вершини. Наприклад, `LINK` поле та `INCLUDEPICTURE` поле імпортуються в Aspose.Words як [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) об'єкт. Цей об'єкт надає властивості для роботи з даними зображень, як правило, зберігаються в цих полях. Імпорт `INCLUDEPICTURE` поле як **FieldXXX** вершини [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) опція повинна бути зазначена як **true**й

Форми також імпортуються в Aspose.Words як власний особливий клас. Про нас [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) клас являє собою поле форми в документі Word і надає додаткові методи, які є особливою формою.

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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Софістичне поле виховання

Aspose.Words в дорозі Microsoft Word обробляє поля і в результаті це правильно ручки:

- роз'ємні поля:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- аргумент поля може бути результатом невидимого поля
- поля можуть бути відхилені в межах поля, а також в результаті поля
- пробіли/не пробіли, котирування/не котирування, втечу символи в полях тощо:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, які пропускають через кілька абзаців

### Сфери формул

Aspose.Words забезпечує дуже серйозне виконання формули двигуна і підтримує наступне:

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

Просто деякі з `IF` вирази, які Aspose.Words Ви можете легко розрахувати, як потужна ця функція є:

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

Aspose.Words не обмежується складністю Mail Merge полів у ваших документах та підтримках `IF` і формули поля і навіть можна розрахувати назву поля злиття за допомогою формули.

Деякі приклади Mail Merge поля, які Aspose.Words опори:

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

- \\\\_ - форматування дати та часу
- \\\# - форматування номера
- \\\* Капи
- \\\* ПершийКап
- \\\* Нижній
- \\\\* Верхній
- \\\* ХАРФОРМАТ – результат формату згідно першого символу поля
- \\\* MERGEFORMAT - результат форматування за даними форматування старого результату

### Date Форматування номерів в полях

Коли Aspose.Words розраховує результат поля, його часто потрібно ввести рядок в число або дату значення, а також форматувати його назад до рядка. За замовчуванням Aspose.Words використовує поточну культуру ниток для виконання парсингу та форматування при розрахунку значень поля при оновленні поля та mail mergeй Також існують варіанти, передбачені у вигляді [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) клас, який дозволяє додатково контролювати, яку культуру використовується при оновленні поля.

- за замовчуванням [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) Зручності в готелі [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) які формати полів за допомогою поточної культури ниток
- дана властивість може бути встановлена [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) так мовний набір з польового коду поля використовується для форматування замість

### Форматування за культурою сучасної нитки

Для управління культурою, що використовується під час розрахунку поля, просто встановлюється **Thread.CurrentThread.CurrentCulture** майно на культуру вибору перед вилученням родовищ.

Приклад коду показує, як змінити культуру, що використовується у форматуванні поля під час оновлення:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Використання поточної культури до форматних полів дозволяє легко і послідовно контролювати, як всі поля в документі форматуються під час оновлення поля.

### Форматування за допомогою культури в документі

З іншого боку, Microsoft Word Формати кожного окремого поля на основі мови тексту, знайденого в полі (зокрема, проходжень з поля). Іноді під час оновлення поля це може бути бажана поведінка, наприклад, якщо у вас є глобалізовані документи, що містять контент, що складається з багатьох різних мов і хотіли б кожен полів, щоб честь локалізації, що використовується з тексту. Aspose.Words також підтримує цей функціонал.

Про нас [Document](https://reference.aspose.com/words/net/aspose.words/document/) Клас надає [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) майно, яке містить члени, які можуть бути використані для контролю того, як поля оновлюються в документі.

Приклад коду показує, як визначити, де культура використовується для форматування дати під час оновлення поля та Mail Merge Вибирається з:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
