---
title: Конвертиране на документ в PDF в C++
second_title: Aspose.Words за C++
articleTitle: Конвертиране на документ в PDF
linktitle: Конвертиране на документ в PDF
description: "Конвертирайте документ в PDF, като използвате C++. Поддържат се различни входни формати, включително формати Word, OpenOffice, изображение и eBook."
type: docs
weight: 10
url: /bg/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Възможността за лесно и надеждно конвертиране на документи от един формат в друг е ключова характеристика на Aspose.Words. Един от най – популярните формати за конвертиране е PDF-формат с фиксирано оформление, който запазва оригиналния вид на документ по време на рендирането му на различни платформи. Терминът" рендиране " се използва в Aspose.Words, за да опише процеса на конвертиране на документ във файлов формат, който е номериран или има концепцията за страници.

## Конвертиране на документ Word в PDF {#convert-a-word-document-to-pdf}

Превръщането от Word в PDF е доста сложен процес, който изисква няколко етапа на изчисление. Aspose.Words Устройството за оформление имитира начина, по който работи устройството за оформление на страници Microsoft Word, правейки PDF изходните документи да изглеждат възможно най-близо до това, което можете да видите в Microsoft Word.

С Aspose.Words можете програмно да конвертирате документ от DOC или DOCX формат до PDF, без да използвате Microsoft офис. Тази статия обяснява как да извършите това преобразуване.

{{% alert color="primary" %}}

Имайте предвид, че броят на страниците в документ влияе върху времето за конвертиране.

{{% /alert %}}

### Конвертиране на DOCX или DOC до PDF {#converting-doc-or-docx-to-pdf}

Конвертирането от DOC или DOCX формат на документа във PDF формат във Aspose.Words е много лесно и може да се осъществи само с два реда код, които:

1. Заредете документа си в обект [Document](https://reference.aspose.com/words/cpp/aspose.words/document/), като използвате един от конструкторите му, като зададете името на документа с разширението му за формат.
1. Извикайте един от методите [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) на обекта **Document** и задайте желания изходен формат като PDF, като въведете име на файл с ".PDF " Разширение.

Следващият пример за код показва как да конвертирате документ от DOCX в PDF, като използвате метода `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Понякога е необходимо да зададете допълнителни опции, които могат да повлияят на резултата от записването на документ като PDF. Тези опции могат да бъдат зададени чрез използването на клас [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), съдържащ свойства, които определят как ще се показва изходът PDF.

Имайте предвид, че със същата техника можете да конвертирате всеки документ за форматиране на потока в PDF формат.

{{% /alert %}}

### Конвертиране в различни PDF стандарти {#converting-to-various-pdf-standards}

Aspose.Words осигурява изброяването [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) в подкрепа на превръщането на DOC или DOCX в различни PDF формат стандарти (като PDF 1.7, PDF 1.5, и т.н.).

Следващият пример за код показва как да конвертирате документ в PDF 1.7, като използвате [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) в съответствие с PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Конвертиране на изображения в PDF {#convert-an-image-to-pdf}

Конвертирането в PDF не е ограничено от Microsoft Word формати на документи. Всеки формат, поддържан от Aspose.Words, включително програмно създаден, също може да бъде преобразуван в PDF. Например, можем да конвертираме изображения от една страница, като JPEG, PNG, BMP, EMF, или WMF, както и изображения на няколко страници, като TIFF и GIF, до PDF.

Следващият пример за код показва как да конвертирате JPEG и TIFF изображения в PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

За да работи този код, трябва да добавите препратки към Aspose.Words и `System.Drawing` към вашия проект.

## Вижте Също

- Статията [Рендериране](/words/cpp/rendering/) за повече информация относно форматите на фиксираната страница и потока
- Статията [Конвертиране във формат на фиксирана страница](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) за повече информация относно оформлението на страницата
- Статията [Посочете опциите за рендиране при конвертиране в PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) за повече информация относно употребата на `PdfSaveOptions` клас
