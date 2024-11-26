---
title: Převést Word do Excelu v C++
second_title: Aspose.Words pro C++
articleTitle: Převod dokumentu do aplikace Excel
linktitle: Převod dokumentu do aplikace Excel
description: "Převeďte PDF do Excelu, XML do Excelu, DOCX do Excelu C++. Uložte dokument v různých formátech do XLSX pomocí C++."
type: docs
weight: 15
url: /cs/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Převod dokumentů z jednoho formátu do druhého je vlajkovou lodí funkce Aspose.Words. Dokumenty můžete převádět v libovolném dostupném formátu [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) také do formátu XLSX.

## Převod dokumentu na XLSX

Převod dokumentu na XLSX je poměrně komplikovaný proces. Chcete-li dokument uložit do formátu XLSX pomocí Aspose.Words, Použijte třídu **XlsxSaveOptions** a nový prvek `Xlsx` ve výčtu [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Jak bylo uvedeno výše, můžete dokument uložit v libovolném formátu načítání podporovaném Aspose.Words až XLSX.

Následující příklad kódu ukazuje, jak uložit PDF do XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Najít a nahradit při ukládání do XLSX

Také pomocí Aspose.Words můžete v dokumentu najít konkrétní řetězec nebo regulární výraz a nahradit jej odpovídajícím, který potřebujete. Poté můžete výsledek také uložit do formátu XLSX.

Následující příklad kódu ukazuje, jak provést operaci najít a nahradit a uložit výsledek do XLSX:

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

## Zadejte úroveň komprese při ukládání do XLSX

Můžete také určit úroveň komprese při ukládání pomocí vlastnosti **CompressionLevel**.

Následující příklad kódu ukazuje, jak určit úroveň komprese při ukládání do formátu XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vidět

- Sekce dokumentace [Ochrana nebo šifrování dokumentu](/words/cpp/protect-or-encrypt-a-document/) další informace o ochraně a šifrování dokumentu
- Článek [Najít a nahradit](/words/cpp/find-and-replace/) další informace o nalezení a nahrazení požadovaného obsahu
