---
title: Преобразуване на дума в Excel в Java
second_title: Aspose.Words вместо Java
articleTitle: Конвертиране на документ в Excel
linktitle: Конвертиране на документ в Excel
description: "Конвертиране на PDF в Excel, XML към Excel, DOX към Excel Java. Запис на документ в различни формати за XLSX чрез Java."
type: docs
weight: 15
url: /bg/java/convert-a-document-to-excel/
---

Конвертиране на документи от един формат в друг е водещата функция на Aspose.Words. Можете да конвертирате документи във всички налични [формат на натоварване](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) също и за XLSX формат.

## Конвертиране на документ към XLSX

Конвертиране на документ към XLSX е доста сложен процес. За да запазите документа си във формат XLSX, като използвате <span notrans="<span notrans=" Aspose.Words"=""></span>,"> да използвате [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) класа и новото `Xlsx` елемент в [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Изброяване. Както бе споменато по-горе, можете да запазите документа във всеки поддържан от Aspose.Words към XLX.

Следният пример с код показва как да запишете PDF на XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запазване на документ като XLSX. Тези опции могат да бъдат посочени чрез използването на [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) клас, съдържащ свойства, които определят как ще бъде показан изходът XLSX.

{{% /alert %}}

## Търсене и заместване при запис в XLSX

Използване също Aspose.Words, Можете да намерите конкретен низ или регулярен израз във Вашия документ и да го замените със съответния, от който се нуждаете. След това можете да запазите резултата в XLSX формат.

Следният пример за код показва как да се извърши намирането и подмяната на операцията и да се запази резултата на XLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Посочете нивото на компресиране при запис в XLSX

Можете също така да посочите нивото на компресия при спестяване с помощта на [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) собственост.

Следният пример за код показва как да се определи нивото на компресия при запис във формат XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Вижте също

- раздел документация [Защита или шифроване на документ](/words/bg/java/protect-or-encrypt-a-document/) за повече информация относно защитата и криптирането на документ
- Статията [Търсене и замяна](/words/bg/java/find-and-replace/) за повече информация за намиране и замяна на съдържанието, което искате
