---
title: Конвертиране на Word в ексел в C++
second_title: Aspose.Words за C++
articleTitle: Конвертиране на документ в Ексел
linktitle: Конвертиране на документ в Ексел
description: "Конвертирайте PDF в Ексел, XML в Ексел, DOCX в Ексел C++. Запишете документ в различни формати до XLSX, като използвате C++."
type: docs
weight: 15
url: /bg/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Конвертирането на документи от един формат в друг е водещата функция на Aspose.Words. Можете да конвертирате документи във всеки наличен [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) и във формат XLSX.

## Конвертиране на документ в XLSX

Превръщането на документ в XLSX е доста сложен процес. За да запазите документа си във формат XLSX, като използвате Aspose.Words, Използвайте класа **XlsxSaveOptions** и Новия `Xlsx` елемент в изброяването [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Както бе споменато по-горе, можете да запишете документа във всеки формат на натоварване, поддържан от Aspose.Words до XLSX.

Следващият пример за код показва как да запазите PDF до XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Търсене и заместване при запис до XLSX

Също така, използвайки Aspose.Words, можете да намерите определен низ или регулярен израз във вашия документ и да го заместите със съответстващия, от който се нуждаете. След това можете да запишете резултата във формат XLSX.

Следващият пример за код показва как да извършите операция за търсене и заместване и да запазите резултата до XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Задайте ниво на компресия при запис до XLSX

Можете също да зададете нивото на компресия, когато записвате, използвайки свойството **CompressionLevel**.

Следващият пример за код показва как да зададете нивото на компресия, когато записвате до XLSX формат:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Вижте Също

- Раздел документация [Защита или шифроване на документ](/words/cpp/protect-or-encrypt-a-document/) за повече информация относно защитата и криптирането на документ
- Статията [Намерете и заменете](/words/cpp/find-and-replace/) за повече информация относно намирането и замяната на съдържанието, което искате
