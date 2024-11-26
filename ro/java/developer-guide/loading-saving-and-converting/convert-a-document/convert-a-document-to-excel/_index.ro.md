---
title: Convertiți Word în Excel în Java
second_title: Aspose.Words pentru Java
articleTitle: Conversia unui Document în Excel
linktitle: Conversia unui Document în Excel
description: "Convertiți PDF în Excel, XML în Excel, DOCX în Excel Java. Salvați un document în diferite formate în XLSX Folosind Java."
type: docs
weight: 15
url: /ro/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Conversia documentelor dintr-un format în altul este caracteristica emblematică a Aspose.Words. Puteți converti documente în orice [load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) disponibil, de asemenea, în format XLSX.

## Conversia unui Document în XLSX

Conversia unui document în XLSX este un proces destul de complicat. Pentru a salva documentul în format XLSX folosind Aspose.Words, Utilizați clasa [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) și noul element `Xlsx` din enumerarea [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). După cum sa menționat mai sus, puteți salva documentul în orice format de încărcare acceptat de Aspose.Words la XLSX.

Următorul exemplu de cod arată cum să salvați PDF în XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document ca XLSX. Aceste opțiuni pot fi specificate prin utilizarea clasei [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea XLSX.

{{% /alert %}}

## Găsiți și înlocuiți când salvați în XLSX

De asemenea, folosind Aspose.Words, Puteți găsi un șir specific sau o expresie regulată în documentul dvs. și o puteți înlocui cu cea potrivită de care aveți nevoie. Apoi, puteți salva rezultatul în format XLSX.

Următorul exemplu de cod arată cum să efectuați operația de găsire și înlocuire și să salvați rezultatul la XLSX:

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

## Specificați nivelul de compresie la salvarea în XLSX

De asemenea, puteți specifica nivelul de compresie atunci când salvați folosind proprietatea [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

Următorul exemplu de cod arată cum să specificați nivelul de compresie la salvarea în format XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vezi Și

- Secțiunea Documentație [Protejarea sau criptarea unui Document](/words/java/protect-or-encrypt-a-document/) pentru mai multe informații despre protejarea și criptarea unui document
- Articolul [Găsiți și înlocuiți](/words/java/find-and-replace/) pentru mai multe informații despre găsirea și înlocuirea conținutului dorit
