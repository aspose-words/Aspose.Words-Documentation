---
title: Lucrul cu anteturi și subsoluri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrarea cu anteturi și subsoluri
linktitle: Lucrarea cu anteturi și subsoluri
description: "Cum se manipulează antetele și subsolurile folosind C#. Creați anteturi și subsoluri în C#. Înlătură anteturi sau subsoluri C#."
type: docs
weight: 150
url: /ro/net/working-with-headers-and-footers/
---

Aspose.Words permite utilizatorilor să lucreze cu antet și subsol într-un document. Un antet este textul care este plasat în partea de sus a unei pagini, iar un subsol este textul de la baza paginii. Tipicall aceste zone sunt folosite pentru a introduce informații care ar trebui să fie repetate pe toate sau unele pagini ale documentului, cum ar fi numere de pagină, data creării, informații despre companie și așa mai departe.

## Creați anteturi sau subsoluri folosind DocumentBuilder

Dacă doriți să adăugați un antet sau subsol de document programatic, cea mai ușoară cale este să folosiți clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) pentru a face acest lucru.

Exemplul de cod următor arată cum să adăugați o antetă și un subsol pentru paginile de document:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Specificați opțiunile antetului sau a subsolului

Când adaugi antet sau subsol la un document, poți seta anumite proprietăți avansate. Aspose.Words oferă utilizatorilor clasele [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) și [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/), precum și o enumerare [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) care îți oferă mai mult control asupra procesului de particularizare a antetului și subsolului.

### Specificați tipul antetului sau al subsolului

Poţi specifica trei tipuri diferite de antet şi trei tipuri diferite de subsol pentru un singur document:
1. Antet și/sau subsol pentru prima pagină
"2." Antet și/sau subsol pentru paginile pereche
3. Antet și / sau subsol pentru paginile impare

Exemplul de cod următor arată cum se adaugă un antet pentru paginile impare ale unui document:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Specifică dacă să afişezi anteturi sau subsoluri diferite pentru prima pagină

După cum am menționat mai sus, poți să setezi și un antet sau un subsol diferit pentru prima pagină. Pentru asta, trebuie să setezi [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) la `true` și apoi să specifice **HeaderFirst** sau **FooterFirst** valoarea.

Exemplul de cod următor arată cum se setează antetul pentru prima pagină doar:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Specificați dacă să afișați anteturi sau subsoluri diferite pentru paginile impare sau pare

 Apoi, vei dori să stabilești anteturi sau subsoluri diferite pentru paginile impare și pare dintr-un document. Pentru a face asta ai nevoie să setezi [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) la `true` și apoi specifici valorile **HeaderPrimary** și **HeaderEven** sau **FooterPrimary** și **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Introduceți o imagine poziționată absolut în antet

Pentru a plasa o imagine într-un antet sau subsol, folosiți tipul de antet **HeaderPrimary** sau tipul de subsol **FooterPrimary** și metoda [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/).

Exemplul de cod următor arată cum se adaugă o imagine într-un antet:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Stabilește proprietățile fontului și paragrafelor pentru textul antetului sau al subsolului

Cu Aspose.Words puteți seta proprietățile de tip font și paragrafe, utilizați tipul de antet **HeaderPrimary** sau tipul de subsol **FooterPrimary**, precum și metode și proprietăți pentru lucrul cu fonturile și paragrafe pe care le folosiți în corpul documentului.

Exemplul de cod următor arată cum se setează textul în antet la Arial, gras, mărime 14 și aliniere în centru:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Inserare numere pagină în antet sau subsol

Dacă este necesar poţi adăuga numere de pagină în antet sau în subsol. Pentru asta folosiţi tipul de antet **HeaderPrimary** sau tipul de subsol **FooterPrimary** şi metoda [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) pentru a adăuga câmpul necesar.

Exemplul următor de cod arată cum să adăugați numere de pagină la subsol pe partea dreaptă:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Utilizați anteturi sau subsoluri definite în secțiunea anterioară

Dacă ai nevoie să copiezi antetul sau subsolul din secțiunea anterioară, poți face și asta.

Exemplul următor de cod arată cum se copiază antetul sau subsolul din secțiunea anterioară:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Asigurați-vă că antetul sau subsolul apare atunci când utilizați diferite orientări a paginii și dimensiuni ale paginii

Aspose.Words vă permite să furnizați aspectul unui antet sau al unui subsol atunci când utilizați orientări diferite și dimensiuni de pagină.

Exemplul următor arată cum să faceți acest lucru:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Cum să eliminaţi doar anteturile sau doar subsemnatele

Fiecare secțiune dintr-un document poate avea până la trei anteturi și până la trei subsoluri (pentru prima, chiar și și pentru pagini impare). Dacă vrei să elimini toate antetele sau toate subsolurile unui document, ai nevoie să parcurgi secțiunile tuturor și să elimini nodul corespunzător al antetului sau subsolului.

Exemplul de cod următor arată cum să se elimine toate subsolurile din toate secțiunile, dar să se lase anteturile intacte. Puteți elimina doar anteturile în mod asemănător:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}