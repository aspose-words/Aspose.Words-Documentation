---
title: Konwertuj Word na Excel w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwertuj dokument do formatu Excel
linktitle: Konwertuj dokument do formatu Excel
description: "Konwertuj pliki PDF na Excel, XML na Excel, DOCX na Excel Python. Zapisz dokument w różnych formatach w formacie XLSX za pomocą Python."
type: docs
weight: 15
url: /pl/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Konwersja dokumentów z jednego formatu na inny jest flagową funkcją Aspose.Words. Możesz konwertować dokumenty w dowolnym dostępnym formacie [wczytaj format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) również do formatu XLSX.

## Konwertuj dokument na XLSX

Konwersja dokumentu do formatu XLSX jest dość skomplikowanym procesem. Aby zapisać dokument w formacie XLSX przy użyciu Aspose.Words, użyj klasy [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) i nowego elementu `Xlsx` w wyliczeniu [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Jak wspomniano powyżej, możesz zapisać dokument w dowolnym formacie ładowania obsługiwanym przez Aspose.Words do XLSX.

Poniższy przykład kodu pokazuje, jak zapisać plik PDF w formacie XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu w formacie XLSX. Opcje te można określić za pomocą klasy [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), zawierającej właściwości określające sposób wyświetlania wyniku XLSX.

{{% /alert %}}

## Znajdź i zamień podczas zapisywania w formacie XLSX

Używając również Aspose.Words, możesz znaleźć konkretny ciąg lub wyrażenie regularne w swoim dokumencie i zastąpić je pasującym, którego potrzebujesz. Następnie możesz również zapisać wynik w formacie XLSX.

Poniższy przykład kodu pokazuje, jak wykonać operację wyszukiwania i zamiany oraz zapisać wynik w formacie XLSX:

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

## Określ poziom kompresji podczas zapisywania w formacie XLSX

Możesz także określić poziom kompresji podczas zapisywania, korzystając z właściwości [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

Poniższy przykład kodu pokazuje, jak określić poziom kompresji podczas zapisywania w formacie XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Zobacz też

- Sekcja Dokumentacja [Chroń lub zaszyfruj dokument](/words/pl/python-net/protect-or-encrypt-a-document/) zawiera więcej informacji na temat ochrony i szyfrowania dokumentu
- Artykuł [Znajdź i zamień](/words/pl/python-net/find-and-replace/) zawiera więcej informacji na temat wyszukiwania i zastępowania żądanej zawartości
