---
title: Konwertuj Word Na Excel w C++
second_title: Aspose.Words dla C++
articleTitle: Konwertuj dokument do programu Excel
linktitle: Konwertuj dokument do programu Excel
description: "Konwertuj PDF Na Excel, XML na Excel, DOCX Na Excel C++. Zapisz dokument w różnych formatach do XLSX za pomocą C++."
type: docs
weight: 15
url: /pl/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Konwersja dokumentów z jednego formatu na inny jest flagową funkcją Aspose.Words. Możesz konwertować dokumenty w dowolnym dostępnym formacie [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) również do formatu XLSX.

## Konwertuj dokument na XLSX

Konwersja dokumentu do XLSX jest dość skomplikowanym procesem. Aby zapisać dokument w formacie XLSX przy użyciu Aspose.Words, Użyj klasy **XlsxSaveOptions** i nowego elementu `Xlsx` w wyliczeniu [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Jak wspomniano powyżej, możesz zapisać dokument w dowolnym formacie obciążenia obsługiwanym przez Aspose.Words do XLSX.

Poniższy przykład kodu pokazuje, jak zapisać PDF do XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Znajdź i zamień podczas zapisywania do XLSX

Używając również Aspose.Words, Możesz znaleźć określony ciąg lub wyrażenie regularne w dokumencie i zastąpić go pasującym, którego potrzebujesz. Następnie możesz również zapisać wynik w formacie XLSX.

Poniższy przykład kodu pokazuje, jak wykonać operację znajdź i zamień oraz zapisać wynik w XLSX:

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

## Określ poziom kompresji podczas zapisywania do XLSX

Możesz także określić poziom kompresji podczas zapisywania za pomocą właściwości **CompressionLevel**.

Poniższy przykład kodu pokazuje, jak określić poziom kompresji podczas zapisywania w formacie XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Zobacz także

- Sekcja dokumentacji [Chroń lub Szyfruj dokument](/words/cpp/protect-or-encrypt-a-document/) aby uzyskać więcej informacji na temat ochrony i szyfrowania dokumentu
- Artykuł [Znajdź i zamień](/words/cpp/find-and-replace/) aby uzyskać więcej informacji na temat wyszukiwania i zastępowania żądanej treści
