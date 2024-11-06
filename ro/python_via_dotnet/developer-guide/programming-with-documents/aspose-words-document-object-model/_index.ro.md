---
title: Aspose.Words DOM
second_title: Aspose.Words pentru Python via .NET
articleTitle: Aspose.Words Model Obiect Document (DOM)
linktitle: Aspose.Words Model Obiect Document (DOM)
type: docs
description: "Document Object Model (DOM) este o reprezentare în memorie a unui document Word. Citiți, manipulați și modificați conținutul și formatarea unui document Word folosind Python."
weight: 10
url: /ro/python-net/aspose-words-document-object-model/
---

Modelul de obiect Document Aspose.Words (DOM) este o reprezentare în memorie a unui document Word. Aspose.Words DOM vă permite să citiți, să manipulați și să modificați în mod programatic conținutul și formatarea unui document Word.

Această secțiune descrie clasele principale ale Aspose.Words DOM și relațiile lor. Folosind clasele Aspose.Words DOM, puteți obține acces programatic la elementele documentului și formatare.

## Creați un arbore de obiecte `Document` {#create-a-document-objects-tree}

Când un document este citit în Aspose.Words DOM, atunci este construit un arbore de obiecte și diferite tipuri de elemente ale documentului sursă au propriile lor obiecte de copac DOM cu proprietăți diferite.

### Construiți Arborele Nodurilor Documentului {#build-document-nodes-tree}

Când Aspose.Words citește un document Word în memorie, acesta creează obiecte de diferite tipuri care reprezintă diferite elemente ale documentului. Fiecare rulare a unui text, paragraf, tabel sau secțiune este un nod și chiar documentul în sine este un nod. Aspose.Words definește o clasă pentru fiecare tip de nod de document.

Arborele de documente din Aspose.Words urmează modelul de proiectare compozit:

- Toate clasele de noduri derivă în cele din urmă din clasa [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), care este clasa de bază din modelul obiectului Document Aspose.Words.
- Nodurile care pot conține alte noduri, de exemplu, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) sau [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), derivă din clasa [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), care la rândul său derivă din clasa [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

Diagrama furnizată mai jos arată moștenirea între clasele de noduri ale modelului de obiect Document Aspose.Words (DOM). Numele claselor abstracte sunt în italice.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM conține, de asemenea, clasele non-nod, cum ar fi [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) sau [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), care sunt utilizate pentru a personaliza aspectul și stilurile dintr-un document. Aceste clase nu sunt prezentate în această diagramă ca fiind moștenite de la clasa [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Să ne uităm la un exemplu. Următoarea imagine prezintă un document Microsoft Word cu diferite tipuri de conținut.

<img src="document-example.png" alt="document-example-aspose-words" style="width:700px"/>

Când citiți documentul de mai sus în Aspose.Words DOM, arborele obiectelor este creat, așa cum se arată în schema de mai jos.

<img src="document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), și toate celelalte elipse din diagramă sunt obiecte Aspose.Words care reprezintă elemente ale documentului Word.

### Obțineți un `Node` Tip {#get-a-node-type}

Deși clasa [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) este suficientă pentru a distinge diferite noduri unele de altele, Aspose.Words oferă enumerarea [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) pentru a simplifica unele sarcini API, cum ar fi selectarea nodurilor de un anumit tip.

Tipul fiecărui nod poate fi obținut folosind proprietatea [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Această proprietate returnează o valoare de enumerare [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). De exemplu, un nod de paragraf reprezentat de clasa [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) returnează [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), iar un nod de tabel reprezentat de clasa [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) returnează [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Următorul exemplu arată cum să obțineți un tip de nod folosind enumerarea [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Document Tree Navigation {#document-tree-navigation}

Aspose.Words reprezintă un document ca arbore de noduri, care vă permite să navigați între noduri. Această secțiune descrie modul de explorare și navigare a arborelui de documente în Aspose.Words.

Când deschideți documentul eșantion, prezentat anterior, în Document Explorer, arborele nodului apare exact așa cum este reprezentat în Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Puteți afla proiectul de probă "Document Explorer" pe [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Relații Noduri Document {#document-nodes-relationships}

Nodurile din copac au relații între ele:

- Un nod care conține un alt nod este un *parent.*
- Nodul conținut în nodul părinte este un *child.* nodurile copil ale aceluiași părinte sunt *sibling* noduri.
- Nodul *root* este întotdeauna nodul [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Nodurile care pot conține alte noduri derivă din clasa [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), iar toate nodurile derivă în cele din urmă din clasa [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Aceste două clase de bază oferă metode și proprietăți comune pentru navigarea și modificarea structurii arborești.

Următoarea diagramă de obiecte UML prezintă mai multe noduri ale documentului eșantion și relațiile lor între ele prin proprietățile părinte, copil și frate:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Documentul este proprietarul nodului

Un nod aparține întotdeauna unui anumit document, chiar dacă tocmai a fost creat sau eliminat din copac, deoarece structurile vitale la nivelul întregului document, cum ar fi stilurile și listele, sunt stocate în nodul [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). De exemplu, nu este posibil să aveți un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) fără un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) deoarece fiecare paragraf are un stil atribuit care este definit global pentru document. Această regulă este utilizată la crearea oricăror noduri noi. Adăugarea unui nou [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Direct la DOM necesită un obiect document transmis constructorului.

{{% alert color="primary" %}}

Proprietatea [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) returnează documentul căruia îi aparține nodul.

{{% /alert %}}

Când creați un paragraf nou folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), constructorul are întotdeauna o clasă [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) legată de acesta prin proprietatea [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

Următorul exemplu de cod arată că atunci când creați orice nod, un document care va deține nodul este întotdeauna definit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Nodul Părinte

Fiecare nod are un părinte specificat de proprietatea [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Un nod nu are nod părinte, adică [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) este *None*, în următoarele cazuri:

- Nodul tocmai a fost creat și nu a fost încă adăugat la copac.
- Nodul a fost scos din copac.
- Acesta este nodul rădăcină [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) care are întotdeauna un nod părinte None.

Puteți elimina un nod din părintele său apelând metoda [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/).Următorul exemplu de cod arată cum să accesați nodul părinte:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Noduri Copil

Cel mai eficient mod de a accesa nodurile copil ale unui [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) este prin proprietățile [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) și [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) care returnează primul și ultimul nod copil, respectiv. Dacă nu există noduri copil, aceste proprietăți returnează *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) oferă, de asemenea, colecția [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) care permite accesul indexat sau enumerat la nodurile copil. Metoda [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) returnează o colecție live de noduri, ceea ce înseamnă că ori de câte ori documentul este modificat, cum ar fi atunci când nodurile sunt eliminate sau adăugate, colecția **get_child_nodes** este actualizată automat.

Dacă un nod nu are copil, atunci metoda **get_child_nodes** returnează o colecție goală. Puteți verifica dacă [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) conține noduri copil folosind proprietatea [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

Următorul exemplu de cod arată cum să enumerați nodurile copil imediate ale unui [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) folosind enumeratorul furnizat de colecția **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Noduri De Frate

Puteți obține nodul care precede sau urmează imediat un anumit nod folosind proprietățile [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) și, respectiv, [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/). Dacă un nod este ultimul copil al părintelui său, atunci proprietatea [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) este *None*. În schimb, dacă nodul este primul copil al părintelui său, proprietatea [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) este *None*.

Următorul exemplu de cod arată cum să vizitați eficient toate nodurile copil directe și indirecte ale unui nod compus:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Acces tastat la nodurile copil și părinte {#typed-access-to-child-and-parent-nodes}

Până în prezent, am discutat despre proprietățile care returnează unul dintre tipurile de bază – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sau [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Dar uneori există situații în care ar putea fi necesar să aruncați valori într-o anumită clasă de noduri, cum ar fi [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) sau [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Adică, nu puteți scăpa complet de turnare atunci când lucrați cu Aspose.Words DOM, care este compozit.

Pentru a reduce nevoia de turnare, majoritatea claselor Aspose.Words oferă proprietăți și colecții care oferă acces puternic tastat. Există trei modele de bază de acces tastat:

- Un nod părinte expune proprietățile tastate **first_XXX** și **last_XXX**. De exemplu, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) are [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) și [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) proprietăți. În mod similar, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) are proprietăți precum [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) și altele.
- Un nod părinte expune o colecție tipărită de noduri copil, cum ar fi [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) și altele.
- Un nod copil oferă acces tastat la părintele său, cum ar fi [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) și altele.

Proprietățile tastate sunt doar scurtături utile care uneori oferă acces mai ușor decât proprietățile generice moștenite de la [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) și [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Următorul exemplu de cod arată cum să utilizați proprietățile tastate pentru a accesa nodurile arborelui de documente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
