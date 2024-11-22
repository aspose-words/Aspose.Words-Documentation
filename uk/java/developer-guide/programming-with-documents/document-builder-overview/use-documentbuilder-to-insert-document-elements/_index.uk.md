---
title: Зареєструватися `DocumentBuilder` Вставити елементи документа
second_title: Aspose.Words для Java
articleTitle: Зареєструватися `DocumentBuilder` Вставити елементи документа
linktitle: Зареєструватися `DocumentBuilder` Вставити елементи документа
type: docs
description: "Вставте елементи документа, використовуючи конструктор документів Javaй"
weight: 10
url: /uk/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Про нас [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) використовується для зміни документів. У статті описано та описано, як виконати ряд завдань.

## Вставка тексту

Просто пропустіть рядок тексту, який потрібно вставити в документ до документа [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) метод. Форматування тексту визначається `Font` майно. Цей об'єкт містить різні атрибути шрифту (ім'я шрифту, розмір шрифту, колір тощо). Деякі важливі атрибути шрифтів також представлені [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) властивості, які дозволяють отримати доступ до них безпосередньо. Це Boolean властивості [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), і [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)й

{{% alert color="primary" %}}

Зверніть увагу, що форматування символів, який ви встановите, буде застосовано до всіх текстів, вставлених з поточного положення в документі.

{{% /alert %}}

Приклад коду Вставити форматований текст за допомогою DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Вставлення пункту

DocumentBuilder.writeln вставляє рядок тексту в документ, а також, крім того, він додає абзационну ломку. Поточне форматування шрифтів також вказується документобудуванням. Увійти Форматування шрифту визначається пунктом Документобудування.getParagraphFormat майном

Приклад наступного коду показує, як вставити абзац в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Вставляння таблиці

Базовий алгоритм створення таблиці за допомогою `DocumentBuilder` простий:

1,1 км Почати таблицю за допомогою [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)й
1,1 км Вставте клітинку за допомогою [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)й Це автоматично запускає новий ряд. При необхідності використовуйте [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) властивість вказати форматування комірки.
1,1 км Вставити вміст клітин за допомогою `DocumentBuilder` методи.
1,1 км Повторюємо кроки 2 і 3 до завершення ряду.
1,1 км Дзякуй [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) до кінця поточного ряду. При необхідності використовуйте [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) властивість вказати форматування рядків.
1,1 км Повторюємо кроки 2 - 5 до завершення таблиці.
1,1 км Дзякуй [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) закінчити стільницю. Методи створення таблиці DocumentBuilder описані нижче.

### Почати таблицю

English, Українська, Français... Стіл є першим кроком у побудові столу. Він також може називатися всередині комірки, в цьому випадку він запускає незнімний стіл. Наступний метод виклику – DocumentBuilder.insertCell.

### Вставка клітинки

Після виклику DocumentBuilder. Увійти Клітка, створюється новий елемент і будь-який вміст, який ви додаєте за допомогою інших методів `DocumentBuilder` клас буде додано в поточну комірку. Щоб розпочати нову клітинку в одному ряду, зателефонуйте DocumentBuilder. Увійти Стільці знову. Використовуйте DocumentBuilder.getCell Формат нерухомості для визначення форматування комірок. Повернення [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) об'єкт, який представляє всі форматування для настільної комірки.

### Закінчення руп

JavaScript licenses API Веб-сайт Go1.13.8 Рядок для обробки поточного ряду. Якщо ви зателефонуєте DocumentBuilder. Увійти Стільці відразу після того, як стіл продовжується на новому ряду. Використання `DocumentBuilder.RowFormat` властивість вказати форматування рядків. Повернення [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) об'єкт, який представляє всі форматування для рядка таблиці.

### Закінчення таблиці

JavaScript licenses API Веб-сайт Go1.13.8 Стіл для обробки поточного столу. Цей метод повинен бути викликаний тільки після DocumentBuilder. EndRow був названий. Коли називається, DocumentBuilder.end Таблиця переміщує курсор з поточного осередку на позицію тільки після столу. Наступний приклад показує, як побудувати відформатований стіл, який містить 2 ряди і 2 стовпчики.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Вставляння перерви

Якщо ви хочете явно почати нову лінію, абзац, стовпець, розділ або сторінку, виклик DocumentBuilder. вставкаБреак. Пройдіть до цього способу, тип перерви потрібно вставити, що представлений `BreakType` заохочення
Приклад коду показує, як вставити перерву сторінок в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Вставка зображення

