---
title: Înlocuiți Câmpurile C++
second_title: Aspose.Words pentru C++
articleTitle: Înlocuiți câmpurile cu Text Static
linktitle: Înlocuiți câmpurile cu Text Static
description: "Aflați cum să înlocuiți câmpurile cu text în C++. Înlocuiți câmpurile cu date statice folosind C++ API."
type: docs
weight: 37
url: /ro/cpp/replace-fields/
---

Înlocuirea câmpurilor este adesea necesară atunci când doriți să salvați documentul ca o copie statică. De exemplu, atunci când trimiteți ca atașament într-un e-mail. Conversia câmpurilor precum `DATE` sau `TIME` în text static va permite documentului să afișeze aceeași dată ca atunci când a fost trimis. De asemenea, în unele situații, poate fi necesar să eliminați câmpurile condiționale `IF` din documentul dvs. și să le înlocuiți cu cel mai recent rezultat text. De exemplu, conversia rezultatului câmpului `IF` în text static, astfel încât acesta să nu-și mai schimbe dinamic valoarea atunci când câmpurile din document sunt actualizate.

Diagrama de mai jos arată modul în care câmpul `IF` este stocat într-un document:

* textul este înconjurat de nodurile câmpului special - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) și [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* nodul [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) separă textul din câmp în codul câmpului și rezultatul câmpului
* codul câmpului definește comportamentul general al câmpului, în timp ce rezultatul câmpului păstrează cel mai recent rezultat atunci când acest câmp este actualizat folosind Microsoft Word sau Aspose.Words
* rezultatul câmpului este ceea ce este stocat în câmp și afișat în document atunci când este vizualizat

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Structura poate fi văzută și mai jos în formă ierarhică folosind proiectul demo *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Câmpuri care nu pot fi înlocuite cu Text

Înlocuirea unui câmp cu text static nu funcționează corect pentru unele câmpuri dintr-un antet sau subsol.

De exemplu, încercarea de a converti câmpul `PAGE` dintr-un antet sau subsol în text static va duce la afișarea aceleiași valori pe toate paginile. Acest lucru se datorează faptului că anteturile și subsolurile sunt repetate pe mai multe pagini și, atunci când rămân ca câmpuri, sunt tratate în special pentru a afișa rezultatul corect pentru fiecare pagină.

Cu toate acestea, în antet, câmpul `PAGE` se traduce bine în rularea statică a textului. Această rulare de text va fi evaluată ca și cum ar fi ultima pagină din secțiune, ceea ce va face ca orice câmp `PAGE` din antet să afișeze ultima pagină peste toate paginile.

Următorul exemplu de cod arată cum să înlocuiți câmpul cu cel mai recent rezultat al acestuia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Convertiți anumite tipuri de câmpuri în anumite părți ale documentului

Deoarece metoda **ConvertFieldsToStaticText** acceptă doi parametri – proprietățile [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) și enumerarea [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), este posibil să se transmită orice nod compus acestei metode. Acest lucru permite convertirea câmpurilor în text static numai în anumite părți ale documentului.

De exemplu, puteți trece un obiect [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) și puteți converti câmpuri de tipul specificat din întregul document în text static sau puteți trece un obiect [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) dintr-o secțiune și puteți converti doar câmpurile găsite în acel corp.

{{% alert color="primary" %}}

Când treceți un nod la nivel de bloc, cum ar fi un [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), rețineți că, în unele cazuri, câmpurile se pot întinde pe mai multe paragrafe. Dacă se întâmplă acest lucru, se recomandă să treceți părintele compozitului în schimb pentru a evita acest lucru.

{{% /alert %}}

Enumerarea [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) transmisă metodei **ConvertFieldsToStaticText** specifică ce tip de câmpuri ar trebui convertite în text static. Orice alt tip de câmp găsit în document va rămâne neschimbat.

Următorul exemplu de cod arată cum să selectați câmpuri de un anumit tip – *targetFieldType* într – un anumit nod - *compositeNode* și apoi să le convertiți în text static:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Următorul exemplu de cod arată cum să convertiți toate câmpurile `IF` dintr-un document în text static:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Următorul exemplu de cod arată cum să convertiți toate câmpurile `PAGE` dintr-un corp al unui document în text static:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Următorul exemplu de cod arată cum să convertiți toate câmpurile `IF` din ultimul paragraf în text static:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}