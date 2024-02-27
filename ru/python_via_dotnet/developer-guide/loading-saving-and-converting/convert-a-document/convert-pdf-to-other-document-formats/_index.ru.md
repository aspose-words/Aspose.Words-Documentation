---
title: Конвертируйте PDF в другие форматы документов
second_title: Aspose.Words для Python via .NET
articleTitle: Конвертируйте PDF в другие форматы документов
linktitle: Конвертируйте PDF в другие форматы документов
type: docs
description: "Конвертируйте PDF в форматы Word, такие как DOCX, DOC, форматы изображений, такие как JPG или PNG, или любые другие форматы, поддерживаемые Aspose, с помощью `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /ru/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words может загрузить даже такой сложный формат, как PDF. Это открывает новые возможности: можно конвертировать PDF в Word или другие форматы, что выводит пользователей далеко вперед в решении многих прикладных задач.

## Конвертировать PDF в другие форматы {#convert-pdf-to-other-formats}

Самым популярным преобразованием из PDF является преобразование в форматы Microsoft Word, такие как DOCX, DOC, а также в форматы изображений, такие как JPG или PNG. При этом преобразование документа из одного формата в другой выполняется привычным способом.

В следующем примере кода показано, как преобразовать документ из PDF в DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Укажите параметры загрузки при импорте PDF {#specify-load-options-when-importing-pdf}

Aspose.Words предоставляет вам класс [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), который позволяет более точно контролировать загрузку PDF-документов.

Большинство свойств наследуют или перегружают свойства, которые уже существуют в классе [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Помимо них для формата PDF указан ряд свойств. Например, вы можете использовать свойства [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) и [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/), чтобы определить диапазон страниц, загружаемых из документа PDF, а свойства [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/), чтобы контролировать, следует ли пропускать изображения при загрузке PDF. Другой поддерживаемый параметр — [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), который необходимо указывать для документов, защищенных паролем.

## Поддерживаемый PDF-контент {#supported-pdf-content}

Плагин PDF2Word на данный момент поддерживает следующие типы данных:

* Текстовые абзацы
* Изображений
* Таблицы
* Списки
* Заголовки и колонтитулы
* Сноски
* Номера страниц
* Текст справа налево (с некоторыми ограничениями)
* PDF-файлы с возможностью поиска (передние изображения будут удалены в пользу фонового текста)

## Планируемые функции {#planned-features}

Некоторые функции все еще находятся на ранней стадии разработки или включены в план разработки:

* Оглавление
* OCR для PDF-файлов с возможностью поиска и без него
* Отчет о ходе работы
* Многоколоночный текст
* Математические формулы
* Больше автоматических полей (кроме `PAGE` и NUMPAGES)

## Исключения загрузки PDF-файлов

Во время преобразования PDF-документа может произойти одно из следующих исключений:

|  Исключение |  Описание |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  По какой-то причине PDF-файл не может быть обработан.<br /> {{% alert color="primary" %}}Вы можете сообщить о проблеме команде разработчиков для подробного изучения, используя номер [Техническая поддержка](/words/ru/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  PDF-файл защищен Adobe DRM и не может быть декодирован с помощью Pdf2Word |
|   *PasswordProtectedFileException*  |  Для PDF-файла, защищенного паролем, необходимо указать правильный пароль |


