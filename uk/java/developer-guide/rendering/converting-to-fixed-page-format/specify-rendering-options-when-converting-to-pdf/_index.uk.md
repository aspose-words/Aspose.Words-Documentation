---
title: Вказати параметри рендерингу при конвертації в PDF
second_title: Aspose.Words для Java
articleTitle: Вказати параметри рендерингу при конвертації в PDF
linktitle: Вказати параметри рендерингу при конвертації в PDF
description: "Перетворення документа в PDF з розширеними опціями. Використовуйте PdfSaveOptions для зміни результату збереження документа у форматі PDF за допомогою Javaй"
type: docs
weight: 20
url: /uk/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Формат PDF є фіксованим форматом сторінок, який дуже популярний серед користувачів і широко підтримується різними додатками, оскільки документ PDF виглядає таким же на будь-якому пристрої. З цієї причини перетворення в PDF є важливою особливістю Aspose.Wordsй

PDF – це комплексний формат. У процесі перетворення документа в PDF необхідно кілька етапів розрахунку. Оскільки ці етапи включають складні обчислення, вони трудомісткі. Також формат PDF досить складний самостійно. Має певну структуру файлів, модель графіки та монтаж шрифтів. Крім того, він містить деякі складні функції виведення даних, такі як теги структури документів, шифрування, цифрові підписи та редаговані форми.

Aspose.Words верстка двигуна імітує спосіб Microsoft Word’s page верстка двигуна працює. Отже, Aspose.Words Як можна побачити документи, що ви можете побачити в Microsoft Wordй Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа в форматі PDF. Ці параметри можна вказати за допомогою використання [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід PDF.

Деякі приклади використання **PdfSaveOptions** Надані нижче.

{{% alert color="primary" %}}

В даний час ви можете зберегти PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u та PDF/UA-1 формати. Використання [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) зарахування відповідності стандартів PDF. Зауважте, що з форматом PDF/A, розмір вихідного файлу більше, ніж звичайний розмір файлу PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) і [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) позначений як обзолете.

Для отримання додаткової інформації про PDF/A див. наступну статтю "Дізнайтеся особливості перетворення в PDF/A".

{{% /alert %}}

## Створення PDF Документ з заповненими формами

Також можна експортувати заповнені форми з Microsoft Word документ у вихідний PDF, який має заповнені форми замість звичайного тексту. Використання [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) майно для збереження документа як PDF з заповненням форм.

Зверніть увагу, що на відміну від Microsoft Word, > У форматі PDF є обмежена кількість параметрів для редагованих форм, таких як текстова коробка, комбо коробка та прапорець. Microsoft Word має більше типів форм, наприклад, календарний дата-підбирач. Як правило, не можна повністю імітувати Microsoft Word поведінка у PDF. Тому в деяких складних випадках виведення PDF може відрізнятися від того, що ви бачите Microsoft Wordй

Приклад коду нижче показує, як зберегти документ як PDF за допомогою заповнених форм з вказаним стисненням Jpeg та якістю:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Експортувати структуру документів та спеціальні властивості

Про нас [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) нерухомість дозволяє експортувати структуру документів до виходу PDF.

У PDF логічні структури передбачено механізм закріплення інформації, щодо структури вмісту документа, у файл PDF. Aspose.Words зберігає інформацію про структуру з Microsoft Word документ, такі як абзаци, списки, таблиці, примітки та ін.

Наступний приклад показує, як зберегти документ у форматі PDF, зберігаючи структуру документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words також дозволяє експортувати власні властивості документів у PDF, що продемонстровано наступним чином:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Експорт вихідних даних з закладок та заголовків у форматі PDF

Якщо ви хочете експортувати закладки як намітки у форматі PDF, ви можете використовувати [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) майно. Ця властивість визначає рівень за замовчуванням в документі, на якому Microsoft Word закладки відображаються. Якщо документ містить закладки в заголовку / нижній колонтитул документа, ви можете встановити [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) нерухомість [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) або [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) Для того, щоб вказати, як вони експортуються у вихідний PDF. Замітки в заголовках/футах не експортуються, коли значення **HeaderFooterBookmarksExportMode** Про нас [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)й

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Вихід PDF цього прикладу показано нижче:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Коли **HeaderFooterBookmarksExportMode** Увійти [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) і документ має навіть непарні заголовки / футери або інший заголовок / нижній колонтитул, закладки експортуються для перших унікальних заголовків / футерів в розділі.

Ви також можете експортувати заголовки у форматі PDF, використовуючи [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) майно. Ця властивість визначає, як багато рівнів заголовків включені в документ.

Приклад коду нижче показує, як експортувати заголовки з трьома рівнями:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Вихід PDF цього прикладу зображено нижче:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Навігація закладок або навігація може мати різні види PDF-переглядачів. Крім того, в деяких додатках, закладках і навігаціях не доступні в УІ.

{{% /alert %}}

## Перегляд зображень для зменшення розміру документа

Aspose.Words забезпечує можливість знімання зображень, щоб зменшити розмір PDF, використовуючи [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) майно. Downsampling включений за замовчуванням в [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) майно.

Зверніть увагу, що також можна встановити певну роздільну здатність в [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) майно, або поріг дозволу в [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) майно. У другому випадку, якщо роздільна здатність зображення менше порогового значення, то не буде застосовуватися скидання.

Приклад коду нижче відображає, як змінити роздільну здатність зображень у вихідному документі PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Розраховується відповідно до реального розміру зображення на сторінці.

