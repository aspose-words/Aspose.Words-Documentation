---
title: Конвертировать Word в Excel в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование документа в Excel
linktitle: Преобразование документа в Excel
description: "Конвертируйте PDF в Excel, XML в Excel, DOCX в Excel Python. Сохраните документ в различных форматах в XLSX, используя Python."
type: docs
weight: 15
url: /ru/python-net/convert-a-document-to-excel/
---

Преобразование документов из одного формата в другой — флагманская функция Aspose.Words. Вы можете конвертировать документы любого доступного формата [формат загрузки](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), а также в формат XLSX.

## Преобразование документа в XLSX

Преобразование документа в XLSX — довольно сложный процесс. Чтобы сохранить документ в формате XLSX с использованием Aspose.Words, используйте класс [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) и новый элемент `Xlsx` в перечислении [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом Aspose.Words, в XLSX.

В следующем примере кода показано, как сохранить PDF в XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные параметры, которые могут повлиять на результат сохранения документа в формате XLSX. Эти параметры можно указать с помощью класса [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), содержащего свойства, определяющие способ отображения вывода XLSX.

{{% /alert %}}

## Найти и заменить при сохранении в XLSX

Также с помощью Aspose.Words вы можете найти в документе определенную строку или регулярное выражение и заменить ее на нужную вам. Затем вы также можете сохранить результат в формате XLSX.

В следующем примере кода показано, как выполнить операцию поиска и замены и сохранить результат в формате XLSX:

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

- Раздел документации [Защитите или зашифруйте документ](/words/ru/python-net/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найти и заменить](/words/ru/python-net/find-and-replace/) содержит дополнительную информацию о поиске и замене нужного контента
