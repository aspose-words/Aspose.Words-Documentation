---
title: Преобразование Word в Excel Python
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать документ в Excel
linktitle: Преобразовать документ в Excel
description: "Преобразование PDF в Excel, XML в Excel, DOCX в Excel Python. Сохранить документ в различных форматах для XLSX Python."
type: docs
weight: 15
url: /ru/python-net/convert-a-document-to-excel/
---

Преобразование документов из одного формата в другой является флагманской особенностью Aspose.Words. Вы можете конвертировать документы в любой доступный [формат загрузки](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) Также в формате XLSX.

## Преобразование документа в XLSX

Преобразование документа в XLSX является довольно сложным процессом. Сохранить документ в формате XLSX <p notrans="<p notrans=" Aspose.Words"=""></p>"> использовать [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) Класс и новый `Xlsx` элемент в [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) перечисление. Как упоминалось выше, вы можете сохранить документ в любом формате загрузки, поддерживаемом Aspose.Words для XLSX.

Следующий пример кода показывает, как сохранить PDF в XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Иногда необходимо указать дополнительные опции, которые могут повлиять на результат сохранения документа в виде XLSX. Эти варианты могут быть определены с помощью [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) класс, содержащий свойства, определяющие, как будет отображаться выход XLSX.

{{% /alert %}}

## Найти и заменить при экономии на XLSX

Также использовать Aspose.Words, Вы можете найти определенную строку или регулярное выражение в вашем документе и заменить его соответствующей строкой. Вы также можете сохранить результат в формате XLSX.

Следующий пример кода показывает, как выполнить поиск и замену операции и сохранить результат в XLSX:

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

## Укажите уровень сжатия при экономии на XLSX

Вы также можете указать уровень сжатия при сохранении с помощью [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) собственность.

Следующий пример кода показывает, как указать уровень сжатия при сохранении в формате XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Смотрите также

- Раздел документации [Защитить или зашифровать документ](/words/ru/python-net/protect-or-encrypt-a-document/) для получения дополнительной информации о защите и шифровании документа
- Статья [Найти и заменить](/words/ru/python-net/find-and-replace/) для получения дополнительной информации о поиске и замене контента, который вы хотите
