---
title: Конвертируйте PDF в другие форматы документов в C#
second_title: Aspose.Words для .NET
articleTitle: Конвертируйте PDF в другие форматы документов
linktitle: Конвертируйте PDF в другие форматы документов
type: docs
description: "Преобразуйте PDF в форматы Word, такие как DOCX, DOC, форматы изображений, такие как JPG или PNG, или любые другие форматы, поддерживаемые Aspose.Words, с помощью C#."
keywords: convert pdf to other formats c#
weight: 45
url: /ru/net/convert-pdf-to-other-document-formats/
---

Aspose.Words может загрузить даже такой сложный формат, как PDF. Это открывает новые возможности: можно конвертировать PDF в Word или другие форматы, что выводит пользователей далеко вперед в решении многих прикладных задач.

## Предварительные условия

* Добавлена ссылка на пакет Aspose.Words ***ИЛИ*** в Aspose.Words.Pdf2Word.dll.
* Минимум .NET Framework 4.6.1 или .NET Standard 2.0. Такие цели, как .NET Core 2.x или 3.0, .NET 5 и Xamarin, также поддерживаются благодаря совместимости с .NET Standard.

## Конвертируйте PDF в различные форматы {#convert-pdf-to-other-formats}

Наиболее популярное преобразование из PDF — это преобразование в форматы Microsoft Word, такие как DOCX, DOC, а также в форматы изображений, такие как JPG или PNG. При этом преобразование документа из одного формата в другой выполняется привычным способом.

В следующем примере кода показано, как преобразовать документ из PDF в DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Укажите параметры загрузки при импорте PDF {#specify-load-options-when-importing-pdf}

Aspose.Words предоставляет вам класс [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/), который позволяет более точно контролировать загрузку PDF-документов.

Большинство свойств наследуют или перегружают свойства, которые уже существуют в классе `LoadOptions`. Помимо них для формата PDF указан ряд свойств. Например, вы можете использовать свойства [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) и [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/), чтобы определить диапазон страниц, которые будут загружаться из документа PDF, а свойства [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/), чтобы контролировать, следует ли пропускать изображения при загрузке PDF. Другой поддерживаемый параметр — [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), который необходимо указать для [документы, защищенные паролем](/words/net/protect-documents-and-parts-of-documents/).

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

## Будущие возможности {#planned-features}

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
|  `FileLoadException`               |  По какой-то причине PDF-файл не может быть обработан.<br /> {{% alert color="primary" %}}Вы можете сообщить о проблеме команде разработчиков для детального изучения, используя номер [Техническая поддержка](/words/ru/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  PDF-файл защищен Adobe DRM и не может быть декодирован с помощью Pdf2Word |
|  `PasswordProtectedFileException`  |  Для PDF-файла, защищенного паролем, необходимо указать правильный пароль |

## Смотрите также

* [Nuget ссылка на Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

