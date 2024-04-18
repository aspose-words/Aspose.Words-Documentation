---
title: Перетворення PDF в інші формати документів C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення PDF в інші формати документів
linktitle: Перетворення PDF в інші формати документів
type: docs
description: "Перетворення PDF у формати Word, такі як DOCX, DOC, формати зображень, такі як JPG або PNG, або будь-які інші формати, що підтримуються Aspose.Words використання C#й"
keywords: convert pdf to other formats c#
weight: 45
url: /uk/net/convert-pdf-to-other-document-formats/
---

Aspose.Words може завантажити навіть такий комплексний формат як PDF. Це відкриває нові можливості: можливість конвертувати PDF в Word або інші формати, які доводять користувачів перед вирішенням багатьох прикладних задач.

## Вимоги

* Додано посилання Aspose.Words Пакети ***ОР*** до Aspose.Words.Pdf2Word.dll.
* Ім'я * Як мінімум .NET Framework 4.6.1 або .NET Standard 2.0. Цілі, як .NET Core 2.х або 3.0, .NET 5, і Xamarin також підтримується сумісністю з .NET Standardй

## Перетворення PDF в різні формати {#convert-pdf-to-other-formats}

Найпопулярніші перетворення з PDF Microsoft Word Формати, такі як DOCX, DOC, а також формати зображень, такі як JPG або PNG. З цією заявкою перетворюйте документ з одного формату в інший спосіб виконує.

Приклад наступного коду показує, як перетворити документ з PDF в DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Вкажіть параметри навантаження при імпорті PDF {#specify-load-options-when-importing-pdf}

Aspose.Words Ви з [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) клас, який дозволяє більш точний контроль над завантаженням документів PDF.

Більшість властивостей успадкування або перевантаження, які вже існують в `LoadOptions` клас. Додатково до них вказано ряд властивостей для формату PDF. Наприклад, можна використовувати [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) і [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) властивості, щоб визначити діапазон сторінок, який буде завантажений з документа PDF, і [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) властивості для контролю, чи зображення повинні бути пропущені при завантаженні PDF. Ще одним параметром підтримки є [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), які необхідно надати [захищено паролем документи](/words/net/protect-documents-and-parts-of-documents/)й

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

## Особливості майбутнього {#planned-features}

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
|  `FileLoadException`               |  Файл PDF не може бути оброблений для деяких причин.<br/>{{% alert color="primary" %}}Ви можете повідомити про проблему команди з розробки для детального розслідування [Технічна підтримка](/words/uk/net/technical-support/)й{{% /alert %}} |
|  `DrmProtectedFileException`       |  Файл PDF захищений Adobe DRM і не може бути вилучений Pdf2Word |
|  `PasswordProtectedFileException`  |  Для захищеного паролем PDF необхідно надати правильний пароль |

## Дивитися ще

* [Nuget посилання Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

