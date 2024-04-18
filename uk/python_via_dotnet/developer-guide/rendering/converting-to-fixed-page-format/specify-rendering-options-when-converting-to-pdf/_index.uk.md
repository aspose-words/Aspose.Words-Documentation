---
title: Варіанти при конвертації в PDF
second_title: Aspose.Words для Python via .NET
articleTitle: Вказати параметри рендерингу при конвертації в PDF
linktitle: Вказати параметри рендерингу при конвертації в PDF
description: "Перетворення документа в PDF з розширеними опціями за допомогою Pythonй Використовуйте PdfSaveOptions для зміни результату збереження документа у форматі PDF."
type: docs
weight: 20
url: /uk/python-net/specify-rendering-options-when-converting-to-pdf/
---

Формат PDF є фіксованим форматом сторінок, який дуже популярний серед користувачів і широко підтримується різними додатками, тому що документ PDF виглядає таким же на будь-якому пристрої. З цієї причини конвертування в PDF є важливою особливістю Aspose.Wordsй

PDF – це комплексний формат. У процесі перетворення документа в PDF необхідно кілька етапів розрахунку. Оскільки ці етапи включають складні обчислення, вони трудомісткі. Також формат PDF досить складний самостійно. Має певну структуру файлів, модель графіки та монтаж шрифтів. Крім того, він містить деякі складні функції виведення даних, такі як теги структури документів, шифрування, цифрові підписи та редаговані форми.

Aspose.Words верстка двигуна імітує спосіб Microsoft Word’s page верстка двигуна працює. Отже, Aspose.Words Як можна знайти документи для виведення PDF Microsoft Wordй Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа в форматі PDF. Ці параметри можна вказати за допомогою використання [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід PDF.

Деякі приклади використання [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) Надані нижче.

{{% alert color="primary" %}}

В даний час ви також можете зберегти у форматі PDF/A-1 та PDF/A-2. Зауважте, що з форматом PDF/A, розмір вихідного файлу більше, ніж звичайний розмір файлу PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) і [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) позначений як обзолете.

Для отримання додаткової інформації про PDF/A див. наступну статтю "Дізнайтеся особливості перетворення в PDF/A".

{{% /alert %}}

## Створення PDF Документ з заповненими формами

Також можна експортувати заповнені форми з Microsoft Word документ у вихідний PDF, який має заповнені форми замість звичайного тексту. Використання [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) майно, щоб зберегти документ, як PDF з заповненими формами.

Зверніть увагу, що на відміну від <span notrans="<span notrans=" Microsoft Word"=""></span>, > У форматі PDF є обмежена кількість параметрів для редагованих форм, таких як текстова коробка, комбобокс та прапорець. Microsoft Word має більше типів форм, наприклад, календарний дата-підбирач. Як правило, не можна повністю імітувати Microsoft Word поведінка у PDF. Тому в деяких складних випадках виведення PDF може відрізнятися від того, що ви бачите Microsoft Wordй

Приклад коду нижче показує, як зберегти документ як PDF за допомогою заповнених форм з вказаним стисненням Jpeg та якістю:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Експортувати структуру документів та спеціальні властивості

Про нас [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) нерухомість дозволяє експортувати структуру документів до виходу PDF.

У PDF логічні структурні об'єкти забезпечують механізм закріплення інформації, щодо структури вмісту документа, у файл PDF. Aspose.Words зберігає інформацію про структуру з Microsoft Word документ, такі як абзаци, списки, таблиці, примітки та ін.

Цей приклад показує, як зберегти документ у форматі PDF, зберігаючи структуру документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words також дозволяє експортувати власні властивості документів у PDF, що продемонстровано наступним чином:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Експорт вихідних даних з закладок та заголовків у форматі PDF

Якщо ви хочете експортувати закладки як намітки у форматі PDF, ви можете використовувати [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) майно. Ця властивість визначає рівень за замовчуванням в документі, на якому Microsoft Word закладки відображаються. Якщо документ містить закладки в заголовку / нижній колонтитул документа, ви можете встановити [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) нерухомість [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) або [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) Для того, щоб вказати, як вони експортуються у вихідний PDF. Замітки в заголовках/футах не експортуються, коли значення [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) є [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none)й

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Вихід PDF цього прикладу показано нижче:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Коли [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) Увійти [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) і документ має навіть непарні заголовки / футери або інший заголовок / нижній колонтитул, закладки експортуються для перших унікальних заголовків / футерів в розділі.

Ви також можете експортувати заголовки у форматі PDF, використовуючи [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) майно. Ця властивість визначає, як багато рівнів заголовків включені в документ.

Приклад коду нижче показує, як експортувати заголовки з трьома рівнями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Вихід PDF цього прикладу зображено нижче:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Навігація закладок або навігація може мати різний вигляд у різних PDF-переглядачах. Крім того, в деяких додатках, закладках і навігаціях не доступні в УІ.

{{% /alert %}}

## Перегляд зображень, щоб зменшити розмір документа

Aspose.Words забезпечує можливість знімання зображень, щоб зменшити розмір PDF, використовуючи [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) майно. Downsampling включений за замовчуванням в [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) майно.

Зверніть увагу, що також можна встановити певну роздільну здатність в [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) майно, або поріг дозволу [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) майно. У другому випадку, якщо роздільна здатність зображення менше порогового значення, то не буде застосовуватися скидання.

Приклад коду нижче відображає, як змінити роздільну здатність зображень у вихідному документі PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Розраховується відповідно до реального розміру зображення на сторінці.

