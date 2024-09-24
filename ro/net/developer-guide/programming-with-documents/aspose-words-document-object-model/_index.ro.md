---
title: Aspose.Words Document Object Model (DOM) în C#
second_title: Aspose.Words pentru .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) este o reprezentare în memorie a unui document Word. Citește, manipulează și modifică conținutul și formatarea unui fișier Word folosind C#."
weight: 10
url: /ro/net/aspose-words-document-object-model/
---

The Aspose.Words Document Object Model (DOM) este o reprezentare în memorie a unui document Word. Aspose.Words DOM vă permite să citiţi programatic, să manipulaţi şi să modificaţi conţinutul şi formatarea unui document Word.

Această secțiune descrie clasele principale ale Aspose.Words DOM și relațiile dintre ele. Prin utilizarea clasei Aspose.Words și a clasei DOM, poți obține acces programatic la elementele documentului și la formatare.

## Creare `Document` Arbore de Obiecte {#create-a-document-objects-tree}

Când un document este citit în Aspose.Words DOM, atunci se construiește un obiect de arbore și diferite tipuri de elemente ale documentului sursă au propriile lor obiecte de DOM cu diverse proprietăți.

### Construiește noduri de document {#build-document-nodes-tree}

Când Aspose.Words citește un document Word în memorie, acesta creează obiecte de tipuri diferite care reprezintă diverse elemente ale documentului. Fiecare rulare a unui text, paragraf, tabel sau secțiune este un nod și chiar și documentul în sine este un nod. Aspose.Words definește o clasă pentru fiecare tip de nod document.

Arborele de documente în Aspose.Words urmează modelul de proiectare Composite:

