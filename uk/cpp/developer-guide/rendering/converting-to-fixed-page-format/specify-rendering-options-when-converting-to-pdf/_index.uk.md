---
title: Вкажіть параметри рендеринга при перетворенні в PDF
second_title: Aspose.Words для C++
articleTitle: Вкажіть параметри рендеринга при перетворенні в PDF
linktitle: Вкажіть параметри рендеринга при перетворенні в PDF
description: "Перетворіть документ у формат PDF з розширеними параметрами за допомогою C++. Використовуйте PdfSaveOptions, щоб змінити результат збереження документа у форматі PDF."
type: docs
weight: 30
url: /uk/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Формат PDF - це формат із фіксованою сторінкою, який дуже популярний серед користувачів і широко підтримується різними програмами, оскільки документ PDF виглядає однаково на будь-якому пристрої. З цієї причини перетворення в PDF є важливою особливістю Aspose.Words.

PDF - складний формат. У процесі перетворення документа в PDF потрібно виконати кілька етапів обчислень, включаючи розрахунок макета. Оскільки ці етапи включають складні обчислення, вони забирають багато часу. Крім того, формат PDF сам по собі досить складний. Він має певну структуру файлів, графічну модель та вбудовані шрифти. Крім того, він має деякі складні функції виведення, такі як теги структури документа, шифрування, цифрові підписи та редаговані форми.

Aspose.Words механізм верстки імітує роботу механізму верстки сторінок в Microsoft Word. Таким чином, Aspose.Words дозволяє зробити так, щоб вихідні документи PDF виглядали якомога ближче до того, що ви можете побачити в Microsoft Word. Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа в форматі PDF. Ці параметри можна задати за допомогою класу [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), що містить властивості, які визначають, як буде відображатися результат PDF.

Нижче наведено деякі приклади використання **PdfSaveOptions**.

{{% alert color="primary" %}}

Наразі ви можете зберігати файли у форматах PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, і PDF/UA-1. Використовуйте перерахування [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/), щоб задати рівень відповідності стандартам PDF. Зверніть увагу, що при використанні формату PDF/A Розмір вихідного файлу більший, ніж при використанні звичайного формату PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) і [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) позначені як застарілі.

Для отримання додаткової інформації про PDF/A дивіться наступну статтю "вивчіть особливості перетворення в PDF/A".

{{% /alert %}}

## Створення документа PDF із заповнюваними формами

Також можна експортувати заповнювані форми з документа Microsoft Word у вихідні дані PDF, які містять заповнювані форми замість звичайного тексту. Використовуйте властивість [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/), щоб зберегти документ як PDF із заповненими формами.

Зверніть увагу, що на відміну від Microsoft Word, формат PDF має обмежену кількість варіантів для редагованих форм, таких як текстове поле, combobox та checkbox. Microsoft Word містить більше типів форм, наприклад, засіб вибору дати календаря. Як правило, неможливо повністю імітувати поведінку Microsoft Word в PDF. Тому в деяких складних випадках вихід PDF може відрізнятися від того, що ви бачите в Microsoft Word.

У наведеному нижче прикладі коду показано, як зберегти документ як PDF із заповнюваними формами із заданим стисненням та якістю Jpeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Експорт структури документа і користувальницьких властивостей

Властивість [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) дозволяє експортувати структуру документа у вихідні дані PDF.

PDF засоби логічної структури забезпечують механізм включення інформації, що стосується структури вмісту документа, у файл PDF. Aspose.Words зберігає інформацію про структуру з документа Microsoft Word, таку як абзаци, списки, таблиці, виноски/кінцеві виноски і т. д.

Наступний приклад показує, як зберегти документ у форматі PDF, зберігаючи структуру документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words також дозволяє експортувати власні властивості документа в PDF, Що продемонстровано в наступному прикладі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Експорт контурів із закладок та заголовків у виведенні PDF

