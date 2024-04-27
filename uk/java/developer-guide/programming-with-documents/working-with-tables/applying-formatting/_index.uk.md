---
title: Формат таблиці в Java
second_title: Aspose.Words для Java
articleTitle: Застосувати форматування таблиці
linktitle: Застосувати форматування таблиці
description: "Формат таблиці деталей. Використання Java для форматування кожної частини таблиці."
type: docs
weight: 70
url: /uk/java/applying-formatting/
---

Кожен елемент таблиці можна застосувати з різним форматуванням. Наприклад, форматування таблиці буде застосовуватися до цілого столу, форматування рядків до тільки окремих рядків, форматування комірок до тільки певних клітин.

Aspose.Words забезпечує багатий API щоб отримати і застосувати форматування до таблиці. Ви можете використовувати [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), і [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) вершини для встановлення форматування.

У цій статті ми будемо говорити про те, як застосувати форматування до різних вузлів таблиці та налаштування форматування таблиці Aspose.Words опори.

## Застосувати форматування різних повідомлень

У цьому розділі ми розглянемо форматування на різні таблиці вузлів.

### Форматування рівня таблиці

Щоб застосувати форматування таблиці, ви можете використовувати властивості, доступні на відповідному **Table** вузол за допомогою вузла [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), і [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) класи.

{{% alert color="primary" %}}

