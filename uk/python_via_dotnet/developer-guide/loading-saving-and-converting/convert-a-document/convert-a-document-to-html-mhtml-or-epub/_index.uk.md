---
title: Перетворення документа в HTML
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення документа в HTML, MHTML або EPUB
linktitle: Перетворення документа в HTML, MHTML або EPUB
description: "Перетворення документа з практично будь-якого формату в HTML або MHTML, а також у формат EPUB за допомогою Pythonй Ви також можете вказати параметри збереження для управління вихідним документом."
type: docs
weight: 20
url: /uk/python-net/convert-a-document-to-html-mhtml-or-epub/
---

У форматах HTML і MHTML є дуже популярними і можуть бути використані на будь-якій веб-платформі. З цієї причини, перетворення документів в HTML і MHTML є важливою особливістю Aspose.Wordsй

EPUB (коротко для "Електронної публічності") - формат HTML, який використовується для розподілу електронних книг. Цей формат повністю підтримується Aspose.Words для експорту електронних книг, які сумісні з найчистішими пристроями.

## Конвертувати документ

Для простого перетворення в HTML, MHTML, або EPUB, один з [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) використовується метод перевантаження. Ви можете зберегти документ на файл або потік і явно встановити вихідний документ, зберегти формат або визначити його з розширення імені файлу.

Наступний приклад показує, як перетворити DOCX в HTML з визначенням формату збереження:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Для перетворення документа в MHTML або EPUB, використовуйте [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) або [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) відповідно.

## Конвертувати документацію з круглою кнопкою

Формат HTML не підтримує багато Microsoft Word Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів, а якщо необхідно, то збережемо сюрприз. Така інформація також називається "круглою інформацією". Для цього Aspose.Words дає можливість експортувати інформацію про круглі смуги при збереженні HTML, MHTML або EPUB за допомогою **Експорт_roundtrip_information** майно. Збереження інформації про круглий план дозволяє відновити такі властивості, як вкладки, коментарі, заголовки та нижній колонтитули під час завантаження документів, зазначених форматів, що зберігаються у вигляді вкладок [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт.

Значення за замовчуванням *True* для HTML *False* для MHTML та EPUB:

- Коли *True*, Інформація про круглий рядок експортується як - aw - * CSS властивості відповідних елементів HTML
- Коли *False*, немає інформації про круглі смуги, щоб бути виведеними у виготовлені файли

Приклад коду показує, як експортувати інформацію про круглі смуги при перетворенні документа з DOCX в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

## Вказати параметри збереження при переході в HTML

Aspose.Words дозволяє конвертувати документ Word в HTML за допомогою параметра за замовчуванням або користувацького збереження. Нижче описано приклади користувацьких варіантів збереження.

### Вкажіть папку для економії ресурсів

Використання Aspose.Words Ми можемо вказати фізичну папку, де всі ресурси, такі як зображення, шрифти та зовнішній CSS, зберігаються при перетворенні документа в HTML. За замовчуванням, це порожній рядок.

Визначення [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) майно є найпростішим способом встановити папку, де всі ресурси повинні бути написані. Ми можемо використовувати індивідуальні властивості, такі як [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) що зберігає шрифти до вказаної папки та [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) що зберігає зображення до вказаної папки. Коли вказано відносний шлях, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) і [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) в папку, де знаходиться збір коду, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) і [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) вкажіть папку виходу, де знаходиться HTML-документ.

У цьому прикладі [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) визначає відносний шлях. Цей шлях відноситься до папки виходу, де зберігаються HTML-документ. Значення значення [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) використовується для створення URL-адрес для всіх ресурсів.

Приклад коду показує, як працювати з цими властивостями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Використання [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) майно, ми також можемо вказати ім'я папки, що використовується для побудови URIs всіх ресурсів, записаних в HTML документ. Цей простий спосіб вказати, як URI повинні бути створені для всіх файлів ресурсів. Те ж інформацію можна вказати на зображення і шрифти окремо за допомогою [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) і [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) властивості, відповідно.

Не існує індивідуальних властивостей для CSS. Поведінка поведінки [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) і [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) не змінюються властивості. Зверніть увагу, що [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) майно використовується як для позначення назви папки, так і назви файлів.

- до [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) має більш низький пріоритет, ніж папки, вказані через [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), і [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/)й Якщо папка вказана в папці [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) не існує, він буде створений автоматично.
- до [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) має менший пріоритет, ніж [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) і [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/)й Якщо [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) порожній, значення значення [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Для створення ресурсу URIS використовуються власні властивості. Якщо [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) Встановлюється до "." (dot), ресурс URIs міститиме лише імена файлів, які не вказують на шлях.

### Експорт base64 кодування ресурсів

Aspose.Words надає можливість вказати, чи повинні бути вбудованими в HTML в кодуваннях Base64. Для виконання цього використовуйте [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) властивість – це розширення [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) майно. За замовчуванням, його значення *False*, і шрифти записані в окремі файли. Але якщо цей варіант встановлюється *True*, шрифти будуть вбудовані в CSS документа в кодуванні Base64. Про нас [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) лише в HTML форматі і не впливає на EPUB і MHTML.

Приклад коду показує, як експортувати шрифти Base64-encoded до HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Вкажіть параметри збереження при переході в EPUB

Aspose.Words дозволяє конвертувати документ Word у формат EPUB за замовчуванням або користувацькі параметри збереження. Ви можете вказати кількість варіантів, пройшовши екземпляр [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) до [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод.

Приклад наступного коду показує, як перетворити документ Word в EPUB з вказуванням деяких варіантів користувацького збереження:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

