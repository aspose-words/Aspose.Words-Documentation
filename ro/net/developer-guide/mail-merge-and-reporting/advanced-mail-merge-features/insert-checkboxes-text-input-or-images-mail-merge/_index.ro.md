---
title: Inserați Checkboxes, introducere de Text sau imagini în timpul Mail Merge
second_title: Aspose.Words pentru .NET
articleTitle: Inserați Checkboxes, introducere Text sau imagini
linktitle: Inserați Checkboxes, introducere Text sau imagini
description: "Introduceți checkboxes sau câmpuri de introducere a textului în timpul Mail Merge folosind C#. De asemenea, Introduceți imagini dintr-o bază de date în timpul Mail Merge în C#."
type: docs
weight: 40
url: /ro/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Merge engine ia un document ca intrare, caută câmpuri `MERGEFIELD` în el și le înlocuiește cu datele obținute din sursa de date. De obicei, textul simplu și HTML sunt inserate, dar Aspose.Words utilizatorii pot genera, de asemenea, un document care gestionează scenarii mai neobișnuite pentru câmpurile Mail Merge.

Funcționalitatea puternică Aspose.Words vă permite să extindeți procesul Mail Merge:

- introduceți checkboxes și câmpurile formularului de introducere a textului în document în timpul unui mail merge
- introduceți imagini din orice stocare personalizată (fișiere, câmpuri BLOB etc.).)

## Introduceți Checkboxes și introducerea textului în timpul Mail Merge

Uneori este necesar să efectuați o operație Mail Merge, astfel încât nu textul să fie înlocuit în câmpul de îmbinare, ci un checkbox sau un câmp de introducere a textului. Chiar dacă acesta nu este cel mai comun scenariu, este foarte util pentru unele sarcini.

Următoarea captură de ecran a unui document Word arată un șablon cu câmpuri de îmbinare:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Această captură de ecran a documentului Word de mai jos arată documentul deja generat:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Rețineți că unele câmpuri au fost înlocuite cu text simplu, unele câmpuri au fost înlocuite cu checkbox câmpuri de formular, iar câmpul `Subject` a fost înlocuit cu un câmp de introducere a textului.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați checkboxes și câmpurile de text de intrare într-un document în timpul unui mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Inserați imagini în timpul Mail Merge

Când efectuați o operație Mail Merge, puteți insera imagini din Baza de date în document folosind câmpuri speciale image Mail Merge. Câmpul image Mail Merge este un câmp de îmbinare numit Image: MyFieldName.

### Inserați imagini dintr-o bază de date

În timpul unui mail merge, când un câmp de imagine Mail Merge este întâlnit într-un document, evenimentul [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) este declanșat. Puteți răspunde la acest eveniment pentru a returna un nume de fișier, un flux sau un obiect de imagine la motorul Mail Merge, astfel încât să poată fi inserat în document.

Următorul exemplu de cod arată cum să inserați imagini stocate într-o bază de date BLOB câmp într-un raport:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Setați proprietățile imaginii în timpul Mail Merge

În timp ce fuzionați un câmp de îmbinare a imaginii, uneori poate fi necesar să controlați diferite proprietăți ale imaginii, cum ar fi [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

În prezent, folosind [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) Puteți seta doar lățimea imaginii sau, respectiv, proprietățile înălțimii. Pentru a depăși această problemă, Aspose.Words oferă proprietatea [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), care facilitează obținerea controlului deplin asupra imaginii inserate sau a oricărei alte forme.

Următorul exemplu de cod arată cum să setați diferite proprietăți ale imaginii:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