DocumentBuilder надає кілька перевантажень [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) метод, який дозволяє вставляти вбудований або плаваючий образ. Якщо зображення є метафілом EMF або WMF, він буде вставлятися в документ у форматі метафайлу. Всі інші зображення будуть зберігатися в форматі PNG. English, Українська, Français... Метод зображення може використовувати зображення з різних джерел:

- Від файлу або `URL` шляхом проходження параметра рядка
- Від потоку шляхом проходження `Stream` параметр
- Від об'єкта зображень шляхом проходження параметра Зображення
- Від байтного масиву шляхом проходження параметра байтного масиву
- до І інші

Для кожного з документів Увійти Методи зображень, є подальші перевантаження, які дозволяють вставляти зображення з такими варіантами:

- Інлайн або плавлення на певній позиції
- Процентна вага або користувацький розмір

Крім того, DocumentBuilder.insert Спосіб зображення повертає [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) об'єкт, який був просто створений і вставлений таким чином, ви можете додатково змінювати властивості форми.

### Вставляння Inline Зображення

Пройдіть один рядок, що представляє файл, який містить зображення до DocumentBuilder. Увійти Зображення для вставки зображення в документ як вбудована графіка. Наприклад, наступний код показує, як вставити образ в рядку в позицію курсора в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Вставляння Floating (Absolutely позиціонується) Зображення

Цей приклад вставляє плаваючу зображення з файлу або `URL` в зазначеному положенні і розмірах.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Вставляючи закладку

Щоб вставити закладку в документ, необхідно зробити наступне:

1,1 км Дзякуй [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) перейшовши за потрібне ім'я закладки.
1,1 км Вставте текст закладки за допомогою `DocumentBuilder` методи.
1,1 км Дзякуй [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) перейменуйте його однакову назву, яку ви використовували з DocumentBuilder.startBookmark.

Замітки можуть перекривати і пропускати будь-який діапазон. Щоб створити дієву закладку, потрібно викликати як DocumentBuilder.startBookmark і DocumentBuilder.endBookmark з такою назвою закладок.

Погано сформовані закладки або закладки з дублікатів будуть ігноруватися, коли документ зберігається.

Приклад коду показує, як вставити закладку в документ за допомогою конструктора документів.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Введення поля

Сфери в Microsoft Word документи складаються з коду поля та результату поля. EnglishDeutschPусский简体中文中國傳統EspañolالعربيةFrançaisελληνικάDanskАнглійскаябългарскиCatalàČeskýEestiSuomiGaeilgeहिन्दीHrvatskiMagyarIndonesiaIcelandicItalianoעברי日本の한국의LietuvosLatvijasмакедонскиMalayMaltiNederlandsNorskPolskiPortuguêsRomânescSlovenskýSlovenskiShqiptarCрпскиSvenskaไทยTürkçeYкраїнськийTiếng việtייִדישKiswahili Код поля також може містити польові вимикачі, які є додатковими інструкціями для виконання конкретної дії. Ви можете переключатися між відображенням кодів поля та результатами у вашому документі в Microsoft Word за допомогою клавіатурної ярлики Alt+F9. Коди поля з'являються між кучерявими брекетами { } .Усе [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) створити поля в документі. Вам необхідно вказати тип поля, код поля та значення поля. Якщо ви не впевнені, що конкретний код поля синтаксису, створюємо поле в Microsoft Word спочатку і переключіть, щоб побачити свій код поля
Приклад коду вставляє поле злиття в документ, використовуючи документ DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Вставляння `Form` Сфера

Форма поля – це окремий випадок полів Word, що дозволяє "інтеркція" користувачеві. Форма поля Microsoft Word включає в себе текстову скриньку, Combobox і прапорець. DocumentBuilder надає спеціальні методи для вставки кожного виду поля у документ: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) й [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), і [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)й Зверніть увагу, що якщо вказати ім'я для поля форми, то закладку автоматично створюється з такою назвою.

### Вставка тексту

ДокументBuilder.insertTextInput для вставки текстової скриньки в документ. Приклад коду показує, як вставити поле форми тексту в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Вставляння `CheckBox`

Дзвоните до DocumentBuilder.inert Вставте прапорець в документ. Приклад коду показує, як вставити поле форми прапорця в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Вставка комбо Box

Дзвоните до DocumentBuilder.inertComboBox вставити комбо коробку в документ. Наприклад, наступний код показує, як вставити поле форми комбо в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Введення місцевості на рівні поля

