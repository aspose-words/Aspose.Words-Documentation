---
title: Lucrul cu anteturi și subsoluri în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu anteturi și subsoluri
linktitle: Lucrul cu anteturi și subsoluri
description: "Cum se manipulează anteturile și subsolurile folosind C++."
type: docs
weight: 150
url: /ro/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite utilizatorilor să lucreze cu anteturi și subsoluri într-un document. Un antet este text care este plasat în partea de sus a unei pagini, iar un subsol este text în partea de jos a unei pagini. De obicei, aceste zone sunt utilizate pentru a insera informații care ar trebui repetate pe toate sau pe unele pagini ale documentului, cum ar fi numerele paginilor, data creării, informațiile companiei și așa mai departe.

## Creați anteturi sau subsoluri folosind DocumentBuilder

Dacă doriți să adăugați un antet sau un subsol de document programatic, cel mai simplu mod este să utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) pentru a face acest lucru.

Următorul exemplu de cod arată cum să adăugați un antet și un subsol pentru paginile de documente:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Specificați opțiunile antet sau subsol

Când adăugați un antet sau un subsol la un document, puteți seta unele proprietăți avansate. Aspose.Words oferă utilizatorilor clasele [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) și [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), precum și enumerarea [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) care vă oferă mai mult control asupra procesului de personalizare a antetului și subsolului.

### Specificați tipul de antet sau subsol

Puteți specifica trei tipuri diferite de antet și trei tipuri diferite de subsol pentru un document:

1. Antet și / sau subsol pentru prima pagină
2. Antet și / sau subsol pentru pagini uniforme
3. Antet și / sau subsol pentru pagini impare

Următorul exemplu de cod arată cum să adăugați un antet pentru paginile de documente impare:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Specificați dacă doriți să afișați anteturi sau subsoluri diferite pentru prima pagină

După cum sa spus mai sus, puteți seta și un alt antet sau subsol pentru prima pagină. Pentru a face acest lucru, trebuie să setați indicatorul [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) la `true` și apoi să specificați valoarea **HeaderFirst** sau **FooterFirst**.

Următorul exemplu de cod arată cum să setați antetul numai pentru prima pagină:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Specificați dacă doriți să afișați anteturi sau subsoluri diferite pentru pagini impare sau pare

 Apoi, veți dori să setați anteturi sau subsoluri diferite pentru paginile impare și pare dintr-un document. Pentru a face acest lucru, trebuie să setați steagul [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) la `true` și apoi să specificați valorile **HeaderPrimary** și **HeaderEven** sau **FooterPrimary** și **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Introduceți o imagine absolut poziționată în antet

Pentru a plasa o imagine într-un antet sau subsol, utilizați tipul de antet **HeaderPrimary** sau tipul de subsol **FooterPrimary** și metoda `InsertImage`.

Următorul exemplu de cod arată cum să adăugați o imagine la un antet:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Setați proprietățile fontului și paragrafului pentru textul antetului sau subsolului

Cu Aspose.Words Puteți seta proprietățile fontului și paragrafului, utilizați tipul de antet **HeaderPrimary** sau tipul de subsol **FooterPrimary**, precum și metode și proprietăți pentru lucrul cu fonturile și paragrafele pe care le utilizați pentru corpul documentului.

Următorul exemplu de cod arată cum să setați textul din antet la Arial, bold, Dimensiune 14 și aliniere centrală:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Introduceți numere de pagină în antet sau subsol

Dacă este necesar, puteți adăuga numere de pagină la antet sau subsol. Pentru a face acest lucru, utilizați tipul de antet **HeaderPrimary** sau tipul de subsol **FooterPrimary** și metoda [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) pentru a adăuga câmpul obligatoriu.

Următorul exemplu de cod arată cum să adăugați numere de pagină în subsolul din dreapta:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Utilizați anteturi sau subsoluri definite în secțiunea anterioară

Dacă trebuie să copiați antetul sau subsolul din secțiunea anterioară, puteți face și asta.

Următorul exemplu de cod arată cum să copiați antetul sau subsolul din secțiunea anterioară:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Asigurați aspectul antetului sau subsolului atunci când utilizați diferite orientări ale paginii și dimensiunea paginii

Aspose.Words vă permite să furnizați aspectul unui antet sau subsol atunci când utilizați diferite orientări și dimensiuni de pagină.

Următorul exemplu arată cum se face acest lucru:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Cum să eliminați numai anteturile sau doar subsolurile

Fiecare secțiune dintr-un document poate avea până la trei anteturi și până la trei subsoluri (pentru paginile întâi, pare și impare). Dacă doriți să eliminați toate anteturile sau toate subsolurile dintr-un document, trebuie să parcurgeți toate secțiunile și să eliminați fiecare nod de antet sau nod de subsol corespunzător.

Următorul exemplu de cod arată cum să eliminați toate subsolurile din toate secțiunile, dar să lăsați anteturile intacte. Puteți elimina numai anteturile într-un mod similar:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}