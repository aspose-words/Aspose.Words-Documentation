---
title: Lucrați cu proprietățile documentului în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrați cu proprietățile documentului
linktitle: Lucrați cu proprietățile documentului
description: "Aspose.Words pentru Java permite stocarea unor informații utile despre documentul dvs., cum ar fi API și numărul versiunii sau data autorizată, în proprietăți încorporate sau personalizate ale documentului."
type: docs
weight: 10
url: /ro/java/work-with-document-properties/
---

Proprietățile documentului permit stocarea unor informații utile despre documentul dvs. Aceste proprietăți pot fi împărțite în două grupe:

* Sistem sau încorporat care conține valori precum titlul documentului, numele autorului, Statisticile documentelor și altele.
* Definite de utilizator sau personalizate, furnizate ca perechi nume-valoare în care utilizatorul poate defini atât numele, cât și valoarea.

Este util să știți că informațiile despre API și numărul versiunii sunt scrise direct în documentele de ieșire. De exemplu, la conversia unui document în PDF, Aspose.Words completează câmpul "aplicație" cu " Aspose.Words", iar câmpul" PDF Producător "cu"Aspose.Words pentru Java YY.M. N", unde *YY.M.N* este versiunea Aspose.Words folosită pentru conversie. Pentru mai multe detalii, a se vedea [Numele generatorului sau al producătorului inclus în documentele de ieșire](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Rețineți că **cannot direct** Aspose.Words pentru a modifica sau elimina aceste informații din documentele de ieșire.

{{% /alert %}}

## Accesați Proprietățile Documentului

Pentru a accesa proprietățile documentului în Aspose.Words utilizați:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) pentru a obține proprietăți încorporate.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) pentru a obține proprietăți personalizate.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Clasa [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) vă permite să obțineți numele, valoarea și tipul unei proprietăți De document. [Value]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) returns an object, but there is a set of methods allowing you to get the property value converted to a specific type. After you get to know what type the property is, you can use one of the **DocumentProperty.ToXXX** methods, such as **DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) și **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), pentru a obține valoarea tipului corespunzător.

Următorul exemplu de cod arată cum să enumerați toate proprietățile încorporate și personalizate într-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

În Microsoft Word, puteți accesa proprietățile documentului utilizând meniul "Proprietăți fișier 3".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Adăugați sau eliminați proprietățile documentului

Nu puteți adăuga sau elimina proprietățile documentului încorporat folosind Aspose.Words. Puteți modifica sau actualiza doar valorile lor.

Pentru a adăuga proprietăți personalizate ale documentului cu Aspose.Words, Utilizați metoda [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean), trecând noul nume de proprietate și valoarea tipului corespunzător. Metoda returnează obiectul **DocumentProperty** nou creat.

Pentru a elimina proprietățile personalizate, Utilizați metoda [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String), trecând numele proprietății de eliminat sau metoda [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) pentru a elimina proprietatea prin index. De asemenea, puteți elimina toate proprietățile folosind metoda [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear).

Următorul exemplu de cod verifică dacă o proprietate personalizată cu un nume dat există într-un document și adaugă câteva proprietăți De document personalizate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să eliminați o proprietate document personalizat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Actualizați Proprietățile Documentului Încorporat

Aspose.Words nu actualizează automat proprietățile documentului, așa cum face Microsoft Word cu unele proprietăți, dar oferă o metodă de actualizare a unor proprietăți statistice încorporate ale documentului. Apelați metoda [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) pentru a recalcula și actualiza următoarele proprietăți:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Creați o nouă proprietate personalizată legată de conținut

Aspose.Words oferă metoda [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) pentru a crea o nouă proprietate document personalizat legat de conținut. Această proprietate returnează obiectul de proprietate nou creat sau null dacă [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) este nevalid.

Următorul exemplu de cod arată cum să configurați un link către o proprietate personalizată:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Obțineți Variabile De Document

Puteți obține o colecție de variabile de document folosind proprietatea [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables). Numele și valorile variabilelor sunt șiruri.

Următorul exemplu de cod arată cum să enumerați variabilele documentului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Eliminați informațiile personale din Document

Dacă doriți să partajați un document Word cu alte persoane, vă recomandăm să eliminați informații personale, cum ar fi numele autorului și compania. Pentru a face acest lucru, utilizați proprietatea [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) pentru a seta steagul care indică faptul că Microsoft Word va elimina toate informațiile utilizatorului din comentarii, revizuiri și proprietăți ale documentului la salvarea documentului.

{{% alert color="primary" %}}

Setarea acestei opțiuni nu elimină de fapt informațiile personale în timpul procesării unui document în Aspose.Words și afectează doar comportamentul Microsoft Word.

{{% /alert %}}
