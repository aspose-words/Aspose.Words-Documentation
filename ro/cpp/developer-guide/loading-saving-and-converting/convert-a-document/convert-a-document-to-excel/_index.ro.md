---
title: Convertiți Word în Excel în C++
second_title: Aspose.Words pentru C++
articleTitle: Conversia unui Document în Excel
linktitle: Conversia unui Document în Excel
description: "Convertiți PDF în Excel, XML în Excel, DOCX în Excel C++. Salvați un document în diferite formate în XLSX Folosind C++."
type: docs
weight: 15
url: /ro/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Conversia documentelor dintr-un format în altul este caracteristica emblematică a Aspose.Words. Puteți converti documente în orice [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) disponibil, de asemenea, în format XLSX.

## Conversia unui Document în XLSX

Conversia unui document în XLSX este un proces destul de complicat. Pentru a salva documentul în format XLSX folosind Aspose.Words, Utilizați clasa **XlsxSaveOptions** și noul element `Xlsx` din enumerarea [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). După cum sa menționat mai sus, puteți salva documentul în orice format de încărcare acceptat de Aspose.Words la XLSX.

Următorul exemplu de cod arată cum să salvați PDF în XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Găsiți și înlocuiți când salvați în XLSX

De asemenea, folosind Aspose.Words, Puteți găsi un șir specific sau o expresie regulată în documentul dvs. și o puteți înlocui cu cea potrivită de care aveți nevoie. Apoi, puteți salva rezultatul în format XLSX.

Următorul exemplu de cod arată cum să efectuați operația de găsire și înlocuire și să salvați rezultatul la XLSX:

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

## Specificați nivelul de compresie la salvarea în XLSX

De asemenea, puteți specifica nivelul de compresie atunci când salvați folosind proprietatea **CompressionLevel**.

Următorul exemplu de cod arată cum să specificați nivelul de compresie la salvarea în format XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vezi Și

- Secțiunea Documentație [Protejarea sau criptarea unui Document](/words/cpp/protect-or-encrypt-a-document/) pentru mai multe informații despre protejarea și criptarea unui document
- Articolul [Găsiți și înlocuiți](/words/cpp/find-and-replace/) pentru mai multe informații despre găsirea și înlocuirea conținutului dorit