## Вбудовані шрифти у форматі PDF

Aspose.Words також дозволяє контролювати, як вводяться шрифти у отримані документи PDF. Фонти повинні бути вбудовані в будь-який документ Adobe PDF, щоб забезпечити, що документ можна правильно надати на будь-якій машині (див. інформацію про шрифт, що надає в розділі [Використання Тип Шрифти](/words/uk/java/using-truetype-fonts/)). За замовчуванням, Aspose.Words поповнюється підмножиною шрифтів, що використовуються в документі у створеному PDF форматі. У цьому випадку тільки glyphs (characters) використовуються в документі зберігаються в PDF.

### Коли використовувати Full Fonts і коли написати

Існує спосіб вказати варіант для Aspose.Words щоб зібрати повно шрифти. Далі описані деталі, поряд з деякими перевагами і недоліками кожного налаштування в таблиці нижче.

| Вбудований режим шрифтів |  Переваги | Недоліки |
|  :-  |  :-  |  :-  |
|  `Full`  | Корисно, коли ви хочете редагувати отриманий PDF пізніше, додавши або змінивши текст. Всі шрифти включені, звідси всі glyphs присутні. | Оскільки деякі шрифти є великими (середні мегабайти), вбудовування їх без підкатування може призвести до великих вихідних файлів. |
|  `Subset`  | Підставка корисно, якщо ви хочете зберегти розмір файлу менше. | <p>Користувач не може повністю додавати або редагувати текст за допомогою заданого шрифту у вихідному документі PDF. Це тому, що не всі glyphприсутній шрифт.</p>

<p>Якщо кілька PDF-файлів зберігаються з підмножиними шрифтами і зібраними разом, то комбінований документ PDF може мати шрифт, що містить безліч непотрібних підмножинок.</p>
 |

### Вбудовування повно шрифтів у PDF

Про нас [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) Ви можете вказати, як вибрати Aspose.Words збір шрифтів у вихідний документ PDF.

- до Щоб зібрати повно шрифти у вихідний документ PDF, встановити **EmbedFullFonts** до true
- до Щоб підмножити шрифти при збереженні PDF, встановити **EmbedFullFonts** до false

Наступний приклад показує, як вводити повно шрифти у документі PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Наступний приклад показує, як встановити Aspose.Words до підмножити шрифти у вихідному PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цих прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

## Як керувати вбудованими базовими шрифтами і Windows Стандартні шрифти

Основні шрифти та Windows Стандартні шрифти є "стандартними" наборами шрифтів, які зазвичай присутні на машині або надані зчитувачем документів, тому їх не потрібно вставляти в вихідний PDF. Ви не вбудовуєте ці шрифти, ви можете зменшити розмір рендерованих документів PDF та зберігати переносимість.

Aspose.Words надає можливість вибрати, як експортуються шрифти в PDF. Ви можете вибрати або вставляти базові та стандартні шрифти у вихідний PDF або пропустити складання їх та використовувати стандартні шрифти PDF або шрифти системи на цільовій машині. Використання одного з цих варіантів зазвичай призводить до значного зменшення розміру файлу для документів PDF, створених Aspose.Wordsй

- Так як ці варіанти взаємовиключно вибирають тільки один раз.
- При зберіганні з дотриманням PDF/A-1, всі використовувані шрифти повинні бути вбудовані з документом PDF. При збереженні цього комплаєнсу, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) майно повинно бути встановленим false і [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) майно повинно бути встановленим [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Вбудовані шрифти Core

Опція для складання шрифтів Core може бути включена або вимкнена, використовуючи [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) майно. Коли він встановлюється true, Найпопулярніші шрифти "Вихідний тип" (Base 14 шрифтів) не вбудовані у вихідний документ PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Ці шрифти заміщені відповідним шрифтом Type 1, який надається зчитувачем при відкритті PDF.

Приклад наведено нижче показує, як встановити Aspose.Words щоб уникнути складання базових шрифтів і дати читачеві замінити їх PDF Тип 1 шрифти:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

Оскільки PDF-переглядачі забезпечують базові шрифти на будь-якій платформі, цей варіант також корисний, коли потрібна більша місткість документа. Однак основні шрифти можуть відрізнятися від системних шрифтів.

{{% alert color="primary" %}}

Цей параметр працює тільки для ANSI (Windows-1252) кодування тексту. Написання неANSI тексту в PDF завжди потрібно відповідні шрифти, щоб бути вбудованими.

{{% /alert %}}

### Налаштування системних шрифтів

Ця опція може бути включена або вимкнена, використовуючи [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) майно. Коли ця нерухомість встановлена [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "Земля" та "Час Новий Роман" true шрифти типу не вбудовані в документ PDF. У цьому випадку клієнт-переглядач спирається на шрифти, які встановлюються на операційній системі клієнта. Коли **FontEmbeddingMode** Зручності в готелі [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words не вбудовуються шрифти.

Приклад нижче показує, як встановити Aspose.Words щоб пропустити посольство Аріал і Times New Roman шрифти в документ PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Цей режим є найбільш корисним, коли ви хочете переглядати документи на одній платформі, зберігаючи точний зовнішній вигляд шрифтів у вихідному PDF.

{{% alert color="primary" %}}

Цей параметр працює тільки для ANSI (Windows-1252) кодування тексту. Написання неANSI тексту в PDF вимагає відповідного шрифту, щоб бути вбудованим.

{{% /alert %}}
