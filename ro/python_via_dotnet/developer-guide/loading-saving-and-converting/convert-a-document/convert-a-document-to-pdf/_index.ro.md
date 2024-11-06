---
title: Conversia unui Document în PDF în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Conversia unui Document în PDF
linktitle: Conversia unui Document în PDF
description: "Convertiți un document în PDF folosind Python. Sunt acceptate diferite formate de intrare, inclusiv formatele Word, OpenOffice, Image și eBook."
type: docs
weight: 10
url: /ro/python-net/convert-a-document-to-pdf/
---

Capacitatea de a converti ușor și fiabil documente dintr-un format în altul este o caracteristică cheie a Aspose.Words. Unul dintre cele mai populare formate pentru conversie este PDF – un format cu aspect fix, care păstrează aspectul original al unui document în timpul redării sale pe diferite platforme. Termenul" rendering " este folosit în Aspose.Words pentru a descrie procesul de conversie a unui document într-un format de fișier care este paginat sau are conceptul de pagini.

## Conversia unui Document Word în PDF {#convert-a-word-document-to-pdf}

Conversia de la Word la PDF este un proces destul de complex care necesită mai multe etape de calcul. Aspose.Words motorul de aspect imită modul în care funcționează motorul de aspect al paginii Microsoft Word, făcând documentele de ieșire PDF să arate cât mai aproape posibil de ceea ce puteți vedea în Microsoft Word.

Cu Aspose.Words puteți converti programatic un document din formate Word, cum ar fi DOC sau DOCX, în PDF fără a utiliza Microsoft Office. Acest articol explică modul de efectuare a acestei conversii.

{{% alert color="primary" %}}

Rețineți că numărul de pagini dintr-un document afectează timpul de conversie.

{{% /alert %}}

### Conversia DOC sau DOCX în PDF {#convert-doc-or-docx-to-pdf}

Conversia din formatul documentului DOC sau DOCX în formatul PDF în Aspose.Words este foarte ușoară și poate fi realizată cu doar două linii de cod care:

1. Încărcați documentul într-un obiect [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) folosind unul dintre constructorii săi, specificând numele documentului cu extensia sa de format.
1. Invocați una dintre metodele [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) pe obiectul [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) și specificați formatul de ieșire dorit ca PDF introducând un nume de fișier cu ".PDF" Extensie.

Următorul exemplu de cod arată cum se convertește un document din DOCX în PDF folosind metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document ca PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea PDF.

Rețineți că, cu aceeași tehnică, puteți converti orice document în format flow-layout în format PDF.

{{% /alert %}}

### Conversia la diverse PDF standarde {#convert-to-various-pdf-standards}

Aspose.Words oferă enumerarea [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) pentru a sprijini conversia DOC sau DOCX în diferite standarde de format PDF (cum ar fi PDF 1.7, PDF 1.5, etc.).

Următorul exemplu de cod demonstrează cum se convertește un document în PDF 1.7 folosind [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) Cu conformitate cu [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Conversia imaginilor în PDF

Conversia în PDF nu este restricționată de formatele de documente Microsoft Word. Orice format acceptat de Aspose.Words, inclusiv creat programatic, poate fi, de asemenea, convertit în PDF. De exemplu, putem converti imagini cu o singură pagină, cum ar fi JPEG, PNG, BMP, EMF, sau WMF, precum și imagini cu mai multe pagini, cum ar fi TIFF și GIF, până la PDF.

Următorul exemplu de cod arată cum se convertesc imaginile JPEG și TIFF în PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Pentru ca acest cod să funcționeze, trebuie să adăugați referințe la Aspose.Words și `aspose.pydrawing` la proiectul dvs.

## Reduceți Dimensiunea De Ieșire PDF

Când salvați în PDF, Puteți specifica dacă doriți să optimizați ieșirea. Pentru a face acest lucru, trebuie să setați steagul [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) la adevărat, iar apoi pânzele imbricate redundante și pânzele goale vor fi eliminate, glifele vecine cu aceeași formatare vor fi concatenate.

{{% alert color="primary" %}}

Utilizarea proprietății **OptimizeOutput** poate afecta acuratețea afișării conținutului.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Reduceți Dimensiunea De Ieșire PDF

Când salvați în PDF, Puteți specifica dacă doriți să optimizați ieșirea. Pentru a face acest lucru, trebuie să setați steagul [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) la adevărat, iar apoi pânzele imbricate redundante și pânzele goale vor fi eliminate, glifele vecine cu aceeași formatare vor fi concatenate.

{{% alert color="primary" %}}

Utilizarea proprietății **OptimizeOutput** poate afecta acuratețea afișării conținutului.

{{% /alert %}}

## Vezi Și

- Articolul [Redare](/words/python-net/rendering/) pentru mai multe informații despre pagina fixă și formatele de aspect de flux
- Articolul [Conversia în format de pagină fixă](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pentru mai multe informații despre aspectul paginii
- Articolul [Specificați opțiunile De redare la conversia în PDF](/words/python-net/specify-rendering-options-when-converting-to-pdf/) pentru mai multe informații despre utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
