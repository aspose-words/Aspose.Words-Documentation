---
title: Verfolgen Sie Änderungen in einem Dokument
second_title: Aspose.Words für Python via .NET
articleTitle: Verfolgen Sie Änderungen in einem Dokument
linktitle: Verfolgen Sie Änderungen in einem Dokument
description: "Verfolgen Sie mithilfe von Python Änderungen an Inhalten und Formatierungen, die Sie oder andere vorgenommen haben. Greifen Sie auf einzelne Revisionen in einem Dokument zu und wenden Sie verschiedene Eigenschaften darauf an."
type: docs
weight: 270
url: /de/python-net/track-changes-in-a-document/
---

Mit der Funktion zum Verfolgen von Änderungen, auch Überprüfung genannt, können Sie von Ihnen oder anderen Benutzern vorgenommene Änderungen an Inhalten und Formatierungen nachverfolgen. Diese Funktion zum Verfolgen von Änderungen mit Aspose.Words unterstützt das Verfolgen von Änderungen in Microsoft Word. Mit dieser Funktionalität können Sie auf einzelne Revisionen in Ihrem Dokument zugreifen und ihnen verschiedene Eigenschaften zuweisen.

Wenn Sie die Funktion "Änderungen verfolgen" aktivieren, werden alle eingefügten, gelöschten und geänderten Elemente des Dokuments visuell hervorgehoben und enthalten Informationen darüber, von wem, wann und was geändert wurde. Objekte, die Informationen darüber enthalten, was geändert wurde, werden als "Tracking-Änderungen" bezeichnet. Angenommen, Sie möchten ein Dokument überprüfen und wichtige Änderungen vornehmen – das kann bedeuten, dass Sie Überarbeitungen vornehmen müssen. Außerdem müssen Sie möglicherweise Kommentare einfügen, um einige der Änderungen zu besprechen. Hier kommt die Verfolgung von Änderungen in Dokumenten ins Spiel.

In diesem Artikel wird erläutert, wie Sie Änderungen verwalten und verfolgen, die von vielen Prüfern am selben Dokument vorgenommen wurden, sowie die Eigenschaften zum Verfolgen von Änderungen.

{{% alert color="primary" %}}

Beachten Sie, dass die Kommentarfunktion sowohl in Aspose.Words als auch in Microsoft Word mit der Nachverfolgung von Änderungen verbunden sein kann. Bedenken Sie jedoch, dass Kommentare völlig unabhängig von der Verfolgung von Änderungen sind.

{{% /alert %}}

## Was ist eine Revision?

Bevor wir uns mit Revisionen befassen, erklären wir die Bedeutung von Revisionen. Ein [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) ist eine Änderung, die in einem Knoten eines Dokuments auftritt, während eine Revisionsgruppe, dargestellt durch die [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/)-Klasse, eine Gruppe aufeinanderfolgender Revisionen ist, die in vielen Knoten eines Dokuments auftreten. Grundsätzlich handelt es sich bei der Revision um ein Werkzeug zur Nachverfolgung von Änderungen.

Revisionen werden in der Funktion "Änderungen verfolgen" und in der Funktion "Dokumente vergleichen" verwendet, wo Revisionen als Ergebnis des Vergleichs angezeigt werden. Überarbeitungen innerhalb der Änderungsverfolgungsfunktion zeigen also an, von wem und was geändert wurde.

{{% alert color="primary" %}}

Beachten Sie, dass Sie mit Microsoft Word keine einzelnen Revisionen anzeigen können, sondern nur sequentielle Revisionen als eine Einheit. Aber Aspose.Words löst diese Einschränkung mit der [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/)-Klasse.

{{% /alert %}}

Aspose.Words unterstützt verschiedene Revisionstypen sowie in Microsoft Word, z. B. Einfügen, Löschen, Formatwechsel, StyleDefinitionChange und Verschieben. Alle Revisionstypen werden mit der [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/)-Enumeration dargestellt.

{{% alert color="primary" %}}

Beachten Sie, dass Revisionen zu einem ähnlichen Ergebnis wie Microsoft Word führen, Aspose.Words jedoch beim Nachverfolgen von Änderungen keine Formatierung erkennt.

{{% /alert %}}

## Starten und stoppen Sie die Nachverfolgung von Änderungen

