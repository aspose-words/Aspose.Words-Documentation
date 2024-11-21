---
title: Änderungen in einem Dokument verfolgen Java
second_title: Aspose.Words für Java
articleTitle: Änderungen in einem Dokument verfolgen
linktitle: Änderungen in einem Dokument verfolgen
description: "Verfolgen Sie Änderungen der von Ihnen oder anderen erstellten Inhalte und Formatierungen. Zugriff auf einzelne Revisionen in einem Dokument und Anwendung verschiedener Eigenschaften auf sie Java."
type: docs
weight: 270
url: /de/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Die Funktionalität von Track-Änderungen, auch als Überprüfung bekannt, ermöglicht es Ihnen, Änderungen an Inhalten und Formatierungen von Ihnen oder anderen Benutzern zu verfolgen. Diese Track-Änderungen Funktion mit Aspose.Words unterstützt Spuränderungen Microsoft Word. Mit dieser Funktionalität können Sie auf einzelne Revisionen in Ihrem Dokument zugreifen und unterschiedliche Eigenschaften auf sie anwenden.

Wenn Sie die Track-Änderungen aktivieren, werden alle eingefügten, gelöschten und geänderten Elemente des Dokuments visuell mit Informationen hervorgehoben, von denen, wann und was geändert wurde. Objekte, die Informationen über das, was geändert wurde, tragen, werden als "Tracking-Änderungen" bezeichnet. Nehmen Sie zum Beispiel an, dass Sie ein Dokument überprüfen und wichtige Änderungen vornehmen möchten – das kann bedeuten, dass Sie Revisionen vornehmen müssen. Auch müssen Sie Kommentare einfügen, um einige der Änderungen zu diskutieren. Dort kommen Tracking-Änderungen in Dokumenten ein.

Dieser Artikel erklärt, wie man Änderungen, die von vielen Bewertern auf demselben Dokument erstellt wurden, verwalten und verfolgen kann, sowie die Eigenschaften für Tracking-Änderungen.

{{% alert color="primary" %}}

Beachten Sie, dass die Kommentarfunktion in Aspose.Words, sowie in Microsoft Word, kann mit Tracking-Änderungen verbunden werden. Denken Sie jedoch daran, dass Kommentare völlig unabhängig von Tracking-Änderungen sind.

{{% /alert %}}

## Was ist eine Revision?

Vor dem Tauchen in Revisionen, erklären wir die Bedeutung von Revisionen. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) eine Änderung, die in einem Knoten eines Dokuments auftritt, während eine Revisionsgruppe, die durch die [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) class, ist eine Gruppe von sequentiellen Revisionen, die in vielen Knoten eines Dokuments auftreten. Revision ist ein Werkzeug für die Verfolgung von Änderungen.

Überarbeitungen werden in der Funktion Tracking-Änderungen und in der Funktion der vergleichenden Dokumente verwendet, in der Änderungen infolge des Vergleichs auftreten. So zeigen Revisionen innerhalb der Tracking-Änderungen, von wem und was geändert wurde.

{{% alert color="primary" %}}

Anmerkung: Microsoft Word erlaubt es Ihnen nicht, einzelne Revisionen anzuzeigen, es erlaubt Ihnen nur sequentielle Revisionen als eine Einheit anzusehen. Aber... Aspose.Words löst diese Einschränkung mit dem **RevisionGroup** Klasse.

{{% /alert %}}

Aspose.Words unterstützt verschiedene Revisionstypen sowie Microsoft Word, wie Insertion, Deletion, Format Änderung, StyleDefinition Wechseln und Bewegen. Alle Revisionstypen sind mit [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) Aufzählung.

{{% alert color="primary" %}}

Beachten Sie, dass Revisionen ein ähnliches Ergebnis haben wie Microsoft Word aber Aspose.Words die Formatierung während der Tracking-Änderungen nicht erkennt.

{{% /alert %}}

## Starten und stoppen Tracking-Änderungen

