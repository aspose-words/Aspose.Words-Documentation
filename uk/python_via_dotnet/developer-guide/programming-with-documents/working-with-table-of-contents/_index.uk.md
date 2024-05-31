---
title: Робота з Змістом
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з Змістом
linktitle: Робота з Змістом
description: "Вставте і встановіть 'Включення змісту' в документі за допомогою Pythonй"
type: docs
weight: 170
url: /uk/python-net/working-with-table-of-contents/
---

Часто ви будете працювати з документами, що містять таблицю змісту (TOC). Використання Aspose.Words Ви можете вставляти свій власний таблицю змісту або повністю перебудувати існуючий таблицю змісту в документі за допомогою всього декількох рядків коду. У статті описано, як працювати з таблицею поля контенту та демонструє:

- Як вставити бренд новий `TOC`
- Оновлення нових або існуючих TOC в документі.
- Вкажіть перемикачі для керування форматуванням та загальною структурою f TOC.
- Як змінити стилі і зовнішній вигляд таблиці змісту.
- Як видалити всю `TOC` поле разом з усіма записами формує документ.

## Вставте таблицю змісту программатично

Ви можете вставити `TOC` (табл. змісту) поле в документ на поточному положенні за викликом [DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/) метод.

Таблиця змісту у документі Word може бути побудована в ряді способів і форматування за допомогою різних варіантів. Увімкнено поле, що ви передаєте до методу управління, спосіб побудови таблиці та відображається у вашому документі.

Перемикачі за замовчуванням, які використовуються в `TOC` вставки Microsoft Word Р **""\o "1-3 \h \z \u"**й Описи цих вимикачів, а також перелік підтримуваних перемикачів можна знайти пізніше в статті. Якщо ви вже маєте документ, що містить аналогічний `TOC` Ви хочете показати коди поля (*ALT+F9*) і скопіювати перемикачі безпосередньо з поля.

