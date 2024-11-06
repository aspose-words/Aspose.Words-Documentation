---
title: Conversia unui Document în PDF în C++
second_title: Aspose.Words pentru C++
articleTitle: Conversia unui Document în PDF
linktitle: Conversia unui Document în PDF
description: "Convertiți un document în PDF folosind C++. Sunt acceptate diferite formate de intrare, inclusiv formatele Word, OpenOffice, Image și eBook."
type: docs
weight: 10
url: /ro/cpp/convert-a-document-to-pdf/
---

Capacitatea de a converti ușor și fiabil documente dintr-un format în altul este o caracteristică cheie a Aspose.Words. Unul dintre cele mai populare formate pentru conversie este PDF – un format cu aspect fix, care păstrează aspectul original al unui document în timpul redării sale pe diferite platforme. Termenul" rendering " este folosit în Aspose.Words pentru a descrie procesul de conversie a unui document într-un format de fișier care este paginat sau are conceptul de pagini.

## Conversia unui Document Word în PDF {#convert-a-word-document-to-pdf}

Conversia de la Word la PDF este un proces destul de complex care necesită mai multe etape de calcul. Aspose.Words motorul de aspect imită modul în care funcționează motorul de aspect al paginii Microsoft Word, făcând documentele de ieșire PDF să arate cât mai aproape posibil de ceea ce puteți vedea în Microsoft Word.

Cu Aspose.Words puteți converti programatic un document din formatul DOC sau DOCX în PDF fără a utiliza Microsoft Office. Acest articol explică modul de efectuare a acestei conversii.

{{% alert color="primary" %}}

Rețineți că numărul de pagini dintr-un document afectează timpul de conversie.

{{% /alert %}}

### Conversia DOCX sau DOC în PDF {#converting-doc-or-docx-to-pdf}

Conversia din formatul documentului DOC sau DOCX în formatul PDF în Aspose.Words este foarte ușoară și poate fi realizată cu doar două linii de cod care:

1. Încărcați documentul într-un obiect [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) folosind unul dintre constructorii săi, specificând numele documentului cu extensia sa de format.
1. Invocați una dintre metodele [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) pe obiectul **Document** și specificați formatul de ieșire dorit ca PDF introducând un nume de fișier cu ".PDF" Extensie.

Următorul exemplu de cod arată cum se convertește un document din DOCX în PDF folosind metoda `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document ca PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea PDF.

Rețineți că, cu aceeași tehnică, puteți converti orice document în format flow-layout în format PDF.

{{% /alert %}}

### Conversia la diferite PDF standarde {#converting-to-various-pdf-standards}

Aspose.Words oferă enumerarea [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) pentru a sprijini conversia DOC sau DOCX în diferite standarde de format PDF (cum ar fi PDF 1.7, PDF 1.5, etc.).

Următorul exemplu de cod demonstrează cum se convertește un document în PDF 1.7 folosind [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) Cu conformitate cu PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Conversia imaginilor în PDF {#convert-an-image-to-pdf}

Conversia în PDF nu este restricționată de formatele de documente Microsoft Word. Orice format acceptat de Aspose.Words, inclusiv creat programatic, poate fi, de asemenea, convertit în PDF. De exemplu, putem converti imagini cu o singură pagină, cum ar fi JPEG, PNG, BMP, EMF, sau WMF, precum și imagini cu mai multe pagini, cum ar fi TIFF și GIF, până la PDF.

Următorul exemplu de cod arată cum se convertesc imaginile JPEG și TIFF în PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Pentru ca acest cod să funcționeze, trebuie să adăugați referințe la Aspose.Words și `System.Drawing` la proiectul dvs.

## Vezi Și

- Articolul [Redare](/words/cpp/rendering/) pentru mai multe informații despre pagina fixă și formatele de aspect de flux
- Articolul [Conversia în format de pagină fixă](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pentru mai multe informații despre aspectul paginii
- Articolul [Specificați opțiunile De redare la conversia în PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) pentru mai multe informații despre utilizarea clasei `PdfSaveOptions`
