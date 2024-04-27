---
title: Використання `DocumentBuilder` Модифікувати документ
second_title: Aspose.Words для Java
articleTitle: Використання `DocumentBuilder` Модифікувати документ
linktitle: Використання `DocumentBuilder` Модифікувати документ
type: docs
description: "Використовуйте конструктор документів, щоб легко змінювати документ у Javaй"
weight: 20
url: /uk/java/using-documentbuilder-to-modify-a-document/
---

## Форматування

### Форматування шрифту

Поточна форматування шрифтів представлена форматуванням `Font` об'єкт, що повертається `DocumentBuilder.Font` майно. Про нас `Font` клас містить широкий спектр властивостей шрифтів, можливо в Microsoft Wordй

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Приклад коду показує, як встановити форматування шрифтів.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Форматування клітин

У процесі будівництва таблиці використовується форматування клітин. Він представлений `CellFormat` об'єкт, що повертається `DocumentBuilder.CellFormat` майно. CellFormat інкапсулює різні властивості комірки, такі як ширина або вертикальне вирівнювання.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Приклад коду показує, як створити таблицю, що містить один відформатований клітинку.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Форматування

Форматування поточного ряду визначається за допомогою `RowFormat` об'єкт, який повертається `DocumentBuilder.RowFormat` майно. Об'єкт закріплює інформацію про всі форматування рядків таблиці.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Бутиlow code Приклад показує, як створити таблицю, що містить один елемент і застосувати форматування рядків.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Список форматування

Aspose.Words дозволяє легко створювати списки за допомогою форматування списку. DocumentBuilder надає послуги `DocumentBuilder.ListFormat` майно, що повертає майно `ListFormat` об'єкт. Цей об'єкт має кілька способів запуску і завершення списку і для збільшення / виведення відступу.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Є два загальні типи списку Microsoft Word: броньовані та нумеровані.

- Для запуску списку бюлетенів, виклику [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) й
- Для запуску списку, виклику [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) й

До поточного абзацу додаються кулі або номер і форматування. **DocumentBuilder** до [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) це називається, щоб зупинити форматування списку.

У документах Word можуть складатися списки до дев’яти рівнів. Форматування списку для кожного рівня визначає, яку використовується куля або номер, лівий відступ, простір між кулі та текстом тощо.

- до Для збільшення рівня списку поточного абзацу за одним рівнем виклику [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)й
- до Для зменшення рівня списку поточного абзацу за одним рівнем виклику [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)й

Методи зміни рівня списку і застосовуються форматувальні властивості нового рівня.

{{% alert color="primary" %}}

Ви також можете використовувати [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) майно, щоб отримати або встановити рівень списку для абзацу. Рівень списку нумеровано 0 до 8.

{{% /alert %}}

Приклад коду показує, як побудувати багаторівневий список.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Форматування сторінок

Настроювання сторінок та властивості розділів наведено в `PageSetup` об'єкт, який повертається `DocumentBuilder.PageSetup` майно. Об'єкт містить всі атрибути налаштування сторінки розділу (лівий край, нижній край, розмір паперу тощо) як властивості.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Приклад коду показує, як встановити такі властивості, як розмір сторінки та спрямованість на поточний розділ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Застосування стилю

Деякі форматування об'єктів, таких як шрифт або ParagraphFormat стилі підтримки. Одномісний вбудований або користувацький стиль представлений `Style` об'єкт, який містить відповідні властивості стилю, такі як ім'я, базовий стиль, шрифт і форматування абзаців стилю, і так далі.

До того ж, **Style** об'єкт забезпечує [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) майно, що повертає ідентифікатор локального стилю, представлений **Style.StyleIdentifier** значення нумерації. Точка полягає в тому, що назви вбудованих стилів в Microsoft Word локалізуються для різних мов. Використовуючи ідентифікатор стилю, ви можете знайти правильний стиль незалежно від мови документа. Значення занурення відповідають значенням Microsoft Word вбудовані стилі, такі як Нормальний, Заголовок 1, Заголовок 2 і т.д. Всі стилі, призначені для користувача **СтильВиявлення. Вартість користувача**й

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Приклад коду показує, як застосувати стиль абзацу.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Прикордони та затінки