Зауважте, що таблиця повинна мати принаймні один ряд перед використанням таблиці. Це означає, що при побудові столу з [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Цей формат повинен бути здійснений після першого виклику [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), або після першого ряду додається до таблиці, або коли вузли вставляються безпосередньо в таблицю DOMй

{{% /alert %}}

Фотографії нижче показують уявлення про представлення **Table** Особливості форматування в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Приклад коду показує, як застосувати кордон контуру до таблиці:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Наприклад, наступний код показує, як побудувати таблицю з усіма дозволеними кордонами (покладна):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Форматування рівня руп

Рів-рівень** можна контролювати за допомогою [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), і [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) класи.

{{% alert color="primary" %}}

Зверніть увагу, що **Row** може бути дочірня вершина дитини **Table**й У той же час, повинен бути принаймні один **Cell** в **Row** так що форматування можна застосувати до неї.

{{% /alert %}}

Фотографії нижче показують уявлення про представлення **Row** Особливості форматування в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Приклад коду показує, як змінити форматування рядків таблиці:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Форматування рівня клітин

Форматування клітинного рівня здійснюється за допомогою [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), і [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) класи.

{{% alert color="primary" %}}

Зверніть увагу, що **Cell** може бути дочірня вершина дитини **Row**й У той же час, повинен бути принаймні один [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) в **Cell** так що форматування можна застосувати до неї.

На додаток до **Paragraph**, Ви також можете вставити **Table** в **Cell**й

{{% /alert %}}

Фотографії нижче показують уявлення про представлення **Cell** Особливості форматування в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Приклад коду показує, як змінити форматування таблиці:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Наприклад, наступний код показує, як встановити кількість простору (в точках), щоб додати в ліву/верхню/праву/знизу вмісту комірки:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Вказати Row Heights

Найпростіший спосіб встановити висоту рядка - використовувати **DocumentBuilder**й Використання відповідного **RowFormat** властивості ви можете встановити налаштування висоти за замовчуванням або застосувати різну висоту для кожного ряду в таблиці.

У Aspose.Words, висота рядка встановлюється:

- Висота рядка - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- властивість правила висоти для даного ряду - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

При цьому для кожного ряду можна встановити різну висоту - це дозволяє широко контролювати налаштування таблиці.

{{% alert color="primary" %}}

Варіанти задання висоти об'єкта можна встановити за допомогою [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) поля.

{{% /alert %}}

Приклад наступного коду показує, як створити таблицю, яка містить одну клітинку і застосувати форматування рядків:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Вказати таблицю та ширину клітин

Стіл в таблиці Microsoft Word документ надає декілька різних способів змінити таблицю та окремі клітинки. Ці властивості дозволяють значно контролювати зовнішній вигляд і поведінку столу, щоб Aspose.Words підтримує поведінку таблиць, як в Microsoft Wordй

Важливо знати, що елементи таблиці присутні кілька різних властивостей, які можуть вплинути на те, як ширині загального столу, а також окремих клітин, розраховується:

- Попередня ширина на столі
- Розширена ширина на окремих клітинках
- Дозування автонаряддя на столі

У статті описано, як працюють різні характеристики таблиці та як отримати повний контроль за розрахунку ширини таблиці. Це
особливо корисно знати в таких випадках, де таблиця не відображається як очікувана.

{{% alert color="primary" %}}

У більшості випадків краще клітинку рекомендується, ніж ширина таблиці. Рекомендована ширина комірки більше в рядку з специфікацією формата DOCX, а також Aspose.Words модель.

Ширина комірки фактично обчислюється значення для формату DOCX. Фактична ширина клітинки може залежати від багатьох речей. Наприклад, зміна запасів сторінок або бажаної ширини таблиці може вплинути на фактичну ширину комірки.

Рекомендована ширина комірки - це властивість комірки, яка зберігається в документі. Не залежить від будь-яких і не змінюється при зміні таблиці або інших властивостей клітинки.

{{% /alert %}}

{{% alert color="primary" %}}

Всі властивості та методи, описані в цій статті, пов'язані з тим, як працюють таблиці в Microsoft Wordй Отже, в більшості випадків, якщо ви будуєте свій стіл программатично, але ви знайдете його важко створити бажаний стіл, ви можете замість того, щоб спробувати візуально створити його в Microsoft Word Спочатку і потім просто скопіюйте значення форматування у вашу програму.

{{% /alert %}}

### Як використовувати задану ширину

Потрібна ширина таблиці або окремих клітин визначається за рахунок бажаної ширини майна, яка є розміром, що елемент прагне відповідати. Це, найкраща ширина може бути вказана для всього столу або для окремих клітин. У деяких випадках можна точно підійти цю ширину, але фактичну ширину буде близько до цього значення в більшості випадків.

Визначено бажаний тип і значення встановлюються за допомогою методів [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) клас:

- до [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) поле, щоб вказати авто або "не найкраща ширина"
- до [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) метод визначення відсоткової ширини
- до [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) метод визначення ширини в точках

Фотографії нижче показують уявлення *передаваних функцій налаштування ширини* в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Приклад того, як ці параметри застосовуються до реального столу в документі, можна побачити на малюнку нижче.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Перед тим як використовувати бажану ширину в таблиці, необхідно переконатися, що таблиця містить не менше одного ряду. Це тому, що таке форматування таблиці в Microsoft Word документ або в документі, створеному в Aspose.Words зберігається в рядах таблиці.

{{% /alert %}}

#### Вказати задану таблицю або ширину комірки

У Aspose.Words, настільні та клітинні ширини встановлюються за допомогою [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) майно та [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) нерухомість, з опціями, доступні в [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) заохочення:

- до **Auto**, який еквівалентний не кращий набір ширини
- до **Percent**, що відповідає елементу відносно наявного простору в віконному або контейнерному розмірі, і перерахує значення при зміні наявної ширини
- до **Points**, який відповідає елементу зазначеної ширини в точках

{{% alert color="primary" %}}

За замовчуванням, таблиця може бути описана як на 100% доступного простору на сторінці. У цьому випадку це означає, що таблиця спробує взяти простір між ліворуч і правою сторінкою.

{{% /alert %}}

Використання [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) властивість відрегулювати свою бажану ширину відносно його контейнера: сторінка, текстовий стовпчик або зовнішній стіл комірка, якщо це незнімний стіл.

Наприклад, наступний код показує, як встановити таблицю для автоматичного наряду до 50% ширини сторінки:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Використання [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) властивість на даній комірці відрегулювати свою бажану ширину.

Приклад коду показує, як встановити різні налаштування ширини:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Знайдіть заданий тип та значення

Ви можете використовувати [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) і [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) властивості для пошуку бажаних деталей ширини потрібного столу або комірки.

Приклад наступного коду показує, як отримати бажаний тип ширини таблиці комірки:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Як встановити Autofit

Про нас [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) властивість дозволяє клітинам в таблиці рости і усаджувати за вибраним критерієм. Наприклад, можна використовувати **AutoFit до вікна** варіант, щоб відповідати таблиці на ширину сторінки, і **AutoFit до змісту** можливість виростити або усадити кожну клітинку відповідно до його вмісту.

{{% alert color="primary" %}}

Додатково, **AllowAutoFit** властивість може бути використана в поєднанні з кращою шириною комірки для форматування комірки, яка автоматично відповідає його вмісту, але також має початкову ширину. При необхідності ширина клітинки може потім виростити цю ширину.

{{% /alert %}}

За замовчуванням, Aspose.Words вставки нового столу за допомогою **AutoFit до вікна**й Табличка буде негабаритним за наявності ширини сторінки. Щоб змінити таблицю, можна викликати таблицю [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) метод. Цей метод приймає [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) занурення, яке визначає, який тип автонаряддя наноситься на стіл.

Важливо знати, що спосіб автонаряддя насправді є ярликом, який застосовує різні властивості до столу одночасно. Це властивості, які насправді дають таблицю, що спостерігалася поведінка. Ми обговорюємо ці властивості для кожного варіанту автонаряддя.

Приклад коду показує, як встановити таблицю для усадки або вирощувати кожну клітинку відповідно до його вмісту:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Ми будемо використовувати наступний стіл, щоб застосувати різні налаштування автоматичного вписання як демонстрація.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit стіл до вікна

При налаштуванні вікна наноситься на таблицю наступні операції фактично виконуються за сценаріями:

1,1 км Про нас **Table.AllowAutoFit** властивість ввімкнено для автоматичного зміни стовпців, щоб відповідати доступному вмісту, використовуючи **Table.PreferredWidth** вартість 100%
2,2 км **CellFormat.PreferredWidth** знімається з усіх клітин таблиці
      {{% alert color="primary" %}}
   Зверніть увагу, що це трохи відрізняється від Microsoft Word поведінка, де найкраща ширина кожної клітинки встановлюється на відповідні значення на основі їх поточного розміру та вмісту. Aspose.Words не оновити бажану ширину, щоб вони просто очищалися замість.
      {{% /alert %}}
3. У Ширина стовпа перераховуються на поточний вміст таблиці – кінцевий результат – таблиця, яка займає всю доступну ширину
4. У Ширина стовпчиків в таблиці змінюється автоматично як користувач змінює текст

Приклад коду показує, як налаштувати таблицю на ширину сторінки:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Приклад того, як ці параметри застосовуються до наведеного столу можна побачити на малюнку нижче.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table до змісту

Коли таблиця автоматично ввімкнено зміст, наступні кроки фактично виконуються за сценаріями:

1,1 км Про нас **Table.AllowAutoFit** об'єкт дозволяє автоматично змінювати кожну клітинку відповідно до його вмісту

2,2 км Переважна ширина таблиці знімається з **Table.PreferredWidth**, **CellFormat.PreferredWidth** видаляється для кожної таблиці комірки
      {{% alert color="primary" %}}

   Зауважте, що цей варіант автонаряддя видаляє кращу ширину з клітин, як і в Microsoft Wordй Якщо ви хочете зберегти розміри стовпців і збільшити або зменшити стовпці, щоб відповідати вмісту, ви повинні встановити **Table.AllowAutoFit** нерухомість **True** на власній, а не за допомогою автофігурки.{{% /alert %}}

3. У Ширина стовпа перераховуються для поточного вмісту таблиці – кінцевий результат – таблиця, де ширина стовпців та ширина всієї таблиці автоматично занижуються, щоб найкраще відповідати вмісту, оскільки користувач редагує текст

Приклад коду показує, як налаштувати таблицю до його вмісту:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Приклад того, як ці параметри застосовуються до наведеного столу можна побачити на малюнку нижче.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Вимкніть AutoFit в таблиці та використовуйте виправлені ширини стовпців

Якщо у таблиці є автоматичні вимкнені та фіксовані ширини стовпців використовуються замість того, як виконуються наступні дії:

1,1 км **Table.AllowAutoFit** майно вимкнено, тому стовпчики не ростуть або усаджують до їх вмісту
2,2 км Переважна ширина всього столу знімається з **Table.PreferredWidth**, **CellFormat.PreferredWidth** знімається з усіх клітин таблиці
3. У Кінцевий результат - стіл, ширина якого визначається за рахунок [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) майно, а стовпці якого не автоматично перераховуються, коли користувач вводить текст або коли сторінка негабаритна

{{% alert color="primary" %}}

Зверніть увагу, що якщо ширина не зазначена для **CellFormat.Width**, використовується значення за замовчуванням одного дюйма (72 балів).

{{% /alert %}}

Наприклад, наступний код показує, як відключити автофіт і включити фіксовану ширину для вказаного столу:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Приклад того, як ці параметри застосовуються до наведеного столу можна побачити на малюнку нижче.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Порядок прецеденції при розрахунку ширини клітин

Aspose.Words дозволяє користувачам визначити ширину таблиці або комірки за допомогою декількох об'єктів, включаючи [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – його [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) властивість в основному залишається над попередніми версіями, проте все ще корисно для спрощення налаштування ширини комірки.

Важливо знати, що **CellFormat.Width** в залежності від того, яка з інших широтних властивостей вже існує в таблиці.

Aspose.Words використовує наступний порядок обчислення ширини клітин:

|  Замовити |  Проживання |  Опис |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) визначається |  Якщо **AutoFit** ввімкнено:<br/>- таблиця може виростити попередню ширину для розміщення вмісту - вона зазвичай не усаджує нижче бажаної ширини<br/>- будь-яка зміна **CellFormat.Width** значення ігнорується, і клітинка буде відповідати її змісту замість |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) з значенням **Points** або **Percent** |  **CellFormat.Width** ігнорується |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) з значенням **Auto** |  Вартість від **CellFormat.Width** скопіюється і стає кращою шириною клітинки (в точках) |

