---
title: Conversia unui Document în PDF în Java
second_title: Aspose.Words pentru Java
articleTitle: Conversia unui Document în PDF
linktitle: Conversia unui Document în PDF
description: "Convertiți un document în Word sau în orice alt format acceptat în PDF, care păstrează aspectul original al unui document în timpul redării sale pe diferite platforme folosind Java."
type: docs
weight: 10
url: /ro/java/convert-a-document-to-pdf/
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

1. Încărcați documentul într-un obiect [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) folosind unul dintre constructorii săi, specificând numele documentului cu extensia sa de format.
1. Invocați una dintre metodele [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) pe obiectul **Document** și specificați formatul de ieșire dorit ca PDF introducând un nume de fișier cu ".PDF" Extensie.

Următorul exemplu de cod arată cum se convertește un document din DOCX în PDF folosind metoda `Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document ca PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea PDF.

Rețineți că, cu aceeași tehnică, puteți converti orice document în format flow-layout în format PDF.

{{% /alert %}}

### Conversia la diferite PDF standarde {#converting-to-various-pdf-standards}

Aspose.Words oferă enumerarea [PdfCompliace ](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)pentru a sprijini conversia DOC sau DOCX în diferite standarde de format PDF (cum ar fi PDF 1.7, PDF 1.5, etc.).

Următorul exemplu de cod demonstrează cum se convertește un document în PDF 1.7 folosind [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Cu conformitate cu PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Conversia imaginilor în PDF

Conversia în PDF nu este restricționată de formatele de documente Microsoft Word. Orice format acceptat de Aspose.Words, inclusiv creat programatic, poate fi, de asemenea, convertit în PDF. De exemplu, putem converti imagini cu o singură pagină, cum ar fi JPEG, PNG, BMP, EMF, sau WMF, precum și imagini cu mai multe pagini, cum ar fi TIFF și GIF, până la PDF.

Următorul exemplu de cod arată cum se convertesc imaginile JPEG și TIFF în PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Pentru ca acest cod să funcționeze, trebuie să adăugați referințe la Aspose.Words, Java.awt.imagine, și javax.pachete de clasă imageio pentru proiectul dumneavoastră.

## Reduceți Dimensiunea De Ieșire PDF

Când salvați în PDF, Puteți specifica dacă doriți să optimizați ieșirea. Pentru a face acest lucru, trebuie să setați steagul [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) la adevărat, iar apoi pânzele imbricate redundante și pânzele goale vor fi eliminate, glifele vecine cu aceeași formatare vor fi concatenate.

Următorul exemplu de cod arată cum să optimizați ieșirea:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Utilizarea proprietății **OptimizeOutput** poate afecta acuratețea afișării conținutului.

{{% /alert %}}

## Vezi Și

- Articolul [Redare](/words/java/rendering/) pentru mai multe informații despre pagina fixă și formatele de aspect de flux
- Articolul [Conversia în format de pagină fixă](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pentru mai multe informații despre aspectul paginii
- Articolul [Specificați opțiunile De redare la conversia în PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) pentru mai multe informații despre utilizarea clasei `PdfSaveOptions`