Прикордони представлені прикордонним Це збірка прикордонних об'єктів, які доступні за індексом або за типом кордону. Тип кордону представлений `BorderType` заохочення. Деякі значення генерації застосовуються до декількох або тільки одного елемента документа. Наприклад, `BorderType.Bottom` застосовується до абзацу або настільної комірки в той час як `BorderType.DiagonalDown` визначає діагональний кордон в таблиці тільки.

Як бордюрний збір, так і кожен окремий кордон має схожі атрибути, такі як колір, стиль лінії, ширина лінії, відстань від тексту, і додаткові тіні. Вони представлені властивостями тієї ж назви. Ви можете досягти різних типів кордону, поєднуючи цінності нерухомості. Крім того, як **BorderCollection** і **Border** об'єкти дозволяють скидати ці значення за замовчуванням, викликаючи [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) метод. Зауважте, що при русі властивості скидаються до значень за замовчуванням, кордон невидимий.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
Про нас [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) Клас містить атрибути затінення для елементів документа. Ви можете встановити бажану текстуру затінення і кольори, які наносяться на фон і фон елемента.

Текстура затінення встановлюється з [ТекстураІндекс](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) значення нумерації, що дозволяє застосування різних візерунків до **Shading** об'єкт. Наприклад, для встановлення фонового кольору для елемента документа використовуйте [Текстура.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) значення і встановити колір переднього затінення відповідно.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Нижче наведене нижче приклад показує, як застосувати кордони та затінки до абзацу.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap в Сітка

Aspose.Words надає два властивості `ParagraphFormat.SnapToGrid` і `Font.SnapToGrid` щоб отримати і встановити пункт нерухомості оснащення до сітки

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Переміщення куратора

### Виявлення позиції поточної кривої

Ви можете отримати де курсор будівельника в будь-який час. Про нас [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) майно повертає вузол, який в даний час вибирається в цьому конструкторі. Вуз є безпосередню дитину абзацу. Будь-які операції вставки, які ви виконуєте `DocumentBuilder` вставить перед `DocumentBuilder.CurrentNode`й Коли поточний пункт порожній або курсор розміщується безпосередньо перед закінченням пункту, `DocumentBuilder.CurrentNode` повертає null.

Також можна використовувати [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) власність, яка отримує абзац, який в даний час вибрано в цьому **DocumentBuilder**й Бутиlow code Приклад показує, як отримати доступ до поточного вузла в конструкторі документів.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Переїзд в будь-який Нод (Параграфи та їхні діти)

Якщо у вас є вершина об'єкта документа, який є абзацом або безпосередньою дитиною абзацу, ви можете вказати курсор будівельника до цієї вершини. Використання [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) спосіб виконання цього.
Приклад коду показує, як перемістити позицію курсора в зазначений вузол.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Переміщення до документа Старт/Ед

Якщо необхідно перейти до початку документа, зателефонуйте [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)й Якщо необхідно перейти до кінця документа, зателефонуйте [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)й

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Переїзд до розділу

Якщо ви працюєте з документом, який містить кілька розділів, ви можете перемістити до потрібного розділу, використовуючи [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)й Цей метод переміщує курсор до початку зазначеного розділу і приймає індекс необхідного розділу. Коли індекс розділу перевищує або дорівнює 0, він визначає індекс від початку документа з 0, який є першим розділом. При індексі розділу менше 0, він визначає індекс з кінця документа з -1, який є останній розділ. Бутиlow code Приклад показує, як перемістити позицію курсора до вказаного розділу. Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Переміщення на заголовок / дросель

Коли потрібно розмістити деякі дані в заголовок або нижній колонтитул, необхідно перемістити його спочатку за допомогою [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)й Метод приймає значення зазначення HeaderFooterType, що визначає тип заголовка або нижній колонтитул, де курсор повинен бути переміщений.

Якщо ви хочете створити головки та ножиці, які різні для першої сторінки, вам потрібно встановити [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) нерухомість **true**й Якщо ви хочете створити заголовки та нижній колонтитул, які різні для парних і непарних сторінок, вам потрібно встановити [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) до **true**й

Якщо потрібно повернутися до головної історії, скористайтеся формою[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) щоб вийти з заголовка або нижній колонтитул. Нижче наведено приклади створення заголовків та нижній колонтитулів у документі за допомогою DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Переміщення до пункту

