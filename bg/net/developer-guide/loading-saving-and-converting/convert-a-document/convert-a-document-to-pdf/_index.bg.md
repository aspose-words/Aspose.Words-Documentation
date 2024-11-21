---
title: Преобразуване на дума в PDF в C#
second_title: Aspose.Words вместо .NET
articleTitle: Конвертиране на документ в PDF
linktitle: Конвертиране на документ в PDF
description: "Конвертиране на документ в PDF чрез използване C#. Конвертиране на DOCX в PDF C#. Поддържат се различни входни формати, включително Word, OpenOffice, Image и eBook формати."
type: docs
weight: 10
url: /bg/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

Възможността за лесно и надеждно конвертиране на документи от един формат в друг е ключова характеристика на Aspose.Words. Един от най-популярните формати за конвертиране е PDF гол формат, който запазва първоначалния вид на документ по време на представянето му на различни платформи. Терминът "намаляване" се използва в Aspose.Words да опише процеса на преобразуване на документ във формат на файл, който е въплътен или има концепцията за страници.

## Конвертиране на документ с думи в PDF

Преобразуването от Word на PDF е доста сложен процес, който изисква няколко етапа на изчисление. Aspose.Words монтаж на двигателя имитира начина, по който Microsoft WordPDF документи изглежда възможно най-близо до това, което можете да видите Microsoft Word.

С Aspose.Words Можете програмно да конвертирате документ от Word формати, като DOC или DOCX, в PDF без да използвате Microsoft Офис. Тази статия обяснява как да се извърши това преобразуване.

{{% alert color="primary" %}}

Имайте предвид, че броят на страниците в документ засяга времето за преобразуване.

{{% /alert %}}

### Конвертиране на DOCX или DOC в PDF

Конвертиране от формата на DOC или DOCX документ във формат PDF в Aspose.Words е много лесно и може да се постигне само с два реда код, който:

1. Зареждане на вашия документ в [Document](https://reference.aspose.com/words/net/aspose.words/document/) обект с помощта на един от неговите конструктори, като се посочва името на документа с неговото разширение формат.
1. Призовете един от [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) методи за **Document** обект и зададете желания формат на изхода като PDF чрез въвеждане на име на файл с разширението PDF.

Следният пример за код показва как да конвертирате документ от DOCX в PDF с помощта на [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запазване на документ като PDF. Тези опции могат да бъдат посочени чрез използването на [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) клас, съдържащ свойства, които определят как ще бъде показан изходът от PDF.

Имайте предвид, че със същата техника можете да конвертирате всеки документ във формат PDF.

{{% /alert %}}

### Конвертиране към различен PDF Стандарти

Aspose.Words осигурява [PdfComplace](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)изброяване в подкрепа на превръщането на DOC или DOCX в различни PDF форматови стандарти (като PDF 1.7, PDF 1.5 и др.).

Следният пример за код показва как да се превърне документ в PDF 1.7 използване [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) с съответствие с PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Конвертиране на изображения в PDF

Преобразуването в PDF не е ограничено от Microsoft Word формат на документите. Формат, поддържан от Aspose.Words, включително програмно създаден, може да бъде преобразуван в PDF. Например, можем да конвертираме изображения на една страница, като JPEG, PNG, BMP, EMF или WMF, както и изображения на няколко страници, като TIFF и GIF, в PDF.

Следният пример за код показва как да конвертирате JPEG и TIFF изображения в PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

За да се получи този код, трябва да се добавят препратки към Aspose.Words както и `System.Drawing` за твоя проект.

## Намаляване на PDF Размер на изхода

Когато записвате в PDF, можете да посочите дали искате да оптимизирате изхода. За да направите това, трябва да настроите [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) флаг към true, и тогава излишните гнездища и празни платна ще бъдат премахнати, съседе. glyphS със същото форматиране ще се съедини.

Следният пример за код показва как да оптимизирате изхода:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Използване на **OptimizeOutput** свойството може да повлияе на точността на дисплея на съдържанието.

{{% /alert %}}

## Вижте също

- Статията. [Внасяне](/words/bg/net/rendering/) за повече информация относно форматите на фиксираната страница и на дебита
- Статията. [Преобразуване във формат с фиксирана страница](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) за повече информация на оформлението на страницата
- Статията. [Посочете настройките за прехвърляне при преобразуване в PDF](/words/bg/net/specify-rendering-options-when-converting-to-pdf/) за повече информация относно употребата на `PdfSaveOptions` клас
- Статията. [Учете характеристики на преобразуване на PDF/A и PDF/UA](/words/bg/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) описание на стандарта PDF и съответния стандарт ISO за поддръжка на PDF стандартите Aspose.Words
- Статията. [Кой PDF стандарт е по-добър за избор](/words/bg/net/which-pdf-standard-is-better-to-choose/) да определи кои PDF стандарти имат смисъл за кои случаи

- Статията. [Работа с PDF/A или PDF/UA](/words/bg/net/working-with-pdfa-or-pdfua/) описва изискванията за съдържанието на документа в PDF/A и PDF/UA формати, главно изискванията за структурата и шрифтовете

- Статията. [Предупреждение при достъп до PDF/A и PDF/UA](/words/bg/net/warnings-when-saving-to-pdfa-and-pdfua/) описва изискванията за достъпност на съдържанието PDF/A и PDF/UA
