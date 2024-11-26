---
title: Convertiți Word în Excel în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Conversia unui Document în Excel
linktitle: Conversia unui Document în Excel
description: "Convertiți PDF în Excel, XML în Excel, DOCX în Excel Python. Salvați un document în diferite formate în XLSX folosind Python."
type: docs
weight: 15
url: /ro/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Conversia documentelor dintr-un format în altul este caracteristica emblematică a Aspose.Words. Puteți converti documente în orice [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) disponibil, de asemenea, în format XLSX.

## Conversia unui Document în XLSX

Conversia unui document în XLSX este un proces destul de complicat. Pentru a salva documentul în format XLSX folosind Aspose.Words, Utilizați clasa [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) și noul element `Xlsx` din enumerarea [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). După cum sa menționat mai sus, puteți salva documentul în orice format de încărcare acceptat de Aspose.Words la XLSX.

Următorul exemplu de cod arată cum să salvați PDF în XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document ca XLSX. Aceste opțiuni pot fi specificate prin utilizarea clasei [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea XLSX.

{{% /alert %}}

## Găsiți și înlocuiți când salvați în XLSX

De asemenea, folosind Aspose.Words, Puteți găsi un șir specific sau o expresie regulată în documentul dvs. și o puteți înlocui cu cea potrivită de care aveți nevoie. Apoi, puteți salva rezultatul în format XLSX.

Următorul exemplu de cod arată cum să efectuați operația de găsire și înlocuire și să salvați rezultatul la XLSX:

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

## Specificați nivelul de compresie la salvarea în XLSX

De asemenea, puteți specifica nivelul de compresie atunci când salvați folosind proprietatea [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

Următorul exemplu de cod arată cum să specificați nivelul de compresie la salvarea în format XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Vezi Și

- Secțiunea Documentație [Protejarea sau criptarea unui Document](/words/python-net/protect-or-encrypt-a-document/) pentru mai multe informații despre protejarea și criptarea unui document
- Articolul [Găsiți și înlocuiți](/words/python-net/find-and-replace/) pentru mai multe informații despre găsirea și înlocuirea conținutului dorit
