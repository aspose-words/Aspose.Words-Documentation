---
title: Verfolgen Sie Änderungen in einem Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Verfolgen Sie Änderungen in einem Dokument
linktitle: Verfolgen Sie Änderungen in einem Dokument
description: "Verfolgen Sie mithilfe von C# Änderungen an Inhalten und Formatierungen, die Sie oder andere vorgenommen haben. Greifen Sie auf einzelne Revisionen in einem Dokument zu und wenden Sie verschiedene Eigenschaften darauf an."
type: docs
weight: 270
url: /de/net/track-changes-in-a-document/
---

Mit der Funktion zum Verfolgen von Änderungen, auch Überprüfung genannt, können Sie von Ihnen oder anderen Benutzern vorgenommene Änderungen an Inhalten und Formatierungen nachverfolgen. Diese Funktion zum Verfolgen von Änderungen mit Aspose.Words unterstützt das Verfolgen von Änderungen in Microsoft Word. Mit dieser Funktionalität können Sie auf einzelne Revisionen in Ihrem Dokument zugreifen und ihnen verschiedene Eigenschaften zuweisen.

Wenn Sie die Funktion "Änderungen verfolgen" aktivieren, werden alle eingefügten, gelöschten und geänderten Elemente des Dokuments visuell hervorgehoben und enthalten Informationen darüber, von wem, wann und was geändert wurde. Objekte, die Informationen darüber enthalten, was geändert wurde, werden als "Tracking-Änderungen" bezeichnet. Angenommen, Sie möchten ein Dokument überprüfen und wichtige Änderungen vornehmen – das kann bedeuten, dass Sie Überarbeitungen vornehmen müssen. Außerdem müssen Sie möglicherweise Kommentare einfügen, um einige der Änderungen zu besprechen. Hier kommt die Verfolgung von Änderungen in Dokumenten ins Spiel.

In diesem Artikel wird erläutert, wie Sie Änderungen verwalten und verfolgen, die von vielen Prüfern am selben Dokument vorgenommen wurden, sowie die Eigenschaften zum Verfolgen von Änderungen.

{{% alert color="primary" %}}

Beachten Sie, dass die Kommentarfunktion sowohl in Aspose.Words als auch in Microsoft Word mit der Nachverfolgung von Änderungen verbunden sein kann. Bedenken Sie jedoch, dass Kommentare völlig unabhängig von der Verfolgung von Änderungen sind.

{{% /alert %}}

## Was ist eine Revision?

