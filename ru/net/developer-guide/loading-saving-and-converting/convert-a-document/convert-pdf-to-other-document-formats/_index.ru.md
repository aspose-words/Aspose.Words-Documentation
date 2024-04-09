---
title: Преобразование PDF в другие форматы документов C#
second_title: Aspose.Words для .NET
articleTitle: Преобразование PDF в другие форматы документов
linktitle: Преобразование PDF в другие форматы документов
type: docs
description: "Преобразование PDF в форматы Word, такие как DOCX, DOC, форматы изображений, такие как JPG или PNG, или любые другие форматы, поддерживаемые Aspose.Words использовать C#."
keywords: convert pdf to other formats c#
weight: 45
url: /ru/net/convert-pdf-to-other-document-formats/
---

Aspose.Words Можно загрузить даже такой сложный формат, как PDF. Это открывает новые возможности: можно конвертировать PDF в Word или другие форматы, которые значительно опережают пользователей в решении многих прикладных задач.

## Предпосылки

* Добавлена ссылка на Aspose.Words пакет ***ИЛИ***для Aspose.Words.Pdf2Word.dll
* По крайней мере .NET Framework 4.6.1 или .NET Standard 2.0. Цели как .NET Core 2.x или 3.0, .NET 5 и Xamarin Также поддерживается совместимость с .NET Standard.

## Преобразование PDF в различные форматы {#convert-pdf-to-other-formats}

Наиболее популярным преобразованием из PDF является преобразование в Microsoft Word форматы, такие как DOCX, DOC, а также форматы изображений, такие как JPG или PNG. При этом преобразование документа из одного формата в другой выполняется знакомым образом.

Следующий пример кода показывает, как конвертировать документ из PDF в DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Укажите параметры загрузки при импорте PDF {#specify-load-options-when-importing-pdf}

Aspose.Words Предоставляет вам [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) Класс, который позволяет более точно контролировать загрузку PDF-документов.

Большинство свойств наследуют или перегружают свойства, которые уже существуют. `LoadOptions` класс. Помимо них, для формата PDF указан ряд свойств. Например, вы можете использовать [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) и [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) свойства для определения диапазона страниц, загружаемых из документа PDF, и [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) Свойства для контроля того, следует ли пропускать изображения при загрузке PDF. Другим поддерживаемым параметром является [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), которые должны быть предусмотрены [защищенные паролем документы](/words/net/protect-documents-and-parts-of-documents/).

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

## Будущие особенности {#planned-features}

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
|  `FileLoadException`               |  PDF-файл не может быть обработан по какой-либо причине.<br/>{{% alert color="primary" %}}Вы можете сообщить об этом команде разработчиков для детального расследования, используя [Техническая поддержка](/words/ru/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  PDF-файл защищен Adobe DRM и не может быть декодирован Pdf2Word |
|  `PasswordProtectedFileException`  |  Правильный пароль должен быть предоставлен для защищенного паролем PDF |

## Смотрите также

* [Nuget ссылка на Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