Якщо ви хочете експортувати закладки як контури у вихідних даних PDF, ви можете використовувати властивість [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Ця властивість визначає рівень за замовчуванням у структурі документа, на якому відображаються закладки Microsoft Word. Якщо документ містить закладки у верхньому / нижньому колонтитулі документа, ви можете задати властивості [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) значення [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) або [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/), щоб вказати, як вони експортуються у виведенні PDF. Закладки у верхньому та нижньому колонтитулах не експортуються, якщо значення **HeaderFooterBookmarksExportMode** дорівнює [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

У наведеному нижче прикладі коду показано, як експортувати закладки з першого верхнього / нижнього колонтитула розділу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Результат PDF цього прикладу показано нижче:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Якщо для параметра **HeaderFooterBookmarksExportMode** встановлено значення First, а документ має парні та непарні колонтитули або інший верхній і нижній колонтитул першої сторінки, закладки експортуються для перших унікальних колонтитулів у розділі.

Ви також можете експортувати заголовки у вихідних даних PDF, використовуючи властивість [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Ця властивість визначає, скільки рівнів заголовків включено в структуру документа.

У наведеному нижче прикладі коду показано, як експортувати заголовки з трьома рівнями:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Результат PDF цього прикладу показано нижче:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Закладка або навігація заголовками можуть по-різному відображатися в різних переглядачах PDF. Більше того, у деяких додатках закладки та навігація заголовками недоступні в UI.

{{% /alert %}}

## Зменшення розміру зображень для зменшення розміру документа

Aspose.Words надає можливість зменшити розмір зображень, щоб зменшити розмір вихідних даних PDF, використовуючи властивість [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Зменшення розміру зображень увімкнено за замовчуванням у властивості [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Зверніть увагу, що також можна задати конкретний дозвіл у властивості [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) або порогове значення дозволу у властивості [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). У другому випадку, якщо дозвіл зображення менше порогового значення, що знижує дискретизація застосовуватися не буде.

Наведений нижче приклад коду показує, як змінити роздільну здатність зображень у вихідному документі PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Дозвіл розраховується відповідно до реального розміру зображення на сторінці.

## Вбудовування шрифтів у формат Adobe PDF

Aspose.Words також дозволяє керувати способом вбудовування шрифтів у отримані документи PDF. Шрифти необхідно вбудовувати в будь-який документ Adobe PDF, щоб документ можна було коректно відобразити на будь-якому комп'ютері (більш детальну інформацію про рендеринг шрифтів дивіться в розділі [Використання шрифтів TrueType](/words/cpp/using-truetype-fonts/)). За замовчуванням Aspose.Words вставляє підмножину шрифтів, що використовуються в документі, у Створений PDF. У цьому випадку в PDF зберігаються лише гліфи (символи), що використовуються в документі.

### Коли слід використовувати повні шрифти, а коли-підмножини

Існує спосіб вказати параметр для Aspose.Words для вбудовування повних шрифтів. Більш детальна інформація, а також деякі переваги та недоліки кожного Налаштування описані в таблиці нижче.

| Режим вбудовування шрифтів | Перевага | Недостатки |
| :- | :- | :- |
| `Full` | Корисно, якщо ви хочете відредагувати отриманий результат PDF пізніше, додавши або змінивши текст. Включені всі шрифти, отже, присутні всі гліфи. | Оскільки деякі шрифти мають великий розмір (кілька мегабайт), вбудовування їх без заміни може призвести до отримання великих вихідних файлів. |
| `Subset` | Підмножина корисна, якщо ви хочете зменшити розмір вихідного файлу. | <p>Користувач не може повністю додати або відредагувати текст, використовуючи вибраний шрифт у вихідному документі PDF. Це пов'язано з тим, що в ньому присутні не всі символи шрифту.</p><p>Якщо кілька PDFs зберігаються за допомогою підмножин шрифтів і збираються разом, то об'єднаний документ PDF може містити шрифт, що містить багато непотрібних підмножин.</p> |

### Вбудовування повних шрифтів у PDF

Властивість [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) дозволяє вказати, як Aspose.Words вставляє шрифти у вихідний документ PDF.

- Щоб вставити повні шрифти у вихідний документ PDF, Встановіть для параметра **EmbedFullFonts** значення true
- Щоб змінити шрифти при збереженні в PDF, Встановіть для **EmbedFullFonts** значення false

Наступний приклад показує, як повністю ввести шрифти у вихідний документ PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Наступний приклад показує, як встановити значення Aspose.Words для підмножини шрифтів у вихідних даних PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цих прикладів за адресою [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Як керувати впровадженням основних шрифтів та Windows стандартних шрифтів

Базові шрифти та Windows стандартні шрифти - це "стандартні" набори шрифтів, які зазвичай присутні на цільовому комп'ютері або надаються засобом читання документів, тому їх не потрібно вбудовувати у вихідні дані PDF. Відмовившись від впровадження цих шрифтів, ви можете зменшити розмір відображуваних PDF документів і при цьому зберегти переносимість.

Aspose.Words надає варіанти вибору способу експорту шрифтів у PDF. Ви можете або вбудувати основні та стандартні шрифти у вихідні дані PDF, або пропустити їх введення, а замість цього використовувати стандартні шрифти core PDF або системні шрифти на цільовій машині. Використання будь-якого з цих параметрів зазвичай призводить до значного зменшення розміру файлу для документів PDF, створених за допомогою Aspose.Words.

- Оскільки ці варіанти є взаємовиключними, Вам слід вибирати лише один за раз.
- При збереженні з дотриманням PDF/A-1 всі використовувані шрифти повинні бути вбудовані в документ PDF. При збереженні з дотриманням цієї вимоги властивості [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) має бути присвоєно значення false, а властивості [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) - Значення [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Вбудовування основних шрифтів

Можливість вбудовування основних шрифтів може бути включена або відключена за допомогою властивості `UseCoreFonts`. Якщо для нього встановлено значення true, наступні найпопулярніші шрифти "True Type" (базові 14 шрифтів) не вбудовуються у вихідний документ PDF.:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Ці шрифти замінюються відповідними шрифтами core Type 1, які надаються читачем при відкритті PDF.

У наведеному нижче прикладі показано, як встановити Aspose.Words, щоб уникнути вбудовування основних шрифтів і дозволити читачеві замінити їх шрифтами PDF Type 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Оскільки переглядачі PDF надають основні шрифти на будь-якій підтримуваній платформі, ця опція також корисна, коли потрібна більша портативність документів. Однак основні шрифти можуть відрізнятися від системних шрифтів.

{{% alert color="primary" %}}

Цей параметр працює лише для тексту в кодуванні ANSI (Windows-1252). Для запису тексту, відмінного від ANSI, в кодування PDF завжди потрібно використовувати відповідні шрифти.

{{% /alert %}}

### Вбудовування системних шрифтів

Цю опцію можна ввімкнути або вимкнути за допомогою властивості [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Якщо для цієї властивості встановлено значення [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), шрифти "Arial" та "Times New Roman" true type не будуть вбудовані в документ PDF. У цьому випадку клієнтський переглядач використовує шрифти, встановлені в операційній системі клієнта. Якщо для властивості **FontEmbeddingMode** встановлено значення [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words не вставляйте жодних шрифтів.

У наведеному нижче прикладі показано, як встановити значення Aspose.Words, щоб не вставляти шрифти Arial та Times New Roman у документ PDF.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Цей режим є найбільш корисним, коли ви хочете переглядати свої документи на одній платформі, зберігаючи точний вигляд шрифтів у вихідних даних PDF.

{{% alert color="primary" %}}

Цей параметр працює лише для тексту в кодуванні ANSI (Windows-1252). Для перетворення тексту, відмінного від ANSI, в PDF, потрібно використовувати відповідний шрифт.

{{% /alert %}}
