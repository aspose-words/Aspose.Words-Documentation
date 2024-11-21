---
title: Конвертиране на PDF в други формати на документи
second_title: Aspose.Words вместо Python via .NET
articleTitle: Конвертиране на PDF в други формати на документи
linktitle: Конвертиране на PDF в други формати на документи
type: docs
description: "Конвертиране на PDF в Word формати като DOCX, DOC, формати на изображения като JPG или PNG, или всякакви други формати, поддържани от Aspose с помощта на `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /bg/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words може да зареди дори такъв сложен формат като PDF. Това отваря нови възможности: възможно е да се превърне PDF в Word или други формати, които водят потребителите далеч напред в решаването на много приложни проблеми.

## Конвертиране на PDF в други формати {#convert-pdf-to-other-formats}

Най-популярното преобразуване от PDF е превръщането в Microsoft Word формати като DOCX, DOC, както и формати на изображения като JPG или PNG. С това каза, конвертирането на документ от един формат в друг изпълнява по познат начин.

Следният пример за код показва как да конвертирате документ от PDF в DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Посочете настройките за зареждане при импортиране на PDF {#specify-load-options-when-importing-pdf}

Aspose.Words Ви осигурява [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) клас, който позволява по-точен контрол върху начина на зареждане на PDF документите.

Повечето свойства наследяват или претоварване свойства, които вече съществуват в [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Клас. В допълнение към тях са посочени редица свойства за PDF формат. Например, можете да използвате [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) както и [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) свойства за определяне на обхвата на страницата, която ще бъде заредена от PDF документ, и [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) свойства за контрол дали изображенията трябва да се пропускат при зареждане на PDF. Друг поддържан параметър е [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), които трябва да бъдат предоставени за защитени с парола документи.

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

## Планирани функции {#planned-features}

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
|   *FileLoadException*               |  По някаква причина PDF файл не може да бъде обработен.<br/>{{% alert color="primary" %}}Можете да докладвате на екипа за развитие за подробно разследване, като използвате [Техническа поддръжка](/words/bg/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  PDF файл е защитен от Adobe DRM и не може да бъде декодиран от Pdf2Word |
|   *PasswordProtectedFileException*  |  Правилната парола трябва да бъде предоставена за защитена с парола PDF |


