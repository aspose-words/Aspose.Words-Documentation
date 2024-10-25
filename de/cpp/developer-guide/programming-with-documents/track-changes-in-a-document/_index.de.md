---
title: Verfolgen Sie Änderungen in einem Dokument in C++
second_title: Aspose.Words für C++
articleTitle: Verfolgen von Änderungen in einem Dokument
linktitle: Verfolgen von Änderungen in einem Dokument
description: "Verfolgen Sie Änderungen an Inhalten und Formatierungen, die Sie oder andere mit C++ vorgenommen haben. Greifen Sie auf einzelne Revisionen in einem Dokument zu und wenden Sie verschiedene Eigenschaften darauf an."
type: docs
weight: 270
url: /de/cpp/track-changes-in-a-document/
---

Die Funktionalität von Änderungen nachverfolgen, auch als Überprüfen bezeichnet, ermöglicht es Ihnen, Änderungen an Inhalten und Formatierungen zu verfolgen, die von Ihnen oder anderen Benutzern vorgenommen wurden. Diese Funktion zum Nachverfolgen von Änderungen mit Aspose.Words unterstützt das Nachverfolgen von Änderungen in Microsoft Word. Mit dieser Funktionalität können Sie auf einzelne Revisionen in Ihrem Dokument zugreifen und ihnen verschiedene Eigenschaften zuweisen.

Wenn Sie die Funktion Änderungen Nachverfolgen aktivieren, werden alle eingefügten, gelöschten und geänderten Elemente des Dokuments mit Informationen darüber, von wem, wann und was geändert wurde, visuell hervorgehoben. Objekte, die Informationen darüber enthalten, was geändert wurde, werden als "Tracking Changes" bezeichnet. Angenommen, Sie möchten ein Dokument überprüfen und wichtige Änderungen vornehmen – dies kann bedeuten, dass Sie Änderungen vornehmen müssen. Möglicherweise müssen Sie auch Kommentare einfügen, um einige der Änderungen zu besprechen. Hier kommt die Nachverfolgung von Änderungen in Dokumenten ins Spiel.

In diesem Artikel wird erläutert, wie Sie Änderungen verwalten und nachverfolgen, die von vielen Prüfern am selben Dokument erstellt wurden, sowie die Eigenschaften zum Nachverfolgen von Änderungen.

{{% alert color="primary" %}}

Beachten Sie, dass die Kommentarfunktion in Aspose.Words sowie in Microsoft Word mit der Nachverfolgung von Änderungen verknüpft werden kann. Denken Sie jedoch daran, dass Kommentare völlig unabhängig von der Nachverfolgung von Änderungen sind.

{{% /alert %}}

## Was ist eine Revision

Bevor wir in Revisionen eintauchen, wollen wir die Bedeutung von Revisionen erklären. Eine [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) ist eine Änderung, die in einem Knoten eines Dokuments auftritt, während eine Revisionsgruppe, dargestellt durch die [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/) -Klasse, eine Gruppe aufeinanderfolgender Revisionen ist, die in vielen Knoten eines Dokuments auftreten. Grundsätzlich ist Revision ein Werkzeug zum Nachverfolgen von Änderungen.

Revisionen werden in der Funktion Änderungen Nachverfolgen und in der Funktion Dokumente vergleichen verwendet, wo Revisionen als Ergebnis des Vergleichs angezeigt werden. Revisionen innerhalb der Funktion zum Nachverfolgen von Änderungen zeigen also, von wem und was geändert wurde.

{{% alert color="primary" %}}

Beachten Sie, dass Sie mit Microsoft Word keine einzelnen Revisionen anzeigen können, sondern nur aufeinanderfolgende Revisionen als eine einzelne Entität. Aber Aspose.Words löst diese Einschränkung mit der Klasse **RevisionGroup**.

{{% /alert %}}

Aspose.Words unterstützt verschiedene Revisionstypen sowie in Microsoft Word, z. B. Einfügen, Löschen, FormatChange, StyleDefinitionChange und Verschieben. Alle Revisionstypen werden mit der [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/)-Aufzählung dargestellt.

{{% alert color="primary" %}}

Beachten Sie, dass Revisionen ein ähnliches Ergebnis wie Microsoft Word haben, aber Aspose.Words die Formatierung während der Nachverfolgung von Änderungen nicht erkennt.

{{% /alert %}}

