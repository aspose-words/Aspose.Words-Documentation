---
title: Przelicz Słowo do Excel w Java
second_title: Aspose.Words zamiast Java
articleTitle: Konwertuj dokument na Excel
linktitle: Konwertuj dokument na Excel
description: "Przelicz PDF na Excel, XML na Excel, DOCX na Excel Java. Zapisz dokument w różnych formatach do XLSX za pomocą Java."
type: docs
weight: 15
url: /pl/java/convert-a-document-to-excel/
---

Konwersja dokumentów z jednego formatu do innego jest flagową cechą Aspose.Words. Można przekonwertować dokumenty w dowolnym dostępnym [Format postępowania](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) również do formatu XLSX.

## Konwertuj dokument do XLSX

Konwersja dokumentu na XLSX jest raczej skomplikowanym procesem. Aby zapisać dokument do formatu XLSX za pomocą <span notrans="<span notrans=" Aspose.Words"=""></span>", > stosować [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) klasa i nowy `Xlsx` element [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) wyliczenie. Jak wspomniano powyżej, można zapisać dokument w dowolnym formacie obciążenia obsługiwanym przez Aspose.Words do XLSX.

Poniższy przykład kodu pokazuje jak zapisać PDF do XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu jako XLSX. Opcje te można określić za pomocą [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) klasa, zawierająca właściwości określające sposób wyświetlania wyjścia XLSX.

{{% /alert %}}

## Znajdź i zastąp podczas zapisywania na XLSX

Również przy użyciu Aspose.Words, w dokumencie możesz znaleźć określony ciąg znaków lub wyrażenie regularne i zastąpić je tym, którego potrzebujesz. Następnie można zapisać wynik do formatu XLSX.

Poniższy przykład kodu pokazuje jak wykonać operację wyszukiwania i wymiany i zapisać wynik do XLSX:

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

## Określ poziom kompresji podczas zapisywania do XLSX

Możesz również określić poziom kompresji podczas zapisywania przy użyciu [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) nieruchomości.

Poniższy przykład kodu pokazuje jak określić poziom kompresji podczas zapisywania do formatu XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Zobacz również

- Sekcja dokumentacji [Chronić lub zmienić dokument](/words/pl/java/protect-or-encrypt-a-document/) więcej informacji na temat ochrony i szyfrowania dokumentu
- Artykuł [Zmień i zastaw](/words/pl/java/find-and-replace/) więcej informacji na temat znajdowania i zastępowania treści, które chcesz
