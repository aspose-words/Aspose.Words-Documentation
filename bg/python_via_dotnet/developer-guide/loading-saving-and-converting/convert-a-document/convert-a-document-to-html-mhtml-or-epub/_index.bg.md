---
title: Конвертиране на документа в HTML
second_title: Aspose.Words вместо Python via .NET
articleTitle: Конвертиране на документ в HTML, MHTML или EPUB
linktitle: Конвертиране на документ в HTML, MHTML или EPUB
description: "Конвертиране на документ от почти всеки формат към HTML или MHTML, както и към EPUB формат чрез използване на Python. Можете също така да посочите опции за запис за управление на изходния документ."
type: docs
weight: 20
url: /bg/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Документи в HTML и MHTML формати са също много популярни и могат да се използват на всяка уеб платформа. Поради тази причина конвертирането на документи в HTML и MHTML е важна характеристика на Aspose.Words.

EPUB (кратко за "Електронна публикация") е HTML-базиран формат, който често се използва за електронно разпространение на книги. Този формат е напълно поддържан в Aspose.Words за износ на електронни книги, които са съвместими с повечето устройства за четене.

## Конвертиране на документ

За просто преобразуване в HTML, MHTML или EPUB, един от [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод претоварване се използва. Можете да запишете документа във файл или поток и изрично да зададете формата за запис на изходния документ или да го дефинирате от разширението на името на файла.

Следният пример показва как да конвертирате DOCX да HTML с посочване на формат за запис:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

За да конвертирате документ в MHTML или EPUB, използвайте [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) или [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) съответно.

## Конвертиране на документ с информация за Round-trip

HTML форматът не поддържа много Microsoft Word функции и ако трябва да възстановим модел на документ възможно най-близо до оригинала, трябва да запазим допълнителна информация в HTML файла. Тази информация също се нарича "информация за пътуване в кръг." За тази цел, Aspose.Words осигурява възможност за експортиране на информация за кръгла обиколка при спестяване към HTML, MHTML или EPUB с помощта на **износ_roundtrip_информация** собственост. Запазването на информацията за обиколката позволява да се възстановят свойствата на документите, като например раздели, коментари, заглавни части, и footers по време на зареждане на документите на изброените формати обратно в a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Възразявам.

По подразбиране стойността е *True* за HTML и *False* за MHTML и EPUB:

- Кога *True*, информацията се изнася като - ав - * CSS свойства на съответните HTML елементи
- Кога *False*, няма информация, която да бъде получена в произведени файлове

Следният пример с код показва как да се експортира информация с кръгла стъпка при конвертиране на документ от DOCX в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Посочване на настройките при преобразуване в HTML

Aspose.Words позволява конвертиране на Word документ в HTML чрез използване на опции по подразбиране или по поръчка. Няколко примера за потребителски опции за запис са описани по-долу.

### Посочете папка за запазване на ресурси

Използване Aspose.Words можем да посочим физическа папка, където всички ресурси, като изображения, шрифтове и външни CSS, се съхраняват, когато документ се преобразува в HTML. По подразбиране, това е празен низ.

Определяне на [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Имотът е най-простият начин да зададете папка, където всички ресурси трябва да бъдат написани. Можем да използваме индивидуални свойства, като [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) което запазва шрифтове в посочената папка и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) което запазва изображения в определена папка. Когато е определен относителен път, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) както и [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) се отнасят до папката, в която е разположен кодовият монтаж, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) както и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) се отнасят до изходната папка, където се намира HTML документ.

В този пример, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) посочва относителния път. Този път се отнася до изходната папка, където се записва HTML документ. Стойността на [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) имот се използва за създаване на URL адреси за всички ресурси.

Следният пример за код показва как да работите с тези свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Използване на [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) имот, можем също така да посочим името на папката, използвана за изграждане на URIs на всички ресурси, написани в HTML документ. Това е най-лесният начин да се уточни как URI трябва да се генерира за всички файлове с ресурси. Същата информация може да се посочи за изображения и шрифтове поотделно чрез [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) както и [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) свойства, съответно.

Няма обаче индивидуално имущество за CSS. поведението на [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) както и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) имотите не се променят. Имайте предвид, че [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) Имотът се използва както за определяне на името на папката, така и за името на файла.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) има по-нисък приоритет от посочените през [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), както и [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Ако папката е посочена в [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) не съществува, той ще бъде създаден автоматично.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) има по-нисък приоритет от [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) както и [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Ако [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) е празна, стойността на [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) Имотът ще се използва за създаване на ресурс URIs. Ако [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) е настроена на "." (точка), ресурс URIs ще съдържа само имена на файлове, без да се посочва пътя.

### Export Base64 Encoding Fonts Resources

Aspose.Words дава възможност да се уточни дали ресурсите на шрифта следва да бъдат вградени в HTML в базовите кодировки. За да извършите това, използвайте [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) Недвижими имоти Това е продължение на [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) собственост. По подразбиране стойността му е *False*, и шрифтовете са написани в отделни файлове. Но ако тази опция е зададена *True*, шрифтовете ще бъдат вградени в CSS на документа в Base64 кодиране. На [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) Имотът засяга само HTML формат и не засяга EPUB и MHTML.

Следният пример за код показва как да експортирате Base64 кодирани шрифтове в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Посочване на настройките при преобразуване в EPUB

Aspose.Words позволява конвертиране на Word документ във формат EPUB чрез опции по подразбиране или по поръчка. Можете да посочите няколко опции чрез преминаване на случай на [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) до [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод.

Следният пример за код показва как да конвертирате Word документ в EPUB с посочване на някои опции за запис по поръчка:

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

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