Toate clasele de noduri derivă în cele din urmă din clasa [Node](https://reference.aspose.com/words/net/aspose.words/node/), care este clasa de bază în Aspose.Words Document Object Model.
- Nodurile care pot conține alte noduri, de exemplu, **Section** sau **Paragraph**, provin din clasa [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), care derivă din clasa **Node**.

Diagrama furnizată de mai jos arată moștenirea dintre clasele de noduri Aspose.Words Document Object Model (DOM). Numele claselor abstracte sunt în italice.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM conține, de asemenea, clasele care nu sunt noduri, cum ar fi [Style](https://reference.aspose.com/words/net/aspose.words/style/) sau [Font](https://reference.aspose.com/words/net/aspose.words/font/), care sunt folosite pentru a personaliza aspectul și stilurile din cadrul unui document. Aceste clase nu sunt prezentate în acest diagramă deoarece nu sunt moștenite din clasa `Node`.

{{% /alert %}}

Să analizăm un exemplu. Următoarea imagine prezintă un Microsoft Word document cu diferite tipuri de conținut.

<img src="document-example.png" alt="document-example-aspose-words" style="width:700px"/>

Când se citește documentul de mai sus în Aspose.Words DOM, este creat arborele obiectelor, așa cum se arată în schema de mai jos.

<img src="document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/) și toate celelalte elipse de pe diagramă sunt Aspose.Words obiecte care reprezintă elemente din documentul Word.

### Obțineți un `Node` Tip {#get-a-node-type}

Cu toate că clasa [Node](https://reference.aspose.com/words/net/aspose.words/node/) este suficientă pentru a distinge noduri diferite unele de altele, Aspose.Words oferă enumerarea [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) pentru a simplifica unele sarcini API, cum ar fi selectarea nodurilor de un anumit tip.

Tipul fiecărui nod poate fi obținut folosind proprietatea [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/). Această proprietate returnează o valoare enumerată " **NodeType** ". Spre exemplu, un nod de paragraf reprezentat de clasa **Paragraph** returnează **NodeType**.**Paragraph**, iar un nod de tabel reprezentat de clasa **Table** returnează **NodeType**.**Table**.

Exemplul de mai jos arată cum să obții un tip nod folosind enumerarea **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Navigare în arborele de documente {#document-tree-navigation}

Aspose.Words reprezintă un document ca un arbore de noduri, care vă permite să navigaţi între noduri. Această secțiune descrie modul în care să explorezi și să navighezi copacul documentelor din Aspose.Words.

Când deschizi documentul de exemplu, prezentat mai sus, în Explorer-ul Documentelor, arborele nodurilor apare exact așa cum este reprezentat în Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Poţi învăţa proiectul de exemplu "Explorator documente" pe [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Relaţii între noduri de document {#document-nodes-relationships}

Nodurile din arbore au relaţii între ele:

- Un nod care conține alt nod este un *parent.*
- Nodul conținut în nodul părinte este un *child.*. Nodurile copil cu același nod părinte sunt *sibling* noduri.
- Nodul *root* este întotdeauna nodul [Document](https://reference.aspose.com/words/net/aspose.words/document/).

Nodurile care pot conține alte noduri sunt derivate din clasa [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), iar toate nodurile derivă în final din clasa [Node](https://reference.aspose.com/words/net/aspose.words/node/). Aceste două clase de bază oferă metode și proprietăți comune pentru navigarea și modificarea structurii copacilor.

Diagrama obiectelor UML de mai jos prezintă mai multe noduri ale documentului de exemplu și relațiile lor unul cu celălalt prin intermediul proprietăților părinte, copil și frate":

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Document este Proprietar Nod

Un nod aparține întotdeauna unui anumit document, chiar dacă acesta a fost creat recent sau eliminat din copac, deoarece structuri esențiale de tip documentar cum ar fi stilurile și listele sunt stocate în nodul **Document**. De exemplu, nu este posibil să ai un **Paragraph** fără un **Document** pentru că fiecare paragraf are un stil atribuit care este definit la nivel global pentru document. Această regulă este folosită atunci când se creează orice nod nou. Adăugarea unei noi **Paragraph** direct în DOM necesită un obiect document transmis constructorului.

{{% alert color="primary" %}}

Proprietatea [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) returnează documentul la care aparține nodul.

{{% /alert %}}

Când creezi un nou paragraf folosind [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), constructorul are întotdeauna o clasă **Document** legată prin proprietatea [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/).

Exemplul de cod următor arată că atunci când creați orice nod, un document care va deține nodul este întotdeauna definit:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Node părinte

Fiecare nod are un părinte specificat de proprietatea [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/). Un nod nu are nod părinte, adică **ParentNode** este nul, în următoarele cazuri:

nodul tocmai a fost creat și nu a fost încă adăugat la copac.
- Nodul a fost scos din arbore.
- Acesta este nodul rădăcină **Document** care are întotdeauna un nod părinte nul.

Poţi elimina un nod din părintele său prin apelarea metodei [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/).Exemplul de cod următor arată cum se accesează nodul părinte:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Nodi copii

Cea mai eficientă modalitate de a accesa nodurile copil ale unui [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) este prin proprietățile [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) și [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) care returnează primul și ultimul nod copil, respectiv. Dacă nu există noduri copil, aceste proprietăți returnează *null*.

**CompositeNode** oferă, de asemenea, metoda [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) care permite accesul indexat sau enumerat la nodurile fiice. Proprietatea **ChildNodes** este o colecție vie de noduri, ceea ce înseamnă că ori de câte ori documentul este modificat, cum ar fi atunci când se elimină sau se adaugă noduri, colecția **ChildNodes** este actualizată automat.

Dacă un nod nu are copii, atunci proprietatea **ChildNodes** returnează o colecție goală. Poţi verifica dacă **CompositeNode** conţine vreun nod copil folosind proprietatea [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/).

Exemplul de cod următor arată cum să enumerați nodurile copil imediate ale unui `CompositeNode` folosind enumeratorul furnizat de colecția `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Exemplul de cod următor arată cum să enumerăm nodurile copil imediate ale unui `CompositeNode` folosind accesul indexat:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Node-uri fratești

Puteți obține nodul care precede imediat sau urmează un anumit nod folosind proprietățile [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) și [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/), în mod corespunzător. Dacă un nod este ultimul copil al părintelui său atunci proprietatea **NextSibling** este *null*. "Dimpotrivă, dacă nodul este primul copil al părintelui său, proprietatea **PreviousSibling** este *null*."

Exemplul de cod următor prezintă modul în care se pot vizita eficient toate nodurile copil directe și indirecte ale unui nod compus:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Accesul tipat la nodurile copil și părinte {#typed-access-to-child-and-parent-nodes}

Până acum am discutat proprietățile care returnează unul din tipurile de bază - **Node** sau **CompositeNode**. Dar uneori există situații în care ai putea avea nevoie să transmiți valori la o anumită clasă de nod, cum ar fi **Run** sau **Paragraph**. Adică, nu poţi scăpa complet de aruncări când lucrezi cu Aspose.Words DOM, care este compozit.

Pentru a reduce nevoia de punere în scene, majoritatea Aspose.Words clase oferă proprietăți și colecții care oferă acces puternic tipat. Există trei modele de bază pentru accesul tastat:

- Un nod părinte expune proprietățile tipate **FirstXXX** și **LastXXX**. De exemplu, **Document** are [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) și [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) proprietăți. În mod similar, **Table** are proprietăți precum [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) și altele.
- Un nod părinte expune o colecție tipizată de noduri copil, cum ar fi [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) și altele.
- Un nod copil oferă acces tipizat către părintele său, cum ar fi [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) și altele.

Proprietățile tipizate sunt doar scurtături utile care, uneori, oferă acces mai ușor decât proprietățile generice moștenite de la [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) și [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

Exemplul următor de cod arată cum să folosești proprietățile tipizate pentru a accesa nodurile din arborele de documente:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
