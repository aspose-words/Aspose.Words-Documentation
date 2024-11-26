---
title: Aspose.Words Dokumentobjektmodell (DOM) in C++
second_title: Aspose.Words für C++
articleTitle: Aspose.Words Dokumentobjektmodell (DOM)
linktitle: Aspose.Words Dokumentobjektmodell (DOM)
type: docs
description: "Das Dokumentobjektmodell (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Lesen, Bearbeiten und ändern Sie den Inhalt und die Formatierung eines Word-Dokuments mit C++."
weight: 10
url: /de/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Das Aspose.Words -Dokumentobjektmodell (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Mit Aspose.Words DOM können Sie den Inhalt und die Formatierung eines Word-Dokuments programmgesteuert lesen, bearbeiten und ändern.

Dieser Abschnitt beschreibt die Hauptklassen der Aspose.Words DOM und ihre Beziehungen. Mithilfe der Aspose.Words DOM-Klassen können Sie programmgesteuerten Zugriff auf Dokumentelemente und Formatierungen erhalten.

## Dokumentobjektbaum erstellen {#create-a-document-objects-tree}

Wenn ein Dokument in die Aspose.Words DOM eingelesen wird, wird ein Objektbaum erstellt und verschiedene Arten von Elementen des Quelldokuments haben ihre eigenen DOM Baumobjekte mit verschiedenen Eigenschaften.

### Dokumentknotenbaum erstellen {#build-document-nodes-tree}

Wenn Aspose.Words ein Word-Dokument in den Speicher liest, werden Objekte unterschiedlichen Typs erstellt, die verschiedene Dokumentelemente darstellen. Jeder Durchlauf eines Textes, Absatzes, einer Tabelle oder eines Abschnitts ist ein Knoten, und sogar das Dokument selbst ist ein Knoten. Aspose.Words definiert eine Klasse für jeden Dokumentknotentyp.

Der Dokumentbaum in Aspose.Words folgt dem zusammengesetzten Entwurfsmuster:

- Alle Knotenklassen leiten sich letztendlich von der [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) -Klasse ab, die die Basisklasse im Aspose.Words -Dokumentobjektmodell ist.
- Knoten, die andere Knoten enthalten können, z. B. **Section** oder **Paragraph**, leiten sich von der Klasse [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) ab, die wiederum von der Klasse **Node** abgeleitet ist.

Das folgende Diagramm zeigt die Vererbung zwischen Knotenklassen des Aspose.Words-Dokumentobjektmodells (DOM). Die Namen der abstrakten Klassen sind kursiv gedruckt.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM enthält auch die Nicht-Knotenklassen, z. B. [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) oder [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), mit denen das Erscheinungsbild und die Stile in einem Dokument angepasst werden. Diese Klassen werden in diesem Diagramm nicht angezeigt, da sie nicht von der Klasse `Node` geerbt wurden.

{{% /alert %}}

Schauen wir uns ein Beispiel an. Das folgende Bild zeigt ein Microsoft Word-Dokument mit verschiedenen Inhaltstypen.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Beim Einlesen des obigen Dokuments in Aspose.Words DOM wird der Objektbaum erstellt, wie im folgenden Schema gezeigt.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), und alle anderen Ellipsen im Diagramm sind Aspose.Words -Objekte, die Elemente des Word-Dokuments darstellen.

### Holen Sie sich einen `Node` -Typ {#get-a-node-type}

Obwohl die Klasse [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) ausreicht, um verschiedene Knoten voneinander zu unterscheiden, stellt Aspose.Words die [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) -Aufzählung bereit, um einige API -Aufgaben zu vereinfachen, z. B. die Auswahl von Knoten eines bestimmten Typs.

Der Typ jedes Knotens kann mit der Eigenschaft [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/) ermittelt werden. Diese Eigenschaft gibt einen **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** und einen Tabellenknoten zurück, der durch **Table** class returns **NodeType**.**Table** dargestellt wird.

