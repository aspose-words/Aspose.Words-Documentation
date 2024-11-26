---
title: Конвертировать PDF в другие форматы документов
second_title: Aspose.Words для Python via .NET
articleTitle: Конвертировать PDF в другие форматы документов
linktitle: Конвертировать PDF в другие форматы документов
type: docs
description: "Преобразуйте PDF в форматы Word, такие как DOCX, DOC, графические форматы, такие как JPG или PNG, или в любые другие форматы, поддерживаемые Aspose, используя `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /ru/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words может загружать даже такой сложный формат, как PDF. Это открывает новые возможности: можно конвертировать PDF в Word или другие форматы, что значительно продвинет пользователей в решении многих прикладных задач.

## Конвертировать PDF в другие форматы {#convert-pdf-to-other-formats}

Наиболее популярным преобразованием из PDF является преобразование в форматы Microsoft Word, такие как DOCX, DOC, а также в графические форматы, такие как JPG или PNG. При этом преобразование документа из одного формата в другой выполняется привычным способом.

В следующем примере кода показано, как преобразовать документ из PDF в DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Укажите параметры загрузки при импорте PDF {#specify-load-options-when-importing-pdf}

Aspose.Words предоставляет вам класс [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), который позволяет более точно контролировать процесс загрузки документов PDF.

Большинство свойств наследуют или перегружают свойства, которые уже существуют в классе [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). В дополнение к ним для формата PDF задан ряд свойств. Например, вы можете использовать свойства [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) и [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) для определения диапазона страниц, которые будут загружены из документа PDF, а свойства [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) - для управления тем, следует ли пропускать изображения при загрузке PDF. Другим поддерживаемым параметром является [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), который должен быть указан для документов, защищенных паролем.

## Поддерживаемый PDF контент {#supported-pdf-content}

PDF2Word в настоящее время плагин поддерживает следующие типы данных:

* Текстовые абзацы
* Изображения
* Таблицы
* Списки
* Верхние и нижние колонтитулы
* Сноски
* Номера страниц
* Текст справа налево (с некоторыми ограничениями)
* Доступно для поиска PDFs (передние изображения будут удалены в пользу фонового текста)

## Планируемые объекты {#planned-features}

Некоторые функции все еще находятся на ранней стадии разработки или включены в дорожную карту разработки:

* Содержание
* OCR для объектов с возможностью поиска и без нее PDFs
* Отчет о ходе работы
* Текст с несколькими столбцами
* Математические формулы
* Дополнительные автоматические поля (помимо `PAGE` и NUMPAGES)

## PDF Загружать исключения

Во время преобразования документа PDF может произойти одно из следующих исключений:

| Исключение | Описание |
| -------------------------------- | ------------------------------------------------------------ |
| *FileLoadException* | По какой-то причине файл PDF не может быть обработан.<br />{{% alert color="primary" %}}Вы можете сообщить о проблеме группе разработчиков для детального изучения, используя [техническая поддержка](/words/python-net/technical-support/).{{% /alert %}} |
| *DrmProtectedFileException* | Файл PDF защищен Adobe DRM и не может быть декодирован с помощью Pdf2Word. |
| *PasswordProtectedFileException* | Для защищенного паролем PDF веб-сайта необходимо ввести правильный пароль. |


