---
title: Конвертиране на PDF в други формати на документи в C#
second_title: Aspose.Words вместо .NET
articleTitle: Конвертиране на PDF в други формати на документи
linktitle: Конвертиране на PDF в други формати на документи
type: docs
description: "Конвертиране на PDF в Word формати като DOCX, DOC, образни формати като JPG или PNG, или всякакви други формати, поддържани от Aspose.Words приложение C#."
keywords: convert pdf to other formats c#
weight: 45
url: /bg/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words може да зареди дори такъв сложен формат като PDF. Това отваря нови възможности: възможно е да се превърне PDF в Word или други формати, които водят потребителите далеч напред в решаването на много приложни проблеми.

## Предпоставки

* Добавена препратка към Aspose.Words Опаковка ***OR*** to Aspose.Words.Pdf2Word.dll.
* Поне .NET Framework 4.6.1 или .NET Standard 2.0. Цели като .NET Core 2.x или 3.0, .NET 5, и Xamarin са подкрепени и чрез съвместимост с .NET Standard.

## Конвертиране на PDF в различни формати {#convert-pdf-to-other-formats}

Най-популярното преобразуване от PDF е превръщането в Microsoft Word формати като DOCX, DOC, както и формати на изображения като JPG или PNG. С това каза, конвертирането на документ от един формат в друг изпълнява по познат начин.

Следният пример за код показва как да конвертирате документ от PDF в DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Посочете настройките за зареждане при импортиране на PDF {#specify-load-options-when-importing-pdf}

Aspose.Words Ви осигурява [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) клас, който позволява по-точен контрол върху начина на зареждане на PDF документите.

Повечето свойства наследяват или претоварване свойства, които вече съществуват в `LoadOptions` Клас. В допълнение към тях са посочени редица свойства за PDF формат. Например, можете да използвате [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) както и [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) свойства за определяне на обхвата на страницата, която ще бъде заредена от PDF документ, и [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) свойства за контрол дали изображенията трябва да се пропускат при зареждане на PDF. Друг поддържан параметър е [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), които трябва да бъдат предвидени [документи, защитени с парола](/words/net/protect-documents-and-parts-of-documents/).

## Поддържан PDF Съдържание {#supported-pdf-content}

Приставката PDF2Word в момента поддържа следните типове данни:

* Текстови абзаци
* Снимки
* Таблици
* Списък
* Headers and footers
* Бележки под линия
* Номер на страница
* Отдясно-ляво текст (с някои ограничения)
* Търсене PDF (предни изображения ще бъдат премахнати в полза на фонов текст)

## Бъдещи функции {#planned-features}

Някои характеристики са все още в ранното развитие или включени в пътната карта за развитие:

* Съдържание
* OCR за търсене и търсене на PDFs
* Доклад за напредъка
* Multicolon текст
* Математически формули
* Още автоматични полета (освен `PAGE` и НУМ СТРАНИЦА)

## PDF Изключения от натоварването

При преобразуване на PDF документ може да се случи едно от следните изключения:

|  Изключение |  Описание |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  По някаква причина PDF файл не може да бъде обработен.<br/>{{% alert color="primary" %}}Можете да докладвате на екипа за развитие за подробно разследване, като използвате [Техническа поддръжка](/words/bg/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  PDF файл е защитен от Adobe DRM и не може да бъде декодиран от Pdf2Word |
|  `PasswordProtectedFileException`  |  Правилната парола трябва да бъде предоставена за защитена с парола PDF |

## Вижте също

* [Nuget препратка към Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

