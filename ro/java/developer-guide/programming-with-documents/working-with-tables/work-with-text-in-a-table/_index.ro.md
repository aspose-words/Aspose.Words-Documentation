---
title: Lucrați cu Text într-un tabel
second_title: Aspose.Words pentru Java
articleTitle: Lucrați cu Text într-un tabel
linktitle: Lucrați cu Text într-un tabel
description: "Înlocuiți textul dintr-un tabel în Java. Extrageți Text simplu din tabel sau celulă folosind Java."
type: docs
weight: 60
url: /ro/java/extract-text-from-and-replace-text-in-a-table/
---

După cum sa menționat în articolele anterioare, un tabel conține de obicei text simplu, deși alt conținut, cum ar fi imagini sau chiar alte tabele, poate fi plasat în celulele tabelului.

Adăugarea de text sau alt conținut în tabel se realizează folosind metodele adecvate ale clasei [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) și este descrisă în articolul **"Create a Table"**. În acest articol, vom vorbi despre cum să lucrați cu textul într-un tabel deja existent.

## Înlocuiți textul dintr-un tabel

Tabelul, ca orice alt nod din Aspose.Words, are acces la obiectul [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). Folosind obiectul table range, puteți înlocui textul dintr-un tabel.

Capacitatea de a utiliza caractere speciale la înlocuire este acceptată în prezent, astfel încât este posibil să înlocuiți textul existent cu text cu mai multe paragrafe. Pentru a face acest lucru, trebuie să utilizați metacaracterele speciale descrise în metoda [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) corespunzătoare.

{{% alert color="primary" %}}

De obicei, înlocuirea textului trebuie făcută la nivel de celulă (pe celulă) sau la nivel de paragraf.

{{% /alert %}}

Următorul exemplu de cod arată cum să înlocuiți toate instanțele unui șir de text în celulele unui întreg tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extrageți Text simplu dintr-un tabel

Folosind obiectul **Range**, Puteți, de asemenea, să apelați metode pe întregul interval de tabel și să extrageți tabelul ca text simplu. Pentru a face acest lucru, utilizați proprietatea [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

Următorul exemplu de cod arată cum să imprimați intervalul de text al unui tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Aceeași tehnică este utilizată pentru a extrage conținutul numai din celulele individuale ale tabelului.

Următorul exemplu de cod arată cum să imprimați o gamă de text de elemente de rând și tabel:

{{% /alert %}}

Următorul exemplu de cod arată cum să imprimați intervalul de text al elementelor rând și tabel.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Lucrul cu textul alternativ al tabelului

Microsoft Word tabelele au un `table title` și `table description` care oferă o reprezentare textuală alternativă a informațiilor conținute în tabel.

În Aspose.Words, Puteți adăuga, de asemenea, un titlu și o descriere a tabelului folosind proprietățile [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) și [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). Aceste proprietăți sunt semnificative pentru documentele DOCX conforme cuISO/IEC 29500. Când salvați în formate mai devreme decât ISO/IEC 29500, aceste proprietăți sunt ignorate.

Următorul exemplu de cod arată cum să setați proprietățile titlului și descrierii unui tabel:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}