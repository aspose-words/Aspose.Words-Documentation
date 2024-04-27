---
title: Конвертиране на документ в PDF в Java
second_title: Aspose.Words вместо Java
articleTitle: Конвертиране на документ в PDF
linktitle: Конвертиране на документ в PDF
description: "Конвертиране на документ в Word или друг поддържан формат в PDF, който запазва първоначалния вид на документ по време на представянето му на различни платформи, използвайки Java."
type: docs
weight: 10
url: /bg/java/convert-a-document-to-pdf/
---

Възможността лесно и надеждно да конвертирате документи от един формат в друг е ключова характеристика на Aspose.Words. Един от най-популярните формати за конвертиране е PDF гол формат, който запазва първоначалния вид на документ по време на представянето му на различни платформи. Терминът "намаляване" се използва в Aspose.Words да опише процеса на преобразуване на документ във формат на файл, който е въплътен или има концепцията за страници.

## Конвертиране на документ с думи в PDF {#convert-a-word-document-to-pdf}

Преобразуването от Word на PDF е доста сложен процес, който изисква няколко етапа на изчисление. Aspose.Words монтаж на двигателя имитира начина, по който Microsoft Word по-близо до това, което можете да видите Microsoft Word.

С Aspose.Words Можете програмно да конвертирате документ от формат DOC или DOCX в PDF без да използвате Microsoft Офисът. Тази статия обяснява как да се извърши това преобразуване.

{{% alert color="primary" %}}

Имайте предвид, че броят на страниците в документ засяга времето за преобразуване.

{{% /alert %}}

### Конвертиране на DOCX или DOC в PDF {#converting-doc-or-docx-to-pdf}

Преобразуване от DOC или DOCX формат на документ в PDF формат в Aspose.Words е много лесно и може да се постигне само с два реда код, който:

1. Зареждане на документа в a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) обект с помощта на един от неговите конструктори, като се посочва името на документа с неговото разширение формат.
1. Призовете един от [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) методи за **Document** обект и зададете желания формат на изхода като PDF чрез въвеждане на име на файл с разширението PDF.

Следният пример за код показва как да конвертирате документ от DOCX в PDF с помощта на `Save` метод:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запазване на документ като PDF. Тези опции могат да бъдат посочени чрез използването на [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) клас, съдържащ свойства, които определят как ще бъде показан изходът от PDF.

Имайте предвид, че със същата техника можете да конвертирате всеки документ във формат PDF.

{{% /alert %}}

### Конвертиране в различен PDF Стандарти {#converting-to-various-pdf-standards}

Aspose.Words осигурява [PdfComplace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)изброяване в подкрепа на преобразуването на DOC или DOCX в различни PDF форматови стандарти (като PDF 1.7, PDF 1.5 и др.).

Следният пример за код показва как да конвертирате документ в PDF 1.7 с помощта на [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) със съответствие с PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Конвертиране на изображения в PDF

Преобразуването в PDF не се ограничава от Microsoft Word формат на документите. Всеки формат, поддържан от Aspose.Words, включително програмично създаден, може да бъде преобразуван в PDF. Например, можем да конвертираме изображения на една страница, като JPEG, PNG, BMP, EMF или WMF, както и изображения на много страници, като TIFF и GIF, в PDF.

Следният пример за код показва как да конвертирате JPEG и TIFF изображения в PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

За да проработи този код, трябва да добавите препратки към Aspose.Words, Java.awt.image, and javax. imagio клас пакети за вашия проект.

## Намаляване на PDF Размер на изхода

При запис в PDF можете да посочите дали искате да оптимизирате изхода. За да направите това, трябва да настроите [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) флаг към true, и тогава излишните уплътнени платна и празни платна ще бъдат премахнати, съседе. glyphs със същото форматиране ще бъде конкатенирано.

Следният пример за код показва как да оптимизирате изхода:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Използване на **OptimizeOutput** свойството може да повлияе на точността на дисплея на съдържанието.

{{% /alert %}}

## Вижте също

- Статията [Нанасяне](/words/bg/java/rendering/) за повече информация относно форматите на фиксирана страница и на дебита
- Статията [Преобразуване във формат с фиксирана страница](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) за повече информация в оформлението на страницата
- Статията [Подобен на настройките при преображе в PDF](/words/bg/java/specify-rendering-options-when-converting-to-pdf/) за повече информация относно употребата на `PdfSaveOptions` клас
