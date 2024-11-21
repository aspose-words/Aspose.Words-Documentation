---
title: Lucrează cu Text într-o Tabelă
second_title: Aspose.Words pentru .NET
articleTitle: Lucrează cu Text într-o Tabelă
linktitle: Lucrează cu Text într-o Tabelă
description: "Înlocuiește text într-o tabelă în C#. Extrage text simplu din tabel sau celulă folosind C#."
type: docs
weight: 60
url: /ro/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

După cum am menționat în articolele anterioare, o masă conține de obicei text simplu, deși alte conținuturi, cum ar fi imagini sau chiar alte tabele pot fi amplasate în celulele sale.

Adăugarea textului sau a altor conținuturi în tabel se realizează folosind metodele corespunzătoare din clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) și este descrisă în articolul **"Crea o masă"**. În acest articol vom vorbi despre cum să lucrăm cu text într-o masă existentă.

## Înlocuiește text într-o tabelă

"Tabelul, ca orice alt nod în Aspose.Words, are acces la obiectul [Range](https://reference.aspose.com/words/net/aspose.words/range/)." Folosind obiectul de interval de tabelă poți înlocui text într-un tabel.

Capacitatea de a folosi caractere speciale atunci când înlocuieşti este momentan acceptată, astfel încât este posibil să înlocuieşti textul existent cu text cu mai multe paragrafe. Pentru a face asta, trebuie să folosești caracterele speciale descrise în metoda corespunzătoare [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/).

{{% alert color="primary" %}}

Tipic, înlocuirea textului ar trebui să fie făcută la nivelul celulei (per celulă) sau la nivelul paragrafelor.

{{% /alert %}}

Exemplul de cod de mai jos arată cum să înlocuiți toate instanțele unei șiruri de caractere în celulele unui întreg tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Extrăge text simplu din tabel sau celulă

Folosind obiectul **Range**, poți apela și metode pe întregul domeniu de tabele și să extragi tabelul ca text simplu. Pentru a face asta, foloseşte proprietatea [Text](https://reference.aspose.com/words/net/aspose.words/range/text/)

Exemplul următor de cod arată cum se tipărește domeniul unui tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

aceeași tehnică este folosită pentru a extrage conținut din celulele de masă individuală doar.

Exemplul următor de cod arată cum se poate imprima o gamă de elemente de rând și tabel:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## "Lucrul cu text alternativ de tabel"

Cele Microsoft Word tabele au o `table title` și o `table description` care oferă o reprezentare alternativă textuală a informației conținute în tabel.

În Aspose.Words, poți să adaugi și un titlu de tabel și o descriere folosind proprietățile [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) și [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/). Aceste proprietăți sunt semnificative pentru documentele DOCX care respectă standardul ISO/IEC 29500 Când se salvează în format înainte de ISO/IEC 29500, aceste proprietăți sunt ignorate.

Exemplul următor de cod arată cum se setează proprietățile titlului și descrierii unei tabele:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
