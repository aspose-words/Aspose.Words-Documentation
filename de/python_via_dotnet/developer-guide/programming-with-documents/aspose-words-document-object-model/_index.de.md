---
title: Aspose.Words DOM
second_title: Aspose.Words für Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Lesen, bearbeiten und ändern Sie den Inhalt und die Formatierung eines Word-Dokuments mithilfe von Python."
weight: 10
url: /de/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Das Aspose.Words Document Object Model (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Mit Aspose.Words DOM können Sie den Inhalt und die Formatierung eines Word-Dokuments programmgesteuert lesen, bearbeiten und ändern.

In diesem Abschnitt werden die Hauptklassen von Aspose.Words DOM und ihre Beziehungen beschrieben. Durch die Verwendung der Aspose.Words-DOM-Klassen können Sie programmgesteuerten Zugriff auf Dokumentelemente und Formatierungen erhalten.

## Erstellen Sie einen `Document`-Objektbaum {#create-a-document-objects-tree}

Wenn ein Dokument in Aspose.Words DOM eingelesen wird, wird ein Objektbaum erstellt und verschiedene Arten von Elementen des Quelldokuments verfügen über eigene DOM-Baumobjekte mit verschiedenen Eigenschaften.

### Dokumentknotenbaum {#build-document-nodes-tree} erstellen

Wenn Aspose.Words ein Word-Dokument in den Speicher einliest, erstellt es Objekte unterschiedlichen Typs, die verschiedene Dokumentelemente darstellen. Jeder Textabschnitt, jeder Absatz, jede Tabelle oder jeder Abschnitt ist ein Knoten, und sogar das Dokument selbst ist ein Knoten. Aspose.Words definiert eine Klasse für jeden Dokumentknotentyp.

Der Dokumentenbaum in Aspose.Words folgt dem Composite Design Pattern:

– Alle Knotenklassen leiten sich letztlich von der [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)-Klasse ab, die die Basisklasse im Aspose.Words-Document Object Model darstellt.
- Knoten, die andere Knoten enthalten können, beispielsweise [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) oder [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), werden von der [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)-Klasse abgeleitet, die wiederum von der [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)-Klasse abgeleitet ist.

Das unten bereitgestellte Diagramm zeigt die Vererbung zwischen Knotenklassen des Aspose.Words Document Object Model (DOM). Die Namen abstrakter Klassen sind kursiv geschrieben.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Das Aspose.Words-DOM enthält auch die Nicht-Knoten-Klassen wie [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) oder [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), die zum Anpassen des Erscheinungsbilds und der Stile innerhalb eines Dokuments verwendet werden. Diese Klassen werden in diesem Diagramm nicht angezeigt, da sie nicht von der [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)-Klasse geerbt wurden.

{{% /alert %}}

Schauen wir uns ein Beispiel an. Das folgende Bild zeigt ein Microsoft Word-Dokument mit verschiedenen Inhaltstypen.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="Dokumentbeispiel-Aspose-Wörter" style="width:700px"/>

Beim Einlesen des obigen Dokuments in Aspose.Words DOM wird der Objektbaum erstellt, wie im folgenden Schema dargestellt.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) und alle anderen Ellipsen im Diagramm sind Aspose.Words-Objekte, die Elemente des Word-Dokuments darstellen.

### Holen Sie sich ein `Node`-Typ-{#get-a-node-type}

Obwohl die [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)-Klasse ausreicht, um verschiedene Knoten voneinander zu unterscheiden, stellt Aspose.Words die [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/)-Enumeration bereit, um einige API-Aufgaben zu vereinfachen, beispielsweise die Auswahl von Knoten eines bestimmten Typs.