Das Bearbeiten eines Dokuments zählt in der Regel nicht als Revision, bis Sie beginnen, es zu verfolgen. Aspose.Words Sie können automatisch alle Änderungen in Ihrem Dokument mit einfachen Schritten verfolgen. Sie können den Prozess der Verfolgung von Änderungen einfach starten, indem Sie die [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) Methode. Wenn Sie den Prozess der Verfolgung von Änderungen stoppen müssen, so dass zukünftige Änderungen nicht als Revisionen betrachtet werden, müssen Sie die [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) Methode.

{{% alert color="primary" %}}

Anmerkung: `StartTrackingRevisions` Verfahren ändert den Status des [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) Eigentum und verwendet seinen Wert nicht für das Ziel der Revisionsverfolgung. Darüber hinaus, wenn ein Knoten von einem Ort zu einem anderen innerhalb des Tracked-Dokuments verschoben wurde, dann bewegen Sie Revisionen erstellt werden, einschließlich move-from und move-to-Bereich.

{{% /alert %}}

Am Ende des Tracking-Änderungsprozesses in Ihrem Dokument haben Sie die Möglichkeit, sogar alle Revisionen zu akzeptieren oder sie abzulehnen, um das Dokument in seine ursprüngliche Form umzuwandeln. Dies kann durch die Verwendung der [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) oder [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) Methode. Darüber hinaus können Sie jede Revision durch die Verwendung der [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) oder [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) Methode.

Alle Änderungen werden für eine Iteration von dem Moment verfolgt, in dem Sie den Prozess starten, bis zu dem Moment, in dem Sie ihn stoppen. Die Verbindung zwischen verschiedenen Iterationen wird als folgendes Szenario dargestellt: Sie vervollständigen den Tracking-Prozess, machen dann einige Änderungen und starten Tracking-Änderungen wieder. Mit diesem Szenario werden alle Änderungen angezeigt, die Sie nicht akzeptiert oder abgelehnt haben.

{{% alert color="primary" %}}

Anmerkung: `AcceptAllRevisions` Die Methode ist ähnlich wie die "Aktion aller Veränderungen" in Microsoft Word.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man mit Tracking-Änderungen arbeitet:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Das folgende Codebeispiel zeigt, wie Revisionen generiert werden, wenn ein Knoten innerhalb eines Tracked-Dokuments bewegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Veränderungen als Revisionen verwalten und speichern

Mit der vorherigen Tracking-Änderungen können Sie verstehen, welche Änderungen in Ihrem Dokument vorgenommen wurden und welche diese Änderungen vorgenommen haben. Während mit dem [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) Funktion, Sie zwingen alle Änderungen in Ihrem Dokument als Revisionen gespeichert werden.

Aspose.Words Sie können überprüfen, ob ein Dokument eine Überarbeitung hat oder nicht, indem Sie die [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) Eigentum. Wenn Sie die Änderungen in Ihrem Dokument nicht automatisch über die Methoden StartTrackRevisions und StopTrackRevisions nachverfolgen müssen, können Sie das `TrackRevisions` Eigenschaft zu überprüfen, ob die Änderungen beim Bearbeiten eines Dokuments verfolgt werden Microsoft Word und als Revisionen gespeichert.

Die `TrackRevisions` Feature macht Revisionen statt real DOM Änderungen. Aber die Revisionen selbst sind getrennt. Zum Beispiel Wenn Sie einen Absatz löschen, Aspose.Words machen es als Revision, markieren es als Löschen, anstatt es zu löschen.

Außerdem, Aspose.Words Sie können überprüfen, ob ein Objekt eingefügt, gelöscht oder geänderte Formatierung mithilfe der [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), und [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) Eigenschaften.

{{% alert color="primary" %}}

Beachten Sie, dass es keine Verbindung zwischen den Revisionen selbst und der `TrackRevisions` Eigentum. Darüber hinaus können Sie Revisionen akzeptieren/abwerfen, unabhängig von der Funktion Tracking-Änderungen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man verschiedene Eigenschaften mit Revisionen anwendet:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
