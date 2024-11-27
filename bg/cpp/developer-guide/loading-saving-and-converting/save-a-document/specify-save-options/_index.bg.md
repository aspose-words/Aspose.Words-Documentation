---
title: Посочете опциите за запис в C++
second_title: Aspose.Words за C++
articleTitle: Задаване На Опции За Запис
linktitle: Задаване На Опции За Запис
description: "По-точно контролирайте процеса на записване."
type: docs
weight: 10
url: /bg/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Когато записвате документ, можете да зададете някои разширени свойства. Aspose.Words ви предоставя [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) клас, който позволява по-прецизен контрол на процеса на записване. Има претоварвания на метода **Save**, които приемат а **SaveOptions** обект – той трябва да бъде обект от клас, произхождащ от клас **SaveOptions**. Всеки формат за записване има съответен клас, който съдържа опции за записване за този формат за записване, например има [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) за записване до PDF формат, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) за записване до Markdown формат или [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) за записване в изображение. Тази статия предоставя примери за работа с някои класове Опции, получени от **SaveOptions**.

Следващият пример за код показва как да зададете опциите за записване, преди да запишете документа в HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Статията описва няколко свойства, които можете да контролирате при записването на документ.

## Шифроване на документ с парола

Използвайте свойството **Password**, за да получите или зададете парола за криптиран документ. Използвайте свойството **Password** на съответния клас, за да работите с избрания формат на документа.

Например, когато записвате документ във формат DOC или DOT, използвайте свойството [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) на класа [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Следващият пример за код показва как да зададете парола за шифроване на документ, като използвате метода RC4 шифроване:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Когато записвате документ във формат ODT, използвайте свойството [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) на класа [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Следващият пример за код показва как да зареждате и запазвате OpenDocument криптирани с парола:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Не всички формати поддържат криптиране и използването на **Password** собственост.

## Показване На Известията За Напредъка На Запис На Документ

Aspose.Words предоставя възможност да използвате [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) свойството, за да получавате известия за напредъка на записването на документи.

Сега е на разположение при спестяване на DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, или TXT формати.

## Актуализиране на времето за създаване на документ

Aspose.Words предоставя възможност да използвате свойството [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/), за да получите или зададете датата на създаване на документа в UTC. Можете също да актуализирате тази стойност, преди да запишете, като използвате опцията [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Следващият пример за код показва как да актуализирате времето за създаване на документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Актуализиране На Последното Запазено Място За Настаняване

Aspose.Words дава възможност да се използва свойството [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/), за да се получи или зададе стойност, определяща дали свойството [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) се актуализира, преди да се запази.

Следният пример за код показва как да зададете това свойство и да запишете документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Запис на Черно-бяло изображение с един бит на пиксел формат

За да управлявате опциите за записване на изображения, се използва клас **ImageSaveOptions**. Например можете да използвате свойството [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/), за да зададете формата на пикселите за генерираните изображения. Моля, обърнете внимание, че пикселният формат на изходното изображение може да се различава от зададената стойност поради работата на GDI+.

Следният пример за код показва как да запишете Черно-бяло изображение с един бит на пиксел формат:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
