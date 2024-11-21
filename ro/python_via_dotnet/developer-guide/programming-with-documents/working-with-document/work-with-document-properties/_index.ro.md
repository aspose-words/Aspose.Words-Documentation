---
title: Lucrați cu proprietățile documentului
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrați cu proprietățile documentului
linktitle: Lucrați cu proprietățile documentului
description: "Aspose.Words pentru Python permite stocarea unor informații utile despre documentul dvs., cum ar fi API și numărul versiunii sau data autorizată, în proprietăți încorporate sau personalizate ale documentului."
type: docs
weight: 10
url: /ro/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Proprietățile documentului permit stocarea unor informații utile despre documentul dvs. Aceste proprietăți pot fi împărțite în două grupe:

* Sistem sau încorporat care conține valori precum titlul documentului, numele autorului, Statisticile documentelor și altele.
* Definite de utilizator sau personalizate, furnizate ca perechi nume-valoare în care utilizatorul poate defini atât numele, cât și valoarea.

Este util să știți că informațiile despre API și numărul versiunii sunt scrise direct în documentele de ieșire. De exemplu, la conversia unui document în PDF, Aspose.Words completează câmpul "aplicație" cu " Aspose.Words", iar câmpul" PDF Producător "cu"Aspose.Words pentru .NET YY.M. N", unde *YY.M.N* este versiunea Aspose.Words folosită pentru conversie. Pentru mai multe detalii, a se vedea [Numele generatorului sau al producătorului inclus în documentele de ieșire](/words/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Rețineți că **cannot direct** Aspose.Words pentru a modifica sau elimina aceste informații din documentele de ieșire.

{{% /alert %}}

## Accesați Proprietățile Documentului

Pentru a accesa proprietățile documentului în Aspose.Words utilizați:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) pentru a obține proprietăți încorporate.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) pentru a obține proprietăți personalizate.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) și [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) sunt colecții de obiecte [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Aceste obiecte pot fi obținute prin proprietatea indexatorului după nume sau după index.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) oferă în plus acces la proprietățile documentului printr-un set de proprietăți introduse care returnează valori de tipul corespunzător. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) vă permite să adăugați sau să eliminați proprietățile documentului dintr-un document.

Clasa [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) vă permite să obțineți numele, valoarea și tipul unei proprietăți De document. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) returnează un obiect, dar există un set de metode care vă permit să obțineți valoarea proprietății convertită la un anumit tip. După ce aflați ce tip este proprietatea, puteți utiliza una dintre metodele **DocumentProperty.to_XXX**, cum ar fi **DocumentProperty.\_\_str\_\_** și [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), pentru a obține valoarea tipului corespunzător.

Următorul exemplu de cod arată cum să enumerați toate proprietățile încorporate și personalizate într-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

În Microsoft Word, puteți accesa proprietățile documentului utilizând meniul "Proprietăți fișier 3".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-1.png" style="width:400px"/>

## Adăugați sau eliminați proprietățile documentului

Nu puteți adăuga sau elimina proprietățile documentului încorporat folosind Aspose.Words. Puteți modifica sau actualiza doar valorile lor.

Pentru a adăuga proprietăți personalizate ale documentului cu Aspose.Words, Utilizați metoda [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), trecând noul nume de proprietate și valoarea tipului corespunzător. Metoda returnează obiectul [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) nou creat.

Pentru a elimina proprietățile personalizate, Utilizați metoda [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), trecându-i numele proprietății de eliminat sau metoda [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) pentru a elimina proprietatea prin index. De asemenea, puteți elimina toate proprietățile folosind metoda [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

Următorul exemplu de cod verifică dacă o proprietate personalizată cu un nume dat există într-un document și adaugă câteva proprietăți De document personalizate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să eliminați o proprietate document personalizat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Actualizați Proprietățile Documentului Încorporat

Aspose.Words nu actualizează automat proprietățile documentului, așa cum face Microsoft Word cu unele proprietăți, dar oferă o metodă de actualizare a unor proprietăți statistice încorporate ale documentului. Apelați metoda [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) pentru a recalcula și actualiza următoarele proprietăți:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Creați o nouă proprietate personalizată legată de conținut

Aspose.Words oferă metoda [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) pentru a crea o nouă proprietate document personalizat legat de conținut. Această proprietate returnează obiectul de proprietate nou creat sau null dacă **link_source** este nevalid.

Următorul exemplu de cod arată cum să configurați un link către o proprietate personalizată:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Obțineți Variabile De Document

Puteți obține o colecție de variabile de document folosind proprietatea [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Numele și valorile variabilelor sunt șiruri.

Următorul exemplu de cod arată cum să adăugați și să accesați variabilele documentului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Eliminați informațiile personale din Document

Dacă doriți să partajați un document Word cu alte persoane, vă recomandăm să eliminați informații personale, cum ar fi numele autorului și compania. Pentru a face acest lucru, utilizați proprietatea [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) pentru a seta steagul care indică faptul că Microsoft Word va elimina toate informațiile utilizatorului din comentarii, revizuiri și proprietăți ale documentului la salvarea documentului.

Următorul exemplu de cod arată cum să eliminați informațiile personale:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Setarea acestei opțiuni nu elimină de fapt informațiile personale în timpul procesării unui document în Aspose.Words și afectează doar comportamentul Microsoft Word.

{{% /alert %}}
