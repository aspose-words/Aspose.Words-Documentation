---
title: Форматування таблиці в C++
second_title: Aspose.Words для C++
articleTitle: Застосувати форматування
linktitle: Застосувати форматування
description: "Детальне форматування таблиці за допомогою C++. Використовуючи C++ для форматування кожної частини таблиці."
type: docs
weight: 70
url: /uk/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

До кожного елемента таблиці можна застосувати Різне форматування. Наприклад, форматування таблиці буде застосовано до всієї таблиці, форматування рядків - лише до певних рядків, форматування комірок - лише до певних комірок.

Aspose.Words надає розширені можливості API для вилучення та застосування форматування до таблиці. Ви можете використовувати вузли [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) та [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) для налаштування форматування.

У цій статті ми поговоримо про те, як застосувати форматування до різних вузлів таблиці та які налаштування форматування таблиці підтримує Aspose.Words.

## Застосувати форматування до різних вузлів

У цьому розділі ми розглянемо застосування форматування до різних вузлів таблиці.

### Форматування на рівні таблиці

Щоб застосувати форматування до таблиці, ви можете використовувати властивості, доступні на відповідному вузлі **Table**, використовуючи класи [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) та [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Зверніть увагу, що в таблиці повинен бути принаймні один рядок, перш ніж можна буде застосувати Властивості таблиці. Це означає, що при побудові таблиці за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) це форматування повинно виконуватися після першого виклику [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), або після додавання першого рядка до таблиці, або коли вузли вставляються безпосередньо в DOM.

{{% /alert %}}

На малюнках нижче показано представлення функцій форматування **Table** у Microsoft Word та відповідних властивостей у Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Наступний приклад коду показує, як застосувати контурну межу до таблиці:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Наступний приклад коду показує, як створити таблицю з включеними всіма межами (grid):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Форматування на рівні рядків

**Рівень рядка**

{{% alert color="primary" %}}

Зверніть увагу, що **Row** може бути лише дочірнім вузлом для **Table**. У той же час у **Row** повинен бути принаймні один **Cell**, щоб до нього можна було застосувати форматування.

{{% /alert %}}

На малюнках нижче показано представлення функцій форматування **Row** у Microsoft Word та відповідних властивостей у Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Наступний приклад коду показує, як змінити форматування рядків таблиці:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Форматування на рівні комірок