Der Typ jedes Knotens kann mithilfe der [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/)-Eigenschaft ermittelt werden. Diese Eigenschaft gibt einen [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/)-Enumerationswert zurück. Beispielsweise gibt ein durch die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)-Klasse dargestellter Absatzknoten [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) zurück und ein durch die [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Klasse dargestellter Tabellenknoten gibt [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table) zurück.

Das folgende Beispiel zeigt, wie man mithilfe der [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/)-Enumeration einen Knotentyp erhält:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Dokumentenbaumnavigation {#document-tree-navigation}

Aspose.Words stellt ein Dokument als Knotenbaum dar, der Ihnen die Navigation zwischen Knoten ermöglicht. In diesem Abschnitt wird beschrieben, wie Sie den Dokumentbaum in Aspose.Words erkunden und darin navigieren.

Wenn Sie das zuvor vorgestellte Beispieldokument im Dokumenten-Explorer öffnen, wird der Knotenbaum genau so angezeigt, wie er in Aspose.Words dargestellt wird.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="Dokument-in-Dokument-Explorer" style="width:680px"/>

{{% alert color="primary" %}}

Das Beispielprojekt "Document Explorer" können Sie auf der [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples) erlernen.

{{% /alert %}}

### Dokumentknotenbeziehungen {#document-nodes-relationships}

Die Knoten im Baum haben Beziehungen zwischen ihnen:

- Ein Knoten, der einen anderen Knoten enthält, ist ein *parent.*
- Der im übergeordneten Knoten enthaltene Knoten ist ein *child.*. Untergeordnete Knoten desselben übergeordneten Knotens sind *sibling*-Knoten.
- Der *root*-Knoten ist immer der [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Knoten.

Die Knoten, die andere Knoten enthalten können, leiten sich von der [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)-Klasse ab, und alle Knoten leiten sich letztendlich von der [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)-Klasse ab. Diese beiden Basisklassen stellen gemeinsame Methoden und Eigenschaften für die Navigation und Änderung der Baumstruktur bereit.

Das folgende UML-Objektdiagramm zeigt mehrere Knoten des Beispieldokuments und ihre Beziehungen zueinander über die Eigenschaften "Eltern", "Kind" und "Geschwister":

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="Dokument-Knoten-Beziehungen-Aspose-Wörter" style="width:370px"/>

#### Das Dokument ist Knoteneigentümer

Ein Knoten gehört immer zu einem bestimmten Dokument, auch wenn er gerade erst erstellt oder aus dem Baum entfernt wurde, da wichtige dokumentweite Strukturen wie Stile und Listen im [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Knoten gespeichert sind. Beispielsweise ist ein [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ohne [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nicht möglich, da jedem Absatz ein Stil zugewiesen ist, der global für das Dokument definiert ist. Diese Regel wird beim Erstellen neuer Knoten verwendet. Das direkte Hinzufügen eines neuen [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) zum DOM erfordert die Übergabe eines Dokumentobjekts an den Konstruktor.

{{% alert color="primary" %}}

Die [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/)-Eigenschaft gibt das Dokument zurück, zu dem der Knoten gehört.

{{% /alert %}}

Beim Erstellen eines neuen Absatzes mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) verfügt der Builder immer über eine damit verknüpfte [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Klasse über die [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/)-Eigenschaft.

Das folgende Codebeispiel zeigt, dass beim Erstellen eines Knotens immer ein Dokument definiert wird, das Eigentümer des Knotens sein wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Elternknoten

Jeder Knoten hat einen übergeordneten Knoten, der durch die [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/)-Eigenschaft angegeben wird. Ein Knoten hat in den folgenden Fällen keinen übergeordneten Knoten, d. h. [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) ist *None*:

- Der Knoten wurde gerade erstellt und noch nicht zum Baum hinzugefügt.
- Der Knoten wurde aus dem Baum entfernt.
– Dies ist der Root-[Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Knoten, der immer einen None-Elternknoten hat.

Sie können einen Knoten von seinem übergeordneten Knoten entfernen, indem Sie die [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/)-Methode aufrufen. Das folgende Codebeispiel zeigt, wie auf den übergeordneten Knoten zugegriffen wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Untergeordnete Knoten

Der effizienteste Weg, auf untergeordnete Knoten einer [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) zuzugreifen, ist über die [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/)- und [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/)-Eigenschaften, die jeweils den ersten und letzten untergeordneten Knoten zurückgeben. Wenn keine untergeordneten Knoten vorhanden sind, geben diese Eigenschaften *None* zurück.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) stellt außerdem die [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/)-Sammlung bereit, die den indizierten oder nummerierten Zugriff auf die untergeordneten Knoten ermöglicht. Die [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/)-Methode gibt eine Live-Sammlung von Knoten zurück, was bedeutet, dass die **get_child_nodes**-Sammlung automatisch aktualisiert wird, wenn das Dokument geändert wird, beispielsweise wenn Knoten entfernt oder hinzugefügt werden.

Wenn ein Knoten kein untergeordnetes Element hat, gibt die **get_child_nodes**-Methode eine leere Sammlung zurück. Mithilfe der [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/)-Eigenschaft können Sie überprüfen, ob der [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) untergeordnete Knoten enthält.

Das folgende Codebeispiel zeigt, wie unmittelbar untergeordnete Knoten eines [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) mithilfe des von der **get_child_nodes**-Sammlung bereitgestellten Enumerators aufgezählt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Geschwisterknoten

Mithilfe der [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/)- bzw. [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/)-Eigenschaften können Sie den Knoten ermitteln, der einem bestimmten Knoten unmittelbar vorangeht oder folgt. Wenn ein Knoten das letzte untergeordnete Element seines übergeordneten Knotens ist, ist die [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/)-Eigenschaft *None*. Wenn der Knoten umgekehrt das erste untergeordnete Element seines übergeordneten Knotens ist, ist die [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/)-Eigenschaft *None*.

Das folgende Codebeispiel zeigt, wie alle direkten und indirekten untergeordneten Knoten eines zusammengesetzten Knotens effizient besucht werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Typisierter Zugriff auf untergeordnete und übergeordnete Knoten {#typed-access-to-child-and-parent-nodes}

Bisher haben wir die Eigenschaften besprochen, die einen der Basistypen zurückgeben – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) oder [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Aber manchmal gibt es Situationen, in denen Sie Werte in eine bestimmte Knotenklasse wie [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) oder [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) umwandeln müssen. Das heißt, Sie können beim Arbeiten mit Aspose.Words DOM, das zusammengesetzt ist, nicht ganz auf das Casting verzichten.

Um den Bedarf an Umwandlungen zu reduzieren, stellen die meisten Aspose.Words-Klassen Eigenschaften und Sammlungen bereit, die einen stark typisierten Zugriff ermöglichen. Es gibt drei grundlegende Muster für den typisierten Zugriff:

– Ein übergeordneter Knoten stellt typisierte **first_XXX**- und **last_XXX**-Eigenschaften bereit. Beispielsweise verfügt das [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) über [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/)- und [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/)-Eigenschaften. Ebenso verfügt [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) über Eigenschaften wie [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) und andere.
– Ein übergeordneter Knoten stellt eine typisierte Sammlung untergeordneter Knoten bereit, z. B. [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) und andere.
– Ein untergeordneter Knoten bietet typisierten Zugriff auf seinen übergeordneten Knoten, z. B. [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) und andere.

Typisierte Eigenschaften sind lediglich nützliche Verknüpfungen, die manchmal einen einfacheren Zugriff ermöglichen als generische Eigenschaften, die von [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) und [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) übernommen wurden.

Das folgende Codebeispiel zeigt, wie typisierte Eigenschaften verwendet werden, um auf Knoten der Dokumentstruktur zuzugreifen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
