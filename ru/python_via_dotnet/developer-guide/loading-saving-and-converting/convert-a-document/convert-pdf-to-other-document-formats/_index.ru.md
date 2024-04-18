---
title: Преобразование PDF в другие форматы документов
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование PDF в другие форматы документов
linktitle: Преобразование PDF в другие форматы документов
type: docs
description: "Преобразование PDF в форматы Word, такие как DOCX, DOC, форматы изображений, такие как JPG или PNG, или любые другие форматы, поддерживаемые Aspose с использованием `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /ru/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words Можно загрузить даже такой сложный формат, как PDF. Это открывает новые возможности: можно конвертировать PDF в Word или другие форматы, которые значительно опережают пользователей в решении многих прикладных задач.

## Преобразование PDF в другие форматы {#convert-pdf-to-other-formats}

Наиболее популярным преобразованием из PDF является преобразование в Microsoft Word форматы, такие как DOCX, DOC, а также форматы изображений, такие как JPG или PNG. При этом преобразование документа из одного формата в другой выполняется знакомым образом.

Следующий пример кода показывает, как конвертировать документ из PDF в DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Укажите параметры загрузки при импорте PDF {#specify-load-options-when-importing-pdf}

Aspose.Words Предоставляет вам [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) Класс, который позволяет более точно контролировать загрузку PDF-документов.

Большинство свойств наследуют или перегружают свойства, которые уже существуют. [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) класс. Помимо них, для формата PDF указан ряд свойств. Например, вы можете использовать [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) и [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) свойства для определения диапазона страниц, загружаемых из документа PDF, и [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) Свойства для контроля того, следует ли пропускать изображения при загрузке PDF. Другим поддерживаемым параметром является [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), которые должны быть предоставлены для защищенных паролем документов.

## Поддерживаемый PDF Контент {#supported-pdf-content}

Плагин PDF2Word поддерживает следующие типы данных:

* Текстовые абзацы
* Изображения
* Таблицы
* Списки
* Заголовки и футеры
* Сноски
* Номер страницы
* Право-левый текст (с некоторыми ограничениями)
* Поисковые PDF-файлы (передние изображения будут удалены в пользу фонового текста)

## Планируемые особенности {#planned-features}

Некоторые функции все еще находятся на ранней стадии разработки или включены в дорожную карту развития:

* Таблица содержимого
* OCR для поисковых и непоисковых PDF-файлов
* Доклад о ходе работы
* Многоколонный текст
* Математические формулы
* Больше автоматических полей (кроме) `PAGE` и цифры

## PDF Исключения из нагрузки

Во время конвертации PDF-документа может произойти одно из следующих исключений:

|  Исключение |  Описание |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  PDF-файл не может быть обработан по какой-либо причине.<br/>{{% alert color="primary" %}}Вы можете сообщить об этом команде разработчиков для детального расследования, используя [Техническая поддержка](/words/ru/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  PDF-файл защищен Adobe DRM и не может быть декодирован Pdf2Word |
|   *PasswordProtectedFileException*  |  Правильный пароль должен быть предоставлен для защищенного паролем PDF |


