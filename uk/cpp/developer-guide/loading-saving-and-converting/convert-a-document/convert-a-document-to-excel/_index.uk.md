---
title: Перетворити Word в Excel на C++
second_title: Aspose.Words для C++
articleTitle: Перетворення документа в Excel
linktitle: Перетворення документа в Excel
description: "Перетворіть PDF в Excel, XML в Excel, DOCX в Excel C++. Збережіть документ у різних форматах у XLSX за допомогою C++."
type: docs
weight: 15
url: /uk/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Перетворення документів з одного формату в інший є основною функцією Aspose.Words. Ви також можете конвертувати документи з будь-якого доступного формату [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) у формат XLSX.

## Перетворити документ на XLSX

Перетворення документа у формат XLSX - досить складний процес. Щоб зберегти документ у форматі XLSX за допомогою Aspose.Words, Використовуйте клас **XlsxSaveOptions** та новий елемент `Xlsx` у списку [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Як згадувалося вище, ви можете зберегти документ у будь-якому форматі завантаження, підтримуваному параметрами від Aspose.Words до XLSX.

Наступний приклад коду показує, як зберегти значення PDF до значення XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Пошук і заміна при збереженні в XLSX

Крім того, використовуючи Aspose.Words, ви можете знайти певний рядок або регулярний вираз у своєму документі та замінити їх на відповідний для вас. Потім ви також можете зберегти результат у форматі XLSX.

Наступний приклад коду показує, як виконати операцію пошуку та заміни та зберегти результат у XLSX:

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

## Вкажіть рівень стиснення при збереженні в XLSX

Ви також можете вказати рівень стиснення при збереженні, використовуючи властивість **CompressionLevel**.

Наступний приклад коду показує, як вказати рівень стиснення при збереженні у форматі XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Дивіться також

- Розділ документації [Захист або шифрування документа](/words/cpp/protect-or-encrypt-a-document/) для отримання додаткової інформації про захист та шифрування документа
- Стаття [Знайдіть і замініть](/words/cpp/find-and-replace/) для отримання додаткової інформації про пошук і заміну потрібного вам контенту
