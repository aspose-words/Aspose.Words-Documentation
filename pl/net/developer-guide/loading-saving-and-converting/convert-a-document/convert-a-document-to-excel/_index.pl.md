---
title: Konwertuj Word na Excel w C#
second_title: Aspose.Words dla .NET
articleTitle: Konwertuj dokument do formatu Excel
linktitle: Konwertuj dokument do formatu Excel
description: "Konwertuj pliki PDF na Excel, XML na Excel, DOCX na Excel C#. Zapisz dokument w różnych formatach w formacie XLSX za pomocą C#."
type: docs
weight: 15
url: /pl/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Konwersja dokumentów z jednego formatu na inny jest flagową funkcją Aspose.Words. Możesz konwertować dokumenty w dowolnym dostępnym formacie [wczytaj format](https://reference.aspose.com/words/net/aspose.words/loadformat/) również do formatu XLSX.

## Konwertuj dokument na XLSX

Konwersja dokumentu do formatu XLSX jest dość skomplikowanym procesem. Aby zapisać dokument w formacie XLSX przy użyciu Aspose.Words, użyj klasy [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) i nowego elementu `Xlsx` w wyliczeniu [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Jak wspomniano powyżej, możesz zapisać dokument w dowolnym formacie ładowania obsługiwanym przez Aspose.Words do XLSX.

Poniższy przykład kodu pokazuje, jak zapisać plik PDF w formacie XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu w formacie XLSX. Opcje te można określić za pomocą klasy [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), zawierającej właściwości określające sposób wyświetlania wyniku XLSX.

{{% /alert %}}

## Znajdź i zamień podczas zapisywania w formacie XLSX

Używając również Aspose.Words, możesz znaleźć konkretny ciąg lub wyrażenie regularne w swoim dokumencie i zastąpić je pasującym, którego potrzebujesz. Następnie możesz również zapisać wynik w formacie XLSX.

Poniższy przykład kodu pokazuje, jak wykonać operację wyszukiwania i zamiany oraz zapisać wynik w pliku XLSX:

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

## Określ poziom kompresji podczas zapisywania w formacie XLSX

Możesz także określić poziom kompresji podczas zapisywania, korzystając z właściwości [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

Poniższy przykład kodu pokazuje, jak określić poziom kompresji podczas zapisywania w formacie XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Zobacz też

- Sekcja Dokumentacja [Chroń lub zaszyfruj dokument](/words/pl/net/protect-or-encrypt-a-document/) zawiera więcej informacji na temat ochrony i szyfrowania dokumentu
- Artykuł [Znajdź i zamień](/words/pl/net/find-and-replace/) zawiera więcej informacji na temat wyszukiwania i zastępowania żądanej zawartości
