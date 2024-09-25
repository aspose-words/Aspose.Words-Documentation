---
title: Lucrul cu secțiuni în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu secțiuni
linktitle: Lucrul cu secțiuni
description: "Înțelegerea conceptelor de secțiune a documentului și manipularea folosind C#. Introduceţi secţiunea într-un document C#. Elimina secțiunea C#. Copiază secţiuni între documente."
type: docs
weight: 120
url: /ro/net/working-with-sections/
---

Uneori vrei un document care nu are același formatare pe toate paginile. De exemplu, ai putea avea nevoie să modifici formatele de numărare ale paginilor, să ai dimensiuni și orientări diferite ale paginilor sau să ai prima pagină ca o copertă fără numărare. Poți realiza asta cu secțiuni.

Secțiunile sunt noduri de nivel care controlează antetele și subsolurile, orientarea, coloanele, marginile, formatarea numerotării paginilor și altele.

Aspose.Words vă permite să gestionați secțiuni, să împărțiți un document în secțiuni și să faceți modificări de formatare care se aplică doar unei secțiuni specifice. Aspose.Words stochează informații despre formatarea secțiunilor, cum ar fi antetele și picioarele, setările paginii și setările coloanei în întreruperea secțiunii.

Acest articol explică cum să lucrezi cu secțiuni și întreruperi ale secțiunii.

## Ce este Secțiunea și Pauza de secțiune