Bevor wir uns mit Revisionen befassen, erklären wir die Bedeutung von Revisionen. Ein [revision](https://reference.aspose.com/words/de/net/aspose.words/revision/) ist eine Änderung, die in einem Knoten eines Dokuments auftritt, während eine Revisionsgruppe, dargestellt durch die [RevisionGroup](https://reference.aspose.com/words/de/net/aspose.words/revision/group/)-Klasse, eine Gruppe aufeinanderfolgender Revisionen ist, die in vielen Knoten eines Dokuments auftreten. Grundsätzlich handelt es sich bei der Revision um ein Werkzeug zur Nachverfolgung von Änderungen.

Revisionen werden in der Funktion "Änderungen verfolgen" und in der Funktion "Dokumente vergleichen" verwendet, wo Revisionen als Ergebnis des Vergleichs angezeigt werden. Überarbeitungen innerhalb der Änderungsverfolgungsfunktion zeigen also an, von wem und was geändert wurde.

{{% alert color="primary" %}}

Beachten Sie, dass Sie mit Microsoft Word keine einzelnen Revisionen anzeigen können, sondern nur sequentielle Revisionen als eine Einheit. Aber Aspose.Words löst diese Einschränkung mit der **RevisionGroup**-Klasse.

{{% /alert %}}

Aspose.Words unterstützt verschiedene Revisionstypen sowie in Microsoft Word, z. B. Einfügen, Löschen, Formatwechsel, StyleDefinitionChange und Verschieben. Alle Revisionstypen werden mit der [RevisionType](https://reference.aspose.com/words/de/net/aspose.words/revisiontype/)-Enumeration dargestellt.

{{% alert color="primary" %}}

Beachten Sie, dass Revisionen zu einem ähnlichen Ergebnis wie Microsoft Word führen, Aspose.Words jedoch beim Nachverfolgen von Änderungen keine Formatierung erkennt.

{{% /alert %}}

## Starten und stoppen Sie die Nachverfolgung von Änderungen

Das Bearbeiten eines Dokuments zählt normalerweise nicht als Überarbeitung, bis Sie mit der Nachverfolgung beginnen. Mit Aspose.Words können Sie mit einfachen Schritten automatisch alle Änderungen in Ihrem Dokument verfolgen. Mit der [StartTrackRevisions](https://reference.aspose.com/words/de/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/)-Methode können Sie den Prozess der Nachverfolgung von Änderungen ganz einfach starten. Wenn Sie den Prozess der Nachverfolgung von Änderungen stoppen müssen, damit zukünftige Änderungen nicht als Überarbeitungen betrachtet werden, müssen Sie die [StopTrackRevisions](https://reference.aspose.com/words/de/net/aspose.words/document/stoptrackrevisions/)-Methode verwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die `StartTrackingRevisions`-Methode den Status der [TrackRevisions](https://reference.aspose.com/words/de/net/aspose.words/document/trackrevisions/)-Eigenschaft nicht ändert und ihren Wert nicht für das Ziel der Revisionsverfolgung verwendet. Wenn außerdem ein Knoten innerhalb des verfolgten Dokuments von einer Position an eine andere verschoben wurde, werden Verschiebungsrevisionen erstellt, einschließlich der Bereiche "Verschieben von" und "Verschieben in".

{{% /alert %}}

Am Ende des Prozesses zur Verfolgung von Änderungen in Ihrem Dokument haben Sie die Möglichkeit, alle Überarbeitungen zu akzeptieren oder abzulehnen, um das Dokument in seine ursprüngliche Form zurückzusetzen. Dies kann entweder durch die Verwendung der [AcceptAllRevisions](https://reference.aspose.com/words/de/net/aspose.words/document/acceptallrevisions/)- oder [RejectAll](https://reference.aspose.com/words/de/net/aspose.words/revisioncollection/rejectall/)-Methode erreicht werden. Darüber hinaus können Sie jede Revision separat akzeptieren oder ablehnen, indem Sie die [Accept](https://reference.aspose.com/words/de/net/aspose.words/revision/accept/)- oder [Reject](https://reference.aspose.com/words/de/net/aspose.words/revision/reject/)-Methode verwenden.

Alle Änderungen werden für eine Iteration von dem Moment, in dem Sie den Prozess starten, bis zu dem Moment, in dem Sie ihn stoppen, verfolgt. Die Verbindung zwischen verschiedenen Iterationen wird durch das folgende Szenario dargestellt: Sie schließen den Nachverfolgungsprozess ab, nehmen dann einige Änderungen vor und beginnen erneut mit der Nachverfolgung der Änderungen. In diesem Szenario werden alle Änderungen, die Sie nicht akzeptiert oder abgelehnt haben, erneut angezeigt.

{{% alert color="primary" %}}

Beachten Sie, dass die `AcceptAllRevisions`-Methode der Methode "Alle Änderungen akzeptieren" in Microsoft Word ähnelt.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie mit der Nachverfolgung von Änderungen arbeiten:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Das folgende Codebeispiel zeigt, wie Revisionen generiert werden, wenn ein Knoten innerhalb eines verfolgten Dokuments verschoben wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Verwalten und speichern Sie Änderungen als Revisionen

Mit der vorherigen Funktion zur Nachverfolgung von Änderungen können Sie nachvollziehen, welche Änderungen an Ihrem Dokument vorgenommen wurden und wer diese Änderungen vorgenommen hat. Mit der [TrackRevisions](https://reference.aspose.com/words/de/net/aspose.words/document/trackrevisions/)-Funktion erzwingen Sie, dass alle Änderungen in Ihrem Dokument als Revisionen gespeichert werden.

Mit Aspose.Words können Sie mithilfe der [HasRevision](https://reference.aspose.com/words/de/net/aspose.words/document/hasrevisions/)-Eigenschaft überprüfen, ob ein Dokument überarbeitet wurde oder nicht. Wenn Sie die Änderungen in Ihrem Dokument nicht automatisch über die Methoden StartTrackRevisions und StopTrackRevisions verfolgen müssen, können Sie mithilfe der `TrackRevisions`-Eigenschaft prüfen, ob die Änderungen beim Bearbeiten eines Dokuments in Microsoft Word nachverfolgt und als Revisionen gespeichert werden.

Die `TrackRevisions`-Funktion führt Überarbeitungen anstelle echter DOM-Änderungen durch. Aber die Revisionen selbst sind getrennt. Wenn Sie beispielsweise einen Absatz löschen, erstellt Aspose.Words daraus eine Überarbeitung und markiert ihn als Löschung, anstatt ihn zu löschen.

Darüber hinaus können Sie mit Aspose.Words mithilfe der [IsDeleteRevision](https://reference.aspose.com/words/de/net/aspose.words/inline/isdeleterevision/)-, [IsFormatRevision](https://reference.aspose.com/words/de/net/aspose.words/inline/isformatrevision/)-, [IsInsertRevision](https://reference.aspose.com/words/de/net/aspose.words/inline/isinsertrevision/)-, [IsMoveFromRevision](https://reference.aspose.com/words/de/net/aspose.words/inline/ismovefromrevision/)- und [IsMoveToRevision](https://reference.aspose.com/words/de/net/aspose.words/inline/ismovetorevision/)-Eigenschaften überprüfen, ob ein Objekt eingefügt, gelöscht oder seine Formatierung geändert wurde.

{{% alert color="primary" %}}

Beachten Sie, dass zwischen den Revisionen selbst und der `TrackRevisions`-Eigenschaft keine Verbindung besteht. Darüber hinaus können Sie Revisionen unabhängig von der Änderungsverfolgungsfunktion akzeptieren/ablehnen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie unterschiedliche Eigenschaften mit Revisionen angewendet werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
