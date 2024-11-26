---
title: Lucrați cu proprietățile documentului în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrați cu proprietățile documentului
linktitle: Lucrați cu proprietățile documentului
description: "Aspose.Words pentru C++ permite stocarea unor informații utile despre documentul dvs., cum ar fi API și numărul versiunii sau data autorizată, în proprietăți încorporate sau personalizate ale documentului."
type: docs
weight: 10
url: /ro/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Proprietățile documentului permit stocarea unor informații utile despre documentul dvs. Aceste proprietăți pot fi împărțite în două grupe:

* Sistem sau încorporat care conține valori precum titlul documentului, numele autorului, Statisticile documentelor și altele.
* Definite de utilizator sau personalizate, furnizate ca perechi nume-valoare în care utilizatorul poate defini atât numele, cât și valoarea.

Este util să știți că informațiile despre API și numărul versiunii sunt scrise direct în documentele de ieșire. De exemplu, la conversia unui document în PDF, Aspose.Words completează câmpul "aplicație" cu " Aspose.Words", iar câmpul" PDF Producător "cu"Aspose.Words pentru C++ YY.M. N", unde *YY.M.N* este versiunea Aspose.Words folosită pentru conversie. Pentru mai multe detalii, a se vedea [Numele generatorului sau al producătorului inclus în documentele de ieșire](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Rețineți că **cannot direct** Aspose.Words pentru a modifica sau elimina aceste informații din documentele de ieșire.

{{% /alert %}}

## Accesați Proprietățile Documentului

Pentru a accesa proprietățile documentului în Aspose.Words utilizați:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) pentru a obține proprietăți încorporate.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) pentru a obține proprietăți personalizate.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Clasa [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) vă permite să obțineți numele, valoarea și tipul unei proprietăți De document. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) returnează un obiect, dar există un set de metode care vă permit să obțineți valoarea proprietății convertită la un anumit tip. După ce aflați ce tip este proprietatea, puteți utiliza una dintre metodele **DocumentProperty.ToXXX**, cum ar fi **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) și **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), pentru a obține valoarea tipului corespunzător.

Următorul exemplu de cod arată cum să enumerați toate proprietățile încorporate și personalizate într-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

În Microsoft Word, puteți accesa proprietățile documentului utilizând meniul "Proprietăți fișier 3".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Adăugați sau eliminați proprietățile documentului

Nu puteți adăuga sau elimina proprietățile documentului încorporat folosind Aspose.Words. Puteți modifica sau actualiza doar valorile lor.

Pentru a adăuga proprietăți personalizate ale documentului cu Aspose.Words, Utilizați metoda [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), trecând noul nume de proprietate și valoarea tipului corespunzător. Metoda returnează obiectul **DocumentProperty** nou creat.

Pentru a elimina proprietățile personalizate, Utilizați metoda [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), trecându-i numele proprietății de eliminat sau metoda [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) pentru a elimina proprietatea prin index. De asemenea, puteți elimina toate proprietățile folosind metoda [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Următorul exemplu de cod verifică dacă o proprietate personalizată cu un nume dat există într-un document și adaugă câteva proprietăți De document personalizate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Următorul exemplu de cod arată cum să eliminați o proprietate document personalizat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Actualizați Proprietățile Documentului Încorporat

Aspose.Words nu actualizează automat proprietățile documentului, așa cum face Microsoft Word cu unele proprietăți, dar oferă o metodă de actualizare a unor proprietăți statistice încorporate ale documentului. Apelați metoda [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) pentru a recalcula și actualiza următoarele proprietăți:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Creați o nouă proprietate personalizată legată de conținut

Aspose.Words oferă metoda [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) pentru a crea o nouă proprietate document personalizat legat de conținut. Această proprietate returnează obiectul de proprietate nou creat sau null dacă [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) este nevalid.

Următorul exemplu de cod arată cum să configurați un link către o proprietate personalizată:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Obțineți Variabile De Document

Puteți obține o colecție de variabile de document folosind proprietatea [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Numele și valorile variabilelor sunt șiruri.

Următorul exemplu de cod arată cum să enumerați variabilele documentului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Eliminați informațiile personale din Document

Dacă doriți să partajați un document Word cu alte persoane, vă recomandăm să eliminați informații personale, cum ar fi numele autorului și compania. Pentru a face acest lucru, utilizați proprietatea [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) pentru a seta steagul care indică faptul că Microsoft Word va elimina toate informațiile utilizatorului din comentarii, revizuiri și proprietăți ale documentului la salvarea documentului.

Următorul exemplu de cod arată cum să eliminați informațiile personale:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Setarea acestei opțiuni nu elimină de fapt informațiile personale în timpul procesării unui document în Aspose.Words și afectează doar comportamentul Microsoft Word.

{{% /alert %}}