Secțiunile documentelor sunt reprezentate de clasele [Section](https://reference.aspose.com/words/net/aspose.words/section/) și [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection). Obiectele de secțiune sunt copii imediate ale nodului [Document](https://reference.aspose.com/words/net/aspose.words/document/) și pot fi accesate prin proprietatea [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections). Puteţi gestiona acele noduri folosind anumite metode, cum ar fi [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) şi altele.

Break-ul secțiunii este o opțiune care împarte paginile de document în secțiuni cu dispuneri personalizabile.

## Tipuri de o Secțiune de Pauză

Aspose.Words vă permite să despărțiți și să formatați documente folosind diferite întreruperi de secțiune din enumerarea [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/):

* SectionBreakContinuous
* SectionBreakNewColumn
* SectionBreakNewPage
*SectionBreakEvenPage
*SectionBreakOddPage

De asemenea puteți folosi enumerarea [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) pentru a alege un tip de întrerupere care se aplică doar pentru prima secțiune, cum ar fi NewColumn,NewPage,EvenPage și OddPage.

## Gestionează o secțiune

Întrucât secțiunea este un nod compus obișnuit, întreaga manipulare de noduri API poate fi folosită pentru a manipula secțiunile: pentru a adăuga, elimina și alte operații pe secțiuni. Poţi citi mai multe despre noduri în articolul [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/).

Pe de altă parte, poți folosi și `DocumentBuilder` API pentru a lucra cu secțiuni. În acest articol ne vom concentra pe această modalitate specifică de a lucra cu secțiuni.

## Introduce sau elimină o întrerupere a secțiunii

Aspose.Words vă permite să introduceți o întrerupere de secțiune în text folosind metoda " [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/).

Exemplul de cod următor arată cum să inserați o întrerupere a secțiunii într-un document:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Folosește metoda [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) pentru a șterge o întrerupere de secțiune. Dacă nu trebuie să eliminați o întrerupere de secțiune specifică și în schimb ștergeți conținutul acelei secțiuni, puteți utiliza metoda [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/).

Exemplul următor de cod arată cum să se elimine întreruperi ale secțiunilor:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Notă că o întrerupere secțiune conține informații despre secțiunea care se află înaintea sa, nu secțiunea care este după aceasta. Deci dacă eliminați o întrerupere a secțiunii, textul înainte de întreruperea eliminată va primi proprietățile întreruperii secțiunii care urmează. Acest lucru poate cauza ca întregul document să devină peisaj, sau anteturile și subiecte să se schimbe sau să dispară complet.

{{% /alert %}}

## Mută o secțiune

Dacă vrei să muti un secţion dintr-o poziţie în alta din documentul tău, trebuie să obţii indicele acelei secţiuni. Aspose.Words îţi permite să obţii poziţia unui secţion dintr-un [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) folosind proprietatea [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item). Puteți utiliza proprietatea [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) pentru a obține toate secțiunile din documentul dvs. Dar dacă vrei să obții doar prima secțiune, poți folosi proprietatea [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/).

Exemplul de cod următor arată cum se poate accesa prima secțiune și iterați prin copiii unui nod compus:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Specificați o Dispoziție a Secțiunii

Uneori vrei ca documentul tău să arate mai bine folosind aranjamente creativă pentru diferite secțiuni de documente. Dacă doriți să specificați tipul grilei secțiunii curente, puteți alege un mod de aspect al secțiunii utilizând enumerarea [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/):"

* Implicit
* Grilă
* LineGrid
* SnapToChars

Exemplul de cod următor arată cum să limiteze numărul de linii pe care fiecare pagină poate să le aibă:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Editează o secțiune

Când adaugi o nouă secțiune în documentul tău, nu va exista nici un corp sau paragrafe pe care să le poți edita. Aspose.Words îți permite să garanțiezi că o secțiune conține un corp cu cel puțin un paragraf folosind metoda [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) – va adăuga automat un nod Body (sau HeaderFooter) în document și apoi va adăuga un Paragraf la acesta.

Exemplul următor de cod arată cum să pregătești un nod de secțiune nou folosind **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Adăugare sau Încorporare conținut

Dacă vrei să desenezi o formă sau să adaugi text sau imagine la începutul/sfârșitul unei secțiuni poți folosi metodele [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) și [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) ale clasei [Section](https://reference.aspose.com/words/net/aspose.words/section/).

Exemplul de cod următor arată cum se adaugă conținut unei secțiuni existente:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Clonați o secțiune

Aspose.Words vă permite să duplicați o secțiune prin crearea unei copii complete utilizând metoda " [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) ".

Următorul exemplu de cod arată cum să clonăm prima secțiune în documentul tău:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Copiere secțiuni între documente

În unele cazuri, ai putea avea documente mari cu multe secţiuni şi vrei să copiezi conţinutul unei secţiuni dintr-un document în altul.

Aspose.Words vă permite să copiați secțiuni între documente folosind metoda [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/).

Exemplul următor de cod arată cum să copiați secțiuni între documente:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Lucrează cu antetul secțiunii și subsolul

Regulile de bază pentru afișarea unui antet sau subsol pentru fiecare secțiune sunt destul de simple:

1. Dacă secțiunea nu are propriile anteturi/subiecte de un anumit tip, atunci este luată din secțiunea anterioară.
2. Tipul de antet/ subsol afișat pe pagină este controlat de setările secțiunii "Prima pagină diferită" și "Pagini diferite pentru pagini impare și pare" - dacă sunt dezactivate, atunci titlurile secțiunii sunt ignorate.

Exemplul de cod următor arată cum să creezi 2 secțiuni cu anteturi diferite:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Dacă vrei să elimini textul din antet și subsol fără a elimina [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) obiect în documentul tău, poți folosi metoda [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). În plus, puteți folosi metoda [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) pentru a elimina toate formele din antetele și subsolurile din documentul dumneavoastră.

Exemplul de cod următor arată cum să goliți conținutul tuturor anteturilor și subsolului dintr-o secțiune:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Exemplul de cod următor arată cum să elimini toate formele din toate antetele și subsolurile dintr-o secțiune:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Personalizați proprietățile paginii într-o secțiune

Înainte de imprimarea unei pagini sau a unui document, s-ar putea să vrei să particularizezi şi să modifici dimensiunea şi dispunerea unei singure pagini sau întregii documente. Cu setările de pagină puteți schimba setările pentru pagina documentului, cum ar fi marginile, orientarea și dimensiunea pentru imprimarea diferitelor pagini inițiale sau a paginilor impare.

Aspose.Words vă permite să particularizați proprietățile paginii și secțiunii folosind clasa [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/).

Exemplul următor de cod arată cum să setăm proprietăți precum mărimea paginii și orientarea pentru secțiunea curentă:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Exemplul de cod de mai jos arată cum să modificați proprietățile paginii în toate secțiunile:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Vezi și

* [Logical Levels of Nodes in a Document](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Insert and Append Documents](/words/net/insert-and-append-documents/)

