---
title: Преобразование Word в Excel на C++
second_title: Aspose.Words для C++
articleTitle: Преобразование документа в Excel
linktitle: Преобразование документа в Excel
description: "Конвертируйте PDF в Excel, XML в Excel, DOCX в Excel C++. Сохраняйте документы в различных форматах в XLSX с помощью C++."
type: docs
weight: 15
url: /ru/cpp/convert-a-document-to-excel/
---

Преобразование документов из одного формата в другой является основной функцией Aspose.Words. Вы можете конвертировать документы в любом доступном формате [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/), а также в формат XLSX.

## Преобразование документа в формат XLSX

Преобразование документа в формат XLSX - довольно сложный процесс. Чтобы сохранить документ в формате XLSX с помощью Aspose.Words, используйте класс **XlsxSaveOptions** и новый элемент `Xlsx` в перечислении [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом Aspose.Words, в XLSX.

В следующем примере кода показано, как сохранить PDF в формате XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Поиск и замена при сохранении в XLSX

Также, используя Aspose.Words, вы можете найти определенную строку или регулярное выражение в вашем документе и заменить их на подходящее вам. Затем вы также можете сохранить результат в формате XLSX.

В следующем примере кода показано, как выполнить операцию поиска и замены и сохранить результат в XLSX:

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

## Укажите уровень сжатия при сохранении в XLSX

Вы также можете указать уровень сжатия при сохранении, используя свойство **CompressionLevel**.

В следующем примере кода показано, как указать уровень сжатия при сохранении в формат XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Смотрите также

- Раздел документации [Защита или шифрование документа](/words/cpp/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найдите и замените](/words/cpp/find-and-replace/) для получения дополнительной информации о поиске и замене нужного вам контента
