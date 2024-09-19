---
title: Conversia de la Word la Excel în C#
second_title: Aspose.Words pentru .NET
articleTitle: Converteste un document în Excel
linktitle: Converteste un document în Excel
description: "Converteste PDF in Excel, XML in Excel, DOCX in Excel C#. Salvați un document în diferite formate la XLSX folosind C#."
type: docs
weight: 15
url: /ro/net/convert-a-document-to-excel/
---

Conversia documentelor de la un format la altul este caracteristica principala a Aspose.Words. Puteți converti documente în orice [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) disponibil, de asemenea și în format XLSX.

## Converti un document în XLSX

Conversia unui document în format XLSX este un proces destul de complicat. Pentru a salva documentul în formatul .xlsx folosind Aspose.Words, folosiți clasa [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) și noul element `Xlsx` din enumerarea [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). După cum s-a menționat mai sus, puteți salva documentul în orice format încărcat suportat de Aspose.Words la XLSX.

Exemplul de cod următor arată cum să salvezi PDF în XLSX:

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "pdf-to-xlsx.cs" >}}

{{% alert color="primary" %}}

Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document ca fișier XLSX. Aceste opțiuni pot fi specificate prin utilizarea clasei [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea XLSX.

{{% /alert %}}

## Găsiți și înlocuiți la salvarea către XLSX

De asemenea, folosind Aspose.Words poți găsi o anumită șir sau expresie regulată în documentul tău și să îl înlocuiești cu cel care se potrivește cu nevoile tale. Atunci poţi să salvezi şi rezultatul în formatul XLSX.

Exemplul următor de cod arată cum să efectuați operațiunea de găsire și înlocuire și să salvați rezultatul într-un fișier XLSX:

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "find-replace-xlsx.cs" >}}

## Specificați nivelul de compresie la salvarea în XLSX

De asemenea, poți specifica nivelul de compresie când salvezi folosind proprietatea [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

Exemplul de cod de mai jos arată cum să specificaţi nivelul de compresie la salvarea în format XLSX:

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "compress-xlsx.cs" >}}

## Vedeți și

- Secţiunea de documentare [Protect or Encrypt a Document](/words/net/protect-or-encrypt-a-document/) pentru mai multe informaţii despre protejarea şi criptarea unui document
- Articolul [Find and Replace](/words/net/find-and-replace/) pentru mai multe informații despre găsirea și înlocuirea conținutului pe care doriți
