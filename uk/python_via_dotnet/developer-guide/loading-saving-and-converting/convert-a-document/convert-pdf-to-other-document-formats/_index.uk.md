---
title: Перетворення PDF в інші формати документів
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення PDF в інші формати документів
linktitle: Перетворення PDF в інші формати документів
type: docs
description: "Перетворення PDF у формати Word, такі як DOCX, DOC, формати зображень, такі як JPG або PNG, або будь-які інші формати, які підтримуються Aspose, використовуючи `Python.Words`й"
keywords: convert pdf to other formats python
weight: 45
url: /uk/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words може завантажити навіть такий комплексний формат як PDF. Це відкриває нові можливості: можливість конвертувати PDF в Word або інші формати, які доводять користувачів перед вирішенням багатьох прикладних задач.

## Перетворення PDF в інші формати {#convert-pdf-to-other-formats}

Найпопулярніші перетворення з PDF Microsoft Word Формати, такі як DOCX, DOC, а також формати зображень, такі як JPG або PNG. З цією заявкою перетворюйте документ з одного формату в інший спосіб виконує.

Приклад наступного коду показує, як перетворити документ з PDF в DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Вкажіть параметри навантаження при імпорті PDF {#specify-load-options-when-importing-pdf}

Aspose.Words Ви з [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) клас, який дозволяє більш точний контроль над завантаженням документів PDF.

Більшість властивостей успадкування або перевантаження, які вже існують в [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) клас. Додатково до них вказано ряд властивостей для формату PDF. Наприклад, можна використовувати [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) і [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) властивості, щоб визначити діапазон сторінок, який буде завантажений з документа PDF, і [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) властивості для контролю, чи зображення повинні бути пропущені при завантаженні PDF. Ще одним параметром підтримки є [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), які необхідно надати для захищених паролем документів.

## Підтримка PDF Зміст {#supported-pdf-content}

Додаток PDF2Word наразі підтримує такі типи даних:

* Текстові пункти
* Зображення
* Столи
* Списки
* Заголовки та піддони
* Ноти
* Номер сторінки
* Право вліво текст (з деякими обмеженнями)
* Пошукові PDF-файли (передні зображення будуть видалені на користь фонового тексту)

## Плановані характеристики {#planned-features}

Деякі функції все ще в ранньому розвитку або включені в розробку Дорожньої карти:

* Зміст
* OCR для пошуку та непошукових PDF-файлів
* Звіт про прогрес
* Багатокольоровий текст
* Матові формули
* Більше автоматичних полів `PAGE` та NUMPAGES

## Українська Виняток навантаження

Під час конвертації PDF може статися:

|  Зареєструватися |  Опис |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  Файл PDF не може бути оброблений для деяких причин.<br/>{{% alert color="primary" %}}Ви можете повідомити про проблему команди з розробки для детального розслідування [Технічна підтримка](/words/uk/python-net/technical-support/)й{{% /alert %}} |
|   *DrmProtectedFileException*       |  Файл PDF захищений Adobe DRM і не може бути вилучений Pdf2Word |
|   *PasswordProtectedFileException*  |  Для захищеного паролем PDF необхідно надати правильний пароль |


