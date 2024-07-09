---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words für Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) ist eine in-memory Darstellung eines Word-Dokuments. Lesen, manipulieren und modifizieren Sie den Inhalt und die Formatierung eines Word-Dokuments mithilfe Java."
weight: 10
url: /de/java/aspose-words-document-object-model/
---

Die Aspose.Words Document Object Model (DOM) ist eine in-memory Darstellung eines Word-Dokuments. Die Aspose.Words DOM ermöglicht es Ihnen, den Inhalt und die Formatierung eines Word-Dokuments programmatisch zu lesen, zu manipulieren und zu modifizieren.

Dieser Abschnitt beschreibt die Hauptklassen der Aspose.Words DOM und ihre Beziehungen. Durch die Verwendung Aspose.Words DOM Klassen, können Sie programmatischen Zugriff auf Dokumentelemente und Formatierung erhalten.

## Dokument erstellen Objekt Baum {#create-a-document-objects-tree}

Wenn ein Dokument in die Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,"> dann wird ein Objektbaum gebaut und verschiedene Arten von Elementen des Quelldokuments haben ihre eigenen DOM Baumobjekte mit verschiedenen Eigenschaften.

### Dokument Nodes Tree erstellen {#build-document-nodes-tree}

Wann Aspose.Words liest ein Word-Dokument in den Speicher, es erstellt Objekte verschiedener Typen, die verschiedene Dokumentelemente darstellen. Jeder Ablauf eines Textes, Absatz, Tabelle oder Abschnitts ist ein Knoten und sogar das Dokument selbst ist ein Knoten. Aspose.Words definiert eine Klasse für jeden Dokumentknotentyp.

Der Dokumentbaum in Aspose.Words folgt dem Composite Design Muster:

- Alle Knotenklassen stammen letztlich von [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Klasse, die die Basisklasse in der Aspose.Words Document Object Model.
- Knoten, die zum Beispiel andere Knoten enthalten können **Section** oder **Paragraph**, von der [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasse, die wiederum von der **Node** Klasse.

Das nachfolgende Diagramm zeigt die Erbschaft zwischen Knotenklassen der Aspose.Words Document Object Model (DOM) Die Namen der abstrakten Klassen sind in Italics.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Die Aspose.Words DOM enthält auch die Nicht-Node-Klassen, wie [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) oder [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), die verwendet werden, um das Aussehen und die Stile innerhalb eines Dokuments anzupassen. Diese Klassen sind in diesem Diagramm nicht dargestellt, wie nicht von der `Node` Klasse.

{{% /alert %}}

Schauen wir uns ein Beispiel an. Das folgende Bild zeigt a Microsoft Word Dokument mit verschiedenen Arten von Inhalten.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Beim Lesen des obigen Dokuments in das Aspose.Words DOM, der Baum der Objekte wird erstellt, wie im Schema unten gezeigt.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), und alle anderen Ellipsen auf dem Diagramm sind Aspose.Words Objekte, die Elemente des Word-Dokuments darstellen.

### Holt euch! `Node` Typ {#get-a-node-type}

Obwohl [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Klasse ausreichend ist, um verschiedene Knoten voneinander zu unterscheiden, Aspose.Words bietet [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) Aufzählung, um einige zu vereinfachen API Aufgaben, wie die Auswahl von Knoten eines bestimmten Typs.

Die Art jedes Knotens kann mit der [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) Eigentum. Diese Eigenschaft gibt eine **NodeType** Aufzählungswert. Ein beispielsweise durch die **Paragraph** Klassenrückgänge **NodeType**.**Paragraph**, und einem durch die **Table** Klassenrückgänge **NodeType**.**Table**.

Das folgende Beispiel zeigt, wie man einen Knotentyp mit dem **NodeType** Aufzählung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Dokument Baum Navigation {#document-tree-navigation}

Aspose.Words stellt ein Dokument als Knotenbaum dar, mit dem Sie zwischen Knoten navigieren können. In diesem Abschnitt wird beschrieben, wie der Dokumentbaum in Aspose.Words.

Wenn Sie das früher vorgestellte Musterdokument im Document Explorer öffnen, erscheint der Knotenbaum genau so, wie er in Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Sie können das Beispielprojekt "Document Explorer" auf der [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Dokumente Node Relationships {#document-nodes-relationships}

Die Knoten im Baum haben Beziehungen zwischen ihnen:

- Ein Knoten mit einem anderen Knoten ist ein *parent.*
- Ja. Der im Stammknoten enthaltene Knoten ist ein *child.* Kinderknoten desselben Elternteils sind *sibling* Knoten.
- Die *root* Der Knoten ist immer [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Knoten.

Die Knoten, die andere Knoten enthalten können, stammen aus dem [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasse, und alle Knoten letztlich von der [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Klasse. Diese beiden Basisklassen bieten gemeinsame Methoden und Eigenschaften für die Baumstrukturnavigation und Modifikation.

Das folgende UML-Objektdiagramm zeigt mehrere Knoten des Musterdokuments und deren Beziehungen zueinander über die Eltern-, Kind- und Geschwistereigenschaften:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Dokument ist Node Owner

Ein Knoten gehört immer zu einem bestimmten Dokument, auch wenn er gerade erstellt oder aus dem Baum entfernt wurde, weil in den **Document** Knoten. Beispielsweise ist es nicht möglich, eine **Paragraph** ohne **Document** weil jeder Absatz einen zugewiesenen Stil hat, der global für das Dokument definiert ist. Diese Regel wird verwendet, wenn Sie neue Knoten erstellen. Ein neues hinzufügen **Paragraph** direkt zum DOM erfordert ein an den Konstrukteur übergebenes Dokumentobjekt.

{{% alert color="primary" %}}

Die [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) Eigenschaft gibt das Dokument zurück, zu dem der Knoten gehört.

{{% /alert %}}

Bei der Erstellung eines neuen Absatzes [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), der Bauer hat immer **Document** Klasse, die durch die [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) Eigentum.

Das folgende Codebeispiel zeigt, dass beim Erstellen eines beliebigen Knotens immer ein Dokument definiert wird, das den Knoten besitzt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Parent Node

Jeder Knoten hat einen von der [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) Eigentum. Ein Knoten hat keinen Elternknoten, das heißt, **ParentNode** ist in folgenden Fällen null:

- Ja. Der Knoten wurde gerade erstellt und noch nicht dem Baum hinzugefügt.
- Ja. Der Knoten wurde vom Baum entfernt.
- Ja. Das ist die Wurzel **Document** Knoten, der immer einen Null-Mutterknoten aufweist.

Sie können einen Knoten aus seinem Elternteil entfernen, indem Sie die [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) Methode. Das folgende Codebeispiel zeigt, wie man auf den Stammknoten zugreift:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Kinder Nodes

Der effizienteste Weg, um Kinderknoten eines [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) über die [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) und [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) Eigenschaften, die die ersten bzw. letzten Kinderknoten zurückgeben. Wenn es keine Kinderknoten gibt, kehren diese Eigenschaften zurück *null*.

**CompositeNode** stellt auch die [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) Erfassung, die den Zugriff auf die Kinderknoten ermöglicht. Die **ChildNodes** Eigenschaft ist eine Live-Kollektion von Knoten, was bedeutet, dass, wenn das Dokument geändert wird, wie wenn Knoten entfernt oder hinzugefügt werden, die **ChildNodes** Die Sammlung wird automatisch aktualisiert.

Wenn ein Knoten kein Kind hat, dann **ChildNodes** Eigentum gibt eine leere Sammlung zurück. Sie können überprüfen, ob **CompositeNode** enthält alle Kinderknoten mit der [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) Eigentum.

Das folgende Codebeispiel zeigt, wie sofortige Kinderknoten einer `CompositeNode` Verwendung des von der `ChildNodes` Sammlung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Das folgende Codebeispiel zeigt, wie sofortige Kinderknoten einer `CompositeNode` mit indiziertem Zugriff:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Geschwister Nodes

Sie können den Knoten erhalten, der einem bestimmten Knoten unmittelbar vorangeht oder folgt, indem [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) und [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) Eigenschaften. Wenn ein Knoten das letzte Kind seines Elternteils ist, dann **NextSibling** Eigentum ist *null*. Umgekehrt, wenn der Knoten das erste Kind seines Elternteils ist, die **PreviousSibling** Eigentum ist *null*.

Das folgende Codebeispiel zeigt, wie man alle direkten und indirekten Kinderknoten eines Kompositknotens effizient besucht:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Typischer Zugang zu Kinder- und Elternknoten

Bisher haben wir die Eigenschaften diskutiert, die einen der Basistypen zurückgeben – **Node** oder **CompositeNode**. Aber manchmal gibt es Situationen, in denen Sie Werte auf eine bestimmte Knotenklasse werfen müssen, wie zum Beispiel **Run** oder **Paragraph**. Das heißt, man kann beim Arbeiten mit dem Casting nicht völlig vom Casting wegkommen Aspose.Words DOM, die zusammengesetzt ist.

Um die Notwendigkeit des Gießens zu reduzieren, die meisten Aspose.Words Klassen bieten Eigenschaften und Sammlungen, die einen starken Zugriff bieten. Es gibt drei Grundmuster des Typzugriffs:

- Ein Elternknoten entlarvt **FirstXXX** und **LastXXX** Eigenschaften. Zum Beispiel die **Document** hat [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) und [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) Eigenschaften. Ebenso wie **Table** Eigenschaften wie [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), und andere.
- Ein Elternknoten enthüllt eine typisierte Sammlung von Kinderknoten, wie [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), und andere.
- Ein Kinderknoten bietet einen eingegebenen Zugriff auf seine Eltern, wie [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), und andere.

Typierte Eigenschaften sind nur nützliche Verknüpfungen, die manchmal einen leichteren Zugriff bieten als generische Eigenschaften, die von [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) und [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Das folgende Codebeispiel zeigt, wie man eingegebene Eigenschaften für Zugriffsknoten des Dokumentbaums verwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