{{% alert color="primary" %}}

Будь-які зміни в ширині нерухомості не оновлюються в кращій ширині і не повинні застосовуватися до бажаної ширини.

{{% /alert %}}

{{% alert color="primary" %}}

При створенні фіксованого макета таблиці вкажіть ширину комірки. Не можна зберігати клітинку в форматі DOC. Формати документів, крім DOC, такі як DOCX, дозволяють, в принципі, зберігати клітинки без ширини в фіксованій таблиці.

{{% /alert %}}

## Дозволити спасіння між клітинами

Ви можете отримати або встановити будь-який додатковий простір між настільними клітинами, схожими на опцію "Продаж" в Microsoft Wordй Це можна зробити за допомогою [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) майно.

Приклад того, як ці параметри застосовуються до реального столу в документі, можна побачити на малюнку нижче.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Наприклад, наступний код показує, як встановити розсип між клітинами:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Застосувати кордони і затінки

Прикордони і затінення можуть застосовуватися як на весь стіл, використовуючи [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) і [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), або тільки до конкретних клітин [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) і [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)й Додатково ряд кордонів можна встановити за допомогою [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Однак гойдалка не може застосовуватися таким чином.

Фотографії нижче показують кордон і налаштування тіні в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Приклад коду показує, як форматувати таблицю та клітинку з різними кордонами та затінками:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}