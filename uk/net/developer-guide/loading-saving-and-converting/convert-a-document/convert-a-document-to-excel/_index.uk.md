---
title: Перетворення Word в Excel в C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення документа в Excel
linktitle: Перетворення документа в Excel
description: "Перетворення PDF в Excel, XML в Excel, DOCX в Excel C#й Зберегти документ у різних форматах до XLSX C#й"
type: docs
weight: 15
url: /uk/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Перетворення документів з одного формату в інший - це функція прапорця Aspose.Wordsй Ви можете конвертувати документи в будь-який доступ [Формат завантаження](https://reference.aspose.com/words/net/aspose.words/loadformat/) формат XLSX

## Перетворення документа в XLSX

Перетворення документа в XLSX є досить складним процесом. Для збереження вашого документа в формат XLSX Aspose.Words, > використовувати [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) клас і новий `Xlsx` елемент в [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) заохочення. Як зазначено вище, ви можете зберегти документ у будь-якому форматі завантаження, що підтримується Aspose.Words до XLSX.

Приклад коду показує, як зберегти PDF на XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа як XLSX. Ці параметри можна вказати за допомогою використання [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід XLSX.

{{% /alert %}}

## Знайти і замінити при ощадці XLSX

Також за допомогою Aspose.Words, Ви можете знайти конкретний рядок або регулярний вираз у вашому документі і замінити його з відповідним вам необхідним. Тоді ви також можете зберегти результат у форматі XLSX.

Приклад коду показує, як виконати пошук і заміну операції і зберегти результат XLSX:

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

## Вкажіть рівень стиснення при збереженні XLSX

Ви також можете вказати рівень стиснення при збереженні використання [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) майно.

Приклад коду показує, як визначити рівень стиснення при збереженні формату XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Дивитися ще

- Документація [Захист або шифрування документів](/words/uk/net/protect-or-encrypt-a-document/) для отримання додаткової інформації про захист та шифрування документа
- Статті [Знайти і замінити](/words/uk/net/find-and-replace/) для отримання більш детальної інформації про пошук та заміну вмісту, який ви хочете