## Вбудовані шрифти в форматі PDF

Aspose.Words також дозволяє контролювати, як вводяться шрифти у отримані документи PDF. Фонти повинні бути вбудовані в будь-який документ Adobe PDF, щоб переконатися, що документ можна правильно надати на будь-якій машині (див. інформацію про шрифт, що надає в розділі [Використання Тип Шрифти](/words/uk/python-net/using-truetype-fonts/)). За замовчуванням, Aspose.Words поповнюється підмножиною шрифтів, що використовуються в документі у створеному PDF форматі. У цьому випадку тільки glyphs (characters) використовуються в документі зберігаються в PDF.

### Коли використовувати Full Fonts і коли написати

Існує спосіб вказати варіант Aspose.Words щоб зібрати повно шрифти. Далі описані деталі, поряд з деякими перевагами і недоліками кожного налаштування в таблиці нижче.

| Вбудований режим шрифтів |  Переваги | Недоліки |
|  :-  |  :-  |  :-  |
|  `Full`  | Корисно, коли ви хочете редагувати отриманий PDF пізніше, додавши або змінивши текст. Всі шрифти включені, звідси всі glyphs присутні. | Оскільки деякі шрифти є великими (середні мегабайти), вбудовування їх без підкатування може призвести до великих вихідних файлів. |
|  `Subset`  | Підставка корисно, якщо ви хочете зберегти розмір файлу менше. | <p>Користувач не може повністю додавати або редагувати текст за допомогою заданого шрифту у вихідному документі PDF. Це тому, що не всі glyphприсутній шрифт.</p>

<p>Якщо декілька PDF-файлів зберігаються з заміщеними шрифтами і зібраними разом, то комбінований документ PDF може мати шрифт, що містить безліч непотрібних підмножинок.</p>
 |

### Вбудовування повно шрифтів у PDF

Про нас [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) Ви можете вказати, як вибрати Aspose.Words збір шрифтів у вихідний документ PDF.

- до Щоб зібрати повно шрифти у вихідний документ PDF, встановити [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) до *True*
- до Щоб підмножити шрифти при збереженні PDF, встановити [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) до *False*

Наступний приклад показує, як вводити повно шрифти у документі PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Наступний приклад показує, як встановити Aspose.Words до підмножити шрифти у виході PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цих прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

## Як керувати вбудованими базовими шрифтами і Windows Стандартні шрифти

Основні шрифти та Windows Стандартні шрифти є "стандартними" наборами шрифтів, які зазвичай присутні на машині або надані зчитувачем документів, тому їх не потрібно вставляти в вихідний PDF. Ви не вбудовуєте ці шрифти, ви можете зменшити розмір рендерованих документів PDF та зберігати переносимість.

Aspose.Words надає можливість вибрати, як експортуються шрифти в PDF. Ви можете вибрати або вставляти базові та стандартні шрифти у вихідний PDF або пропустити складання їх та використовувати стандартні шрифти PDF або шрифти системи на цільовій машині. Використання одного з цих параметрів зазвичай призводить до зменшення розміру файлу для документів PDF, створених Aspose.Wordsй

- Так як ці варіанти взаємовиключно вибирають тільки один раз.
- При зберіганні з дотриманням PDF/A-1, всі використовувані шрифти повинні бути вбудовані з документом PDF. При збереженні цього комплаєнсу, [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) майно повинно бути встановленим *False* і [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) майно повинно бути встановленим [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all)й

### Вбудовані шрифти Core

Опція для складання шрифтів Core може бути включена або вимкнена, використовуючи [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) майно. Коли він встановлюється true, Найпопулярніші шрифти "Вихідний тип" (Base 14 шрифтів) не вбудовані в вихідний документ PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Ці шрифти заміщені відповідним шрифтом Type 1, який надається зчитувачем при відкритті PDF.

Приклад наведено нижче показує, як встановити Aspose.Words щоб уникнути тиснення базових шрифтів і дати читачеві замінити їх PDF Тип 1 шрифти:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

Оскільки PDF-переглядачі забезпечують базові шрифти на будь-якій платформі, цей варіант також корисний, коли потрібна більша місткість документа. Однак основні шрифти можуть відрізнятися від системних шрифтів.

{{% alert color="primary" %}}

Ця настройка працює тільки для ANSIWindows-1252) кодування тексту. Написання неANSI тексту в PDF завжди потрібно відповідні шрифти, щоб бути вбудованими.

{{% /alert %}}

### Налаштування системних шрифтів

Ця опція може бути включена або вимкнена, використовуючи [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/)й Коли ця нерухомість встановлена [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), "Земля" і "Час Новий Роман" true шрифти типу не вбудовані в документ PDF. У цьому випадку клієнт-переглядач спирається на шрифти, які встановлюються на операційній системі клієнта. Коли [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) Зручності в готелі [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words не вбудовуються шрифти.

Приклад нижче показує, як встановити Aspose.Words щоб пропустити вбудовування Аріал і Times New Roman шрифти в документ PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Цей режим є найбільш корисним, коли ви хочете переглядати документи на одній платформі, зберігаючи точний зовнішній вигляд шрифтів у вихідному PDF.

{{% alert color="primary" %}}

Ця настройка працює тільки для ANSIWindows-1252) кодування тексту. Написання неANSI тексту в PDF вимагає відповідного шрифту, щоб бути вбудованим.

{{% /alert %}}
