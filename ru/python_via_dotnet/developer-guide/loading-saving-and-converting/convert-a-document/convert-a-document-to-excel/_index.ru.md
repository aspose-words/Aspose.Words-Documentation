---
title: Преобразовать Word в Excel за Python
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование документа в Excel
linktitle: Преобразование документа в Excel
description: "Преобразуйте PDF в Excel, XML в Excel, DOCX в Excel Python. Сохраните документ в различных форматах в XLSX, используя Python."
type: docs
weight: 15
url: /ru/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Преобразование документов из одного формата в другой является основной функцией Aspose.Words. Вы также можете конвертировать документы из любого доступного формата [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) в формат XLSX.

## Преобразовать документ в XLSX

Преобразование документа в формат XLSX - довольно сложный процесс. Чтобы сохранить документ в формате XLSX с помощью Aspose.Words, используйте класс [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) и новый элемент `Xlsx` в перечислении [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом параметрами от Aspose.Words до XLSX.

В следующем примере кода показано, как сохранить значение PDF в значение XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в виде XLSX. Эти параметры можно задать с помощью класса [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), содержащего свойства, которые определяют, как будет отображаться результат XLSX.

{{% /alert %}}

## Поиск и замена при сохранении в XLSX

Также, используя Aspose.Words, вы можете найти определенную строку или регулярное выражение в вашем документе и заменить их на подходящее вам. Затем вы также можете сохранить результат в формате XLSX.

В следующем примере кода показано, как выполнить операцию поиска и замены и сохранить результат в XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Укажите уровень сжатия при сохранении в XLSX

Вы также можете указать уровень сжатия при сохранении, используя свойство [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

В следующем примере кода показано, как указать уровень сжатия при сохранении в формате XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Смотрите также

- Раздел документации [Защита или шифрование документа](/words/python-net/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найдите и замените](/words/python-net/find-and-replace/) для получения дополнительной информации о поиске и замене нужного вам контента
