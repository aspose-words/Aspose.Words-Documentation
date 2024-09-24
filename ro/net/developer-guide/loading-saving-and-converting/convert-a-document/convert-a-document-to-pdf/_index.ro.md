---
title: Converteste Word-ul în PDF în C#
second_title: Aspose.Words pentru .NET
articleTitle: Converti un document în PDF
linktitle: Converti un document în PDF
description: "Converti un document în format PDF folosind C#. Convertește DOCX în PDF C#. Sunt acceptate diferite formate de intrare, inclusiv Word, OpenOffice, Imagini și formatele de cărți electronice."
type: docs
weight: 10
url: /ro/net/convert-a-document-to-pdf/
---

Posibilitatea de a converti cu ușurință și fiabil documente dintr-un format în altul reprezintă o caracteristică cheie a lui Aspose.Words. Unul dintre cele mai populare formate pentru conversie este PDF – un format cu aranjare fixă care păstrează aspectul inițial al unui document în timpul redării pe diferite platforme. Termenul "redare" este folosit în Aspose.Words pentru a descrie procesul de convertire a unui document într-un format de fișier care este paginat sau are conceptul de pagini.

## Convertește un document Word în PDF

Conversia de la Word la PDF este un proces destul de complex care necesită mai multe etape de calcul. Aspose.Words motorul de aranjare imită modul în care funcționează motorul de aranjare al Microsoft Word, făcând ca documentele PDF să arate cât mai aproape posibil de cele pe care le puteți vedea în Microsoft Word.

Cu Aspose.Words puteți converti programatic un document din formate de Word, cum ar fi DOC sau DOCX, în PDF fără a folosi Microsoft Office. Acest articol explică cum să efectuezi această conversie.

{{% alert color="primary" %}}

Rețineți că numărul de pagini dintr-un document afectează timpul de conversie.

{{% /alert %}}

### Converteste DOCX sau DOC în PDF

Conversia de la formatul documentului DOC sau DOCX în formatul PDF în Aspose.Words este foarte ușoară și poate fi realizată cu doar două linii de cod care:

1. Încărcaţi documentul într-un obiect [Document](https://reference.aspose.com/words/net/aspose.words/document/) folosind unul dintre constructorii săi specificând numele documentului cu extensia de format.
1. Invocaţi una din [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metodele pe obiectul **Document** şi specificaţi formatul de ieşire dorit ca fiind PDF, introducând numele unui fişier cu extensia ".PDF".

Exemplul de cod următor arată cum să convertesti un document din DOCX în PDF folosind metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Uneori este necesar să specifici opțiuni suplimentare care pot afecta rezultatul păstrării unui document ca fișier PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), care conține proprietăți care determină modul în care va fi afișată ieșirea PDF-ului.

Notați că cu aceeași tehnică puteți converti orice document cu formatare pe coloane în formatul PDF.

{{% /alert %}}

### Converteste la standarde diferite de PDF

Aspose.Words oferă enumerarea [PdfCompliace ](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) pentru a sprijini conversia de la DOC sau DOCX în diferite standarde PDF (cum ar fi PDF 1.7, PDF 1.5, etc.).

Exemplul următor de cod demonstrează cum să converţi un document la format PDF 1.7 utilizând [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) cu conformitate la PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Convertați imaginile în PDF

Conversia în format PDF nu este restricționată de Microsoft Word formate de documente. Orice format acceptat de Aspose.Words, inclusiv cel creat programatic, poate fi de asemenea transformat în PDF. De exemplu, putem converti imagini unipagina precum JPEG, PNG, BMP, EMF sau WMF, precum și imagini multipagina precum TIFF și GIF în format PDF.

Exemplul următor de cod arată cum se pot converti imaginile JPEG și TIFF în PDF":

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Pentru ca acest cod să funcționeze, trebuie să adăugați referințe la Aspose.Words și `System.Drawing` în proiectul dumneavoastră.

## Reducere dimensiune PDF

Când salvezi ca PDF, poți specifica dacă vrei să optimizezi ieșirea. Pentru aceasta trebuie să setezi [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) la true, și apoi redundanți canvas-uri încorporate și canvas-uri goale vor fi eliminate, caracterele vecine cu același formatare vor fi concatenate.

Exemplul următor de cod arată cum se optimizează ieşirea:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Folosirea proprietăţii **OptimizeOutput** poate afecta acurateţea afişării conţinutului.

{{% /alert %}}

## Vezi și

- Articolul [Rendering](/words/net/rendering/) pentru mai multe informații despre formatul de pagină fix și flux
"- Articolul [Converting to Fixed-page Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pentru mai multe informații despre aspectul paginii"
- Articolul [Specify Rendering Options When Converting to PDF](/words/net/specify-rendering-options-when-converting-to-pdf/) pentru mai multe informații despre utilizarea clasei `PdfSaveOptions`
- Articolul [Learn Features of Conversion to PDF/A and PDF/UA](https://docs.aspose.com/words/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) care descrie care standard PDF și relevantele ISO pentru standardele PDF suportă Aspose.Words
- Articolul [Which PDF Standard Is Better to Choose](https://docs.aspose.com/words/net/which-pdf-standard-is-better-to-choose/) pentru a determina care standarde PDF au sens pentru care cazuri

- Articolul [Working with PDF/A or PDF/UA](https://docs.aspose.com/words/net/working-with-pdfa-or-pdfua/) descrie cerințele pentru conținutul documentului în formatul PDF/A și PDF/UA – în principal cerințele pentru structură și fonturi

- Articolul [Accessibility Issue Warnings When Saving to PDF/A and PDF/UA](https://docs.aspose.com/words/net/warnings-when-saving-to-pdfa-and-pdfua/) descrie ce cerințe de accesibilitate a conținutului impun PDF/A și PDF/UA
