---
title: Преобразуване на дума в Excel в C#
second_title: Aspose.Words вместо .NET
articleTitle: Конвертиране на документ в Excel
linktitle: Конвертиране на документ в Excel
description: "Конвертиране на PDF в Excel, XML в Excel, DOCX в Excel C#. Запис на документ в различни формати за XLSX чрез C#."
type: docs
weight: 15
url: /bg/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Преобразуването на документи от един формат в друг е водещата характеристика на Aspose.Words. Можете да конвертирате документи във всички налични [формат на натоварване](https://reference.aspose.com/words/net/aspose.words/loadformat/) също и за XLSX формат.

## Конвертиране на документ към XLSX

Конвертиране на документ към XLSX е доста сложен процес. За да запазите документа си във формат XLSX, като използвате <span notrans="<span notrans=" Aspose.Words"=""></span>,"> да използвате [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) класа и новото `Xlsx` елемент в [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) Изброяване. Както бе споменато по-горе, можете да запишете документа във всеки формат на зареждане, поддържан от Aspose.Words към XLSX.

Следният пример за код показва как да запишете PDF на XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Понякога е необходимо да се определят допълнителни опции, които могат да повлияят на резултата от запазване на документ като XLSX. Тези опции могат да бъдат посочени чрез използването на [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) клас, съдържащ свойства, които определят как ще бъде показан изходът XLSX.

{{% /alert %}}

## Търсене и замяна при запис в XLSX

Употреба също Aspose.Words, Можете да намерите конкретен низ или регулярен израз в документа си и да го замените със съответния, от който се нуждаете. След това можете да запишете резултата в XLSX формат.

Следният пример за код показва как да се извърши намирането и подмяната на операцията и да се запази резултатът на XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Посочете нивото на компресиране при запис в XLSX

Можете също така да посочите нивото на компресия при спестяване с помощта на [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) собственост.

Следният пример за код показва как да се определи нивото на компресия при запис във формат XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Вижте също

- раздел документация [Защита или шифроване на документ](/words/bg/net/protect-or-encrypt-a-document/) за повече информация относно защитата и криптирането на документ
- Статията. [Търсене и замяна](/words/bg/net/find-and-replace/) за повече информация за намиране и замяна на съдържанието, което искате
