---
title: Преобразование Word в Excel C#
second_title: Aspose.Words для .NET
articleTitle: Преобразовать документ в Excel
linktitle: Преобразовать документ в Excel
description: "Преобразование PDF в Excel, XML в Excel, DOCX в Excel C#. Сохранить документ в различных форматах для XLSX C#."
type: docs
weight: 15
url: /ru/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Преобразование документов из одного формата в другой является флагманской особенностью Aspose.Words. Вы можете конвертировать документы в любой доступный [формат загрузки](https://reference.aspose.com/words/net/aspose.words/loadformat/) Также в формате XLSX.

## Преобразование документа в XLSX

Преобразование документа в XLSX является довольно сложным процессом. Сохранить документ в формате XLSX <p notrans="<p notrans=" Aspose.Words"=""></p>"> использовать [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) Класс и новый `Xlsx` элемент в [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) перечисление. Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом Aspose.Words для XLSX.

Следующий пример кода показывает, как сохранить PDF в XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в виде XLSX. Эти варианты могут быть определены с помощью [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) класс, содержащий свойства, определяющие, как будет отображаться выход XLSX.

{{% /alert %}}

## Найти и заменить при экономии на XLSX

Также использовать Aspose.Words, Вы можете найти определенную строку или регулярное выражение в вашем документе и заменить его соответствующей строкой. Вы также можете сохранить результат в формате XLSX.

Следующий пример кода показывает, как выполнить поиск и замену операции и сохранить результат в XLSX:

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

## Укажите уровень сжатия при экономии на XLSX

Вы также можете указать уровень сжатия при сохранении с помощью [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) собственность.

Следующий пример кода показывает, как указать уровень сжатия при сохранении в формате XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Смотрите также

- Раздел документации [Защитить или зашифровать документ](/words/ru/net/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найти и заменить](/words/ru/net/find-and-replace/) для получения дополнительной информации о поиске и замене контента, который вы хотите
