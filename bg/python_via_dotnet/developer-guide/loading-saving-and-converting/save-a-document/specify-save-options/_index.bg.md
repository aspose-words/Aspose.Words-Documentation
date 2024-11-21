---
title: Посочете настройките за запис в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Посочете настройките за запис
linktitle: Посочете настройките за запис
description: "По-точно контролирайте процеса на запис с помощта на Python."
type: docs
weight: 10
url: /bg/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Когато записвате документ, можете да зададете някои напреднали свойства. Aspose.Words Ви осигурява [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) клас, който позволява по-точен контрол на процеса на спасяване. Има претоварване на [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод, който приема [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) обект го трябва да бъде обект на клас, получен от [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) Клас. Всеки save формат има съответен клас, който притежава опции за запис за този save формат, например, има [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) за запис във формат PDF или [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) за спасяване на образ. Тази статия дава примери за работа с някои класове опции, получени от [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Следният пример за код показва как да зададете опциите за запис преди да запишете документа в HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Статията описва няколко свойства, които можете да контролирате при запазване на документ.

## Шифроване на документ С парола

Използвайте **парола** имот, за да получите или зададете парола за криптиран документ. Използвайте **парола** собственост на съответния клас за работа с избрания формат на документа.

Например при запис на документ в DOC или DOT формат, използвайте [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) собственост на [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) Клас.

Следният пример за код показва как да зададете парола за шифроване на документ чрез метода за криптиране RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

При запис на документ във формат Docx, използвайте [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) собственост на [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) Клас.

Следният пример с код показва как да заредите и запазите Docx кодиран с парола:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Не всички формати поддържат криптиране и използването на **парола** собственост.

## Обновяване на времето за създаване на документа

Aspose.Words дава възможност за използване на [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) собственост, за да получите или определите датата на създаване на документа по UTC. Можете също така да актуализирате тази стойност, преди да запишете използването на [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) вариант.

Следният пример с код показва как да се актуализира времето за създаване на документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Обновяване Последна запазена собственост

Aspose.Words дава възможност за използване на [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) имот, за да получите или да зададете стойност, определяща дали [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) Имотът се актуализира преди да се запази.

Следният пример с код показва как да зададете това свойство и да запазите документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Запис черно и бяло изображение с един бит на пиксел формат

За да контролирате опциите за запис на изображения, [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) Използва се клас. Например, можете да използвате [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) свойство за задаване на формат пиксел за генерираните изображения. Моля, имайте предвид, че формата на пиксела на изходното изображение може да се различава от зададената стойност поради работата на скиа.

Следният пример за код показва как да се запази черно и бяло изображение с един бит на пиксел формат:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
