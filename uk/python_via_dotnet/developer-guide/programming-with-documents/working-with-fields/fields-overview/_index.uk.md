---
title: Огляд поля в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Огляд поля
linktitle: Огляд поля
description: "Ви можете змінити поле доступу за допомогою Pythonй Поле документа завантажуються в Aspose.Words Document Object Model (Українська)DOM)."
type: docs
weight: 10
url: /uk/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Зазвичай поле, при вставці Microsoft Word, вже містить значення дати. Наприклад, якщо поле є формулою або номером сторінки, вона міститиме правильне розрахункове значення для даної версії документа. Але якщо у вас є програма, яка генерує або модіфікує документ з полями (наприклад, поєднує два документи або консульства з даними), то для того, щоб документ був корисний, всі поля повинні ідеально оновлюватися.

Поле складається з:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- до Вузли польового старту і сепаратора використовуються для об'єднання вмісту, що робить код поля (звичайно як звичайний текст)
- Сепаратор родовищ і польовий кінець об'єднують польовий результат. Це може бути виконано з різних типів контенту, починаючи від ходу тексту до абзаців до таблиць.
- Декілька полів не може мати сепаратор, який означає, що весь вміст робить код поля.
- до Код поля визначає поведінку поля та складається з ідентифікатора поля та часто інших параметрів, таких як назва поля та вимикачі.
- до В польових результатах міститься остання оцінка поля. Це значення зберігається в полі результат і є те, що відображається користувачеві. Деякі поля не можуть мати ніяких результатів поля, таким чином, не відображати нічого в документі. Тим не менш, деякі поля не можуть бути оновлені, але тому також не будуть польові результати.

Ось чому поле зберігається в Aspose.Words за допомогою прикладу "*DocumentExplorer"* [Гитуб](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)й

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words Бібліотека класу, призначена для обробки сервера Microsoft Word документи та супровід полів в наступних напрямках:

- Усі поля в документі зберігаються під час відкритого/Зберегти та перетворення.
- до Можна оновити результати деяких з найпопулярніших полів.

## Сфери в Microsoft Word

Сфери в Microsoft Word документи комплексні. Ви маєте більш ніж 50 типів поля (наскільки потрібна процедура розрахунку власного результату), формули та вирази, закладки та посилання, функції та різні перемикачі. Сфери можуть бути непристойними. Нормально при відкритті документа, результат поля (значення поля) відображається для всіх полів у документі. Ви можете переключити відображення результатів поля або кодів поля в Microsoft Word для всіх полів шляхом пресування **АЛТ+Ф9**й

| Код поля | Результати поля |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Вставки поля в Microsoft Word

Вставити поле в Microsoft Word:

1,1 км Натисніть на **Insert** Меню
1,1 км Натисніть на **Quick Parts** Видалити меню
1,1 км Обрати **Field**
1,1 км Ви надаєте екран, який дозволяє ввести деталі поля. На лівій стороні ви надаєте список можливих полів і з правої сторони є екраном для візуально редагування властивостей поля.<br/>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1,1 км Додатково можна натиснути **Field Codes** кнопка, яка дозволяє безпосередньо писати код поля.<br/>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1,1 км Вимикачі також можна вставляти за допомогою **Options** Увійти<br/>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1,1 км Використання будь-якого методу, заповнення бажаних полів з відповідною інформацією, потім натисніть **Ok**й
1,1 км поле вставляється в документ на поточній позиції курсора.<br/>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Оновлення поля в Microsoft Word

Для оновлення єдиного поля в Microsoft Word:

1,1 км Перемістити в поле, яке ви хочете оновити.
1,1 км Новини **Ф9** оновити поле.

Щоб оновити всі поля в Microsoft Word:

1,1 км Новини **Ктрл+А** вибрати весь вміст у документі.
1,1 км Новини **Ф9** Щоб оновити всі поля, знайдені в межах вибору.

### Переключення між відображенням коду поля та поля

