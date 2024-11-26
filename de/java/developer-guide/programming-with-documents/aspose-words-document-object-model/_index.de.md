---
title: Aspose.Words Dokumentobjektmodell (DOM)
second_title: Aspose.Words für Java
articleTitle: Aspose.Words Dokumentobjektmodell (DOM)
linktitle: Aspose.Words Dokumentobjektmodell (DOM)
type: docs
description: "Das Dokumentobjektmodell (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Lesen, Bearbeiten und ändern Sie den Inhalt und die Formatierung eines Word-Dokuments mit Java."
weight: 10
url: /de/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Das Aspose.Words -Dokumentobjektmodell (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Mit Aspose.Words DOM können Sie den Inhalt und die Formatierung eines Word-Dokuments programmgesteuert lesen, bearbeiten und ändern.

Dieser Abschnitt beschreibt die Hauptklassen der Aspose.Words DOM und ihre Beziehungen. Mithilfe der Aspose.Words DOM-Klassen können Sie programmgesteuerten Zugriff auf Dokumentelemente und Formatierungen erhalten.

## Dokumentobjektbaum erstellen {#create-a-document-objects-tree}

Wenn ein Dokument in die Aspose.Words DOM eingelesen wird, wird ein Objektbaum erstellt und verschiedene Arten von Elementen des Quelldokuments haben ihre eigenen DOM Baumobjekte mit verschiedenen Eigenschaften.

### Dokumentknotenbaum erstellen {#build-document-nodes-tree}

Wenn Aspose.Words ein Word-Dokument in den Speicher liest, werden Objekte unterschiedlichen Typs erstellt, die verschiedene Dokumentelemente darstellen. Jeder Durchlauf eines Textes, Absatzes, einer Tabelle oder eines Abschnitts ist ein Knoten, und sogar das Dokument selbst ist ein Knoten. Aspose.Words definiert eine Klasse für jeden Dokumentknotentyp.

Der Dokumentbaum in Aspose.Words folgt dem zusammengesetzten Entwurfsmuster:

- Alle Knotenklassen leiten sich letztendlich von der [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) -Klasse ab, die die Basisklasse im Aspose.Words -Dokumentobjektmodell ist.
- Knoten, die andere Knoten enthalten können, z. B. **Section** oder **Paragraph**, leiten sich von der Klasse [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) ab, die wiederum von der Klasse **Node** abgeleitet ist.

Das folgende Diagramm zeigt die Vererbung zwischen Knotenklassen des Aspose.Words-Dokumentobjektmodells (DOM). Die Namen der abstrakten Klassen sind kursiv gedruckt.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM enthält auch die Nicht-Knotenklassen, z. B. [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) oder [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), mit denen das Erscheinungsbild und die Stile in einem Dokument angepasst werden. Diese Klassen werden in diesem Diagramm nicht angezeigt, da sie nicht von der Klasse `Node` geerbt wurden.

{{% /alert %}}

Schauen wir uns ein Beispiel an. Das folgende Bild zeigt ein Microsoft Word-Dokument mit verschiedenen Inhaltstypen.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Beim Einlesen des obigen Dokuments in Aspose.Words DOM wird der Objektbaum erstellt, wie im folgenden Schema gezeigt.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), und alle anderen Ellipsen im Diagramm sind Aspose.Words -Objekte, die Elemente des Word-Dokuments darstellen.

### Holen Sie sich einen `Node` Typ {#get-a-node-type}

Obwohl die Klasse [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) ausreicht, um verschiedene Knoten voneinander zu unterscheiden, stellt Aspose.Words die [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) -Aufzählung bereit, um einige API -Aufgaben zu vereinfachen, z. B. die Auswahl von Knoten eines bestimmten Typs.

Der Typ jedes Knotens kann mit der Eigenschaft [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) ermittelt werden. Diese Eigenschaft gibt einen **NodeType**-Aufzählungswert zurück. Beispielsweise gibt ein Absatzknoten, der durch die Klasse **Paragraph** dargestellt wird, **NodeType**.**Paragraph** zurück, und ein Tabellenknoten, der durch die Klasse **Table** dargestellt wird, gibt **NodeType**.**Table** zurück.