Форматування на рівні комірок контролюється класами [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) та [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Зверніть увагу, що **Cell** може бути лише дочірнім вузлом **Row**. У той же час в **Cell** повинен бути хоча б один [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), щоб до нього можна було застосувати форматування.

Окрім **Paragraph**, ви також можете вставити **Table** у **Cell**.

{{% /alert %}}

На малюнках нижче показано представлення функцій форматування **Cell** у Microsoft Word та відповідних властивостей у Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Наступний приклад коду показує, як змінити форматування комірки таблиці:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

У наступному прикладі коду показано, як задати кількість пробілів (в пунктах), що додаються до лівого/верхнього/правого / нижнього краю вмісту комірки:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Вкажіть висоту рядків

Найпростіший спосіб встановити висоту рядка-використовувати параметр **DocumentBuilder**. Використовуючи відповідні властивості **RowFormat**, ви можете встановити значення висоти за замовчуванням або застосувати різну висоту для кожного рядка в таблиці.

У Aspose.Words висота рядка таблиці регулюється за допомогою:

- властивість висоти рядка - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- властивість правила висоти для даного рядка - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

У той же час для кожного рядка можна задати різну висоту – це дозволяє вам широко управляти настройками таблиці.

{{% alert color="primary" %}}

Параметри правила для вказівки висоти об'єкта можна задати за допомогою перерахування [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Наступний приклад коду показує, як створити таблицю, що містить одну клітинку, і застосувати форматування рядків:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Вказівка ширини таблиці і осередків

Таблиця в документі Microsoft Word надає кілька різних способів зміни розміру таблиці та окремих комірок. Ці властивості дозволяють значною мірою контролювати зовнішній вигляд і поведінку таблиці, так що Aspose.Words підтримує поведінку таблиць, як у Microsoft Word.

Важливо знати, що елементи таблиці мають кілька різних властивостей, які можуть впливати на те, як розраховується ширина всієї таблиці, а також окремих комірок:

- Краща ширина таблиці
- Краща ширина окремих осередків
- Включення автоматичної підгонки по таблиці

У цій статті детально описано, як працюють різні властивості обчислення ширини таблиці та як отримати повний контроль над обчисленням ширини таблиці. Це
особливо корисно знати це в тих випадках, коли макет таблиці відображається не так, як очікувалося.

{{% alert color="primary" %}}

У більшості випадків рекомендується використовувати бажану клітинку, а не ширину таблиці. Краща ширина комірки більшою мірою відповідає специфікації формату DOCX, а також моделі Aspose.Words.

Ширина комірки насправді є розрахунковим значенням для формату DOCX. Фактична ширина комірки може залежати від багатьох факторів. Наприклад, зміна полів сторінки або бажаної ширини таблиці може вплинути на фактичну ширину комірки.

Бажана ширина комірки-це властивість комірки, яка зберігається в документі. Воно ні від чого не залежить і не змінюється при зміні таблиці або інших властивостей комірки.

{{% /alert %}}

{{% alert color="primary" %}}

Усі властивості та методи, описані в цій статті, пов'язані з тим, як працюють таблиці в Microsoft Word. Отже, у більшості випадків, якщо ви створюєте свою таблицю програмно, але вам важко створити потрібну таблицю, ви можете спробувати спочатку візуально створити її в Microsoft Word, а потім просто скопіювати значення форматування у свою програму.

{{% /alert %}}

### Як використовувати бажану ширину

Бажана ширина таблиці або окремих комірок визначається за допомогою властивості preferred width, яка є розміром, який повинен відповідати елементу. Тобто краща ширина може бути вказана як для всієї таблиці, так і для окремих осередків. У деяких ситуаціях може бути неможливо точно встановити цю ширину, але в більшості випадків фактична ширина буде близькою до цього значення.

Відповідний бажаний тип і значення ширини встановлюються методами класу [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- метод [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) для визначення автоматичної ширини або "без бажаної ширини"
- метод [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) для вказівки процентної ширини
- метод [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) для вказівки ширини в точках

На малюнках нижче показано представлення *preferred width setting features* у Microsoft Word та відповідних властивостей у Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Приклад того, як ці параметри застосовуються до фактичної таблиці в документі, можна побачити на малюнку нижче.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Перш ніж використовувати бажану ширину в таблиці, ви повинні переконатися, що таблиця містить принаймні один рядок. Це пов'язано з тим, що таке форматування таблиці в документі Microsoft Word або в документі, створеному в Aspose.Words, зберігається в рядках таблиці.

{{% /alert %}}

#### Вкажіть бажану ширину таблиці або комірки

У Aspose.Words ширина таблиці та комірок задається за допомогою властивостей [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) та [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), а параметри доступні у списку [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, що еквівалентно відсутності бажаної встановленої ширини
- **Percent**, який відповідає розміру елемента щодо доступного простору у вікні або контейнері та перераховує значення при зміні доступної ширини
- **Points**, який відповідає елементу заданої ширини в точках

{{% alert color="primary" %}}

За замовчуванням таблиця може бути вказана як займає 100% доступного простору на сторінці. У цьому випадку це означає, що таблиця намагатиметься зайняти простір між лівим і правим полями сторінки.

{{% /alert %}}

Використання властивості [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) дозволяє налаштувати бажану ширину щодо контейнера: сторінки, текстового стовпця або комірки зовнішньої таблиці, якщо це вкладена таблиця.

У наступному прикладі коду показано, як налаштувати автоматичну відповідність таблиці 50% ширини сторінки:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Використання властивості [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) для даної комірки дозволить налаштувати її бажану ширину.

Наступний приклад коду показує, як встановити різні бажані параметри ширини:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Знайдіть бажаний тип і значення ширини

Ви можете використовувати властивості [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) та [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/), щоб знайти бажану ширину потрібної таблиці або комірки.

Наступний приклад коду показує, як отримати бажаний тип ширини комірки таблиці:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Як налаштувати автозапуск

Властивість [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) дозволяє клітинкам таблиці збільшуватися і зменшуватися в розмірі відповідно до обраного критерієм. Наприклад, ви можете використовувати параметр **AutoFit to Window**, щоб таблиця відповідала ширині сторінки, а параметр **AutoFit to Content** дозволяв кожній комірці збільшуватися або зменшуватися відповідно до її вмісту.

{{% alert color="primary" %}}

Крім того, властивість **AllowAutoFit** може бути використана в поєднанні з бажаною шириною комірки для форматування комірки, яка автоматично відповідає її вмісту, але також має початкову ширину. При необхідності ширина комірки може перевищувати цю ширину.

{{% /alert %}}

За замовчуванням Aspose.Words вставляє нову таблицю за допомогою **AutoFit to Window**. Розмір таблиці буде відповідати доступній ширині сторінки. Щоб змінити розмір таблиці, ви можете викликати метод [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Цей метод приймає перерахування [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/), яке вказує, який тип автозаповнення застосовується до таблиці.

Важливо знати, що метод автозаповнення насправді є ярликом, який одночасно застосовує різні властивості до таблиці. Це властивості, які фактично забезпечують спостережувану поведінку таблиці. Ми обговоримо ці властивості для кожного параметра автозаповнення.

Наступний приклад коду показує, як налаштувати таблицю на стиснення або збільшення кожної комірки відповідно до її вмісту:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit від таблиці до вікна

Коли до таблиці застосовується автоматична підгонка під вікно, фактично за лаштунками виконуються наступні операції:

1. Властивість **Table.AllowAutoFit** дозволяє автоматично змінювати розмір стовпців відповідно до наявного вмісту, використовуючи значення **Table.PreferredWidth** 100%
2. **CellFormat.PreferredWidth** видаляється з усіх комірок таблиці
   {{% alert color="primary" %}}
   Зверніть увагу, що це дещо відрізняється від поведінки Microsoft Word, коли для бажаної ширини кожної комірки встановлюються відповідні значення залежно від їх поточного розміру та вмісту. Aspose.Words не оновлює бажану ширину, тому замість цього вони просто очищаються.
   {{% /alert %}}
3. Ширина стовпців перераховується з урахуванням поточного вмісту таблиці-кінцевим результатом є таблиця, що займає всю доступну ширину
4. Ширина стовпців у таблиці змінюється автоматично, коли користувач редагує текст

У наступному прикладі коду показано, як автоматично підігнати таблицю під ширину сторінки:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit таблиця з вмістом

Коли вміст автоматично додається до таблиці, наступні кроки фактично виконуються за лаштунками:

1. Властивість **Table.AllowAutoFit** дозволяє автоматично змінювати розмір кожної комірки відповідно до її вмісту

2. Бажана ширина таблиці видаляється з **Table.PreferredWidth**, **CellFormat.PreferredWidth** видаляється для кожної комірки таблиці
   {{% alert color="primary" %}}

   Зверніть увагу, що цей параметр автоматичної підгонки видаляє бажану ширину з комірок, як і в Microsoft Word. Якщо ви хочете зберегти розміри стовпців і збільшити або зменшити їх відповідно до вмісту, Вам слід встановити для властивості **Table.AllowAutoFit** значення **True** саме по собі, а не використовувати ярлик автоматичної підгонки. {{% /alert %}}

3. Ширина стовпців перераховується для поточного вмісту таблиці-кінцевим результатом є таблиця, в якій ширина стовпців і ширина всієї таблиці автоматично змінюються, щоб найкращим чином відповідати вмісту, коли користувач редагує текст

У наступному прикладі коду показано, як автоматично підігнати таблицю до її вмісту:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Вимкніть AutoFit у таблиці та використовуйте фіксовану ширину стовпців

Якщо в таблиці відключена автоматична підгонка і замість неї використовується фіксована ширина стовпців, виконуються наступні дії:

1. **Table.AllowAutoFit** властивість вимкнено, тому стовпці не збільшуються та не стискаються до їх вмісту
2. Бажана ширина всієї таблиці видаляється з **Table.PreferredWidth**, **CellFormat.PreferredWidth** видаляється з усіх комірок таблиці
3. Кінцевим результатом є таблиця, ширина стовпців якої визначається властивістю [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) і розмір стовпців якої не змінюється автоматично при введенні Користувачем тексту або при зміні розміру сторінки

{{% alert color="primary" %}}

Зверніть увагу, що якщо для параметра **CellFormat.Width** ширина не вказана, то використовується значення за замовчуванням в один дюйм (72 пункту).

{{% /alert %}}

Наступний приклад коду показує, як вимкнути автозаповнення та включити фіксовану ширину для вказаної таблиці:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Порядок пріоритету при обчисленні ширини комірки

Aspose.Words дозволяє користувачам визначати ширину таблиці або комірки за допомогою декількох об'єктів, включаючи [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – його властивість [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) в основному залишилася від попередніх версій, однак вона все ще корисна для спрощення налаштування ширини комірки.

Важливо знати, що властивість **CellFormat.Width** працює по-різному залежно від того, які інші властивості ширини вже існують у таблиці.

Aspose.Words для обчислення ширини комірок використовується наступний порядок:

| Замовлення | Власність | Опис |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) визначається | Якщо параметр **AutoFit** увімкнено:<br />- розмір таблиці може перевищувати бажану ширину для розміщення вмісту-зазвичай він не зменшується нижче бажаної ширини<br />- будь-яка зміна значення **CellFormat.Width** ігнорується, і замість цього клітинка буде відповідати своєму вмісту |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) зі значенням **Points** або **Percent** | **CellFormat.Width** ігнорується |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) зі значенням **Auto** | Значення з **CellFormat.Width** копіюється і стає кращою шириною комірки (в пунктах) |

{{% alert color="primary" %}}

Будь-які зміни властивості width не оновлюються відповідно до бажаної ширини і повинні бути застосовані до бажаної ширини.

{{% /alert %}}

{{% alert color="primary" %}}

Створюючи фіксований формат таблиці, вкажіть ширину комірки. Клітинку без ширини не можна зберегти у форматі DOC. Формати документів, відмінні від DOC, такі як DOCX, в принципі дозволяють зберігати клітинки без ширини у фіксованому форматі таблиці.

{{% /alert %}}

## Дозволити Інтервал Між Клітинками

Ви можете задати будь-яке додаткове відстань між осередками таблиці, аналогічне параметру "відстань між осередками" в Microsoft Word. Це можна зробити за допомогою властивості [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Приклад того, як ці параметри застосовуються до фактичної таблиці в документі, можна побачити на малюнку нижче.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Наступний приклад коду показує, як встановити інтервал між клітинками:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Застосуйте кордону і розтушовування

Межі та штрихування можна застосувати або до всієї таблиці за допомогою [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) та [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), або лише до певних комірок за допомогою [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) та [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Крім того, межі рядків можна задати за допомогою [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), однак штрихування не може бути застосована таким чином.

На малюнках нижче показані Налаштування меж і тіней в Microsoft Word і відповідні їм властивості в Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Наступний приклад коду показує, як відформатувати таблицю та клітинку з різними межами та відтінками:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
