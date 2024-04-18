---
title: Конвертиране на документ в PDF в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Конвертиране на документ в PDF
linktitle: Конвертиране на документ в PDF
description: "Конвертиране на документ в PDF чрез използване Python. Поддържат се различни входни формати, включително Word, OpenOffice, Image и eBook формати."
type: docs
weight: 10
url: /bg/python-net/convert-a-document-to-pdf/
---

Възможността за лесно и надеждно конвертиране на документи от един формат в друг е ключова характеристика на Aspose.Words. Един от най-популярните формати за конвертиране е PDF гол формат, който запазва първоначалния вид на документ по време на представянето му на различни платформи. Терминът "намаляване" се използва в Aspose.Words да опише процеса на преобразуване на документ във формат на файл, който е въплътен или има концепцията за страници.

## Конвертиране на документ с думи в PDF {#convert-a-word-document-to-pdf}

Преобразуването от Word на PDF е доста сложен процес, който изисква няколко етапа на изчисление. Aspose.Words монтаж на двигателя имитира начина, по който Microsoft WordPDF документи изглежда възможно най-близо до това, което можете да видите Microsoft Word.

С Aspose.Words Можете програмно да конвертирате документ от Word формати, като DOC или DOCX, в PDF без да използвате Microsoft Офис. Тази статия обяснява как да се извърши това преобразуване.

{{% alert color="primary" %}}

Имайте предвид, че броят на страниците в документ засяга времето за преобразуване.

{{% /alert %}}

### Конвертиране на DOC или DOCX в PDF {#convert-doc-or-docx-to-pdf}

Конвертиране от формата на DOC или DOCX документ във формат PDF в Aspose.Words е много лесно и може да се постигне само с два реда код, който:

1. Зареждане на вашия документ в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) обект с помощта на един от неговите конструктори, като се посочва името на документа с неговото разширение формат.
1. Призовете един от [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) методи за [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) обект и зададете желания формат на изхода като PDF чрез въвеждане на име на файл с разширението PDF.

Следният пример за код показва как да конвертирате документ от DOCX в PDF с помощта на [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) метод:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запазване на документ като PDF. Тези опции могат да бъдат посочени чрез използването на [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас, съдържащ свойства, които определят как ще бъде показан изходът от PDF.

Имайте предвид, че със същата техника можете да конвертирате всеки документ във формат PDF.

{{% /alert %}}

### Конвертиране към различни PDF Стандарти {#convert-to-various-pdf-standards}

Aspose.Words осигурява [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) изброяване в подкрепа на превръщането на DOC или DOCX в различни PDF форматови стандарти (като PDF 1.7, PDF 1.5 и др.).

Следният пример за код показва как да се превърне документ в PDF 1.7 използване [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) при спазване на [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Конвертиране на изображения в PDF

Преобразуването в PDF не е ограничено от Microsoft Word формат на документите. Формат, поддържан от Aspose.Words, включително програмно създаден, може да бъде преобразуван в PDF. Например, можем да конвертираме изображения на една страница, като JPEG, PNG, BMP, EMF или WMF, както и изображения на няколко страници, като TIFF и GIF, в PDF.

Следният пример за код показва как да конвертирате JPEG и TIFF изображения в PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

За да се получи този код, трябва да се добавят препратки към Aspose.Words както и `aspose.pydrawing` за твоя проект.

## Намаляване на PDF Размер на изхода

Когато записвате в PDF, можете да посочите дали искате да оптимизирате изхода. За да направите това, трябва да настроите [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) флаг към true, и тогава излишните гнездища и празни платна ще бъдат премахнати, съседе. glyphS със същото форматиране ще се съедини.

{{% alert color="primary" %}}

Използване на **OptimizeOutput** свойството може да повлияе на точността на дисплея на съдържанието.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Намаляване на PDF Размер на изхода

Когато записвате в PDF, можете да посочите дали искате да оптимизирате изхода. За да направите това, трябва да настроите [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) флаг към true, и тогава излишните гнездища и празни платна ще бъдат премахнати, съседе. glyphS със същото форматиране ще се съедини.

{{% alert color="primary" %}}

Използване на **OptimizeOutput** свойството може да повлияе на точността на дисплея на съдържанието.

{{% /alert %}}

## Вижте също

- Статията. [Внасяне](/words/bg/python-net/rendering/) за повече информация относно форматите на фиксираната страница и на дебита
- Статията. [Преобразуване във формат с фиксирана страница](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) за повече информация на оформлението на страницата
- Статията. [Посочете настройките за прехвърляне при преобразуване в PDF](/words/bg/python-net/specify-rendering-options-when-converting-to-pdf/) за повече информация относно употребата на [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас
