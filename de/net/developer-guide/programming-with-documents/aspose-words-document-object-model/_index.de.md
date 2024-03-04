---
title: Aspose.Words Document Object Model (DOM) in C#
second_title: Aspose.Words für .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Lesen, bearbeiten und ändern Sie den Inhalt und die Formatierung eines Word-Dokuments mithilfe von C#."
weight: 10
url: /de/net/aspose-words-document-object-model/
---

Das Aspose.Words Document Object Model (DOM) ist eine speicherinterne Darstellung eines Word-Dokuments. Mit Aspose.Words DOM können Sie den Inhalt und die Formatierung eines Word-Dokuments programmgesteuert lesen, bearbeiten und ändern.

In diesem Abschnitt werden die Hauptklassen von Aspose.Words DOM und ihre Beziehungen beschrieben. Durch die Verwendung der Aspose.Words-DOM-Klassen können Sie programmgesteuerten Zugriff auf Dokumentelemente und Formatierungen erhalten.

## Erstellen Sie einen `Document`-Objektbaum {#create-a-document-objects-tree}

Wenn ein Dokument in Aspose.Words DOM eingelesen wird, wird ein Objektbaum erstellt und verschiedene Arten von Elementen des Quelldokuments verfügen über eigene DOM-Baumobjekte mit verschiedenen Eigenschaften.

### Dokumentknotenbaum {#build-document-nodes-tree} erstellen

Wenn Aspose.Words ein Word-Dokument in den Speicher einliest, erstellt es Objekte unterschiedlichen Typs, die verschiedene Dokumentelemente darstellen. Jeder Textabschnitt, jeder Absatz, jede Tabelle oder jeder Abschnitt ist ein Knoten, und sogar das Dokument selbst ist ein Knoten. Aspose.Words definiert eine Klasse für jeden Dokumentknotentyp.

Der Dokumentenbaum in Aspose.Words folgt dem Composite Design Pattern:

– Alle Knotenklassen leiten sich letztlich von der [Node](https://reference.aspose.com/words/de/net/aspose.words/node/)-Klasse ab, die die Basisklasse im Aspose.Words-Document Object Model darstellt.
- Knoten, die andere Knoten enthalten können, beispielsweise **Section** oder **Paragraph**, werden von der [CompositeNode](https://reference.aspose.com/words/de/net/aspose.words/compositenode/)-Klasse abgeleitet, die wiederum von der **Node**-Klasse abgeleitet ist.

Das unten bereitgestellte Diagramm zeigt die Vererbung zwischen Knotenklassen des Aspose.Words Document Object Model (DOM). Die Namen abstrakter Klassen sind kursiv geschrieben.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Das Aspose.Words-DOM enthält auch die Nicht-Knoten-Klassen wie [Style](https://reference.aspose.com/words/de/net/aspose.words/style/) oder [Font](https://reference.aspose.com/words/de/net/aspose.words/font/), die zum Anpassen des Erscheinungsbilds und der Stile innerhalb eines Dokuments verwendet werden. Diese Klassen werden in diesem Diagramm nicht angezeigt, da sie nicht von der `Node`-Klasse geerbt wurden.

{{% /alert %}}

Schauen wir uns ein Beispiel an. Das folgende Bild zeigt ein Microsoft Word-Dokument mit verschiedenen Inhaltstypen.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="Dokumentbeispiel-Aspose-Wörter" style="width:700px"/>

Beim Einlesen des obigen Dokuments in Aspose.Words DOM wird der Objektbaum erstellt, wie im folgenden Schema dargestellt.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/de/net/aspose.words/document/), [Section](https://reference.aspose.com/words/de/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/de/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/de/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/de/net/aspose.words/run/) und alle anderen Ellipsen im Diagramm sind Aspose.Words-Objekte, die Elemente des Word-Dokuments darstellen.

### Holen Sie sich ein `Node`-Typ-{#get-a-node-type}

Obwohl die [Node](https://reference.aspose.com/words/de/net/aspose.words/node/)-Klasse ausreicht, um verschiedene Knoten voneinander zu unterscheiden, stellt Aspose.Words die [NodeType](https://reference.aspose.com/words/de/net/aspose.words/node/nodetype/)-Enumeration bereit, um einige API-Aufgaben zu vereinfachen, beispielsweise die Auswahl von Knoten eines bestimmten Typs.

Der Typ jedes Knotens kann mithilfe der [NodeType](https://reference.aspose.com/words/de/net/aspose.words/node/nodetype/)-Eigenschaft ermittelt werden. Diese Eigenschaft gibt einen **NodeType**-Enumerationswert zurück. Beispielsweise gibt ein durch die **Paragraph**-Klasse dargestellter Absatzknoten **NodeType**.**Paragraph** zurück und ein durch die **Table**-Klasse dargestellter Tabellenknoten gibt **NodeType**.**Table** zurück.

Das folgende Beispiel zeigt, wie man mithilfe der **NodeType**-Enumeration einen Knotentyp erhält:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Dokumentenbaumnavigation {#document-tree-navigation}

Aspose.Words stellt ein Dokument als Knotenbaum dar, der Ihnen die Navigation zwischen Knoten ermöglicht. In diesem Abschnitt wird beschrieben, wie Sie den Dokumentbaum in Aspose.Words erkunden und darin navigieren.

Wenn Sie das zuvor vorgestellte Beispieldokument im Dokumenten-Explorer öffnen, wird der Knotenbaum genau so angezeigt, wie er in Aspose.Words dargestellt wird.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="Dokument-in-Dokument-Explorer" style="width:680px"/>

{{% alert color="primary" %}}

Das Beispielprojekt "Document Explorer" können Sie auf der [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) erlernen.

{{% /alert %}}

### Dokumentknotenbeziehungen {#document-nodes-relationships}

Die Knoten im Baum haben Beziehungen zwischen ihnen:

- Ein Knoten, der einen anderen Knoten enthält, ist ein *parent.*
- Der im übergeordneten Knoten enthaltene Knoten ist ein *child.*. Untergeordnete Knoten desselben übergeordneten Knotens sind *sibling*-Knoten.
- Der *root*-Knoten ist immer der [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Knoten.

Die Knoten, die andere Knoten enthalten können, leiten sich von der [CompositeNode](https://reference.aspose.com/words/de/net/aspose.words/compositenode/)-Klasse ab, und alle Knoten leiten sich letztendlich von der [Node](https://reference.aspose.com/words/de/net/aspose.words/node/)-Klasse ab. Diese beiden Basisklassen stellen gemeinsame Methoden und Eigenschaften für die Navigation und Änderung der Baumstruktur bereit.

Das folgende UML-Objektdiagramm zeigt mehrere Knoten des Beispieldokuments und ihre Beziehungen zueinander über die Eigenschaften "Eltern", "Kind" und "Geschwister":

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="Dokument-Knoten-Beziehungen-Aspose-Wörter" style="width:370px"/>

#### Das Dokument ist Knoteneigentümer

Ein Knoten gehört immer zu einem bestimmten Dokument, auch wenn er gerade erst erstellt oder aus dem Baum entfernt wurde, da wichtige dokumentweite Strukturen wie Stile und Listen im **Document**-Knoten gespeichert sind. Beispielsweise ist ein **Paragraph** ohne **Document** nicht möglich, da jedem Absatz ein Stil zugewiesen ist, der global für das Dokument definiert ist. Diese Regel wird beim Erstellen neuer Knoten verwendet. Das direkte Hinzufügen eines neuen **Paragraph** zum DOM erfordert die Übergabe eines Dokumentobjekts an den Konstruktor.

{{% alert color="primary" %}}

Die [Node.Document](https://reference.aspose.com/words/de/net/aspose.words/node/document/)-Eigenschaft gibt das Dokument zurück, zu dem der Knoten gehört.

{{% /alert %}}

Beim Erstellen eines neuen Absatzes mit [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) verfügt der Builder immer über eine damit verknüpfte **Document**-Klasse über die [DocumentBuilder.Document](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/document/)-Eigenschaft.

Das folgende Codebeispiel zeigt, dass beim Erstellen eines Knotens immer ein Dokument definiert wird, das Eigentümer des Knotens sein wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Elternknoten

Jeder Knoten hat einen übergeordneten Knoten, der durch die [ParentNode](https://reference.aspose.com/words/de/net/aspose.words/node/parentnode/)-Eigenschaft angegeben wird. In den folgenden Fällen hat ein Knoten keinen übergeordneten Knoten, d. h. **ParentNode** ist null:

- Der Knoten wurde gerade erstellt und noch nicht zum Baum hinzugefügt.
- Der Knoten wurde aus dem Baum entfernt.
– Dies ist der Root-**Document**-Knoten, der immer einen Null-Elternknoten hat.

Sie können einen Knoten von seinem übergeordneten Knoten entfernen, indem Sie die [Remove](https://reference.aspose.com/words/de/net/aspose.words/node/remove/)-Methode aufrufen. Das folgende Codebeispiel zeigt, wie auf den übergeordneten Knoten zugegriffen wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Untergeordnete Knoten

Der effizienteste Weg, auf untergeordnete Knoten einer [CompositeNode](https://reference.aspose.com/words/de/net/aspose.words/compositenode/) zuzugreifen, ist über die [FirstChild](https://reference.aspose.com/words/de/net/aspose.words/compositenode/firstchild/)- und [LastChild](https://reference.aspose.com/words/de/net/aspose.words/compositenode/lastchild/)-Eigenschaften, die jeweils den ersten und letzten untergeordneten Knoten zurückgeben. Wenn keine untergeordneten Knoten vorhanden sind, geben diese Eigenschaften *null* zurück.

**CompositeNode** stellt außerdem die [GetChildNodes](https://reference.aspose.com/words/de/net/aspose.words/compositenode/getchildnodes/)-Methode bereit, die einen indizierten oder aufgezählten Zugriff auf die untergeordneten Knoten ermöglicht. Die **ChildNodes**-Eigenschaft ist eine Live-Sammlung von Knoten. Das bedeutet, dass die **ChildNodes**-Sammlung automatisch aktualisiert wird, wenn das Dokument geändert wird, beispielsweise wenn Knoten entfernt oder hinzugefügt werden.

Wenn ein Knoten kein untergeordnetes Element hat, gibt die **ChildNodes**-Eigenschaft eine leere Sammlung zurück. Mithilfe der [HasChildNodes](https://reference.aspose.com/words/de/net/aspose.words/compositenode/haschildnodes/)-Eigenschaft können Sie überprüfen, ob der **CompositeNode** untergeordnete Knoten enthält.

Das folgende Codebeispiel zeigt, wie unmittelbar untergeordnete Knoten eines `CompositeNode` mithilfe des von der `ChildNodes`-Sammlung bereitgestellten Enumerators aufgezählt werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Das folgende Codebeispiel zeigt, wie unmittelbar untergeordnete Knoten eines `CompositeNode` mithilfe eines indizierten Zugriffs aufgezählt werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Geschwisterknoten

Mithilfe der [PreviousSibling](https://reference.aspose.com/words/de/net/aspose.words/node/previoussibling/)- bzw. [NextSibling](https://reference.aspose.com/words/de/net/aspose.words/node/nextsibling/)-Eigenschaften können Sie den Knoten ermitteln, der einem bestimmten Knoten unmittelbar vorangeht oder folgt. Wenn ein Knoten das letzte untergeordnete Element seines übergeordneten Knotens ist, ist die **NextSibling**-Eigenschaft *null*. Wenn der Knoten umgekehrt das erste untergeordnete Element seines übergeordneten Knotens ist, ist die **PreviousSibling**-Eigenschaft *null*.

Das folgende Codebeispiel zeigt, wie alle direkten und indirekten untergeordneten Knoten eines zusammengesetzten Knotens effizient besucht werden:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Typisierter Zugriff auf untergeordnete und übergeordnete Knoten {#typed-access-to-child-and-parent-nodes}

Bisher haben wir die Eigenschaften besprochen, die einen der Basistypen zurückgeben – **Node** oder **CompositeNode**. Aber manchmal gibt es Situationen, in denen Sie Werte in eine bestimmte Knotenklasse wie **Run** oder **Paragraph** umwandeln müssen. Das heißt, Sie können beim Arbeiten mit Aspose.Words DOM, das zusammengesetzt ist, nicht ganz auf das Casting verzichten.

Um den Bedarf an Umwandlungen zu reduzieren, stellen die meisten Aspose.Words-Klassen Eigenschaften und Sammlungen bereit, die einen stark typisierten Zugriff ermöglichen. Es gibt drei grundlegende Muster für den typisierten Zugriff:

– Ein übergeordneter Knoten stellt typisierte **FirstXXX**- und **LastXXX**-Eigenschaften bereit. Beispielsweise verfügt das **Document** über [FirstSection](https://reference.aspose.com/words/de/net/aspose.words/document/firstsection/)- und [LastSection](https://reference.aspose.com/words/de/net/aspose.words/document/lastsection/)-Eigenschaften. Ebenso verfügt **Table** über Eigenschaften wie [FirstRow](https://reference.aspose.com/words/de/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/de/net/aspose.words.tables/table/lastrow/) und andere.
– Ein übergeordneter Knoten stellt eine typisierte Sammlung untergeordneter Knoten bereit, z. B. [Document.Sections](https://reference.aspose.com/words/de/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/de/net/aspose.words/story/paragraphs/) und andere.
– Ein untergeordneter Knoten bietet typisierten Zugriff auf seinen übergeordneten Knoten, z. B. [Run.ParentParagraph](https://reference.aspose.com/words/de/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/de/net/aspose.words/paragraph/parentsection/) und andere.

Typisierte Eigenschaften sind lediglich nützliche Verknüpfungen, die manchmal einen einfacheren Zugriff ermöglichen als generische Eigenschaften, die von [Node.ParentNode](https://reference.aspose.com/words/de/net/aspose.words/node/parentnode/) und [CompositeNode.FirstChild](https://reference.aspose.com/words/de/net/aspose.words/compositenode/firstchild/) übernommen wurden.

Das folgende Codebeispiel zeigt, wie typisierte Eigenschaften verwendet werden, um auf Knoten der Dokumentstruktur zuzugreifen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