To toggle польових кодів одного поля в Microsoft Word:

1,1 км Перемістити догляд у бажане поле.
1,1 км Новини **СХІФТ+Ф9** переключити код поля тільки для цього поля.

Коди польових кодів всіх полів Microsoft Word:

1,1 км Новини **АЛТ+Ф9**

### Перетворення поля на статичний текст у Microsoft Word

Для перетворення динамічного поля в статичний текст Microsoft Word:

1,1 км Перемістити догляд у поле, яке ви хочете конвертувати.
1,1 км Новини **Ctrl+Shift+F9** перетворити поля на статичний текст.

### Видалення поля в Microsoft Word

Щоб видалити поле в Microsoft Word:

1,1 км Виберіть весь вміст, що робить поле. Якщо коди поля відображаються після того, як відкриття та закінчення брекетів необхідно вибрати.
1,1 км Новини **Delete** для видалення всього поля.

## Сфери в Aspose.Words

Коли документ завантажується <span notrans="<span notrans=" Aspose.Words"=""></span>, > поля документа завантажуються в поле документа Aspose.Words Document Object Model як набір окремих компонентів (неподів). Єдине поле завантажується як збірка [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) і [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) вершини разом з контентом у цих вузлах. Якщо поле не має поля, то не буде [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) вузол. Всі ці вершини завжди знайдені в Інтернеті (як діти) [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) або [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)й

Зміст, що робить код поля, зберігається як [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) вузли між [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) і [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)й Результат поля зберігається між [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) і [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) вузлів і можуть бути виготовлені з різних типів контенту. Зазвичай результат поля містить лише текст, який складається з [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) вузли, однак це можливо для [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) вузол, щоб бути розташований в повністю різних абзацах, і таким чином, що результат поля складається з вузлів рівня блоків, таких як [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) і [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) також вузли.

У Aspose.Words кожен з **FieldXXX** вузли дервії з [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/)й Даний клас надає майно для перевірки типу поля, представленого за вказаною вершиною через [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) майно. Приклад [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) являє собою поле злиття в документі.

{{% alert color="primary" %}}

Є деякі конкретні поля, які існують в документі Word, які не імпортуються в Aspose.Words як збірка **FieldXXX** вершини. Наприклад, `LINK` поле та `INCLUDEPICTURE` поле імпортуються в Aspose.Words як [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) об'єкт. Цей об'єкт надає властивості для роботи з даними зображень, як правило, зберігаються в цих полях.

Форми також імпортуються в Aspose.Words як власний особливий клас. Про нас [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) клас являє собою поле форми в документі Word і надає додаткові методи, які є особливою формою.

{{% /alert %}}

### Підтримувані поля під час оновлення

Розрахунок наступних полів підтримується в поточній версії Aspose.Words:

- = (формула поле)
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
- до `TOC` (в тому числі TOT і TOF)
- ТПП

### Софістичне виховання

Aspose.Words в дорозі Microsoft Word обробляє поля і в результаті це правильно ручки:

- Нестередні поля
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Поле аргумента може бути результатом непристойного поля.
- Сфери можуть бути віднесені в межах поля, а також в результаті поля.
- Spaces/no пробіли, котирування/не котирування, втечу символи в полях тощо:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- поля, які пропускають через кілька абзаців.

#### Сфери формул

Aspose.Words забезпечує дуже серйозне виконання формули двигуна і підтримує наступне:

- Арифметичні та логічні оператори:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Функції:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Посилання на закладки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Перемикання форматування номера:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Підтримуються наступні функції у виразах: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUEй

#### `IF` і `COMPARE` Сфери

