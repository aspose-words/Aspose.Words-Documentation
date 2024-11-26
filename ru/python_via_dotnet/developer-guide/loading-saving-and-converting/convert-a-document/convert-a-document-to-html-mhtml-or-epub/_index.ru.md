---
title: Преобразовать документ в HTML
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразуйте документ в HTML, MHTML или EPUB
linktitle: Преобразуйте документ в HTML, MHTML или EPUB
description: "Преобразуйте документ практически из любого формата в HTML или MHTML, а также в формат EPUB, используя Python. Вы также можете указать параметры сохранения для управления выходным документом."
type: docs
weight: 20
url: /ru/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Документы в форматах flow-layout HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной функцией Aspose.Words.

EPUB (сокращение от "Электронная публикация") - это формат, основанный на HTML, который обычно используется для распространения электронных книг. Этот формат полностью поддерживается в Aspose.Words для экспорта электронных книг, совместимых с большинством устройств для чтения.

## Преобразование документа

Для простого преобразования в HTML, MHTML или EPUB используется одна из перегрузок метода [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Вы можете сохранить документ в файл или поток и явно задать формат сохранения выходного документа или определить его из расширения имени файла.

В следующем примере показано, как преобразовать DOCX в HTML с указанием формата сохранения:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Чтобы преобразовать документ в MHTML или EPUB, используйте [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) или [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) соответственно.

## Преобразование документа с информацией о возврате в оба конца

Формат HTML не поддерживает многие функции Microsoft Word, и если нам нужно восстановить модель документа, максимально приближенную к оригиналу, нам необходимо сохранить некоторую дополнительную информацию в файле HTML. Такая информация также называется "информацией о возврате". Для этой цели Aspose.Words предоставляет возможность экспортировать информацию о поездке в оба конца при сохранении в HTML, MHTML или EPUB с помощью свойства **export_roundtrip_information**. Сохранение обратной информации позволяет восстановить свойства документа, такие как вкладки, комментарии, верхние и нижние колонтитулы, при загрузке документов перечисленных форматов обратно в объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Значение по умолчанию равно *True* для HTML и *False* для MHTML и EPUB:

- При значении *True* информация о маршруте в оба конца экспортируется в виде - aw - * CSS свойств соответствующих элементов HTML
- При значении *False* нет информации о возврате в оба конца, которая должна быть выведена в созданные файлы

В следующем примере кода показано, как экспортировать информацию о доставке в оба конца при преобразовании документа из DOCX в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при преобразовании в HTML

Aspose.Words позволяет преобразовать документ Word в HTML, используя стандартные или пользовательские параметры сохранения. Ниже описано несколько примеров пользовательских параметров сохранения.

### Укажите папку для сохранения ресурсов

Используя Aspose.Words, мы можем указать физическую папку, в которую сохраняются все ресурсы, такие как изображения, шрифты и внешние CSS, при преобразовании документа в HTML. По умолчанию это пустая строка.

Указание свойства [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) - это самый простой способ указать папку, в которую должны быть записаны все ресурсы. Мы можем использовать отдельные свойства, такие как [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), которые сохраняют шрифты в указанную папку, и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), которые сохраняют изображения в указанную папку. Когда указан относительный путь, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) указывают на папку, в которой находится сборка кода, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) указывают на выходную папку, в которой находится документ HTML.

В этом примере [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) указывает относительный путь. Этот путь относится к выходной папке, в которой сохранен документ HTML. Значение свойства [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) используется для создания URLs для всех ресурсов.

В следующем примере кода показано, как работать с этими свойствами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Используя свойство [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), мы также можем указать имя папки, используемой для создания URIs всех ресурсов, записанных в документ HTML. Это самый простой способ указать, как URIs должно быть сгенерировано для всех файлов ресурсов. Та же информация может быть указана для изображений и шрифтов отдельно через свойства [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) и [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) соответственно.

Однако для CSS нет отдельного свойства. Поведение свойств [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) не изменено. Обратите внимание, что свойство [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) используется как для указания имени папки, так и для указания имени файла.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) имеет более низкий приоритет, чем папки, указанные с помощью [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Если папка, указанная с помощью [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/), не существует, она будет создана автоматически.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) имеет более низкий приоритет, чем [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) и [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Если значение [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) пусто, то для создания ресурса URIs будет использовано значение свойства [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/). Если для параметра [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) задано значение "." (точка), ресурс URIs будет содержать только имена файлов без указания пути.

### Экспорт ресурсов шрифтов в кодировке Base64

Aspose.Words предоставляет возможность указать, должны ли ресурсы шрифта быть встроены в HTML в кодировках Base64. Для выполнения этого используйте свойство [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – это расширение свойства [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). По умолчанию его значение равно *False*, и шрифты записываются в отдельные файлы. Но если для этого параметра установлено значение *True*, шрифты будут встроены в CSS документа в кодировке Base64. Свойство [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) влияет только на формат HTML и не влияет на EPUB и MHTML.

В следующем примере кода показано, как экспортировать шрифты в кодировке Base64 в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Укажите параметры сохранения при преобразовании в EPUB

Aspose.Words позволяет преобразовать документ Word в формат EPUB, используя стандартные или пользовательские параметры сохранения. Вы можете указать несколько параметров, передав экземпляр [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) методу [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

В следующем примере кода показано, как преобразовать документ Word в EPUB с указанием некоторых пользовательских параметров сохранения:

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

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

