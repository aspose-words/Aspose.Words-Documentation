---
title: Cum să creezi un cod de bare
second_title: Aspose.Words pentru .NET
articleTitle: Generați o imagine de cod de bare personalizat
linktitle: Generați o imagine de cod de bare personalizat
description: "Exemplu de generare a formei codului de bare folosind C#."
type: docs
weight: 350
url: /ro/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un cod de bare este o reprezentare vizuală a datelor sub formă de linii sau modele paralele. Codurile de bare sunt utilizate pe scară largă în diverse domenii precum retailul, logistica, sănătatea, banca și multe altele.

Microsoft Word permite utilizatorilor să încorporeze coduri de bare direct în documente folosind câmpuri. Utilizatorii pot insera un tip specific de cod de bare, cum ar fi un cod QR sau o bară liniară, folosind câmpul [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

În acest articol vom analiza modul în care câmpul BARCODE este implementat în Aspose.Words și modul în care Aspose.Words permite utilizatorilor să lucreze cu documente Word la care a fost deja adăugată o bară de cod.

## Tipurile de coduri de bare acceptate de Aspose.Words

Aspose.Words suportă diferite tipuri de coduri de bare. Tipul de cod de bare este transmis ca o valoare de tip șir în proprietatea [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Fiindcă lucrul cu coduri de bare în funcționalitatea Aspose.Words este limitat, utilizatorul poate folosi orice bibliotecă, inclusiv Aspose.Barcode, sau poate scrie singur redarea pentru a lucra cu coduri de bare. Poţi afla mai multe despre tipurile de bare [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Când salvezi în formate Word care suportă coduri de bare, poți folosi orice tip de cod de bare care este [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3).. Dacă se trece un tip incorect de cod de bare, Word va afișa o eroare.

Când se salvează în alte formate, cum ar fi PDF-ul, Aspose.Words delegă redarea codului de bare către codul utilizatorului, astfel încât utilizatorul este limitat la tipurile de coduri de bare din implementarea sau biblioteca sa utilizată.

## Inseraţi un cod de bare într-un document sau încărcaţi un document cu un cod de bare adăugat

Aspose.Words oferă capacitatea de a:

1. Inseraţi programatic un cod de bare într-un document utilizând codurile [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) şi [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Sau încarcă un document Word cu bare de cod deja inserate în el pentru o continuare a muncii

Aspose.Words are o interfață pentru generarea de coduri de bare personalizate care îl face ușor să folosești [Aspose.Words](https://products.aspose.com/words/net/) și [Aspose.BarCode](https://products.aspose.com/barcode/net/) împreună pentru a reprezenta imaginile de cod de bare în documentele de ieșire. De exemplu, poţi crea un document DOC, OOXML sau RTF şi să adaugi câmpul DISPLAYBARCODE utilizând Aspose.Words. Sau puteți încărca un fișier DOC, OOXML sau RTF cu câmpul DISPLAYBARCODE deja existent în acesta și furnizați implementarea dvs. a unui generatoare de coduri de bare personalizate.

Un câmp tipic DisplayBarcode are următoarea sintaxă:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Iată un exemplu de utilizare a generatorului de cod folosind API-urile Aspose.Words și Aspose.BarCode. Acest exemplu arată cum se introduc imagini de cod de bare în poziția câmpului "DISPLAYBARCODE" într-un document Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

"Puteți salva, de asemenea, documentul cu codul de bare încărcat sau nou inserat în modele fixe de pagină cum ar fi PDF, XPS etc." Exemplul de cod următor arată cum se salvează un document Word în formatul PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Pentru mai multe informații despre convertirea documentelor dintr-un format în altul, citiți secțiunea de documentare [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

De asemenea puteți folosi interfața [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) pentru a converti codurile de bare încorporate în documentele Word în imagini. Imaginea rezultată poate fi extrasă din document – vezi articolul "Working with Images" pentru detalii.

{{% /alert %}}

## Specificați opțiunile de cod de bare

Când lucrezi cu coduri de bare poți seta unele proprietăți suplimentare. Aspose.Words îți oferă clasa [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – clasa pentru parametrii de coduri de bare să treacă la BarcodeGenerator.

Aspose.Words suportă rezoluția încorporată de 96 ppp pentru imagini generate cu [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), ceea ce limitează dimensiunea minimă a unei imagini de cod de bare. Pentru a rezolva acest lucru, dezvoltatorii pot insera manual imagini de coduri de bare cu rezoluția țintă într-un document Word și le pot salva în formatul dorit. Pentru detalii şi exemple suplimentare privind lucrul cu coduri de bare, vedeţi articolul [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