Das Bearbeiten eines Dokuments zählt normalerweise nicht als Überarbeitung, bis Sie mit der Nachverfolgung beginnen. Mit Aspose.Words können Sie mit einfachen Schritten automatisch alle Änderungen in Ihrem Dokument verfolgen. Mit der [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/)-Methode können Sie den Prozess der Nachverfolgung von Änderungen ganz einfach starten. Wenn Sie den Prozess der Nachverfolgung von Änderungen stoppen müssen, damit zukünftige Änderungen nicht als Überarbeitungen betrachtet werden, müssen Sie die [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/)-Methode verwenden.

{{% alert color="primary" %}}

Beachten Sie, dass die [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/)-Methode den Status der [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)-Eigenschaft nicht ändert und ihren Wert nicht für das Ziel der Revisionsverfolgung verwendet. Wenn außerdem ein Knoten innerhalb des verfolgten Dokuments von einer Position an eine andere verschoben wurde, werden Verschiebungsrevisionen erstellt, einschließlich der Bereiche "Verschieben von" und "Verschieben in".

{{% /alert %}}

Am Ende des Prozesses zur Verfolgung von Änderungen in Ihrem Dokument haben Sie die Möglichkeit, alle Überarbeitungen zu akzeptieren oder abzulehnen, um das Dokument in seine ursprüngliche Form zurückzusetzen. Dies kann entweder durch die Verwendung der [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/)- oder [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/)-Methode erreicht werden. Darüber hinaus können Sie jede Revision separat akzeptieren oder ablehnen, indem Sie die [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/)- oder [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/)-Methode verwenden.

Alle Änderungen werden für eine Iteration von dem Moment, in dem Sie den Prozess starten, bis zu dem Moment, in dem Sie ihn stoppen, verfolgt. Die Verbindung zwischen verschiedenen Iterationen wird durch das folgende Szenario dargestellt: Sie schließen den Nachverfolgungsprozess ab, nehmen dann einige Änderungen vor und beginnen erneut mit der Nachverfolgung der Änderungen. In diesem Szenario werden alle Änderungen, die Sie nicht akzeptiert oder abgelehnt haben, erneut angezeigt.

{{% alert color="primary" %}}

Beachten Sie, dass die [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/)-Methode der Methode "Alle Änderungen akzeptieren" in Microsoft Word ähnelt.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie mit der Nachverfolgung von Änderungen arbeiten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Das folgende Codebeispiel zeigt, wie Revisionen generiert werden, wenn ein Knoten innerhalb eines verfolgten Dokuments verschoben wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Verwalten und speichern Sie Änderungen als Revisionen

Mit der vorherigen Funktion zur Nachverfolgung von Änderungen können Sie nachvollziehen, welche Änderungen an Ihrem Dokument vorgenommen wurden und wer diese Änderungen vorgenommen hat. Mit der [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)-Funktion erzwingen Sie, dass alle Änderungen in Ihrem Dokument als Revisionen gespeichert werden.

Mit Aspose.Words können Sie mithilfe der [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/)-Eigenschaft überprüfen, ob ein Dokument überarbeitet wurde oder nicht. Wenn Sie die Änderungen in Ihrem Dokument nicht automatisch über die Methoden start_track_revisions und stop_track_revisions verfolgen müssen, können Sie mithilfe der [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)-Eigenschaft prüfen, ob die Änderungen beim Bearbeiten eines Dokuments in Microsoft Word nachverfolgt und als Revisionen gespeichert werden.

Die [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)-Funktion führt Überarbeitungen anstelle echter DOM-Änderungen durch. Die Revisionen selbst sind jedoch getrennt. Wenn Sie beispielsweise einen Absatz löschen, erstellt Aspose.Words daraus eine Überarbeitung und markiert ihn als Löschung, anstatt ihn zu löschen.

Darüber hinaus können Sie mit Aspose.Words mithilfe der [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/)-, [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/)-, [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/)-, [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/)- und [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/)-Eigenschaften überprüfen, ob ein Objekt eingefügt, gelöscht oder seine Formatierung geändert wurde.

{{% alert color="primary" %}}

Beachten Sie, dass zwischen den Revisionen selbst und der [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)-Eigenschaft keine Verbindung besteht. Darüber hinaus können Sie Revisionen unabhängig von der Änderungsverfolgungsfunktion akzeptieren/ablehnen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie unterschiedliche Eigenschaften mit Revisionen angewendet werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