Клієнти можуть вказати На рівні поля тепер можна досягти кращого контролю. Головна Іди можуть бути пов'язані з кожним полем всередині DocumentBuilder. Приклади нижче ілюструють, як використовувати цей варіант.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Вставка HTML

Ви можете легко вставляти HTML рядок, який містить фрагмент HTML або весь HTML-документ у документі Word. Просто пропустіть цей рядок до DocumentBuilder. Увійти Html метод. Один з корисних реалізацій методу зберігає HTML рядок в базі даних і вставляє його в документ під час Mail Merge Щоб отримати відформатований контент, який додано замість його побудови, використовуючи різні методи конструктора документів. Приклад коду показує вставки HTML в документ за допомогою DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Вставка гіперпосилання

Використовуйте DocumentBuilder.insertHyperlink для вставки гіперпосилання в документ. Цей метод приймає три параметри: текст посилання, який буде відображатися в документі, пункт посилання (URL або ім'я закладки всередині документа), а також параметр boolean, який повинен бути відображений в документі. true якщо `URL` – назва закладки всередині документа. JavaScript licenses API Веб-сайт Go1.13.8 Метод завжди додає апотрофії на початку і кінці URL. Зауважте, що потрібно вказати форматування шрифтів для відображення гіперпосилання на текстове точне використання `Font` майно. Приклад наступного коду вставляє гіперпосилання в документ, використовуючи документ DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Вставка змісту

Ви можете вставити `TOC` (табл. змісту) поле в документ на поточному положенні за викликом [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) метод. The DocumentBuilder.insertTableOfContents метод вставить лише вставку `TOC` поле в документ. Для побудови таблиці змісту та відображення їх за номерами сторінок, як **Document.UpdateFields**метод повинен бути викликаний після вставки поля. Приклад коду показує, як вставити таблицю поля змісту в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Вставка об'єкта Оле

Якщо ви хочете зателефонувати об'єкту Олеся [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)й

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Встановити ім'я та розширення файлів, коли Inserting Ole Об'єкт

OLE пакет є спадковим і "необхідним" способом зберігати вбудовані об'єкти, якщо OLE обробник невідомий. Рано Windows варіанти, такі як Windows 3.1, 95 і 98 мали пакет. exe додаток, який може бути використаний для складання будь-якого типу даних в документ. Тепер це додаток виключено з Windows але MS Word та інші додатки все ще використовують його для складання даних, якщо обробник OLE відсутній або невідомо. Клас OlePackage дозволяє отримати доступ до властивостей OLE Package. Приклад коду показує, як встановити ім'я файлу, розширення та ім'я відображення для OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Отримати доступ до сирих даних OLE

Приклад коду показує, як отримати OLE Сировина об'єкта з використанням `OleFormat.GetRawData`() метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Вставити горизонтальний Рулі в документі

Приклад коду показує, як вставити форму горизонтального правила в документ, використовуючи `DocumentBuilder.InsertHorizontalRule` метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Робота з фігурами

### Inserting Inline і Free плаваючі форми

Ви можете вставити форму в лінію з вказаним типом і розміром і формою вільної плавки з вказаним положенням, розміром і типом тексту в документі за допомогою `DocumentBuilder.InsertShape` метод. Про нас `DocumentBuilder.InsertShape` метод дозволяє вставляти DML форму в документ модель. Документ повинен бути збережений у форматі, який підтримує форми DML, інакше такі вершини будуть перетворені в форму VML, зберігаючи документ. Приклад коду показує, як вставити ці типи форм у документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Створення Snip Corner прямокутника

Ви можете створити прямокутний прямокутний прямокутник за допомогою Aspose.Wordsй Види форми однокорнистий, TopCornersSnipped, DiagonalCornersSnipped OneSnipped, SingleCornerRounded, TopCornersRounded і DiagonalCornersRounded. Форма DML створюється за допомогою `DocumentBuilder.InsertShape` метод з цими типами форми. Ці типи не можуть використовуватися для створення VML-форм. Припустимо, щоб створити форму, використовуючи публічний конструктор класу "Шапе" підняв винятки "НепідтриманийException". Приклад коду показує, як вставити ці типи форм у документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Імпортні фігури з Math XML як форми в DOM

Ви можете використовувати `LoadOptions.ConvertShapeToOfficeMath` об'єкти Office Math. Значення за замовчуванням цього майна відповідає поведінці MS Word i.e. форми з рівняння XML не перетворюються на об'єкти математики Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