## Nachverfolgung von Änderungen starten und stoppen

Das Bearbeiten eines Dokuments zählt normalerweise erst dann als Überarbeitung, wenn Sie mit der Nachverfolgung beginnen. Aspose.Words ermöglicht es Ihnen, alle Änderungen in Ihrem Dokument mit einfachen Schritten automatisch zu verfolgen. Sie können den Prozess der Nachverfolgung von Änderungen einfach mit der [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/) -Methode starten. Wenn Sie den Prozess der Nachverfolgung von Änderungen stoppen müssen, damit zukünftige Änderungen nicht als Revisionen betrachtet werden, müssen Sie die Methode [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/) verwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die Methode `StartTrackingRevisions` den Status der Eigenschaft [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) nicht ändert und ihren Wert nicht für das Ziel der Revisionsverfolgung verwendet. Wenn ein Knoten innerhalb des verfolgten Dokuments von einer Position an eine andere verschoben wurde, werden außerdem Verschiebungsrevisionen erstellt, einschließlich Verschiebungsbereich von und Verschiebungsbereich.

{{% /alert %}}

Am Ende des Änderungsverfolgungsprozesses in Ihrem Dokument haben Sie die Möglichkeit, sogar alle Überarbeitungen zu akzeptieren oder abzulehnen, um das Dokument in seine ursprüngliche Form zurückzusetzen. Dies kann entweder mit der Methode [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) oder [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/) erreicht werden. Darüber hinaus können Sie jede Revision separat akzeptieren oder ablehnen, indem Sie die [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/)- oder [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/)-Methode verwenden.

Alle Änderungen werden für eine Iteration von dem Moment an, in dem Sie den Prozess starten, bis zu dem Moment, in dem Sie ihn stoppen, nachverfolgt. Die Verbindung zwischen verschiedenen Iterationen wird als das folgende Szenario dargestellt: Sie schließen den Verfolgungsprozess ab, nehmen dann einige Änderungen vor und beginnen erneut mit der Verfolgung von Änderungen. In diesem Szenario werden alle Änderungen, die Sie nicht akzeptiert oder abgelehnt haben, erneut angezeigt.

{{% alert color="primary" %}}

Beachten Sie, dass die Methode `AcceptAllRevisions` der Methode "Alle Änderungen akzeptieren" in Microsoft Word ähnelt.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie mit der Nachverfolgung von Änderungen arbeiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Das folgende Codebeispiel zeigt, wie Revisionen generiert werden, wenn ein Knoten in einem nachverfolgten Dokument verschoben wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Änderungen als Revisionen verwalten und speichern

Mit der vorherigen Funktion zum Nachverfolgen von Änderungen können Sie nachvollziehen, welche Änderungen an Ihrem Dokument vorgenommen wurden und wer diese Änderungen vorgenommen hat. Mit der Funktion [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/) erzwingen Sie, dass alle Änderungen in Ihrem Dokument als Überarbeitungen gespeichert werden.

Mit Aspose.Words können Sie überprüfen, ob ein Dokument eine Revision hat oder nicht, indem Sie die Eigenschaft [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/) verwenden. Wenn Sie die Änderungen in Ihrem Dokument nicht automatisch mit den Methoden StartTrackRevisions und StopTrackRevisions nachverfolgen müssen, können Sie mit der Eigenschaft `TrackRevisions` überprüfen, ob die Änderungen beim Bearbeiten eines Dokuments in Microsoft Word nachverfolgt und gespeichert werden als Revisionen.

Die `TrackRevisions` -Funktion nimmt Revisionen anstelle von echten DOM -Änderungen vor. Aber die Revisionen selbst sind getrennt. Wenn Sie beispielsweise einen Absatz löschen, Aspose.Words Erstellen Sie ihn als Überarbeitung und markieren Sie ihn als Löschung, anstatt ihn zu löschen.

Außerdem können Sie mit Aspose.Words überprüfen, ob ein Objekt eingefügt, gelöscht oder formatiert wurde, indem Sie die [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), und [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) Eigenschaften.

{{% alert color="primary" %}}

Beachten Sie, dass zwischen den Revisionen selbst und der Eigenschaft `TrackRevisions` keine Verbindung besteht. Darüber hinaus können Sie Revisionen unabhängig von der Funktion zum Nachverfolgen von Änderungen annehmen / ablehnen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie verschiedene Eigenschaften mit Revisionen angewendet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
