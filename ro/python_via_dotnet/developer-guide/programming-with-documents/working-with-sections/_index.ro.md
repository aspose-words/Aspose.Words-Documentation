---
title: Lucrul cu secțiuni în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu secțiuni
linktitle: Lucrul cu secțiuni
description: "Creați și gestionați secțiuni și pauze de secțiune într-un document folosind Python. Introduceți secțiunea într-un document Python. Eliminați secțiunea Python. Copiați secțiuni între documente."
type: docs
weight: 120
url: /ro/python-net/working-with-sections/
---

Uneori doriți un document care nu are aceeași formatare pe toate paginile. De exemplu, poate fi necesar să modificați formatele numărului de pagină, să aveți dimensiuni și orientări diferite ale paginii sau să aveți prima pagină a documentului ca pagină de copertă fără nicio numerotare. Puteți realiza acest lucru cu secțiuni.

Secțiunile sunt noduri de nivel care controlează anteturile și subsolurile, orientarea, coloanele, marginile, formatarea numărului de pagină și altele.

Aspose.Words vă permite să gestionați secțiuni, să împărțiți un document în secțiuni și să efectuați modificări de formatare care se aplică numai unei anumite secțiuni. Aspose.Words stochează informații despre formatarea secțiunii, cum ar fi anteturile și subsolurile, configurarea paginii și setările coloanei în pauza de secțiune.

Acest articol explică cum să lucrați cu secțiuni și pauze de secțiune.

## Ce secțiune și pauză de secțiune este

