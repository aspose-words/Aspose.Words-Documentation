---
title: Перетворення Word в Excel в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення документа в Excel
linktitle: Перетворення документа в Excel
description: "Перетворення PDF в Excel, XML в Excel, DOCX в Excel Pythonй Зберегти документ у різних форматах до XLSX Pythonй"
type: docs
weight: 15
url: /uk/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Перетворення документів з одного формату в інший - це функція прапорця Aspose.Wordsй Ви можете конвертувати документи в будь-який доступ [Формат завантаження](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) формат XLSX

## Перетворення документа в XLSX

Перетворення документа в XLSX є досить складним процесом. Для збереження вашого документа в формат XLSX Aspose.Words, > використовувати [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) клас і новий `Xlsx` елемент в [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) заохочення. Як зазначено вище, ви можете зберегти документ у будь-якому форматі завантаження, що підтримується Aspose.Words до XLSX.

Приклад коду показує, як зберегти PDF на XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Іноді необхідно вказати додаткові параметри, які можуть вплинути на результат збереження документа як XLSX. Ці параметри можна вказати за допомогою використання [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) клас, що містить властивості, які визначають, як буде показано вихід XLSX.

{{% /alert %}}

## Знайти і замінити при ощадці XLSX

Також за допомогою Aspose.Words, Ви можете знайти конкретний рядок або регулярний вираз у вашому документі і замінити його з відповідним вам необхідним. Тоді ви також можете зберегти результат у форматі XLSX.

Приклад коду показує, як виконати пошук і заміну операції і зберегти результат XLSX:

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

## Вкажіть рівень стиснення при збереженні XLSX

Ви також можете вказати рівень стиснення при збереженні використання [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) майно.

Приклад коду показує, як визначити рівень стиснення при збереженні формату XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Дивитися ще

- Документація [Захист або шифрування документів](/words/uk/python-net/protect-or-encrypt-a-document/) для отримання додаткової інформації про захист та шифрування документа
- Статті [Знайти і замінити](/words/uk/python-net/find-and-replace/) для отримання більш детальної інформації про пошук та заміну вмісту, який ви хочете
