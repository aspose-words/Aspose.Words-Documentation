---
title: Конвертировать Word в Excel в C#
second_title: Aspose.Words на .NET
articleTitle: Преобразование документа в Excel
linktitle: Преобразование документа в Excel
description: "Конвертируйте PDF в Excel, XML в Excel, DOCX в Excel C#. Сохраните документ в различных форматах в XLSX, используя C#."
type: docs
weight: 15
url: /ru/net/convert-a-document-to-excel/
---

Преобразование документов из одного формата в другой — флагманская функция Aspose.Words. Вы можете конвертировать документы любого доступного формата [формат загрузки](https://reference.aspose.com/words/net/aspose.words/loadformat/), а также в формат XLSX.

## Преобразование документа в XLSX

Преобразование документа в XLSX — довольно сложный процесс. Чтобы сохранить документ в формате XLSX с использованием Aspose.Words, используйте класс [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) и новый элемент `Xlsx` в перечислении [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом Aspose.Words, в XLSX.

В следующем примере кода показано, как сохранить PDF в XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате XLSX. Эти параметры можно указать с помощью класса [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), содержащего свойства, определяющие способ отображения вывода XLSX.

{{% /alert %}}

## Найти и заменить при сохранении в XLSX

Также с помощью Aspose.Words вы можете найти в документе определенную строку или регулярное выражение и заменить ее на нужную вам. Затем вы также можете сохранить результат в формате XLSX.

В следующем примере кода показано, как выполнить операцию поиска и замены и сохранить результат в формате XLSX:

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

## Укажите уровень сжатия при сохранении в XLSX

Вы также можете указать уровень сжатия при сохранении, используя свойство [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

В следующем примере кода показано, как указать уровень сжатия при сохранении в формате XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Смотрите также

- Раздел документации [Защитите или зашифруйте документ](/words/ru/net/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найти и заменить](/words/ru/net/find-and-replace/) для получения дополнительной информации о поиске и замене нужного контента
