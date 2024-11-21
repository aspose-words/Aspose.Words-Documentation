---
title: Lucraţi cu proprietăţile documentelor în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrează cu Proprietățile Documentului
linktitle: Lucrează cu Proprietățile Documentului
description: "Aspose.Words pentru .NET permite stocarea unor informații utile despre documentul tău, cum ar fi API și numărul de versiune sau autorizat Date, în proprietăți documentare încorporate sau personalizate folosind C#"
type: docs
weight: 10
url: /ro/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Proprietățile documentului permit stocarea unor informații utile despre documentul dumneavoastră. Aceste proprietăți pot fi împărțite în două grupuri:

* Sistem sau încorporat care conține valori precum titlul documentului, numele autorului, statistici ale documentului și altele.
* Definit de utilizator sau particular, furnizat ca perechi cu nume și valoare, în care utilizatorul poate defini atât numele cât și valoarea.

Este util să știți că informațiile despre API și numărul de versiune sunt scrise direct în documentele de ieșire. De exemplu, la convertirea unui document în format PDF, Aspose.Words completează câmpul "Aplicație" cu "Aspose.Words", și câmpul "PDF Producer" cu "Aspose.Words pentru .NET YY.M.N", unde *YY.M.N* reprezintă versiunea de Aspose.Words folosită pentru conversie. Pentru detalii suplimentare, vezi [Generator or Producer Name Included in Output Documents](/words/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Notă că tu **Nu pot direcționa** Aspose.Words pentru a modifica sau elimina aceste informaţii din documentele de ieșire.

{{% /alert %}}

## Accesați proprietățile documentului

Pentru a accesa proprietățile documentului în Aspose.Words utilizați:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) pentru a obține proprietățile încorporate.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) pentru a obține proprietăți personalizate.

**BuiltInDocumentProperties** și **CustomDocumentProperties** sunt colecții de [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) obiecte. Aceste obiecte pot fi obținute prin proprietatea indexatorului, fie după nume, fie după indice.

**BuiltInDocumentProperties** oferă în plus acces la proprietățile documentului printr-un set de proprietăți introduse care returnează valori de tip corespunzător. " **CustomDocumentProperties** vă permit să adăugați sau să eliminați proprietăți ale documentului dintr-un document.

Clasa [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) permite să obţii numele, valoarea şi tipul unei proprietăţi de document. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) returnează un obiect, dar există o serie de metode care îţi permit să obţii valoarea proprietăţii convertită într-un anumit tip. După ce știi ce tip este proprietatea, poți folosi una din **DocumentProperty.ToXXX** metode, precum **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) și **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), pentru a obține valoarea de tip corespunzător.

Exemplul de cod următor arată cum să enumerăm toate proprietățile încorporate și personalizate într-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

În Microsoft Word poţi accesa proprietăţile unui document folosind meniul "Fișier - Proprietăți".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-1.png" style="width:400px"/>

## Adaugă sau șterge proprietățile documentului

Nu poți adăuga sau elimina proprietăți de document încorporate folosind Aspose.Words. Puteți schimba sau actualiza doar valorile lor.

Pentru a adăuga proprietăți personalizate ale documentului cu Aspose.Words, utilizați metoda [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/), trecând numele noii proprietăți și valoarea de tipul corespunzător. Metoda returnează obiectul nou creat **DocumentProperty**.

Pentru a elimina proprietățile personalizate, utilizați metoda [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/), trecând numele proprietății care urmează să fie eliminată, sau metoda [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at), pentru a elimina proprietatea după indice. Puteți, de asemenea, să eliminați toate proprietățile folosind metoda [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

Exemplul de cod următor verifică dacă o proprietate personalizată cu un nume dat există într-un document și adaugă câteva mai multe proprietăți personalizate ale documentului:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Exemplul de cod următor arată cum să elimini o proprietate personalizată a documentului:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Actualizează proprietățile documentului nativ

Aspose.Words nu actualizează automat proprietățile documentului, așa cum face Microsoft Word cu unele proprietăți, dar oferă o metodă de a actualiza anumite proprietăți încorporate ale documentului. Apelați metoda [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) pentru a recalcula și actualiza următoarele proprietăți:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Creați o proprietate personalizată nouă legată de conținut

"Aspose.Words oferă metoda [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) pentru crearea unei noi proprietăți personalizate de document legată de conținut." Această proprietate returnează obiectul de proprietate nou creat sau nul dacă [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) este nevalid.

Exemplul următor de cod arată cum să configurați o legătură către o proprietate particularizată:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Obține variabilele documentului

Puteţi obţine o colecţie de variabile de document folosind proprietatea [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). Nume și valori de variabile sunt șiruri.

Exemplul următor de cod arată cum să enumerăm variabilele documentului:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Elimina informaţiile personale din document

Dacă doriți să împărtășiți un document Word cu alți oameni, s-ar putea să doriți să eliminați informații personale, cum ar fi numele autorului și numele companiei. Pentru a face acest lucru utilizați proprietatea [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) pentru a seta steagul care indică faptul că Microsoft Word va șterge toate informațiile utilizatorului din comentarii, revizuiri și proprietăți de documente la salvarea documentului.

Exemplul de cod următor arată cum să se elimine informațiile personale:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Setarea acestei opțiuni nu elimină de fapt informațiile personale în timp ce se procesează un document în Aspose.Words și afectează doar comportamentul Microsoft Word.

{{% /alert %}}
