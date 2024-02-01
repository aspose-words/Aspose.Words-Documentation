---
title: Преобразование документа в HTML
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование документа в HTML, MHTML или EPUB
linktitle: Преобразование документа в HTML, MHTML или EPUB
description: "Конвертируйте документ практически из любого формата в HTML или MHTML, а также в формат EPUB с помощью Python. Вы также можете указать параметры сохранения для управления выходным документом."
type: docs
weight: 20
url: /ru/python-net/convert-a-document-to-html-mhtml-or-epub/
---

Документы в форматах потоковой компоновки HTML и MHTML также очень популярны и могут использоваться на любой веб-платформе. По этой причине преобразование документов в HTML и MHTML является важной функцией Aspose.Words.

EPUB (сокращение от "Электронная публикация") — это формат на основе HTML, обычно используемый для распространения электронных книг. Этот формат полностью поддерживается в Aspose.Words для экспорта электронных книг, совместимых с большинством устройств чтения.

## Преобразование документа

Для простого преобразования в HTML, MHTML или EPUB используется одна из перегрузок метода [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Вы можете сохранить документ в файл или поток и явно указать формат сохранения выходного документа или определить его по расширению имени файла.

В следующем примере показано, как преобразовать DOCX в HTML с указанием формата сохранения:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Чтобы преобразовать документ в MHTML или EPUB, используйте [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) или [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) соответственно.

## Преобразование документа с двусторонней информацией

Формат HTML не поддерживает многие функции Microsoft Word, и если нам нужно восстановить модель документа как можно ближе к оригиналу, нам необходимо сохранить некоторую дополнительную информацию в файле HTML. Такая информация также называется "информацией туда и обратно". Для этой цели Aspose.Words предоставляет возможность экспортировать информацию туда и обратно при сохранении в HTML, MHTML или EPUB с использованием свойства **Export_roundtrip_information**. Сохранение двусторонней информации позволяет восстановить свойства документа, такие как вкладки, комментарии, верхние и нижние колонтитулы, во время загрузки документов перечисленных форматов обратно в объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Значение по умолчанию — *True* для HTML и *False* для MHTML и EPUB:

- Если *True*, информация туда и обратно экспортируется как - aw - * свойства CSS соответствующих элементов HTML
- При значении *False* нет никакой информации о двустороннем пути для вывода в создаваемые файлы

В следующем примере кода показано, как экспортировать двустороннюю информацию при преобразовании документа из DOCX в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Укажите параметры сохранения при преобразовании в HTML

Aspose.Words позволяет конвертировать документ Word в HTML, используя параметры сохранения по умолчанию или пользовательские. Ниже описаны несколько примеров пользовательских вариантов сохранения.

### Укажите папку для сохранения ресурсов

Используя Aspose.Words, мы можем указать физическую папку, в которой сохраняются все ресурсы, такие как изображения, шрифты и внешний CSS, при преобразовании документа в HTML. По умолчанию это пустая строка.

Указание свойства [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) — это самый простой способ указать папку, в которую должны быть записаны все ресурсы. Мы можем использовать отдельные свойства, например [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), который сохраняет шрифты в указанную папку, и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), который сохраняет изображения в указанную папку. Если указан относительный путь, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) относятся к папке, в которой находится сборка кода, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) относятся к выходной папке, в которой находится HTML-документ.

В этом примере [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) указывает относительный путь. Этот путь относится к выходной папке, в которой сохраняется HTML-документ. Значение свойства [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) используется для создания URL-адресов для всех ресурсов.

В следующем примере кода показано, как работать с этими свойствами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Используя свойство [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), мы также можем указать имя папки, используемой для создания URI всех ресурсов, записанных в HTML-документ. Это самый простой способ указать, как URI должны генерироваться для всех файлов ресурсов. Эту же информацию можно указать для изображений и шрифтов отдельно через свойства [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) и [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) соответственно.

Однако для CSS не существует отдельного свойства. Поведение свойств [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) не изменилось. Обратите внимание, что свойство [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) используется как для указания имени папки, так и имени файла.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) имеет более низкий приоритет, чем папки, указанные в [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Если папка, указанная в [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/), не существует, она будет создана автоматически.
— [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) имеет более низкий приоритет, чем [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) и [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Если [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) пусто, значение свойства [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) будет использоваться для создания URI ресурсов. Если для [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) установлено значение "." (точка), URI ресурсов будут содержать только имена файлов без указания пути.

### Экспорт ресурсов шрифтов с кодировкой Base64

Aspose.Words предоставляет возможность указать, следует ли внедрять ресурсы шрифтов в HTML в кодировках Base64. Для этого используйте свойство [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) — это расширение свойства [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). По умолчанию его значение — *False*, а шрифты записываются в отдельные файлы. Но если для этого параметра установлено значение *True*, шрифты будут встроены в CSS документа в кодировке Base64. Свойство [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) влияет только на формат HTML и не влияет на EPUB и MHTML.

В следующем примере кода показано, как экспортировать шрифты в кодировке Base64 в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Укажите параметры сохранения при преобразовании в EPUB

Aspose.Words позволяет конвертировать документ Word в формат EPUB, используя параметры сохранения по умолчанию или пользовательские. Вы можете указать несколько параметров, передав экземпляр [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) методу [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

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

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

