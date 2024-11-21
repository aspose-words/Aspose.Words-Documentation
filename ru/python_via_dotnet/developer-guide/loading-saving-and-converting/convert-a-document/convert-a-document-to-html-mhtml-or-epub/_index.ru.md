---
title: Преобразовать документ в HTML
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование документа в HTML, MHTML или EPUB
linktitle: Преобразование документа в HTML, MHTML или EPUB
description: "Преобразование документа практически из любого формата в HTML или MHTML, а также в формат EPUB с использованием Python. Вы также можете указать варианты сохранения для управления выходным документом."
type: docs
weight: 20
url: /ru/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Документы в форматах HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной особенностью. Aspose.Words.

EPUB (сокращение от "Электронная публикация") - это формат на основе HTML, обычно используемый для распространения электронных книг. Данный формат полностью поддерживается в Aspose.Words Экспорт электронных книг, совместимых с большинством устройств чтения.

## Преобразовать документ

Для простого преобразования в HTML, MHTML или EPUB [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) Используется метод перегрузок. Вы можете сохранить документ в файл или поток и явно установить формат сохранения выходного документа или определить его из расширения имени файла.

Следующий пример показывает, как конвертировать DOCX в HTML с указанием формата сохранения:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Чтобы конвертировать документ в MHTML или EPUB, используйте [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) или [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) соответственно.

## Преобразуйте документ с информацией о кругосветном пути

HTML-формат не поддерживает многих Microsoft Word Если нам нужно восстановить модель документа как можно ближе к оригиналу, нам нужно сохранить дополнительную информацию в HTML-файле. Такую информацию еще называют "информацией круглого пути". Для этой цели, Aspose.Words предоставляет возможность экспортировать информацию в оба конца при сохранении в HTML, MHTML или EPUB с использованием **Export_roundtrip_информация** собственность. Сохранение информации в оба конца позволяет восстановить свойства документа, такие как вкладки, комментарии, заголовки и нижние колонтитулы во время загрузки документов перечисленных форматов обратно в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект.

Значение по умолчанию является *True* для HTML и *False* для MHTML и EPUB:

- Когда *True*, информация в оба конца экспортируется как - aw - * CSS свойства соответствующих элементов HTML
- Когда *False*, нет информации о кругообороте, которая должна быть выведена в созданные файлы

Следующий пример кода показывает, как экспортировать информацию в оба конца при преобразовании документа из DOCX в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при конвертации в HTML

Aspose.Words позволяет конвертировать документ Word в HTML, используя опции сохранения по умолчанию или на заказ. Несколько примеров пользовательских вариантов сохранения описаны ниже.

### Укажите папку для экономии ресурсов

Использовать Aspose.Words Мы можем указать физическую папку, где все ресурсы, такие как изображения, шрифты и внешний CSS, сохраняются при преобразовании документа в HTML. По умолчанию это пустая строка.

Определяя [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Собственность - это самый простой способ установить папку, где должны быть написаны все ресурсы. Можно использовать индивидуальные свойства, такие как: [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) который сохраняет шрифты в указанной папке и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) который сохраняет изображения в указанную папку. Когда определен относительный путь, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) ссылаться на папку, где находится сборка кода, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) Обратитесь к выходной папке, где находится HTML-документ.

В этом примере, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Укажите относительный путь. Этот путь относится к выходной папке, где сохраняется HTML-документ. Значение этого [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) Собственность используется для создания URL-адресов для всех ресурсов.

Следующий пример кода показывает, как работать с этими свойствами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Используя [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) Собственность, мы также можем указать название папки, используемой для построения URI всех ресурсов, записанных в HTML-документ. Это самый простой способ определить, как должны быть созданы URI для всех файлов ресурсов. Та же информация может быть указана для изображений и шрифтов отдельно. [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) и [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) свойств соответственно.

Отдельного имущества для CSS нет. Поведение этого [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) Свойства не меняются. Обратите внимание, что [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) Собственность используется как для указания имени папки, так и имени файла.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) имеет меньший приоритет, чем папки, указанные через [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Если папка указана в [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Не существует, он будет создан автоматически.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) имеет более низкий приоритет, чем [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) и [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Если [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) Он пуст, ценность его [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Собственность будет использоваться для создания ресурса URI. Если [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) Настроен на "." (точка), ресурс URI будет содержать только имена файлов без указания пути.

### Экспортная база 64 Ресурсы кодирования шрифтов

Aspose.Words Это дает возможность определить, должны ли ресурсы шрифта быть встроены в HTML в кодировке Base64. Чтобы сделать это, используйте [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) Собственность – это расширение [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) собственность. По умолчанию его ценность *False*, Шрифты пишутся в отдельные файлы. Но если этот вариант будет *True*, Шрифты будут встроены в CSS документа в кодировке Base64. The [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) Свойство влияет только на формат HTML и не влияет на EPUB и MHTML.

Следующий пример кода показывает, как экспортировать шрифты с кодом Base64 в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Укажите параметры сохранения при конвертации в EPUB

Aspose.Words позволяет конвертировать документ Word в формат EPUB с использованием опций сохранения по умолчанию или на заказ. Вы можете указать несколько вариантов, передав пример [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) к [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод.

Следующий пример кода показывает, как конвертировать документ Word в EPUB с указанием некоторых пользовательских опций сохранения:

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

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

