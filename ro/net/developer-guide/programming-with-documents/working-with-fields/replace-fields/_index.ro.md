---
title: Înlocuiește câmpurile C#
second_title: Aspose.Words pentru .NET
articleTitle: Înlocuiește câmpurile cu text static
linktitle: Înlocuiește câmpurile cu text static
description: "Învață cum să înlocuiești câmpuri cu text în C#. Înlocuiţi câmpurile cu date statice folosind .NET API."
type: docs
weight: 37
url: /ro/net/replace-fields/
---

"Înlocuirea câmpurilor este adesea necesară atunci când doriți să salvați documentul ca o copie statică." Spre exemplu atunci când trimiţi ca atașament într-un e-mail. Conversia câmpurilor precum `DATE` sau `TIME` în text static va permite documentului să afișeze aceeași dată ca atunci când a fost trimisă. De asemenea, în unele situații, s-ar putea să aveți nevoie să eliminați câmpurile condiționale `IF` din documentul dvs. și să le înlocuiți cu rezultatul textului cel mai recent. De exemplu, convertind rezultatul câmpului `IF` într-un text static astfel încât acesta nu mai își va schimba dinamic valoarea atunci când câmpurile din document sunt actualizate.

Diagrama de mai jos arată modul în care câmpul `IF` este stocat într-un document:

* textul este înconjurat de nodurile câmpurilor speciale [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) și [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* nodul [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) separă textul din câmp în codul de câmp și rezultatul de câmp
* codul câmpului definește comportamentul general al câmpului, în timp ce rezultatul câmpului păstrează cel mai recent rezultat atunci când acest câmp este actualizat folosind Microsoft Word sau Aspose.Words
* câmpul rezultat este ceea ce se stochează în câmp și se afișează în document atunci când este vizualizat

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Structura poate fi de asemenea văzută mai jos în formă ierarhică folosind [demo project *“DocumentExplorer”*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Câmpuri care nu pot fi înlocuite de text

Înlocuirea unui câmp cu text static nu funcționează corespunzător pentru unele câmpuri dintr-un antet sau subsol.

De exemplu, încercând să convertest câmpul `PAGE` dintr-o antet sau subsol la text static va rezulta în aceeași valoare fiind afișată pe toate paginile. Aceasta se datorează faptului că antetele și subsolurile sunt repetate pe mai multe pagini, iar atunci când acestea rămân ca câmpuri, sunt tratate în mod special astfel încât să afișeze rezultatul corect pentru fiecare pagină.

"Cu toate acestea, în antet, `PAGE` câmpul se traduce bine la o rulare statica de text." Acest rul de text va fi evaluat ca și cum ar fi ultima pagină din secțiune, ceea ce va face ca orice câmp `PAGE` din antet să afișeze ultima pagină peste toate paginile.

Exemplul următor de cod arată cum să înlocuiți câmpul cu cel mai recent rezultat:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Convertiți anumite tipuri de câmp în părți specifice ale documentului

Deoarece metoda **ConvertFieldsToStaticText** acceptă două parametri - proprietățile [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) și enumerarea [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), este posibil să treci orice nod compus acestei metode. Acest lucru permite câmpurilor să fie convertite în text static doar în părți specifice ale documentului.

De exemplu, poţi trece un obiect [Document](https://reference.aspose.com/words/net/aspose.words/document/) şi să transformi câmpurile de tipul specificat din întregul document în text static, sau poţi trece un obiect [Body](https://reference.aspose.com/words/net/aspose.words/body/) dintr-o secţiune şi să transformi doar câmpurile găsite în acest corp.

{{% alert color="primary" %}}

Când treci un nod la nivel de bloc cum ar fi [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), fii conștient că în unele cazuri câmpurile pot să se extindă pe mai multe paragrafe. Dacă se întâmplă acest lucru, este recomandat să treci părintele de la compozițional în schimb pentru a evita acest lucru.

{{% /alert %}}

The [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) enumerare trecută la metoda **ConvertFieldsToStaticText** specifică ce tip de câmpuri ar trebui să fie convertit la text static. Orice altă tipă de câmp găsită în document va rămâne neschimbată.

Exemplul de cod de mai sus arată cum se selectează câmpurile unui anumit tip - *targetFieldType* într-un anumit nod - *compositeNode* și apoi le transformăm în text static:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Exemplul de cod următor arată cum să convertiți toate câmpurile `IF` dintr-un document în text static:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Exemplul următor de cod arată cum să converţi toate `PAGE` câmpuri în corpul unui document într-un text static:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

Exemplul de cod următor arată cum să convertestem toate câmpurile `IF` din ultimul paragraf în text static:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
