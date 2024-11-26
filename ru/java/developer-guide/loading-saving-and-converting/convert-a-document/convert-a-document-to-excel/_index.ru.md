---
title: Преобразовать Word в Excel за Java
second_title: Aspose.Words для Java
articleTitle: Преобразование документа в Excel
linktitle: Преобразование документа в Excel
description: "Преобразуйте PDF в Excel, XML в Excel, DOCX в Excel Java. Сохраните документ в различных форматах в XLSX, используя Java."
type: docs
weight: 15
url: /ru/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Преобразование документов из одного формата в другой является основной функцией Aspose.Words. Вы также можете конвертировать документы из любого доступного формата [формат загрузки](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) в формат XLSX.

## Преобразовать документ в XLSX

Преобразование документа в формат XLSX - довольно сложный процесс. Чтобы сохранить документ в формате XLSX с помощью Aspose.Words, используйте класс [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) и новый элемент `Xlsx` в перечислении [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом параметрами от Aspose.Words до XLSX.

В следующем примере кода показано, как сохранить значение PDF в значение XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в виде XLSX. Эти параметры можно задать с помощью класса [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), содержащего свойства, которые определяют, как будет отображаться результат XLSX.

{{% /alert %}}

## Поиск и замена при сохранении в XLSX

Также, используя Aspose.Words, вы можете найти определенную строку или регулярное выражение в вашем документе и заменить их на подходящее вам. Затем вы также можете сохранить результат в формате XLSX.

В следующем примере кода показано, как выполнить операцию поиска и замены и сохранить результат в XLSX:

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

## Укажите уровень сжатия при сохранении в XLSX

Вы также можете указать уровень сжатия при сохранении, используя свойство [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

В следующем примере кода показано, как указать уровень сжатия при сохранении в формате XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Смотрите также

- Раздел документации [Защита или шифрование документа](/words/java/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найдите и замените](/words/java/find-and-replace/) для получения дополнительной информации о поиске и замене нужного вам контента