Das folgende Beispiel zeigt, wie Sie einen Knotentyp mithilfe der **NodeType**-Aufzählung abrufen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Dokumentenbaumnavigation {#document-tree-navigation}

Aspose.Words stellt ein Dokument als Knotenbaum dar, mit dem Sie zwischen Knoten navigieren können. In diesem Abschnitt wird beschrieben, wie Sie den Dokumentbaum in Aspose.Words durchsuchen und navigieren.

Wenn Sie das zuvor dargestellte Beispieldokument im Dokument-Explorer öffnen, wird der Knotenbaum genau so angezeigt, wie er in Aspose.Words dargestellt ist.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Dokumentknotenbeziehungen {#document-nodes-relationships}

Die Knoten im Baum haben Beziehungen zwischen ihnen:

- Ein Knoten, der einen anderen Knoten enthält, ist eine *parent.*
- Der im übergeordneten Knoten enthaltene Knoten ist ein *child.* Untergeordneter Knoten desselben übergeordneten Knotens sind *sibling* Knoten.
- Der *root* -Knoten ist immer der [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) -Knoten.

Die Knoten, die andere Knoten enthalten können, stammen von der Klasse [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), und alle Knoten stammen letztendlich von der Klasse [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Diese beiden Basisklassen stellen gemeinsame Methoden und Eigenschaften für die Navigation und Änderung der Baumstruktur bereit.

Das folgende UML-Objektdiagramm zeigt mehrere Knoten des Beispieldokuments und ihre Beziehungen zueinander über die Eigenschaften parent, child und sibling:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Dokument ist Knotenbesitzer

Ein Knoten gehört immer zu einem bestimmten Dokument, auch wenn er gerade erstellt oder aus dem Baum entfernt wurde, da wichtige dokumentweite Strukturen wie Stile und Listen im Knoten **Document** gespeichert sind. Beispielsweise ist es nicht möglich, eine **Paragraph** ohne eine **Document** zu haben, da jedem Absatz ein Stil zugewiesen ist, der global für das Dokument definiert ist. Diese Regel wird beim Erstellen neuer Knoten verwendet. Das direkte Hinzufügen einer neuen **Paragraph** zu DOM erfordert ein Dokumentobjekt, das an den Konstruktor übergeben wird.

{{% alert color="primary" %}}

Die Eigenschaft [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) gibt das Dokument zurück, zu dem der Knoten gehört.

{{% /alert %}}

Beim Erstellen eines neuen Absatzes mit [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ist dem Builder immer eine **Document** -Klasse über die Eigenschaft [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/) zugeordnet.

Das folgende Codebeispiel zeigt, dass beim Erstellen eines Knotens immer ein Dokument definiert wird, dem der Knoten gehört:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Elternknoten

Jeder Knoten hat ein übergeordnetes Element, das durch die Eigenschaft [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) angegeben wird. Ein Knoten hat in den folgenden Fällen keinen übergeordneten Knoten, dh **ParentNode** ist null:

- Der Knoten wurde gerade erstellt und noch nicht zum Baum hinzugefügt.
- Der Knoten wurde aus dem Baum entfernt.
- Dies ist der Stammknoten **Document**, der immer einen übergeordneten Nullknoten hat.

Sie können einen Knoten von seinem übergeordneten Knoten entfernen, indem Sie die [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) -Methode aufrufen.Das folgende Codebeispiel zeigt, wie auf den übergeordneten Knoten zugegriffen wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Childknoten

Der effizienteste Weg, auf untergeordnete Knoten von [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) zuzugreifen, ist über die Eigenschaften [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) und [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/), die den ersten bzw. den letzten untergeordneten Knoten zurückgeben. Wenn keine untergeordneten Knoten vorhanden sind, geben diese Eigenschaften *null* zurück.

**CompositeNode**

Wenn ein Knoten kein untergeordnetes Element hat, gibt die Eigenschaft **ChildNodes** eine leere Auflistung zurück. Mit der Eigenschaft [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/) können Sie überprüfen, ob **CompositeNode** untergeordnete Knoten enthält.

Das folgende Codebeispiel zeigt, wie unmittelbare untergeordnete Knoten einer `CompositeNode` mit dem von der `ChildNodes`-Auflistung bereitgestellten Enumerator aufgelistet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Das folgende Codebeispiel zeigt, wie unmittelbare untergeordnete Knoten einer `CompositeNode` mit indiziertem Zugriff aufgelistet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Geschwisterknoten

Sie können den Knoten erhalten, der einem bestimmten Knoten unmittelbar vorausgeht oder folgt, indem Sie die Eigenschaften [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) bzw. [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/) verwenden. Wenn ein Knoten das letzte untergeordnete Element seines übergeordneten Knotens ist, ist die Eigenschaft **NextSibling** *null*. Umgekehrt, wenn der Knoten das erste Kind seines Elternteils ist, ist die **PreviousSibling** -Eigenschaft *null*.

Das folgende Codebeispiel zeigt, wie Sie alle direkten und indirekten untergeordneten Knoten eines zusammengesetzten Knotens effizient besuchen können:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Typisierter Zugriff auf untergeordnete und übergeordnete Knoten

Bisher haben wir die Eigenschaften besprochen, die einen der Basistypen zurückgeben – **Node** oder **CompositeNode**. Manchmal gibt es jedoch Situationen, in denen Sie möglicherweise Werte in eine bestimmte Knotenklasse umwandeln müssen, z. B. **Run** oder **Paragraph**. Das heißt, Sie können nicht vollständig vom Casting wegkommen, wenn Sie mit Aspose.Words DOM arbeiten, das zusammengesetzt ist.

Um die Umwandlung zu reduzieren, stellen die meisten Aspose.Words -Klassen Eigenschaften und Auflistungen bereit, die einen stark typisierten Zugriff ermöglichen. Es gibt drei grundlegende Muster für den typisierten Zugriff:

- Ein übergeordneter Knoten macht typisierte **FirstXXX** - und **LastXXX** -Eigenschaften verfügbar. Zum Beispiel hat die **Document** die Eigenschaften [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) und [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Ebenso hat **Table** Eigenschaften wie [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) und andere.
- Ein übergeordneter Knoten macht eine typisierte Sammlung von untergeordneten Knoten verfügbar, z. B. [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) und andere.
- Ein untergeordneter Knoten bietet typisierten Zugriff auf seinen übergeordneten Knoten, z. B. [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) und andere.

Typisierte Eigenschaften sind lediglich nützliche Verknüpfungen, die manchmal einen einfacheren Zugriff bieten als generische Eigenschaften, die von [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) und [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) geerbt wurden.

Das folgende Codebeispiel zeigt, wie typisierte Eigenschaften verwendet werden, um auf Knoten des Dokumentbaums zuzugreifen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