Das folgende Beispiel zeigt, wie Sie einen Knotentyp mithilfe der **NodeType**-Aufzählung abrufen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Dokumentenbaumnavigation {#document-tree-navigation}

Aspose.Words stellt ein Dokument als Knotenbaum dar, mit dem Sie zwischen Knoten navigieren können. In diesem Abschnitt wird beschrieben, wie Sie den Dokumentbaum in Aspose.Words durchsuchen und navigieren.

Wenn Sie das zuvor dargestellte Beispieldokument im Dokument-Explorer öffnen, wird der Knotenbaum genau so angezeigt, wie er in Aspose.Words dargestellt ist.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Sie können das Beispielprojekt "Document Explorer" auf dem lernen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Dokumentknotenbeziehungen {#document-nodes-relationships}

Die Knoten im Baum haben Beziehungen zwischen ihnen:

- Ein Knoten, der einen anderen Knoten enthält, ist eine *parent.*
- Der im übergeordneten Knoten enthaltene Knoten ist ein *child.* Untergeordneter Knoten desselben übergeordneten Knotens sind *sibling* Knoten.
- Der *root* -Knoten ist immer der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) -Knoten.

Die Knoten, die andere Knoten enthalten können, stammen von der Klasse [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), und alle Knoten stammen letztendlich von der Klasse [Node](https://reference.aspose.com/words/java/com.aspose.words/node/). Diese beiden Basisklassen stellen gemeinsame Methoden und Eigenschaften für die Navigation und Änderung der Baumstruktur bereit.

Das folgende UML-Objektdiagramm zeigt mehrere Knoten des Beispieldokuments und ihre Beziehungen zueinander über die Eigenschaften parent, child und sibling:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Dokument ist Knotenbesitzer

Ein Knoten gehört immer zu einem bestimmten Dokument, auch wenn er gerade erstellt oder aus dem Baum entfernt wurde, da wichtige dokumentweite Strukturen wie Stile und Listen im Knoten **Document** gespeichert sind. Beispielsweise ist es nicht möglich, eine **Paragraph** ohne eine **Document** zu haben, da jedem Absatz ein Stil zugewiesen ist, der global für das Dokument definiert ist. Diese Regel wird beim Erstellen neuer Knoten verwendet. Das direkte Hinzufügen einer neuen **Paragraph** zu DOM erfordert ein Dokumentobjekt, das an den Konstruktor übergeben wird.

{{% alert color="primary" %}}

Die Eigenschaft [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) gibt das Dokument zurück, zu dem der Knoten gehört.

{{% /alert %}}

Beim Erstellen eines neuen Absatzes mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ist dem Builder immer eine **Document** -Klasse über die Eigenschaft [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) zugeordnet.

Das folgende Codebeispiel zeigt, dass beim Erstellen eines Knotens immer ein Dokument definiert wird, dem der Knoten gehört:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Elternknoten

Jeder Knoten hat ein übergeordnetes Element, das durch die Eigenschaft [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) angegeben wird. Ein Knoten hat in den folgenden Fällen keinen übergeordneten Knoten, dh **ParentNode** ist null:

- Der Knoten wurde gerade erstellt und noch nicht zum Baum hinzugefügt.
- Der Knoten wurde aus dem Baum entfernt.
- Dies ist der Stammknoten **Document**, der immer einen übergeordneten Nullknoten hat.

Sie können einen Knoten von seinem übergeordneten Knoten entfernen, indem Sie die [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) -Methode aufrufen.Das folgende Codebeispiel zeigt, wie auf den übergeordneten Knoten zugegriffen wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Childknoten

Der effizienteste Weg, auf untergeordnete Knoten von [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) zuzugreifen, ist über die Eigenschaften [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) und [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild), die den ersten bzw. den letzten untergeordneten Knoten zurückgeben. Wenn keine untergeordneten Knoten vorhanden sind, geben diese Eigenschaften *null* zurück.

**CompositeNode**

Wenn ein Knoten kein untergeordnetes Element hat, gibt die Eigenschaft **ChildNodes** eine leere Auflistung zurück. Mit der Eigenschaft [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) können Sie überprüfen, ob **CompositeNode** untergeordnete Knoten enthält.

Das folgende Codebeispiel zeigt, wie unmittelbare untergeordnete Knoten einer `CompositeNode` mit dem von der `ChildNodes`-Auflistung bereitgestellten Enumerator aufgelistet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Das folgende Codebeispiel zeigt, wie unmittelbare untergeordnete Knoten einer `CompositeNode` mit indiziertem Zugriff aufgelistet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Geschwisterknoten

Sie können den Knoten erhalten, der einem bestimmten Knoten unmittelbar vorausgeht oder folgt, indem Sie die Eigenschaften [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) bzw. [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) verwenden. Wenn ein Knoten das letzte untergeordnete Element seines übergeordneten Knotens ist, ist die Eigenschaft **NextSibling** *null*. Umgekehrt, wenn der Knoten das erste Kind seines Elternteils ist, ist die **PreviousSibling** -Eigenschaft *null*.

Das folgende Codebeispiel zeigt, wie Sie alle direkten und indirekten untergeordneten Knoten eines zusammengesetzten Knotens effizient besuchen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Typisierter Zugriff auf untergeordnete und übergeordnete Knoten

Bisher haben wir die Eigenschaften besprochen, die einen der Basistypen zurückgeben – **Node** oder **CompositeNode**. Manchmal gibt es jedoch Situationen, in denen Sie möglicherweise Werte in eine bestimmte Knotenklasse umwandeln müssen, z. B. **Run** oder **Paragraph**. Das heißt, Sie können nicht vollständig vom Casting wegkommen, wenn Sie mit Aspose.Words DOM arbeiten, das zusammengesetzt ist.

Um die Umwandlung zu reduzieren, stellen die meisten Aspose.Words -Klassen Eigenschaften und Auflistungen bereit, die einen stark typisierten Zugriff ermöglichen. Es gibt drei grundlegende Muster für den typisierten Zugriff:

- Ein übergeordneter Knoten macht typisierte **FirstXXX** - und **LastXXX** -Eigenschaften verfügbar. Zum Beispiel hat die **Document** die Eigenschaften [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) und [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection). Ebenso hat **Table** Eigenschaften wie [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow) und andere.
- Ein übergeordneter Knoten macht eine typisierte Sammlung von untergeordneten Knoten verfügbar, z. B. [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs) und andere.
- Ein untergeordneter Knoten bietet typisierten Zugriff auf seinen übergeordneten Knoten, z. B. [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection) und andere.

Typisierte Eigenschaften sind lediglich nützliche Verknüpfungen, die manchmal einen einfacheren Zugriff bieten als generische Eigenschaften, die von [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) und [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild) geerbt wurden.

Das folgende Codebeispiel zeigt, wie typisierte Eigenschaften verwendet werden, um auf Knoten des Dokumentbaums zuzugreifen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