Просто деякі з `IF` вирази, які Aspose.Words Ви можете легко розрахувати, як потужна ця функція є:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` і `TIME` Сфери

Aspose.Words підтримує всі перемикачі форматування часу, доступні в Microsoft Word, Приклади:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Сфери

Aspose.Words не обмежується складністю mail merge полів у ваших документах та підтримках `IF` і формули поля і навіть можна розрахувати назву поля злиття за допомогою формули.

Деякі приклади mail merge поля, які Aspose.Words опори:

- до Mail merge польові вимикачі:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Нестеризовані поля злиття в формулі:
  `IF { `СЕРГЕФІКАЦІЯ` Value1 } >= { `СЕРГЕФІКАЦІЯ` Value2 } True False`
- Розрахувати ім'я поля злиття в режимі runtime:
  `MERGEFIELD { `МСБ` { `СЕРГЕФІКАЦІЯ` Value1 } >= { `СЕРГЕФІКАЦІЯ` Value2 } FirstName"LastName" }`
- Кондиціональний перехід на наступний запис у джерело даних:
  `NEXTIF { `СЕРГЕФІКАЦІЯ` Value1 } <= { =IF(-2.45 >= 6*{ `СЕРГЕФІКАЦІЯ` Value2 }, 2, -.45) }`

#### Формат перемикачі

Поле в документі може мати форматування перемикачів, які вказують на те, як буде відформатовано значення. Aspose.Words підтримує наступні перемикачі формату:

- @ - форматування дати та часу
- \\\# - форматування номера
- \\\\\\\\\\\ Капсули
- \\\\\\\\\\* Перший
- \\\\\\\\\\\ Мали
- \\\\\\\\\\\ Верхній
- \\\\\\\\* ХАРФОРМАТ – результат формату згідно першого символу поля.
- \\\\\\\\\* MERGEFORMAT - результат форматування за даними форматування старого результату.

#### Date Форматування номерів в полях

Коли Aspose.Words розраховує результат поля, його часто потрібно ввести рядок в число або дату значення, а також форматувати його назад до рядка. За замовчуванням Aspose.Words використовує поточну культуру ниток для виконання парсингу та форматування при розрахунку значень поля при оновленні поля та mail mergeй Також існують варіанти, передбачені у вигляді [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) клас, який дозволяє додатково контролювати, яку культуру використовується при оновленні поля.

- до За замовчуванням [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) Зручності в готелі [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) які формати полів за допомогою поточної культури ниток.
- до Ця нерухомість може бути встановлена для [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) для форматування замість того, щоб мова була встановлена з польового коду поля.

#### Форматування за культурою сучасної нитки

Для контролю культури, що використовується при розрахунку поля, просто використовуйте **Український** метод встановлення культури вибору перед вилученням родовищ.
Нижче наведено, як змінити культуру, що використовується у форматуванні поля під час оновлення.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Використання поточної культури до форматних полів дозволяє легко і послідовно контролювати, як всі поля в документі форматуються під час оновлення поля.

#### Форматування за допомогою культури в документі

З іншого боку, Microsoft Word Формати кожного окремого поля на основі мови тексту, знайденого в полі (зокрема, проходжень з поля). Іноді під час оновлення поля це може бути бажана поведінка, наприклад, якщо у вас є глобалізовані документи, що містять контент, що складається з багатьох різних мов і хотіли б кожен полів, щоб честь локалізації, що використовується з тексту. Aspose.Words також підтримує цей функціонал.

Про нас [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Клас надає [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) майно, яке містить члени, які можуть бути використані для контролю того, як поля оновлюються в документі. Нижче наведено, як визначити, де культура використовується для форматування дати під час оновлення поля та mail merge Вибирається з.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Пошук коду поля та поля

Поле, яке вставляється за допомогою [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) повертає [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) об'єкт. Це клас фасаду, який надає корисні методи для швидкого пошуку таких властивостей поля. Зауважте, якщо ви шукаєте назви об'єднаних полів у документі, то ви можете замість використання вбудованого методу [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/)й Нижче показано, як отримати імена всіх об'єднаних полів у документі.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Як перейменувати поля злиття

Нижче наведено, як перейменувати поля злиття в документі Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
