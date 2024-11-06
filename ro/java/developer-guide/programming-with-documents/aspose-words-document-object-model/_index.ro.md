---
title: Aspose.Words Model Obiect Document (DOM)
second_title: Aspose.Words pentru Java
articleTitle: Aspose.Words Model Obiect Document (DOM)
linktitle: Aspose.Words Model Obiect Document (DOM)
type: docs
description: "Document Object Model (DOM) este o reprezentare în memorie a unui document Word. Citiți, manipulați și modificați conținutul și formatarea unui document Word folosind Java."
weight: 10
url: /ro/java/aspose-words-document-object-model/
---

Modelul de obiect Document Aspose.Words (DOM) este o reprezentare în memorie a unui document Word. Aspose.Words DOM vă permite să citiți, să manipulați și să modificați în mod programatic conținutul și formatarea unui document Word.

Această secțiune descrie clasele principale ale Aspose.Words DOM și relațiile lor. Folosind clasele Aspose.Words DOM, puteți obține acces programatic la elementele documentului și formatare.

## Creare Document Arbore Obiect {#create-a-document-objects-tree}

Când un document este citit în Aspose.Words DOM, atunci este construit un arbore de obiecte și diferite tipuri de elemente ale documentului sursă au propriile lor obiecte de copac DOM cu proprietăți diferite.

### Construiți Arborele Nodurilor Documentului {#build-document-nodes-tree}

Când Aspose.Words citește un document Word în memorie, acesta creează obiecte de diferite tipuri care reprezintă diferite elemente ale documentului. Fiecare rulare a unui text, paragraf, tabel sau secțiune este un nod și chiar documentul în sine este un nod. Aspose.Words definește o clasă pentru fiecare tip de nod de document.

Arborele de documente din Aspose.Words urmează modelul de proiectare compozit:

- Toate clasele de noduri derivă în cele din urmă din clasa [Node](https://reference.aspose.com/words/java/com.aspose.words/node/), care este clasa de bază din modelul obiectului Document Aspose.Words.
- Nodurile care pot conține alte noduri, de exemplu, **Section** sau **Paragraph**, derivă din clasa [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), care la rândul său derivă din clasa **Node**.

Diagrama furnizată mai jos arată moștenirea între clasele de noduri ale modelului de obiect Document Aspose.Words (DOM). Numele claselor abstracte sunt în italice.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM conține, de asemenea, clasele non-nod, cum ar fi [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) sau [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), care sunt utilizate pentru a personaliza aspectul și stilurile dintr-un document. Aceste clase nu sunt prezentate în această diagramă ca fiind moștenite de la clasa `Node`.

{{% /alert %}}

Să ne uităm la un exemplu. Următoarea imagine prezintă un document Microsoft Word cu diferite tipuri de conținut.

<img src="document-example.png" alt="document-example" style="width:700px"/>

Când citiți documentul de mai sus în Aspose.Words DOM, arborele obiectelor este creat, așa cum se arată în schema de mai jos.

<img src="document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), și toate celelalte elipse din diagramă sunt obiecte Aspose.Words care reprezintă elemente ale documentului Word.

### Obțineți un `Node` Tip {#get-a-node-type}

Deși clasa [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) este suficientă pentru a distinge diferite noduri unele de altele, Aspose.Words oferă enumerarea [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) pentru a simplifica unele sarcini API, cum ar fi selectarea nodurilor de un anumit tip.

Tipul fiecărui nod poate fi obținut folosind proprietatea [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType). Această proprietate returnează o valoare de enumerare **NodeType**. De exemplu, un nod de paragraf reprezentat de clasa **Paragraph** returnează **NodeType**.**Paragraph**, iar un nod de tabel reprezentat de clasa **Table** returnează **NodeType**.**Table**.

Următorul exemplu arată cum să obțineți un tip de nod folosind enumerarea **NodeType**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Document Tree Navigation {#document-tree-navigation}

Aspose.Words reprezintă un document ca arbore de noduri, care vă permite să navigați între noduri. Această secțiune descrie modul de explorare și navigare a arborelui de documente în Aspose.Words.

Când deschideți documentul eșantion, prezentat anterior, în Document Explorer, arborele nodului apare exact așa cum este reprezentat în Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Puteți afla proiectul de probă "Document Explorer" pe [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Relații Nod Document {#document-nodes-relationships}

Nodurile din copac au relații între ele:

- Un nod care conține un alt nod este un *parent.*
- Nodul conținut în nodul părinte este un *child.* nodurile copil ale aceluiași părinte sunt *sibling* noduri.
- Nodul *root* este întotdeauna nodul [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).

Nodurile care pot conține alte noduri derivă din clasa [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), iar toate nodurile derivă în cele din urmă din clasa [Node](https://reference.aspose.com/words/java/com.aspose.words/node/). Aceste două clase de bază oferă metode și proprietăți comune pentru navigarea și modificarea structurii arborești.

Următoarea diagramă de obiecte UML prezintă mai multe noduri ale documentului eșantion și relațiile lor între ele prin proprietățile părinte, copil și frate:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Documentul este proprietarul nodului

Un nod aparține întotdeauna unui anumit document, chiar dacă tocmai a fost creat sau eliminat din copac, deoarece structurile vitale la nivelul întregului document, cum ar fi stilurile și listele, sunt stocate în nodul **Document**. De exemplu, nu este posibil să aveți un **Paragraph** fără un **Document** deoarece fiecare paragraf are un stil atribuit care este definit global pentru document. Această regulă este utilizată la crearea oricăror noduri noi. Adăugarea unui nou **Paragraph** Direct la DOM necesită un obiect document transmis constructorului.

{{% alert color="primary" %}}

Proprietatea [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) returnează documentul căruia îi aparține nodul.

{{% /alert %}}

Când creați un paragraf nou folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), constructorul are întotdeauna o clasă **Document** legată de acesta prin proprietatea [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document).

Următorul exemplu de cod arată că atunci când creați orice nod, un document care va deține nodul este întotdeauna definit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Nodul Părinte

Fiecare nod are un părinte specificat de proprietatea [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode). Un nod nu are nod părinte, adică **ParentNode** este nul, în următoarele cazuri:

- Nodul tocmai a fost creat și nu a fost încă adăugat la copac.
- Nodul a fost scos din copac.
- Acesta este nodul rădăcină **Document** care are întotdeauna un nod părinte nul.

Puteți elimina un nod din părintele său apelând metoda [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove).Următorul exemplu de cod arată cum să accesați nodul părinte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Noduri Copil

Cel mai eficient mod de a accesa nodurile copil ale unui [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) este prin proprietățile [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) și [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) care returnează primul și ultimul nod copil, respectiv. Dacă nu există noduri copil, aceste proprietăți returnează *null*.

**CompositeNode**

Dacă un nod nu are copil, atunci proprietatea **ChildNodes** returnează o colecție goală. Puteți verifica dacă **CompositeNode** conține noduri copil folosind proprietatea [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes).

Următorul exemplu de cod arată cum să enumerați nodurile copil imediate ale unui `CompositeNode` folosind enumeratorul furnizat de colecția `ChildNodes`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Următorul exemplu de cod arată cum să enumerați nodurile copil imediate ale unui `CompositeNode` folosind accesul indexat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Noduri De Frate

Puteți obține nodul care precede sau urmează imediat un anumit nod folosind proprietățile [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) și, respectiv, [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling). Dacă un nod este ultimul copil al părintelui său, atunci proprietatea **NextSibling** este *null*. În schimb, dacă nodul este primul copil al părintelui său, proprietatea **PreviousSibling** este *null*.

Următorul exemplu de cod arată cum să vizitați eficient toate nodurile copil directe și indirecte ale unui nod compus:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Acces tastat la nodurile copil și părinte

Până în prezent, am discutat despre proprietățile care returnează unul dintre tipurile de bază – **Node** sau **CompositeNode**. Dar uneori există situații în care ar putea fi necesar să aruncați valori într-o anumită clasă de noduri, cum ar fi **Run** sau **Paragraph**. Adică, nu puteți scăpa complet de turnare atunci când lucrați cu Aspose.Words DOM, care este compozit.

Pentru a reduce nevoia de turnare, majoritatea claselor Aspose.Words oferă proprietăți și colecții care oferă acces puternic tipărit. Există trei modele de bază de acces tastat:

- Un nod părinte expune proprietățile tastate **FirstXXX** și **LastXXX**. De exemplu, **Document** are [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) și [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) proprietăți. În mod similar, **Table** are proprietăți precum [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow) și altele.
- Un nod părinte expune o colecție tipărită de noduri copil, cum ar fi [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs) și altele.
- Un nod copil oferă acces tastat la părintele său, cum ar fi [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection) și altele.

Proprietățile tastate sunt doar scurtături utile care uneori oferă acces mai ușor decât proprietățile generice moștenite de la [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) și [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Următorul exemplu de cod arată cum să utilizați proprietățile tastate pentru a accesa nodurile arborelui de documente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