Зареєструватися[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) перемістити курсор на бажаний пункт в поточному розділі. Ви повинні пройти два параметри до цього методу: абзац (Індекс абзацу для переміщення в) і символІндекс (Індекс характеру всередині абзацу).

Навігація здійснюється в поточній історії поточного розділу. Що таке, якщо ви переїхали курсор до основного заголовка першого розділу, то абзац Індекс визначає індекс абзацу всередині, який заголовок цього розділу.

Коли абзацІндекс більший або дорівнює 0, він визначає індекс від початку розділу з 0 є першим пунктом. Коли абзацІндекс менше 0, він визначає індекс з кінця розділу з -1, будучи останній пункт. Індекс характеру може бути вказаний тільки в якості 0 для переміщення до початку абзацу або -1 для переміщення до кінця абзацу. Приклад наступного коду показує, як перемістити позицію курсора в зазначений пункт. Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Переміщення на стіл клітинку

Зареєструватися [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) якщо необхідно перемістити курсор на стільницю в поточному розділі. Цей метод приймає чотири параметри:

- таблицяІндекс - індекс таблиці для переміщення.
- рядІндекс - індекс рядка в таблиці.
- стовпчикІндекс - індекс стовпця в таблиці.
- характерІндекс - індекс характеру всередині комірки.

Навігація здійснюється в поточній історії поточного розділу.

Для показників індексу, коли індекс більший або дорівнює 0, він визначає індекс від початку з 0, будучи першим елементом. Коли індекс менше 0, він визначає індекс з кінця з -1, будучи останній елемент.

Також зверніть увагу, що характерIndex в даний час може вказати лише 0 для переходу на початок комірки або -1 для переміщення до кінця комірки. Приклад коду показує, як перемістити позицію курсора до вказаної таблиці комірки. Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)й

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Переміщення в закладку

Замітки часто використовуються для позначення окремих місць у документі, де будуть вставлятися нові елементи. Щоб перейти в закладку, використовуйте [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)й Цей метод має два перевантаження. Найстарішіший, але ім'я закладки, де курсор повинен бути переміщений. Приклад коду показує, як перемістити позицію курсора до закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Цей перевантаження пересуває курсор на позицію тільки після початку закладки з вказаною назвою. Ще одне перевантаження [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) переходить курсор до закладки з більшою точністю. Прийняття двох додаткових параметрів болеана:

- Старт визначає, чи перемістити курсор до початку або до кінця закладки.
- цеАфтер визначає, чи слід перемістити курсор після початку закладки або кінцевого положення, або перемістити курсор, щоб бути до початку закладки або кінцевого положення.

Приклад коду показує, як перемістити позицію курсора лише після закінчення закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Вставляючи новий текст таким чином не замінює існуючий текст закладки. Зауважте, що деякі закладки в документі присвоєно для формування полів. Переміщення такої закладки та вставки тексту вводиться текст у форму поле коду. Хоча це не визнає поле форми, вставлений текст не буде видно, оскільки він стає частиною поля.

### Переміщення до `Merge` Сфера

Іноді можна виконати "ручну" mail merge використання `DocumentBuilder` або заповніть поле зливу особливим способом всередині mail merge обробник заходу. Що таке коли [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) може бути корисним. Метод приймає назву поля злиття. Він переміщує курсор на позицію за межами зазначеного поля злиття і видаляє поле зливу. Приклад наступного коду показує, як перемістити курсор на позицію лише за вказаною концентрацією поля.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Як перетворити між блоками вимірювання

Більшість властивостей об'єкта, передбачених в Aspose.Words API що відображає деякі вимірювання (ширина/висота, запаси та різні відстані) приймають значення в точках (1 дюйма дорівнює 72 балів). Іноді це не зручно, тому є `ConvertUtil` клас, який надає функції помічника для перетворення між різними блоками вимірювання. Дозволяє конвертувати дюйми в точки, точки в дюйми, пікселі в точки, і точки в пікселів. Коли пікселі перетворюються на точки і навпаки, вона може бути виконана при 96 dpi (доти на дюйм) дозволів або при визначеному роздільній здатності dpi.

**ConvertUtil** є дуже корисним при налаштуванні різних властивостей сторінок, тому що наприклад, дюйми є більш звичайними вимірюваннями, ніж точки. Наступний приклад показує, як встановити властивості сторінок в дюймах.

Приклад коду показує, як вказати властивості сторінок в дюймах.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