Приклад коду показує, як вставити таблицю поля змісту в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Про нас [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас потім використовується для вставки деяких форматів вмісту зразка з відповідними заголовками стилі, які використовуються для позначення вмісту, який буде включений в TOC. Наступні рядки потім з'являються `TOC` шляхом оновлення полів та макету сторінки документа.

{{% alert color="primary" %}}

Без методів, які використовуються в прикладі, коли ви відкриєте вихідний документ, ви знайдете `TOC` поле, але без видимого вмісту. Це тому, що `TOC` поле була вставлена, але ще не заселена до моменту його оновлення в документі. Додаткова інформація про це розглядається в наступному розділі.

{{% /alert %}}

## Оновлення таблиці змісту

Aspose.Words дозволяє повністю оновлювати оновлення `TOC` лише кілька рядків коду. Це може бути зроблено для того, щоб створити нову вставку `TOC` або оновити існуючий `TOC` після внесення змін до документа. Для оновлення необхідно використовувати наступні два способи `TOC` поля в документі:

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

Будь ласка, зверніть увагу, що ці два способи оновлення повинні бути викликані в цьому порядку. Якщо перевернути таблицю змісту буде заселений, але не буде відображатися номер сторінки. Будь-яка кількість різних TOC можна оновити. Ці методи автоматично оновлюватимуть всі ТЦ, знайдені в документі.

Приклад коду показує, як повністю перебудувати `TOC` поля в документі, викликаючи оновлення поля:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

Перший дзвінок [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) побудувати <span notrans="<span notrans=" `TOC`"=""></span>, > всі текстові записи заселені і `TOC` з'являється практично повністю. Єдине, що не вистачає сторінок, які зараз відображаються з "?". Другий виклик [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) побудувати макет документа в пам'яті. Для збирання номерів сторінок. Виправте номери сторінок, розраховані з цього виклику, потім вставляються в TOC.

## Використовуйте перемикачі для управління поведінкою змісту.

Як і будь-яке інше поле, `TOC` поле може приймати перемикачі, визначені в Полі-коді, які контрольують, як будується таблиця змісту. Деякі перемикачі використовуються для контролю, які записи включені і на якому рівні, в той час як інші використовуються для контролю зовнішнього вигляду TOC. Перемикачи можуть поєднуватися між собою, щоб забезпечити складний стіл контенту, який буде виготовлений.

![working-with-table-of-contents-aspose-words-net](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-1.png)


За замовчуванням ці перемикачі вище включені при вставці за замовчуванням `TOC` у документі. Р `TOC` без перемикачів буде включати вміст з вбудованих стилів заголовка (як якщо наведено перемикач \O). Доступний `TOC` перемикачі, які підтримуються Aspose.Words Нижче описуються і їх використання. Їх можна розділити на окремі розділи на основі їх типу. Перемикачі в першому розділі визначають те, що вміст включено в `TOC` і перемикачі в другій секції контролюють зовнішній вигляд TOC. Якщо перемикач не зазначений тут, то він наразі не підтримується. Всі перемикачі будуть підтримуватися в наступних версіях. Ми додаємо підтримку з кожним випуском.

### Вимикачи позначки входу

|  Перемикач | Опис |
|  :-  |  :-  |
| **Heading Styles** <br/>*(\O перемикач)* | <p>Цей перемикач визначає, що `TOC` повинен бути вбудованим заголовком стилів. У Microsoft Word вони визначаються заголовуванням 1 - Заголовок 9. У Aspose.Words ці фасони представлені відповідною студнеобразующою анумуляції. Цей енкодер є локальним незалежним ідентифікатором стилю, наприклад `StyleIdentifier.Heading1` являє собою заголовок 1 стиль. Використання цього форматування та властивостей стилю можна отримати з колекції стилів документа. Клас відповідного стилю можна отримати з `Document.Styles` збір за допомогою індексованого майна типу StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Будь-який контент, відформатований цими стилями, включеними до таблиці змісту. Рівень заголовка визначить відповідний ієрархічний рівень входу в ТОК. Наприклад, абзац з заголовуванням 1 стиль буде розглядатися як перший рівень `TOC` У той час як абзац з заголовуванням 2 буде розглядатися як наступний рівень в ієрархії і так далі.</p>
 |
| **Outline Levels** <br/>*(\U перемикач)* | <p>Кожен пункт може визначити рівень контуру за параметрами параметра.</p>

<p>![working-with-table-of-contents-paragraph](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Цей параметр диктує, які вирівняти цей пункт слід розглядати в ієрархії документа. Це зазвичай використовується практика, яка використовується для легкого структурування макета документа. Цей ієрархія можна переглянути, змінивши на зовнішній вигляд Microsoft Wordй Подібно до заголовків стилів, може бути 1 – 9 рівнів, крім рівня "Body Text". Зовнішні рівні 1 - 9 з'явиться в `TOC` у відповідному рівні ієрархії <br/>Будь-який вміст з рівнем контуру або встановленим в стилі абзацу або безпосередньо на сам абзац включений в TOC. У Aspose.Words Рівень контуру представлений рівнем контуру `ParagraphFormat.OutlineLevel` майно параграфа вузла. Рівень контуру стилю представлений таким же чином `Style.ParagraphFormat` майно.</p>

<p>{{% alert color="primary" %}}</p>

<p>Зверніть увагу, що вбудовані стилі заголовка, такі як Heading 1 мають обов'язковий набір рівня в налаштуваннях стилю.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/>*(\T перемикач)* | <p>Цей перемикач дозволить використовувати користувацькі стилі при зборі записів для використання в TOC. Це часто використовується в поєднанні з перемикачем \O, щоб включати спеціальні стилі разом з вбудованими головуванням стилів в TOC. <br/>Параметри перемикача повинні бути укладені в межах мовних знаків. Багато нестандартних стилів можна включити, для кожного стилю ім'я повинна бути вказана за допомогою коми за рівнем, який стиль повинен з'явитися в стилі `TOC` як. Далі також відокремлюються комою. <br/>Наприклад:</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>використовувати стиль вмісту з CustomHeading1 як рівень 1 вмісту в `TOC` і CustomHeading2 як рівень 2.</p>
 |
| **Use TC Fields** <br/>*(\F і \L перемикачі) * | <p>У старших версіях Microsoft Word, єдиний спосіб побудови `TOC` було використання полів ТК. Ці поля вставляють приховані в документ, навіть якщо відображаються коди поля. Вони включають текст, який повинен відображатися в записі і `TOC` Будується з них. Цей функціонал тепер не використовується дуже часто, але може бути корисним в деяких випадках, щоб включити записи в `TOC` які не відступають, щоб бути видимими в документі. <br/>При вставленні цих полів з'являються приховані навіть при відображенні поля. Не можна побачити без показу прихованого вмісту. Щоб побачити ці поля Показати форматування абзаців необхідно вибрати.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p>Ці поля можуть бути вставлені в документ на будь-якій позиції, як будь-який інший поле, і представлені `FieldType.FieldTOCEntry` заохочення. <br/>Перемикач \F в `TOC` використовується для позначення, що поля TC повинні бути використані як записи. Перемикач самостійно без додаткового ідентифікатора означає, що будь-яке поле TC в документі буде включено. Будь-який додатковий параметр, часто один лист, спроектуватиме, що тільки поля ТК, які мають відповідні \f перемикач буде включений в ТЗ. Наприклад *<p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p>

<p>буде містити лише поля TC, такі як</p>

<p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p>

<p>Про нас `TOC` поле також має пов'язаний перемикач, перемикач "\L" вказує, що тільки поле TC з рівнями в межах зазначеного діапазону включено.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Про нас `TC` полів також може мати декілька перемикачів. Це:</p>

<p>- *\F - Передбачено вище. Ім'я *</p>

<p>- *\L - Дефіни, які рівні в `TOC` це поле TC з'явиться в. Р `TOC` який використовує цей самий перемикач буде включати в себе це поле TC, якщо він знаходиться в зазначеному діапазоні. Ім'я *</p>

<p>- _\N - Номер сторінки для цього `TOC` запис не відображається. Приклад коду як вставити поля TC можна знайти в наступному розділі.</p>
 |

### Зовнішній вигляд Схожі перемикачі

|  Перемикач | Опис |
|  :-  |  :-  |
| **Omit Page Numbers** <br/>*(\N перемикач)* | <p>Цей перемикач використовується для приховувати номери сторінок для певних рівнів TOC. Наприклад, можна визначити</p>

<p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>і номери сторінок на записах рівнів 3 і чотири будуть приховані разом з лідерами точок (якщо є будь-який). Щоб вказати лише один рівень, необхідно використовувати діапазон, наприклад, "1-1" виключить кількість сторінок тільки для першого рівня. <br/>Постачання не діапазону рівня буде ознайомлювати номери сторінок для всіх рівнів в TOC. Це корисно для установки при експорті документа в HTML або аналогічний формат. Це тому, що HTML-формати не мають ніякої концепції сторінки, і таким чином, не потрібна кількість сторінок.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p>
 |
| **Insert As Hyperlinks** <br/>*(\H перемикач)* | <p>Цей перемикач визначає, що `TOC` записи вставляються як гіперпосилання. При перегляді документа в Microsoft Word ці записи все ще з'являються як звичайний текст всередині `TOC` але є гіперпосилання і, таким чином, може бути використаний для навігації в положення оригінального входу в документ за допомогою *Ctrl + клацніть лівою кнопкою миші * в Microsoft Wordй Коли цей перемикач включений, то ці посилання також зберігаються в інших форматах. Наприклад, у форматах HTML, включаючи EPUB та продаються формати, такі як PDF та XPS вони будуть експортовані як робочі посилання. <br/>Без цього перемикача встановлюють `TOC` у всіх цих виходах буде експортований як звичайний текст і не продемонструвати цю поведінку. Якщо документ відкривається в MS Word текст записів також не буде клацнути таким чином, але номери сторінок все ще можуть бути використані для навігації до оригінального запису.</p>

<p>![working-with-table-of-contents-titles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p>
 |
| **Set Separator Character** <br/>*(\P перемикач)* | <p>Цей перемикач дозволяє відокремити заголовок запису та номер сторінки, щоб легко змінюватися в ТЗ. Сепаратор повинен бути вказаний після цього вимикача і закривається в мовних знаках. <br/>Приміряти, що документується в документації Office, можна використовувати тільки один символ замість п'яти. Це стосується як MS Word і Aspose.Wordsй <br/>Використання цього перемикача не рекомендується, оскільки він не дозволяє багато контролювати, що він використовується для окремих записів та номерів сторінок в TOC. Замість цього рекомендується редагувати відповідні `TOC` стиль, такі як `StyleIdentifier.TOC1` і звідти відредагувати стиль лідера з доступом до певних членів шрифту тощо. Детальніше про те, як зробити це можна пізніше в статті.</p>

<p>![working-with-table-of-contents-toc](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p>
 |
| **Preserve Tab Entries** <br/>*(\W перемикач)* | <p>За допомогою цього перемикача буде вказати, що будь-які записи, які мають символ вкладки, наприклад, заголовок, який має вкладку в кінці лінії, будуть зберігатися як правильний символ вкладки при популуванні TOC. Це означає функцію символу вкладки буде присутній в `TOC` і може використовуватися для форматування запису. Наприклад, деякі записи можуть використовувати вкладки і символи вкладок, щоб рівномірно розташувати текст. Довгий час `TOC` рівень визначає еквівалентну вкладку, після чого генерується `TOC` записи з'являться з схожою обшивкою. <br/><br/>У тій же ситуації, якщо цей вимикач не був визначений, то символи вкладки будуть перетворені на біле місце, еквівалентне як вкладки не функціонують. Після цього вихід не буде виглядати як очікувано.</p>

<p>![working-with-table-of-contents-aspose](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p>
 |
| **Preserve New Line Entries** <br/>*(\X перемикач)* | <p>Подібно до перемикача вище, цей перемикач визначає, що заголовки, що простягаються на декількох лініях (надаючи нові символи рядків не окремі абзаци) будуть збережені, як вони знаходяться в створеному TOC. Наприклад, заголовок, яка полягає в тому, щоб поширюватися через декілька рядків, може використовувати новий символ лінії (Ctrl + Enter або `ControlChar.LineBreak`) відокремити вміст по різних лініях. За допомогою цього перемикача вказаний запис в `TOC` зберігати ці нові символи рядків, як показано нижче. <br/><br/>У цій ситуації, якщо перемикач не визначений, то нові символи лінії перетворюються на єдиний білий простір.</p>

<p>![working-with-table-of-contents-aspose-words](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p>
 |

## Вставити ТК поля

Ви можете вставити нове поле TC на поточному положенні [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) за викликом [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) метод і вказати назву поля як "TC" разом з будь-якими перемикачами, які необхідні. Нижче приклад показує, як вставити `TC` поле в документ, використовуючи [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)й

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## Змінення таблиці змісту

Форматування записів у форматі `TOC` не використовуйте оригінальні стилі позначених записів, замість кожного рівня відформатовано за допомогою еквівалента `TOC` стиль. Приклад першого рівня в `TOC` відформатований з **ТЦ1** стиль, другий рівень відформатований з **ТЦ2** стиль і так далі. Це означає, що змінити зовнішній вигляд `TOC` ці стилі повинні бути змінені. У Aspose.Words Ці стилі представлені незалежною [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1) через [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9) і можна отримати з [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) збір за допомогою цих ідентифікаторів.

Після відповідного стилю документа було отримано форматування для цього стилю. Будь-які зміни до цих стилів будуть автоматично відображені на TOC в документі. Нижче наведено зміни формату нерухомості, що використовується в першому рівні `TOC` стиль.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

Також корисно відзначити, що будь-який прямий форматування абзацу (визначено на самому абзацу і не в стилі) позначений, щоб бути включеним `TOC` буде скопійовано в записі в TOC. Наприклад, якщо заголовок 1 стиль використовується для позначення вмісту для `TOC` і цей стиль має сміливе форматування, в той час як абзац також має italic форматування безпосередньо на нього. В результаті `TOC` запис не буде сміливим, оскільки це частина форматування стилів, проте це буде italic, оскільки це безпосередньо відформатовано на пункті.

Ви також можете керувати форматуванням сепараторів, що використовуються між кожним записом та номером сторінки. За замовчуванням це пунктирна лінія, яка поширюється на номер сторінки, використовуючи символ вкладки та праву зупинку вкладок, розташовану неподалік від правого поля.

Використання [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) клас, отриманий для конкретного `TOC` рівень, який ви хочете змінити, ви також можете змінити, як це з'являється в документі. Щоб змінити, як це з'являється вперше [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/) повинен бути викликаний, щоб отримати форматування абзаців для стилю. Від цієї зупинки вкладки можна отримати за допомогою виклику [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/) і відповідна кнопка зупинки змінного струму. Використовуючи цю ж техніку, сам вкладок можна переміщати або видалити всі разом. Нижче приклад показує, як змінити положення зупинки вкладки в правій вкладці `TOC` пов'язані абзаци.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## Видалити таблицю змісту з документа

Зміст може бути видалений з документа шляхом видалення всіх вузлів, знайдених між документом [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) і [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) вузол `TOC` поле. Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Видалення видалення `TOC` поле простіша, ніж нормальне поле, так як ми не стежимо за в'язаними полями. Зареєструватися [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) вузол типу [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc) що означає, що ми зустрілися з закінченням поточного TOC. Ця методика може бути використана в цьому випадку, не турбуючись про будь-які незручні поля, як ми можемо припустити, що будь-який належним чином сформований документ не буде повністю непристойний `TOC` поле в іншому `TOC` поле.

По-перше [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) вузли кожного `TOC` зібрані та зберігаються. Вказаний `TOC` потім занурюється так, що всі вузли в межах поля відвідуються і зберігаються. Потім виводяться вузли з документа. Початиlow code зразок показує, як видалити зазначений `TOC` з документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## Витягувати таблицю змісту

Якщо ви хочете витягти таблицю змісту з будь-якого документа Word, можна використовувати наступний зразок коду.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}