Secțiunile documentului sunt reprezentate de clasele [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) și [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Obiectele secțiunii sunt copii imediati ai nodului [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) și pot fi accesate prin proprietatea [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). Puteți gestiona aceste noduri utilizând unele metode, cum ar fi [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), și altele.

Pauza de secțiune este o opțiune care împarte paginile documentelor în secțiuni cu machete personalizabile.

## Tipuri de pauză de secțiune

Aspose.Words vă permite să împărțiți și să formatați documente folosind diferite pauze de secțiune ale enumerării [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

De asemenea, puteți utiliza enumerarea [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) pentru a alege un tip de pauză care se aplică numai pentru prima secțiune, cum ar fi NewColumn, NewPage, EvenPage, și OddPage.

## Gestionarea unei secțiuni

Deoarece o secțiune este un nod compus normal, întreaga manipulare a nodului API poate fi utilizată pentru a manipula secțiuni: pentru a adăuga, elimina și alte operații pe secțiuni. Puteți citi mai multe despre noduri în articol [Aspose.Words Model Obiect Document (DOM)](/words/python-net/aspose-words-document-object-model/).

Pe de altă parte, puteți utiliza și `DocumentBuilder` API pentru a lucra cu secțiuni. În acest articol, ne vom concentra asupra acestui mod special de a lucra cu secțiuni.

## Introduceți sau eliminați o pauză de secțiune

Aspose.Words vă permite să inserați o pauză de secțiune în text folosind metoda [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype).

Următorul exemplu de cod arată cum să inserați o pauză de secțiune într-un document:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Utilizați metoda [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) pentru a șterge o pauză de secțiune. Dacă nu este necesar să eliminați o anumită pauză de secțiune și, în schimb, să ștergeți conținutul acelei secțiuni, puteți utiliza metoda [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default).

Următorul exemplu de cod arată cum să eliminați pauzele de secțiuni:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Rețineți că o pauză de secțiune conține informații despre secțiunea care merge înainte, nu despre secțiunea care merge după ea. Deci, dacă eliminați o pauză de secțiune, textul înainte de pauza eliminată va obține proprietățile pauzei de secțiune care o urmează. Acest lucru poate face ca întregul document să devină peisaj sau anteturile și subsolurile să se schimbe sau să dispară complet.

{{% /alert %}}

## Mutați o secțiune

Dacă doriți să mutați o secțiune dintr-o poziție în alta în documentul dvs., trebuie să obțineți indexul acelei secțiuni. Aspose.Words vă permite să obțineți o poziție secțiune de la un [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Puteți utiliza proprietatea [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) pentru a obține toate secțiunile din documentul dvs. Dar dacă doriți să obțineți doar prima secțiune, puteți utiliza proprietatea [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/).

Următorul exemplu de cod arată cum să accesați prima secțiune și să iterați prin copiii unui nod compus:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Specificați un aspect de secțiune

Uneori doriți ca documentul dvs. să arate mai bine făcând machete creative pentru diferite secțiuni de documente. Dacă doriți să specificați tipul grilei de secțiuni curente, puteți alege un mod de aspect al secțiunii utilizând enumerarea [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- Implicit
- Rețea
- LineGrid
- SnapToChars

Următorul exemplu de cod arată cum să limitați numărul de linii pe care le poate avea fiecare pagină:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Editarea unei secțiuni

Când adăugați o nouă secțiune la documentul dvs., nu va exista niciun corp sau paragraf pe care să îl puteți edita. Aspose.Words vă permite să garantați că o secțiune conține un corp cu cel puțin un paragraf folosind metoda [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) – va adăuga automat un corp (sau HeaderFooter) nod la document și apoi va adăuga un paragraf la acesta.

Următorul exemplu de cod arată cum să pregătiți un nou nod de secțiune folosind **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Adăugați sau Prepend conținut

Dacă doriți să desenați o formă sau să adăugați text sau imagine la începutul/sfârșitul unei secțiuni, puteți utiliza metodele [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) și [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) ale clasei [Section](https://reference.aspose.com/words/python-net/aspose.words/section/).

Următorul exemplu de cod arată cum să adăugați conținutul unei secțiuni existente:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Clonează o secțiune

Aspose.Words vă permite să duplicați o secțiune creând o copie completă a acesteia folosind metoda [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default).

Următorul exemplu de cod arată cum să clonați prima secțiune din document:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Copiați secțiuni între documente

În unele cazuri, este posibil să aveți documente mari cu multe secțiuni și doriți să copiați conținutul unei secțiuni dintr-un document în altul.

Aspose.Words vă permite să copiați secțiuni între documente folosind metoda [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool).

Următorul exemplu de cod arată cum să copiați secțiuni între documente:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Lucrați cu antetul și subsolul secțiunii

Regulile de bază pentru afișarea unui antet sau subsol pentru fiecare secțiune sunt destul de simple:

1. Dacă Secțiunea nu are propriile anteturi/subsoluri de un anumit tip, atunci este preluată din secțiunea anterioară.
2. Tipul de antet / subsol afișat pe pagină este controlat de setările secțiunii "Different First Page" și "Different Odd & Even pages" – dacă sunt dezactivate, atunci titlurile proprii ale secțiunii sunt ignorate.

Următorul exemplu de cod arată cum să creați 2 secțiuni cu anteturi diferite:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Dacă doriți să eliminați textul anteturilor și subsolurilor fără a elimina obiectele [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) din documentul dvs., puteți utiliza metoda [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). În plus, puteți utiliza metoda [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) pentru a elimina toate formele din anteturi și subsoluri din documentul dvs.

Următorul exemplu de cod arată cum să ștergeți conținutul tuturor anteturilor și subsolurilor dintr-o secțiune:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Următorul exemplu de cod cum să eliminați toate formele din toate anteturile subsoluri într-o secțiune:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Personalizați proprietățile paginii într-o secțiune

Înainte de a imprima o pagină sau un document, poate doriți să personalizați și să modificați dimensiunea și aspectul unei singure pagini sau al întregului document. Cu page setup, puteți modifica setările paginilor de documente, cum ar fi marginile, orientarea și dimensiunea pentru imprimarea diferitelor prime pagini sau pagini impare.

Aspose.Words vă permite să personalizați proprietățile paginii și secțiunii Folosind clasa [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/).

Următorul exemplu de cod arată cum să setați proprietăți precum dimensiunea paginii și orientarea pentru secțiunea curentă:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Următorul exemplu de cod arată cum să modificați proprietățile paginii în toate secțiunile:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Vezi Și

- [Nivelurile logice ale nodurilor dintr-un Document](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Inserați și adăugați documente](/words/python-net/insert-and-append-documents/)
