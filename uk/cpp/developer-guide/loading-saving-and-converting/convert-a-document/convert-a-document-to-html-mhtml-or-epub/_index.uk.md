---
title: Перетворіть документ на HTML, MHTML або EPUB
second_title: Aspose.Words для C++
articleTitle: Перетворіть документ на HTML, MHTML або EPUB
linktitle: Перетворіть документ на HTML, MHTML або EPUB
description: "Перетворіть документ майже з будь-якого формату в HTML або MHTML, а також у формат EPUB за допомогою C++. Ви також можете вказати параметри збереження для управління вихідним документом."
type: docs
weight: 20
url: /uk/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Документи у форматах flow-layout HTML та MHTML також дуже популярні і можуть використовуватися на будь-якій веб-платформі. З цієї причини перетворення документів у HTML та MHTML є важливою функцією Aspose.Words.

EPUB (скорочення від "електронна Публікація") - це формат, заснований на HTML, який зазвичай використовується для розповсюдження електронних книг. Цей формат повністю підтримується в Aspose.Words для експорту електронних книг, сумісних з більшістю пристроїв для читання.

## Перетворення документа

Для простого перетворення в HTML, MHTML або EPUB використовується одна з перевантажень методу [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Ви можете зберегти документ у файл або потік і явно встановити формат збереження вихідного документа або визначити його з розширення імені файлу.

Наступний приклад показує, як перетворити DOCX на HTML із зазначенням формату збереження:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Щоб перетворити документ на MHTML або EPUB, Використовуйте `SaveFormat.Mhtml` або `SaveFormat.Epub` відповідно.

## Перетворення документа з інформацією про повернення в обидва кінці

Формат HTML не підтримує багато функцій Microsoft Word, і якщо нам потрібно відновити модель документа, максимально наближену до оригіналу, нам потрібно зберегти деяку додаткову інформацію у файлі HTML. Така інформація також називається "інформація про повернення". Для цієї мети Aspose.Words надає можливість експортувати інформацію про поїздку в обидва кінці при збереженні в HTML, MHTML або EPUB, використовуючи властивість [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Збереження зворотної інформації дозволяє відновити властивості документа, такі як вкладки, коментарі, верхні і нижні колонтитули, при завантаженні документів перерахованих форматів назад в об'єкт **Document**.

Значення за замовчуванням - **true** для HTML та **false** для MHTML та EPUB:

- При значенні **true** інформація про маршрут в обидва кінці експортується у вигляді - aw - * CSS властивостей відповідних елементів HTML
- При значенні **false** немає інформації про повернення в обидва кінці, яка повинна бути виведена в створені файли

Наступний приклад коду показує, як експортувати інформацію про доставку в обидва кінці під час перетворення документа з DOCX на HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Вкажіть параметри збереження при перетворенні в HTML

Aspose.Words дозволяє перетворити документ з Word на HTML, використовуючи стандартні або спеціальні параметри збереження. Нижче описано кілька прикладів користувацьких параметрів збереження.

### Вкажіть папку для збереження ресурсів

Використовуючи Aspose.Words, ми можемо вказати фізичну папку, в яку зберігаються всі ресурси, такі як зображення, шрифти та зовнішні CSS, при перетворенні документа в HTML. За замовчуванням це порожній рядок.

Вказівка властивості [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) - це найпростіший спосіб вказати папку, в яку повинні бути записані всі ресурси. Ми можемо використовувати окремі властивості, такі як [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/), які зберігають шрифти у вказаній папці, та [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/), які зберігають зображення у вказаній папці. Коли вказано відносний шлях, **FontsFolder** і **ImagesFolder** вказують на папку, в якій знаходиться збірка коду, **ResourceFolder** і [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) вказують на вихідну папку, в якій знаходиться документ HTML.

У цьому прикладі **ResourceFolder** вказує відносний шлях. Цей шлях відноситься до вихідної папки, в якій збережено документ HTML. Значення властивості **ResourceFolderAlias** використовується для створення URLs для всіх ресурсів.

Наступний приклад коду показує, як працювати з цими властивостями:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Використовуючи властивість [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), ми також можемо вказати назву папки, яка використовується для створення URIs усіх ресурсів, записаних у документ HTML. Це найпростіший спосіб вказати, як URIs слід генерувати для всіх файлів ресурсів. Та ж інформація може бути вказана для зображень і шрифтів окремо через властивості [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) і [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) відповідно.

Однак для CSS немає окремої властивості. Поведінка властивостей **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** і **CssStyleSheetFileName** не змінено. Зверніть увагу, що властивість **CssStyleSheetFileName** використовується як для вказівки імені папки, так і для вказівки імені файлу.

- **ResourceFolder** має нижчий пріоритет, ніж папки, вказані за допомогою **FontsFolder**, **ImagesFolder** та **CssStyleSheetFileName**. Якщо папка, зазначена за допомогою **ResourceFolder**, не існує, вона буде створена автоматично.
- **ResourceFolderAlias** має нижчий пріоритет, ніж **FontsFolderAlias** та **ImagesFolderAlias**. Якщо значення **ResourceFolderAlias** порожнє, то для створення ресурсу URIs буде використано значення властивості **ResourceFolder**. Якщо для параметра **ResourceFolderAlias** встановлено значення "." (крапка), ресурс URIs міститиме лише імена файлів без вказівки шляху.

### Експорт ресурсів шрифтів у кодуванні Base64

Aspose.Words надає можливість вказати, чи слід вбудовувати ресурси шрифту в HTML у кодуваннях Base64. Для цього використовуйте властивість [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – це розширення властивості [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). За замовчуванням його значення дорівнює **false**, а шрифти записуються в окремі файли. Але якщо для цього параметра встановлено значення **true**, шрифти будуть вбудовані в CSS документа, кодованого Base64. Властивість **ExportFontsAsBase64** впливає лише на формат HTML і не впливає на EPUB та MHTML.

Наступний приклад коду показує, як експортувати шрифти, закодовані Base64, у HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Вкажіть параметри збереження при перетворенні в EPUB

Aspose.Words дозволяє перетворити документ Word у формат EPUB за допомогою стандартних або спеціальних параметрів збереження. Ви можете вказати кілька параметрів, передавши екземпляр [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) методу `Save`.

Наступний приклад коду показує, як перетворити документ Word у документ EPUB із зазначенням деяких параметрів збереження користувача:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону для цього прикладу з сайту [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
